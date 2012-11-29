request=require 'request'
fs=require 'fs'
path=require 'path'
module.exports=
  preRender:(globals,cb)->
    opt=
      uri: "https://api.github.com/orgs/pansafe/repos"
      headers: 
        Authorization: "Basic #{new Buffer(process.env['GITHUB_USERNAME']+':'+process.env['GITHUB_PASSWORD']).toString('base64')}"
    await request opt,defer err,res,body
    globals.projects=[]
    for repo in JSON.parse body
      if repo.homepage&&repo.name!='pansafe.github.com'
        await request repo.homepage,defer err,res,body
        if res.statusCode==200
          globals.projects.push repo



    await request 'https://api.github.com/orgs/pansafe/members',defer err,res,body
    globals.members=JSON.parse body
    for member,i in globals.members
      await request member.url,defer err,res,body
      globals.members[i]=JSON.parse body
    await this.setAssociatedFiles globals.root,defer err
    cb(null)
  setAssociatedFiles:(parent,cb)->
    for dir in parent.dirs
      await this.setAssociatedFiles dir,defer err
      if err
        return cb err
    for file in parent.files
      basename=path.basename(file.path).replace /\.html$/,''
      adir=path.join(__dirname,'associated-files',basename)
      await fs.exists adir,defer exists
      if exists
        await fs.readdir adir,defer err,file.associatedFiles
        file.associatedFiles=file.associatedFiles.map (f)->"/associated-files/#{basename}/#{encodeURIComponent f}"
    cb(err)

