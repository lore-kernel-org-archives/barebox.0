Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XCpSj-0002yE-Qa
 for barebox@lists.infradead.org; Thu, 31 Jul 2014 12:28:02 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:a236:9fff:fe00:814])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1XCpSM-000133-N7
 for barebox@lists.infradead.org; Thu, 31 Jul 2014 14:27:38 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim
 4.82_1-5b7a7c0-XX) (envelope-from <sha@pengutronix.de>)
 id 1XCpSM-0004PK-M6
 for barebox@lists.infradead.org; Thu, 31 Jul 2014 14:27:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 31 Jul 2014 14:27:31 +0200
Message-Id: <1406809657-2489-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] Introduce barebox Image Metadata
To: barebox@lists.infradead.org

This series introduces barebox Image Metadata which is a way to embed
informations like the version or build timestamp into a barebox image.

The following is the text from the Documentation (Hurray, Documentation!;)

Sascha

Image MedaData (IMD)
====================

barebox images can be enriched with metadata. This is useful to get information
the board an image is compiled for and which barebox version an image contains.

There are predefined tags for:

- The build timestamp
- The barebox release version
- The model (board) the image is compiled for
- The toplevel device tree compatible properties the image can handle

Additionally there is a generic key/value tag to add information which does not
fit into the above categories, for example the memory size for boards which come
with different memory sizes which can't be automatically detected.

The informations can be extracted with the ``bareboximd`` tool which lives under
``scripts/`` in the barebox sourcecode. If enabled it is compiled for the compile
host and also for the target architecture. barebox itself has the :ref:`command_imd`
command to extract the informations. Here is an example output of the tool called
without additional options::

  # imd barebox-phytec-pbab01dl-1gib.img
  build: #890 Wed Jul 30 16:15:24 CEST 2014
  release: 2014.07.0-00167-ge6632a9-dirty
  parameter: memsize=1024
  of_compatible: phytec,imx6x-pbab01 phytec,imx6dl-pfla02 fsl,imx6dl
  model: Phytec phyFLEX-i.MX6 Duallite Carrier-Board

Single informations can be extracted with the ``-t <type>`` option::

  # imd barebox-phytec-pbab01dl-1gib.img -t release
  2014.07.0-00167-ge6632a9-dirty

Since the barebox hush does not have output redirection the barebox too has the
``-s <var>`` option to assign the output to a variable for later evaluation.

Limitations
-----------

The IMD tags are generated in the barebox binary before a SoC specific image is
generated. Some SoCs encrypt or otherwise manipulate the images in a way that the
IMD information is lost. The IMD mechanism does not work on these SoCs. A known
example is the Freescale i.MX28.

IMD and barebox_update
----------------------

The IMD informations could well be used to check if an image is suitable for updating
barebox for a particular board. Support for such a check is planned but not yet implemented.


----------------------------------------------------------------
Sascha Hauer (6):
      move file helper functions to separate file
      read_file: introduce read_file_2
      make: build device trees with obj-dtb-y and pbl-dtb-y
      dtc: compile fdtget
      make: Use shell script to generate .dtb.S files
      Add support for metadata in barebox images

 Documentation/user/imd.rst                     |  54 ++++
 Documentation/user/updating.rst                |   3 +
 Documentation/user/user-manual.rst             |   1 +
 arch/arm/boards/freescale-mx53-qsb/lowlevel.c  |   1 +
 arch/arm/boards/phytec-phyflex-imx6/lowlevel.c |  16 ++
 arch/arm/boards/tqma53/lowlevel.c              |   9 +
 arch/arm/dts/Makefile                          | 126 +++-------
 arch/arm/lib/barebox.lds.S                     |   2 +
 arch/arm/lib/bootm.c                           |   1 +
 arch/arm/lib/pbl.lds.S                         |   2 +
 arch/arm/mach-at91/boot_test_cmd.c             |   1 +
 arch/arm/mach-omap/omap_generic.c              |   1 +
 arch/arm/mach-omap/xload.c                     |   1 +
 arch/blackfin/boards/ipe337/cmd_alternate.c    |   1 +
 arch/mips/dts/Makefile                         |  10 -
 arch/mips/lib/bootm.c                          |   1 +
 commands/Kconfig                               |   9 +
 commands/Makefile                              |   1 +
 commands/barebox-update.c                      |   1 +
 commands/cp.c                                  |   1 +
 commands/crc.c                                 |   1 +
 commands/edit.c                                |   1 +
 commands/exec.c                                |   1 +
 commands/imd.c                                 |  60 +++++
 commands/insmod.c                              |   1 +
 commands/linux16.c                             |   1 +
 commands/of_dump.c                             |   1 +
 commands/oftree.c                              |   1 +
 commands/readf.c                               |   1 +
 commands/tftp.c                                |   1 +
 commands/uimage.c                              |   1 +
 common/Kconfig                                 |   3 +
 common/Makefile                                |   4 +-
 common/blspec.c                                |   1 +
 common/bootm.c                                 |   1 +
 common/hush.c                                  |   1 +
 common/imd-barebox.c                           |  25 ++
 common/imd.c                                   | 322 ++++++++++++++++++++++++
 common/menutree.c                              |   1 +
 common/uimage.c                                |   1 +
 drivers/usb/gadget/dfu.c                       |   1 +
 fs/fs.c                                        |  72 ------
 fs/uimagefs.c                                  |   1 +
 include/asm-generic/barebox.lds.h              |   6 +
 include/fs.h                                   |  14 --
 include/image-metadata.h                       | 115 +++++++++
 include/libbb.h                                |   7 -
 include/libfile.h                              |  18 ++
 lib/Makefile                                   |   2 +-
 lib/copy_file.c                                |  86 -------
 lib/gui/image_renderer.c                       |   1 +
 lib/libbb.c                                    |  93 -------
 lib/libfile.c                                  | 331 +++++++++++++++++++++++++
 scripts/Makefile                               |   2 +
 scripts/Makefile.lib                           |  25 +-
 scripts/bareboximd.c                           | 130 ++++++++++
 scripts/dtc/Makefile                           |  17 +-
 scripts/dtc/{libfdt => }/fdt.c                 |   0
 scripts/dtc/{libfdt => }/fdt.h                 |   0
 scripts/dtc/{libfdt => }/fdt_empty_tree.c      |   0
 scripts/dtc/{libfdt => }/fdt_ro.c              |   0
 scripts/dtc/{libfdt => }/fdt_rw.c              |   0
 scripts/dtc/{libfdt => }/fdt_strerror.c        |   0
 scripts/dtc/{libfdt => }/fdt_sw.c              |   0
 scripts/dtc/{libfdt => }/fdt_wip.c             |   0
 scripts/dtc/{libfdt => }/libfdt.h              |   0
 scripts/dtc/{libfdt => }/libfdt_env.h          |   0
 scripts/dtc/{libfdt => }/libfdt_internal.h     |   0
 scripts/gen-dtb-s                              |  48 ++++
 69 files changed, 1251 insertions(+), 389 deletions(-)
 create mode 100644 Documentation/user/imd.rst
 create mode 100644 commands/imd.c
 create mode 100644 common/imd-barebox.c
 create mode 100644 common/imd.c
 create mode 100644 include/image-metadata.h
 create mode 100644 include/libfile.h
 delete mode 100644 lib/copy_file.c
 create mode 100644 lib/libfile.c
 create mode 100644 scripts/bareboximd.c
 rename scripts/dtc/{libfdt => }/fdt.c (100%)
 rename scripts/dtc/{libfdt => }/fdt.h (100%)
 rename scripts/dtc/{libfdt => }/fdt_empty_tree.c (100%)
 rename scripts/dtc/{libfdt => }/fdt_ro.c (100%)
 rename scripts/dtc/{libfdt => }/fdt_rw.c (100%)
 rename scripts/dtc/{libfdt => }/fdt_strerror.c (100%)
 rename scripts/dtc/{libfdt => }/fdt_sw.c (100%)
 rename scripts/dtc/{libfdt => }/fdt_wip.c (100%)
 rename scripts/dtc/{libfdt => }/libfdt.h (100%)
 rename scripts/dtc/{libfdt => }/libfdt_env.h (100%)
 rename scripts/dtc/{libfdt => }/libfdt_internal.h (100%)
 create mode 100755 scripts/gen-dtb-s

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
