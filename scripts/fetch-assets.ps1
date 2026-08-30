$ErrorActionPreference = 'Stop'

$assets = @{
  'public/images/home-worm.png' = 'https://static.wixstatic.com/media/824061_7c1f2e4baa2f4bd6871e81b86db73063~mv2.png'
  'public/images/research/micro-chambers.png' = 'https://static.wixstatic.com/media/824061_9283c7f93e6f4ffa8d0541a80a679e6d~mv2.png'
  'public/images/research/growth-montage.gif' = 'https://static.wixstatic.com/media/824061_0111663cb74c4542a99664542a0c852d~mv2.gif'
  'public/images/research/chamber-array.png' = 'https://static.wixstatic.com/media/824061_24027d420e2448f6a2b9dbda8b38aacb~mv2.png'
  'public/images/people/team.jpg' = 'https://static.wixstatic.com/media/824061_af3f1acd4b324f428fc45756e57a641d~mv2.jpg'
  'public/images/people/benjamin-towbin.jpg' = 'https://static.wixstatic.com/media/824061_ec5bb4f27f094034aa73205c82923e07~mv2.jpg'
  'public/images/people/klement-stojanovski.jpg' = 'https://static.wixstatic.com/media/824061_c71a98fc0a3d4ba8b5adf56ef6539057~mv2.jpg'
  'public/images/people/dirk-beuchle.jpg' = 'https://static.wixstatic.com/media/824061_25edba2fd6ae47449c93afdb0de1d876~mv2.jpg'
  'public/images/people/peter-lenart.jpg' = 'https://static.wixstatic.com/media/824061_5140e046741c443a97adc68e554db870~mv2.jpg'
  'public/images/people/nathan-schoonjans.jpg' = 'https://static.wixstatic.com/media/824061_7940a5f30fcd40f290a857a377f884e5~mv2.jpg'
  'public/images/people/anna-slesarchuk.jpeg' = 'https://static.wixstatic.com/media/824061_59fd5ad1268d4d138bbb01b7f30bd7f0~mv2.jpeg'
  'public/images/people/ioana-gheorghe.jpg' = 'https://static.wixstatic.com/media/824061_72d3e72758bc471a88c01062e92c8b02~mv2.jpg'
  'public/images/people/sacha-psalmon.jpg' = 'https://static.wixstatic.com/media/824061_60e873f7c41e4231a3cf3f13b16ccd6b~mv2.jpg'
  'public/images/people/ferdinand-dellemann.png' = 'https://static.wixstatic.com/media/824061_787e30d7b4274b309702c03b5c1e06aa~mv2.png'
  'public/images/people/anna-graf.jpeg' = 'https://static.wixstatic.com/media/824061_5eb32241ebd44cc69ff447a621cfa2f4~mv2.jpeg'
  'public/images/outreach/pestalozzi-1.jpg' = 'https://static.wixstatic.com/media/824061_c390502ff28e4bef8793b26fc190cd9e~mv2.jpg'
  'public/images/outreach/pestalozzi-2.jpg' = 'https://static.wixstatic.com/media/824061_a5c260a0b9444643bc92214f941bdce5~mv2.jpg'
  'public/images/outreach/pestalozzi-3.jpg' = 'https://static.wixstatic.com/media/824061_68b24c98f97446aa81d8547103c8f03e~mv2.jpg'
  'public/images/outreach/pestalozzi-4.jpg' = 'https://static.wixstatic.com/media/824061_4c81d8e7be0f4a2aa519cbe5f2a37eb9~mv2.jpg'
  'public/images/outreach/pestalozzi-5.jpg' = 'https://static.wixstatic.com/media/824061_ca4a5d2022564198b0e126102cb8c35d~mv2.jpg'
  'public/images/outreach/pestalozzi-6.jpg' = 'https://static.wixstatic.com/media/824061_9b5fa52b7b584053bd4aab33d803f8e2~mv2.jpg'
  'public/images/outreach/pestalozzi-7.jpg' = 'https://static.wixstatic.com/media/824061_64df966204bc4c34935822e28d2ebb2f~mv2.jpg'
  'public/images/outreach/pestalozzi-8.jpg' = 'https://static.wixstatic.com/media/824061_ef547871abc149f9bbab7d8bb82a4c1a~mv2.jpg'
  'public/images/outreach/pestalozzi-9.jpg' = 'https://static.wixstatic.com/media/824061_f385d1b7358446028fb5b351e826419f~mv2.jpg'
  'public/images/outreach/science-slam-1.jpg' = 'https://static.wixstatic.com/media/824061_0eaec266532a4d91b3930919fd72ab6e~mv2.jpg'
  'public/images/outreach/science-slam-2.jpg' = 'https://static.wixstatic.com/media/824061_3f826970e07d41dbbd34370098ca206c~mv2.jpg'
  'public/images/worm-cinema/micro-chambers.gif' = 'https://static.wixstatic.com/media/824061_0111663cb74c4542a99664542a0c852d~mv2.gif'
  'public/images/worm-cinema/worm-race.gif' = 'https://static.wixstatic.com/media/824061_9cd435843b9644898bd04d328cdb6831~mv2.gif'
  'public/images/worm-cinema/germline-growth.gif' = 'https://static.wixstatic.com/media/824061_0f945fb1a37047cdb47f8d5119120cd0~mv2.gif'
  'public/images/worm-cinema/chewing-worm.gif' = 'https://static.wixstatic.com/media/824061_7beda2e0555f4d82bdb1ce15daf52e09~mv2.gif'
  'public/images/worm-cinema/reproducing-worms.gif' = 'https://static.wixstatic.com/media/824061_20992533296f43f88827734e828648da~mv2.gif'
}

foreach ($asset in $assets.GetEnumerator()) {
  Invoke-WebRequest -Uri $asset.Value -OutFile $asset.Key
}
