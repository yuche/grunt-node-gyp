module.exports = (grunt) ->
	grunt.initConfig
		clean:
			package: ['tasks/gyp.js']
			test: ['test/support/build']
		mochacli:
			options:
				bail: true
				compilers: ['coffee:coffee-script/register']
			files: ['test/']
	
	grunt.loadNpmTasks 'grunt-contrib-clean'
	grunt.loadNpmTasks 'grunt-contrib-coffee'
	grunt.loadNpmTasks 'grunt-mocha-cli'

	grunt.registerTask 'package', ['coffee:task']
	grunt.registerTask 'test', ['clean', 'mochacli']

	grunt.registerTask 'default', []
