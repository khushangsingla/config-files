local Plug = vim.fn['plug#']

local project_dir = vim.fs.root(0, {".git", ".envrc", ".classpath", ".project", "pom.xml"}) or vim.fn.getcwd()
local workspace_dir = project_dir .. "/.eclipse"

-- local jdtls_dir = vim.fn.stdpath('data') .. "/jdtls-eclipse-workspace"
-- local workspace_dir = jdtls_dir .. "/" .. project_dir:gsub("/", "%%")

vim.call('plug#begin')
Plug 'mfussenegger/nvim-jdtls'
vim.call('plug#end')

local config = {
	cmd = { '/usr/bin/jdtls'},
	root_dir = project_dir,
	settings = {
		["java.project.sourcePaths"] = { project_dir },
		java = {
			eclipse = { downloadSources = true, },
			autobuild = { enabled = false },
		}
	},
}


-- if (vim.fs.root(0, {".classpath", ".project"}) == nil) then
-- 	config.cmd = { '/usr/bin/jdtls', '-data', workspace_dir }
-- end

-- print(vim.fn.stdpath('data'))

-- print("Starting JDTLS with config: " .. vim.inspect(config))



require('jdtls').start_or_attach(config)

-- 
-- To work with this config, do the following minimum to get started if not using a java project:
-- Create the file pom.xml in project root with the following content:
--	START
--		<project>
--	 	<modelVersion>4.0.0</modelVersion>
--		<groupId>com.project</groupId>
-- 		<artifactId>project</artifactId>
-- 		<version>0.0.1-SNAPSHOT</version>
-- 		<name>project</name>
-- 		<build>
-- 			<directory>${project.basedir}/target</directory>
-- 			<outputDirectory>${project.build.directory}/classes</outputDirectory>
-- 			<sourceDirectory>${project.basedir}</sourceDirectory>
-- 		</build>
--		</project>
--	END
-- 
-- Then run the following command in the project root:
-- mvn eclipse:eclipse
--

