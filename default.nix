{ hlib # haskell.lib
, fetchFromGitHub
}:

let
  primPkg = { repo, rev, sha256 }: fetchFromGitHub {
    inherit repo rev sha256;
    owner = "haskell-primitive";
  };
in hself: hsuper: {
  primitive = hlib.dontCheck (hself.callCabal2nix "primitive"
    (primPkg {
      repo = "primitive";
      rev = "c446914899b1ce5c32614df2833b807971bb5c62";
      sha256 = "150rqd6vpw6g13hg3wghyvqgnpl22asdls2jan5gw2ba3yr8cplj";
    }) {});

  primitive-convenience = hself.callCabal2nix "primitive-convenience"
    (primPkg {
      repo = "primitive-convience";
      rev = "15f302eb224c17fea90cabe35f13ccffba7e80c6";
      sha256 = "1aswcr1ql2hq0hp1rxvxv5mj8y62xg98x4y0xnd0wcmnhj567iqf";
    }) {};

  primitive-addr = hself.callCabal2nix "primitive-addr"
    (primPkg {
      repo = "primitive-addr";
      rev = "ecd2bd42d9a44e737102f54c58215143f1b40495";
      sha256 = "19qd9p625n87ww5vhl3qlxx9lb3l7pnv4firal18zgmhbr2wnayk";
    }) {};

  primitive-slice = hself.callCabal2nix "primitive-slice"
    (primPkg {
      repo = "primitive-slice";
      rev = "554f1f0cf00d0c445b4210ce8367be5269e6ce64";
      sha256 = "0n23c1cwrlj682yvywlfkhj1qg7i5399mxdlx5q7lwrq1bywd57p";
    }) {};

  primitive-pinned = hself.callCabal2nix "primitive-pinned"
    (primPkg {
      repo = "primitive-pinned";
      rev = "47d12ab2adb6fe2806063267d865074beb394c7c";
      sha256 = "049nnif8papzmb6dhy7l1rdwnynnm6mhws792f5d1zb60f7gn20v";
    }) {};

  primitive-unlifted = hself.callCabal2nix "primitive-unlifted"
    (primPkg {
      repo = "primitive-unlifted";
      rev = "3a4da0331e18b3296d0e339c1192afef7bdf52bc";
      sha256 = "0sq2yhrrm21n0jcy5qcix5gr1wlxghfcqd5c4wrqzvsl1wz5ml0f";
    }) {};

  prim-instances = hself.callCabal2nix "prim-instances"
    (primPkg {
      repo = "prim-instances";
      rev = "4403383a3b70c23baec4fa2e7574e9f6f5e39346";
      sha256 = "0fpphkrl7jbjvcr67am37q7hm77k1sgr47h8vhcqwjy0bdv57y8l";
    }) {};

  primitive-unaligned = hself.callCabal2nix "primitive-unaligned"
    (primPkg {
      repo = "primitive-unaligned";
      rev = "0d4fe61f79f37341ed2ccdb58d66927ba3cb9ce3";
      sha256 = "1800p1j87p3nirkr8n5aw0k9nyarv34ck4i2hcbyaayxqlr034ma";
    }) {};

  primitive-foreign = hself.callCabal2nix "primitive-foreign"
    (primPkg {
      repo = "primitive-foreign";
      rev = "17ca38ae60eb9e0d42fcad3633fc97f741d9019c";
      sha256 = "02sy8l9apkap2y2dbd2xwaayylvkk7xdhsh1ihh4shzhiz48c66s";
    }) {};

  primitive-checked = hself.callCabal2nix "primitive-checked"
    (primPkg {
      repo = "primitive-checked";
      rev = "d136c5223be331c21c51769eb0be0c85bc6feee6";
      sha256 = "179knm68zl0ajj744j7g8n8fxd6gjwmv5128xmh9ci7hg6diwarm";
    }) {};

  primitive-maybe = hself.callCabal2nix "primitive-maybe"
    (primPkg {
      repo = "primitive-maybe";
      rev = "873f7a8b9f28236dc371186987fb21da1526f58d";
      sha256 = "1syf2m3i4zgvswqhgsf6mxqnkggxq19vd7bwaza3d1bcjvf6bif9";
    }) {};

  primitive-stablename = hself.callCabal2nix "primitive-stablename"
    (primPkg {
      repo = "primitive-stablename";
      rev = "e4b5e7cd614e373952f8198596df42de4c61b3b6";
      sha256 = "0k2i1bg8jvpqal0p2q7hki82kxzvlbfm2sy5zplpyw65i16b7b9x";
    }) {};

  primitive-offset = hself.callCabal2nix "primitive-offset"
    (primPkg {
      repo = "primitive-offset";
      rev = "dfc7b35285731b8589023abf398d45cdcf9138ab";
      sha256 = "0jfn42xav31zs9yd5841qy76qrc25cbx6lpgfh5av3v6dsxyrxb7";
    }) {};

  primitive-atomic = hself.callCabal2nix "primitive-atomic"
    (primPkg {
      repo = "primitive-atomic";
      rev = "4b9ec2f26ff3252f000482342d3fec3402f48d0b";
      sha256 = "1hc6rqjjc26f6pm8y2c7cay6fgaffmbal9vx2g110vw10pndrw80";
    }) {};

  # not yet on haskell-primitive
  contiguous = hself.callCabal2nix "contiguous"
    (fetchFromGitHub {
      owner = "andrewthad";
      repo = "contiguous";
      rev = "1abf1d8dc08c1a1e106fed6ef7aa5de5eee5e0ad";
      sha256 = "143vclqx2mi2xasv7vf0mb40g287kd9ygd75czydqvlwb2h5128y";
    }) {};

  contiguous-fft = hself.callCabal2nix "contiguous-fft"
    (primPkg {
      repo = "contiguous-fft";
      rev = "39277125cc183480de21ce06d6beacd1eeead68a";
      sha256 = "0xyhxv471adsjrxhci4swn0faw5532ddvsria4g8mba47wrh2r46";
    }) {};
}