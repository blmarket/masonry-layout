'use strict'

gulp = require 'gulp'
browserSync = require 'browser-sync'
reload = browserSync.reload

gulp.task 'serve', ->
  browserSync {
    port: 5000
    notify: false
    logPrefix: 'PSK'
    snippetOptions: {
      rule: {
        match: '<span id="browser-sync-binding"></span>'
        fn: (snippet) -> snippet
      }
    }
    server: {
      baseDir: [ '.', 'bower_components' ]
      routes: {
        '/bower_components': 'bower_components'
      }
    }
  }

  gulp.watch(['./*.html'], reload)
  return

gulp.task 'default', [ 'serve' ], ->
  console.log 'HERE'
  return
