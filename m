Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RV9PH-0003BA-Oc
 for barebox@lists.infradead.org; Mon, 28 Nov 2011 22:10:36 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1RV9Ot-0001mZ-Cy
 for barebox@lists.infradead.org; Mon, 28 Nov 2011 23:10:11 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <sha@pengutronix.de>) id 1RV9Ot-0000ou-Bn
 for barebox@lists.infradead.org; Mon, 28 Nov 2011 23:10:11 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Nov 2011 23:09:53 +0100
Message-Id: <1322518209-2965-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: uncompress work
To: barebox@lists.infradead.org

The following series unifies the different uncompress functions
to have the same function prototype. Also, generic uncompress
functions and commands are introduced which automatically detect
the compression type. This is now also used in bootm.

Sascha Hauer (16):
      armlinux: remove unnecessary include
      arm bootm: remove unnecessary include
      scripts/mkimage.c: remove unnecessary include
      use kernel bunzip implementation
      remove old bzlib
      add kernel gunzip implementation
      remove old zlib
      lib: prompt for uncompression functions
      bootm: do not select uncompression methods
      add file detection support
      lzo: export decompress_unlzo function
      Add generic uncompress function
      add generic uncompress command
      update configs and default envs for uncompress
      remove now unused unlzo function
      bootm: use generic uncompress function

 arch/arm/boards/eukrea_cpuimx25/env/bin/init_board |    2 +-
 arch/arm/boards/eukrea_cpuimx27/env/bin/init       |    2 +-
 arch/arm/boards/eukrea_cpuimx35/env/bin/init_board |    2 +-
 arch/arm/boards/eukrea_cpuimx51/env/bin/init_board |    2 +-
 arch/arm/configs/at91rm9200ek_defconfig            |    2 +-
 arch/arm/configs/at91sam9261ek_defconfig           |    2 +-
 arch/arm/configs/at91sam9g10ek_defconfig           |    2 +-
 arch/arm/configs/at91sam9m10g45ek_defconfig        |    2 +-
 arch/arm/configs/cupid_defconfig                   |    2 +-
 arch/arm/configs/eukrea_cpuimx25_defconfig         |    2 +-
 arch/arm/configs/eukrea_cpuimx27_defconfig         |    2 +-
 arch/arm/configs/eukrea_cpuimx35_defconfig         |    2 +-
 arch/arm/configs/eukrea_cpuimx51_defconfig         |    2 +-
 arch/arm/configs/freescale_mx35_3stack_defconfig   |    2 +-
 arch/arm/configs/freescale_mx53_loco_defconfig     |    2 +-
 arch/arm/configs/neso_defconfig                    |    2 +-
 arch/arm/configs/nhk8815_defconfig                 |    2 +-
 arch/arm/configs/omap3530_beagle_defconfig         |    2 +-
 arch/arm/configs/panda_defconfig                   |    2 +-
 arch/arm/configs/pca100_defconfig                  |    2 +-
 arch/arm/configs/pcm037_defconfig                  |    2 +-
 arch/arm/configs/pcm043_defconfig                  |    2 +-
 arch/arm/configs/pcm049_defconfig                  |    2 +-
 arch/arm/configs/pm9261_defconfig                  |    2 +-
 arch/arm/configs/pm9g45_defconfig                  |    2 +-
 arch/arm/configs/scb9328_defconfig                 |    2 +-
 arch/arm/configs/versatilepb_defconfig             |    2 +-
 arch/arm/lib/armlinux.c                            |    1 -
 arch/arm/lib/bootm.c                               |    1 -
 arch/mips/configs/dlink-dir-320_defconfig          |    2 +-
 arch/mips/configs/qemu-malta_defconfig             |    2 +-
 commands/Kconfig                                   |   22 +-
 commands/Makefile                                  |    2 +-
 commands/bootm.c                                   |   34 +-
 commands/{unlzo.c => uncompress.c}                 |   23 +-
 common/Makefile                                    |    1 +
 common/filetype.c                                  |  104 +
 defaultenv/bin/boot                                |    2 +-
 include/bunzip2.h                                  |   10 +
 include/bzlib.h                                    |  329 ---
 include/common.h                                   |    2 -
 include/filetype.h                                 |   23 +
 include/gunzip.h                                   |   10 +
 include/linux/zconf.h                              |   57 +
 include/linux/zlib.h                               |  711 +++++++
 include/linux/zutil.h                              |  106 +
 include/lzo.h                                      |    6 +-
 include/uncompress.h                               |   19 +
 include/zlib.h                                     |  434 ----
 lib/Kconfig                                        |    6 +-
 lib/Makefile                                       |    5 +-
 lib/bzlib.c                                        | 1592 ---------------
 lib/bzlib_crctable.c                               |  145 --
 lib/bzlib_decompress.c                             |  674 ------
 lib/bzlib_huffman.c                                |  229 ---
 lib/bzlib_randtable.c                              |  126 --
 lib/decompress_bunzip2.c                           |  756 +++++++
 lib/decompress_inflate.c                           |  183 ++
 lib/decompress_unlzo.c                             |   27 +-
 lib/gunzip.c                                       |   85 -
 lib/lzo/Kconfig                                    |    1 +
 lib/uncompress.c                                   |  159 ++
 lib/zlib.c                                         | 2158 --------------------
 lib/zlib_inflate/Makefile                          |   18 +
 lib/zlib_inflate/inffast.c                         |  363 ++++
 lib/zlib_inflate/inffast.h                         |   11 +
 lib/zlib_inflate/inffixed.h                        |   94 +
 lib/zlib_inflate/inflate.c                         |  918 +++++++++
 lib/zlib_inflate/inflate.h                         |  111 +
 lib/zlib_inflate/inftrees.c                        |  315 +++
 lib/zlib_inflate/inftrees.h                        |   59 +
 lib/zlib_inflate/infutil.c                         |   47 +
 lib/zlib_inflate/infutil.h                         |   25 +
 lib/zlib_inflate/modules.builtin                   |    1 +
 scripts/mkimage.c                                  |    1 -
 75 files changed, 4170 insertions(+), 5894 deletions(-)
 rename commands/{unlzo.c => uncompress.c} (73%)
 create mode 100644 common/filetype.c
 create mode 100644 include/bunzip2.h
 delete mode 100644 include/bzlib.h
 create mode 100644 include/filetype.h
 create mode 100644 include/gunzip.h
 create mode 100644 include/linux/zconf.h
 create mode 100644 include/linux/zlib.h
 create mode 100644 include/linux/zutil.h
 create mode 100644 include/uncompress.h
 delete mode 100644 include/zlib.h
 delete mode 100644 lib/bzlib.c
 delete mode 100644 lib/bzlib_crctable.c
 delete mode 100644 lib/bzlib_decompress.c
 delete mode 100644 lib/bzlib_huffman.c
 delete mode 100644 lib/bzlib_randtable.c
 create mode 100644 lib/decompress_bunzip2.c
 create mode 100644 lib/decompress_inflate.c
 delete mode 100644 lib/gunzip.c
 create mode 100644 lib/uncompress.c
 delete mode 100644 lib/zlib.c
 create mode 100644 lib/zlib_inflate/Makefile
 create mode 100644 lib/zlib_inflate/inffast.c
 create mode 100644 lib/zlib_inflate/inffast.h
 create mode 100644 lib/zlib_inflate/inffixed.h
 create mode 100644 lib/zlib_inflate/inflate.c
 create mode 100644 lib/zlib_inflate/inflate.h
 create mode 100644 lib/zlib_inflate/inftrees.c
 create mode 100644 lib/zlib_inflate/inftrees.h
 create mode 100644 lib/zlib_inflate/infutil.c
 create mode 100644 lib/zlib_inflate/infutil.h
 create mode 100644 lib/zlib_inflate/modules.builtin

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
