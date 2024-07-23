deviceTypesCommon = require '@resin.io/device-types/common'
{ networkOptions, commonImg, instructions } = deviceTypesCommon

module.exports =
	version: 1
	slug: 'libretech-cc'
	name: 'Le Potato AML-S905X-CC'
	arch: 'aarch64'
	state: 'released'
	isDefault: true

	instructions: commonImg.instructions
	gettingStartedLink:
		windows: 'https://www.balena.io/docs/learn/getting-started/libretech-cc/nodejs/'
		osx: 'https://www.balena.io/docs/learn/getting-started/libretech-cc/nodejs/'
		linux: 'https://www.balena.io/docs/learn/getting-started/libretech-cc/nodejs/'

	options: [ networkOptions.group ]

	yocto:
		machine: 'libretech-cc'
		image: 'balena-image'
		fstype: 'balenaos-img'
		version: 'yocto-kirkstone'
		deployArtifact: 'balena-image-libretech-cc.balenaos-img'
		compressed: true

	configuration:
		config:
			partition:
				primary: 1
			path: '/config.json'

	initialization: commonImg.initialization
