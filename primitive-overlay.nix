{ hlib # haskell.lib
, fetchFromGitHub
, ...
}:

hself: hsuper: {
  primPkg = { repo, rev, sha256, apply ? [] }: hsuper.c2n {
    name = repo;
    rawPath = fetchFromGitHub {
      inherit repo rev sha256;
      owner = "haskell-primitive";
    };
    inherit apply;
  };

  primitive = hsuper.c2n {
    name = "primitive";
    rawPath = fetchFromGitHub {
      owner = "haskell";
      repo = "primitive";
      rev = "c446914899b1ce5c32614df2833b807971bb5c62";
      sha256 = "150rqd6vpw6g13hg3wghyvqgnpl22asdls2jan5gw2ba3yr8cplj";
    };
    apply = [ hlib.dontCheck ];
  };

  primitive-convenience = hself.primPkg {
    repo = "primitive-convenience";
    rev = "15f302eb224c17fea90cabe35f13ccffba7e80c6";
    sha256 = "1aswcr1ql2hq0hp1rxvxv5mj8y62xg98x4y0xnd0wcmnhj567iqf";
  };

  primitive-addr = hself.primPkg {
    repo = "primitive-addr";
    rev = "ecd2bd42d9a44e737102f54c58215143f1b40495";
    sha256 = "19qd9p625n87ww5vhl3qlxx9lb3l7pnv4firal18zgmhbr2wnayk";
  };

  primitive-slice = hself.primPkg {
    repo = "primitive-slice";
    rev = "554f1f0cf00d0c445b4210ce8367be5269e6ce64";
    sha256 = "0n23c1cwrlj682yvywlfkhj1qg7i5399mxdlx5q7lwrq1bywd57p";
  };

  primitive-pinned = hself.primPkg {
    repo = "primitive-pinned";
    rev = "47d12ab2adb6fe2806063267d865074beb394c7c";
    sha256 = "049nnif8papzmb6dhy7l1rdwnynnm6mhws792f5d1zb60f7gn20v";
  };

  primitive-unlifted = hself.primPkg {
    repo = "primitive-unlifted";
    rev = "3a4da0331e18b3296d0e339c1192afef7bdf52bc";
    sha256 = "0sq2yhrrm21n0jcy5qcix5gr1wlxghfcqd5c4wrqzvsl1wz5ml0f";
  };

  prim-instances = hself.primPkg {
    repo = "prim-instances";
    rev = "4403383a3b70c23baec4fa2e7574e9f6f5e39346";
    sha256 = "0fpphkrl7jbjvcr67am37q7hm77k1sgr47h8vhcqwjy0bdv57y8l";
  };

  primitive-unaligned = hself.primPkg {
    repo = "primitive-unaligned";
    rev = "0d4fe61f79f37341ed2ccdb58d66927ba3cb9ce3";
    sha256 = "1800p1j87p3nirkr8n5aw0k9nyarv34ck4i2hcbyaayxqlr034ma";
  };

  primitive-foreign = hself.primPkg {
    repo = "primitive-foreign";
    rev = "17ca38ae60eb9e0d42fcad3633fc97f741d9019c";
    sha256 = "02sy8l9apkap2y2dbd2xwaayylvkk7xdhsh1ihh4shzhiz48c66s";
  };

  primitive-checked = hself.primPkg {
    repo = "primitive-checked";
    rev = "d136c5223be331c21c51769eb0be0c85bc6feee6";
    sha256 = "179knm68zl0ajj744j7g8n8fxd6gjwmv5128xmh9ci7hg6diwarm";
  };

  primitive-maybe = hself.primPkg {
    repo = "primitive-maybe";
    rev = "873f7a8b9f28236dc371186987fb21da1526f58d";
    sha256 = "1syf2m3i4zgvswqhgsf6mxqnkggxq19vd7bwaza3d1bcjvf6bif9";
  };

  primitive-stablename = hself.primPkg {
    repo = "primitive-stablename";
    rev = "e4b5e7cd614e373952f8198596df42de4c61b3b6";
    sha256 = "0k2i1bg8jvpqal0p2q7hki82kxzvlbfm2sy5zplpyw65i16b7b9x";
  };

  primitive-offset = hself.primPkg {
    repo = "primitive-offset";
    rev = "dfc7b35285731b8589023abf398d45cdcf9138ab";
    sha256 = "0jfn42xav31zs9yd5841qy76qrc25cbx6lpgfh5av3v6dsxyrxb7";
  };

  primitive-atomic = hself.primPkg {
    repo = "primitive-atomic";
    rev = "4b9ec2f26ff3252f000482342d3fec3402f48d0b";
    sha256 = "1hc6rqjjc26f6pm8y2c7cay6fgaffmbal9vx2g110vw10pndrw80";
  };

  # not yet on haskell-primitive
  contiguous = hsuper.c2n {
    name = "contiguous";
    rawPath = fetchFromGitHub {
      owner = "andrewthad";
      repo = "contiguous";
      rev = "954f5072328e9a82fc7766a4fbd52853338e332f";
      sha256 = "1k93yw07yjqsyq145h00h5708ng9p9ygdvvablgvdff1gwnqz8di";
    };
    apply = [ ];
  };

  contiguous-fft = hself.primPkg {
    repo = "contiguous-fft";
    rev = "39277125cc183480de21ce06d6beacd1eeead68a";
    sha256 = "0xyhxv471adsjrxhci4swn0faw5532ddvsria4g8mba47wrh2r46";
  };

  byteslice = hsuper.c2n {
    name = "byteslice";
    rawPath = fetchFromGitHub {
      owner = "andrewthad";
      repo = "byteslice";
      rev = "b6c8924113d525ae6802eadd00416b2bfde4a701";
      sha256 = "1ff8gi95mwr3b4c2kqs474zzq8028b7j8h2x6jvrndidb2fja9c6";
    };
    apply = [ ];
  };

  run-st = hsuper.c2n {
    name = "run-st";
    rawPath = fetchFromGitHub {
      owner = "andrewthad";
      repo = "run-st";
      rev = "0d5daf3330d490e294b1d104ca29886372cb5001";
      sha256 = "0mhk60i45lsr0kb4n1f8f4hs0ifcsdn2hygh2s0lgfxlrc12hjzv";
    };
    apply = [ ];
  };

  primitive-containers = hsuper.c2n {
    name = "primitive-containers";
    rawPath = fetchFromGitHub {
      owner = "andrewthad";
      repo = "primitive-containers";
      rev = "17c1b9512b1395edeed333004696b94959b091ac";
      sha256 = "1218h89wi9wdvkk8axckwvn6jy1yzq64hfpnskhfifpnpx08qv22";
    };
    apply = [ ];
  };

  primitive-sort = hsuper.c2n {
    name = "primitive-sort";
    rawPath = fetchFromGitHub {
      owner = "andrewthad";
      repo = "primitive-sort";
      rev = "7282d08d25b4bc5861e6dfb37f6a5fa484e83aca";
      sha256 = "1bs8shl3xrmxqxzslg8j731m96z2sl3ckfsly6afa3d5xd63fv1v";
    };
    apply = [ ];
  };

  # needed by newer aeson
  time-compat = hsuper.c2n {
    name = "time-compat";
    rawPath = fetchFromGitHub {
      owner = "phadej";
      repo = "time-compat";
      rev = "b929f56b388454a81f95d3739133a8716791ee73";
      sha256 = "1i79kvixvf5w9hraawjwapnymj2kvrwp8yhncsgpf6bh5c5j760i";
    };
    apply = [ hlib.dontCheck ];
  };

  # aeson does not yet compile with newer primitive
  # in hackage/nixpkgs.
  aeson = hsuper.c2n {
    name = "aeson";
    rawPath = fetchFromGitHub {
      owner = "bos";
      repo = "aeson";
      rev = "bc4fa60ece9aa54a43224343fa9d3b2b531164c0";
      sha256 = "0i07swd3kab8kdxdb3allxffbalzn9p93v1wnpwz4q4c03q9cig0";
    };
    apply = [ hlib.dontCheck ];
  };

  automata = hsuper.c2n {
    name = "automata";
    rawPath = fetchFromGitHub {
      owner = "andrewthad";
      repo = "automata";
      rev = "b955ad664f3017f8dcf950f4fd3fadaa31e81007";
      sha256 = "0x4556pnnzvw42kcpq0wv3k141x7gzrj3qv13jg2ylw7zspmmkqb";
    };
    apply = [ hlib.dontHaddock ];
  };

  bytesmith = hsuper.c2n {
    name = "bytesmith";
    rawPath = fetchFromGitHub {
      owner = "andrewthad";
      repo = "bytesmith";
      rev = "04239c1a55e410263453eb950a74e22f2d866a6b";
      sha256 = "0x3m9nw5rb72d1pk466dgrm1wlhssqm0smdz11syk0m68r5ngawp";
    };
  };

  byte-order = hsuper.c2n {
    name = "byte-order";
    rawPath = fetchFromGitHub {
      owner = "andrewthad";
      repo = "byte-order";
      rev = "b04e99f99b934557b980d34d47ab6caa4be3c00a";
      sha256 = "0hr8dy0p2xv84avww0i3fnswyivbz3xjbnjngz5ilivx4lq4phjy";
    };
  };

  text-short = hsuper.c2n {
    name = "text-short";
    rawPath = fetchFromGitHub {
      owner = "haskell-hvr";
      repo = "text-short";
      rev = "7b6eb8a72fa5ec7ada131794872631bde8af65f8";
      sha256 = "1rrwk4lsz6766f13mv72v9jn5ylh4igqarsnn936k74qvvjr4n9d";
    };
  };
}
