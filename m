Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo5.mail-out.ovh.net ([178.33.111.247]
 helo=mo5.mail-out.ovh.net)
 by casper.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TBn2I-0007ZJ-Sz
 for barebox@lists.infradead.org; Wed, 12 Sep 2012 13:31:24 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 61E5FFF9FF4
 for <barebox@lists.infradead.org>; Wed, 12 Sep 2012 15:32:54 +0200 (CEST)
Date: Wed, 12 Sep 2012 15:24:43 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120912132443.GQ31207@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 00/11 v4] add PNG support
To: barebox@lists.infradead.org

Hi,

	v4:
	 - fix comment
	 - reorder graphic_utilils adding

	v3:
	 - fix comment
	 - add introduce image helper
	   while use the image renderer for multiple
	   image support I found tis was missing

	   This even simplify png implemtation by not duplication the
	   rendering

	v2:

	 fix comment
	 fix missing select
	 drop logo (will be send in a seprated pull)

please pull
The following changes since commit 4271879e3b82e2e4d52a46f7c4ef01461a786b5e:

  fsl TSEC: register map boundary (2012-09-11 10:06:09 +0200)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git tags/png

for you to fetch changes up to 7dad2c8a260282c07ada0c291a441a16563746ef:

  png: add picoPNG lib support (2012-09-12 21:21:07 +0800)

----------------------------------------------------------------
Introduce PNG support

This will allow to reduce the binary size and support transparent image
png + png8 is 50% less than lzo + bmp (same image)

 - rename bmp to splash
 - add background support (usefull for transparent image)
 - add LodePNG and PicoPNG

PicoPNG only support PNG8 RGBA where LodePNG support most of the PNG (PNG24 &
PNG8). PicoPNG is ~5KiB smaller than LodePNG.

Attention the coding style on both PicoPNG and LodePNG are untouched for
maintainance purpose.

Use LodePNG version 20120729 from http://lodev.org/lodepng/
Use from http://forge.voodooprojects.org/
which is base on picoPNG C++ wrote by Lode Vandevenne. The same author as
LodePNG.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (11):
      bmp: rename it to splash
      bmp: split bmp rending in lib/bmp.c
      Introduce graphic utils
      introduce image_renderer framework
      filetype: add BMP support
      splash/bmp: switch to image_renderer
      splash: add support to set a background color
      graphic_utils: add rgba support
      filetype: add PNG support
      add PNG support
      png: add picoPNG lib support

 Documentation/commands.dox                         |    2 +-
 arch/arm/boards/eukrea_cpuimx25/env/bin/init_board |    4 +-
 arch/arm/boards/eukrea_cpuimx27/env/bin/init       |    4 +-
 arch/arm/boards/eukrea_cpuimx35/env/bin/init_board |    4 +-
 arch/arm/boards/eukrea_cpuimx51/env/bin/init_board |    4 +-
 arch/arm/boards/karo-tx25/env/bin/init_board       |    2 +-
 arch/arm/boards/mioa701/env/bin/init               |    2 +-
 arch/arm/configs/chumbyone_defconfig               |    2 +-
 arch/arm/configs/cupid_defconfig                   |    2 +-
 arch/arm/configs/eukrea_cpuimx25_defconfig         |    2 +-
 arch/arm/configs/eukrea_cpuimx27_defconfig         |    2 +-
 arch/arm/configs/eukrea_cpuimx35_defconfig         |    2 +-
 arch/arm/configs/freescale_mx35_3stack_defconfig   |    2 +-
 arch/arm/configs/imx28evk_defconfig                |    2 +-
 arch/arm/configs/mioa701_defconfig                 |    2 +-
 arch/arm/configs/neso_defconfig                    |    2 +-
 arch/arm/configs/pcm027_defconfig                  |    2 +-
 arch/arm/configs/pcm038_defconfig                  |    2 +-
 arch/arm/configs/tx25stk5_defconfig                |    2 +-
 arch/arm/configs/tx28stk5_defconfig                |    2 +-
 commands/Kconfig                                   |    5 +-
 commands/Makefile                                  |    2 +-
 commands/bmp.c                                     |  221 ------
 commands/splash.c                                  |  133 ++++
 common/filetype.c                                  |    5 +
 include/filetype.h                                 |    2 +
 include/graphic_utils.h                            |   17 +
 include/image_renderer.h                           |   85 +++
 lib/Kconfig                                        |   36 +
 lib/Makefile                                       |    5 +
 lib/bmp.c                                          |  134 ++++
 {include => lib}/bmp_layout.h                      |   11 +
 lib/graphic_utils.c                                |  191 +++++
 lib/image_renderer.c                               |   96 +++
 lib/lodepng.c                                      | 5928 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 lib/lodepng.h                                      | 1640 +++++++++++++++++++++++++++++++++++++++
 lib/picopng.c                                      |  810 ++++++++++++++++++++
 lib/picopng.h                                      |   34 +
 lib/png.c                                          |   89 +++
 lib/png.h                                          |   21 +
 lib/png_lode.c                                     |   90 +++
 lib/png_pico.c                                     |   85 +++
 42 files changed, 9440 insertions(+), 248 deletions(-)
 delete mode 100644 commands/bmp.c
 create mode 100644 commands/splash.c
 create mode 100644 include/graphic_utils.h
 create mode 100644 include/image_renderer.h
 create mode 100644 lib/bmp.c
 rename {include => lib}/bmp_layout.h (85%)
 create mode 100644 lib/graphic_utils.c
 create mode 100644 lib/image_renderer.c
 create mode 100644 lib/lodepng.c
 create mode 100644 lib/lodepng.h
 create mode 100644 lib/picopng.c
 create mode 100644 lib/picopng.h
 create mode 100644 lib/png.c
 create mode 100644 lib/png.h
 create mode 100644 lib/png_lode.c
 create mode 100644 lib/png_pico.c

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
