Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo3.mail-out.ovh.net ([87.98.165.232]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T9yGf-0002IE-Iu
 for barebox@lists.infradead.org; Fri, 07 Sep 2012 13:06:43 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 4F643FF9809
 for <barebox@lists.infradead.org>; Fri,  7 Sep 2012 15:14:20 +0200 (CEST)
Date: Fri, 7 Sep 2012 15:07:00 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120907130700.GS20330@game.jcrosoft.org>
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
Subject: [PATCH 00/11 v2] add PNG support
To: barebox@lists.infradead.org

Hi,

	v2:

	 fix comment
	 fix missing select
	 drop logo (will be send in a seprated pull)

please pull
The following changes since commit 298d15571da8d1cb71e7fd87cc53cad3b2bf1d12:

  i.MX51: unbreak FEC iomux (2012-09-07 10:28:17 +0200)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git tags/png

for you to fetch changes up to 94ca148f67a8cc33dabb28a1bb0207cc3fa7fe6a:

  png: add picoPNG lib support (2012-09-07 20:29:20 +0800)

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
      introduce image_renderer framework
      filetype: add BMP support
      splash/bmp: switch to image_renderer
      splash: add support to set a background color
      Introduce graphic utils
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
 include/image_renderer.h                           |   42 +
 lib/Kconfig                                        |   35 +
 lib/Makefile                                       |    5 +
 lib/bmp.c                                          |  108 +++
 {include => lib}/bmp_layout.h                      |   11 +
 lib/graphic_utils.c                                |  191 +++++
 lib/image_renderer.c                               |   73 ++
 lib/lodepng.c                                      | 5928 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 lib/lodepng.h                                      | 1640 +++++++++++++++++++++++++++++++++++++++
 lib/picopng.c                                      |  810 ++++++++++++++++++++
 lib/picopng.h                                      |   34 +
 lib/png_lode.c                                     |  181 +++++
 lib/png_pico.c                                     |  152 ++++
 40 files changed, 9395 insertions(+), 248 deletions(-)
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
 create mode 100644 lib/png_lode.c
 create mode 100644 lib/png_pico.c

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
