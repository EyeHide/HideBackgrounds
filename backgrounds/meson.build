dataconf = configuration_data()
dataconf.set('BACKGROUNDDIR', backgrounddir)
dataconf.set('datadir', datadir)

backgrounds = [
  'skyline.jpg',
  'arnauld.jpg',
  'bridge.jpg',
  'dario.jpg',
  'church.jpg',
  'francesco.jpg',
  'graeme.jpg',
  'island.jpg',
  'largecity.jpg',
  'mountains.jpg',
  'nature.jpg',
  'starstimelaps.jpg',
  'waterfalls.jpg',
]

install_data(backgrounds, install_dir: backgrounddir)

foreach metadata : [
  'skyline.xml',
  'arnauld.xml',
  'bridge.xml',
  'dario.xml',
  'church.xml',
  'francesco.xml',
  'graeme.xml',
  'island.xml',
  'largecity.xml',
  'mountains.xml',
  'nature.xml',
  'starstimelaps.xml',
  'waterfalls.xml',
  ]
  configure_file(
    input: metadata + '.in',
    output: metadata,
    configuration: dataconf,
    install: true,
    install_dir: metadatadir
  )
endforeach
