Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo3.mail-out.ovh.net ([46.105.57.200]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T9V8r-0006lJ-0c
 for barebox@lists.infradead.org; Thu, 06 Sep 2012 06:00:42 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 186D9FF8CE8
 for <barebox@lists.infradead.org>; Thu,  6 Sep 2012 08:08:16 +0200 (CEST)
Date: Thu, 6 Sep 2012 08:00:58 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120906060058.GE4761@game.jcrosoft.org>
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
Subject: [PATCH 00/12] add PNG support
To: barebox@lists.infradead.org

Hi,

please pull
The following changes since commit f77269a819b1306aa9e0721a2159693fe307142d:

  Merge branch 'for-next/usb' (2012-09-05 12:59:59 +0200)

are available in the git repository at:


  git://git.jcrosoft.org/barebox.git tags/png

for you to fetch changes up to 8e19449313dd5f5c8d78194485901a5533961726:

  png: add picoPNG lib support (2012-09-06 13:56:59 +0800)

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

This patch series also include the barebox logo
in logo/ you will found the barebox logo with color or white
in:
 - bmp (black background)
 - png24 (transparent or black background)
 - png8 (black background)

for the following size
 - 100x100
 - 200x200
 - 400x400
 - 600x600
 - 800x800
 - 900x900

The logo are origanize in a way to be able to include them in the envfs
by just point as it.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (12):
      add barebox logo
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
 lib/Kconfig                                        |   34 +
 lib/Makefile                                       |    5 +
 lib/bmp.c                                          |  108 +++
 {include => lib}/bmp_layout.h                      |   11 +
 lib/graphic_utils.c                                |  191 +++++
 lib/image_renderer.c                               |   73 ++
 lib/lodepng.c                                      | 5928 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 lib/lodepng.h                                      | 1640 +++++++++++++++++++++++++++++++++++++++
 lib/picopng.c                                      |  810 +++++++++++++++++++
 lib/picopng.h                                      |   34 +
 lib/png_lode.c                                     |  181 +++++
 lib/png_pico.c                                     |  152 ++++
 logo/bmp/100x100/color/blackbg/barebox.bmp         |  Bin 0 -> 30056 bytes
 logo/bmp/100x100/white/blackbg/barebox.bmp         |  Bin 0 -> 30056 bytes
 logo/bmp/200x200/color/blackbg/barebox.bmp         |  Bin 0 -> 120056 bytes
 logo/bmp/200x200/white/blackbg/barebox.bmp         |  Bin 0 -> 120056 bytes
 logo/bmp/400x400/color/blackbg/barebox.bmp         |  Bin 0 -> 480056 bytes
 logo/bmp/400x400/white/blackbg/barebox.bmp         |  Bin 0 -> 480056 bytes
 logo/bmp/600x600/color/blackbg/barebox.bmp         |  Bin 0 -> 1080056 bytes
 logo/bmp/600x600/while/blackbg/barebox.bmp         |  Bin 0 -> 1080056 bytes
 logo/bmp/800x800/color/blackbg/barebox.bmp         |  Bin 0 -> 1920056 bytes
 logo/bmp/800x800/white/blackbg/barebox.bmp         |  Bin 0 -> 1920056 bytes
 logo/bmp/900x900/color/blackbg/barebox.bmp         |  Bin 0 -> 2430056 bytes
 logo/bmp/900x900/white/blackbg/barebox.bmp         |  Bin 0 -> 2430056 bytes
 logo/png24/100x100/color/barebox.png               |  Bin 0 -> 22724 bytes
 logo/png24/100x100/color/blackbg/barebox.png       |  Bin 0 -> 19254 bytes
 logo/png24/100x100/white/barebox.png               |  Bin 0 -> 12053 bytes
 logo/png24/100x100/white/blackbg/barebox.png       |  Bin 0 -> 10940 bytes
 logo/png24/200x200/color/barebox.png               |  Bin 0 -> 71557 bytes
 logo/png24/200x200/color/blackbg/barebox.png       |  Bin 0 -> 60836 bytes
 logo/png24/200x200/white/barebox.png               |  Bin 0 -> 31132 bytes
 logo/png24/200x200/white/blackbg/barebox.png       |  Bin 0 -> 28578 bytes
 logo/png24/400x400/color/barebox.png               |  Bin 0 -> 217170 bytes
 logo/png24/400x400/color/blackbg/barebox.png       |  Bin 0 -> 188172 bytes
 logo/png24/400x400/white/barebox.png               |  Bin 0 -> 78591 bytes
 logo/png24/400x400/white/blackbg/barebox.png       |  Bin 0 -> 72957 bytes
 logo/png24/600x600/color/barebox.png               |  Bin 0 -> 406788 bytes
 logo/png24/600x600/color/blackbg/barebox.png       |  Bin 0 -> 353328 bytes
 logo/png24/600x600/while/barebox.png               |  Bin 0 -> 137235 bytes
 logo/png24/600x600/while/blackbg/barebox.png       |  Bin 0 -> 130454 bytes
 logo/png24/800x800/color/barebox.png               |  Bin 0 -> 627433 bytes
 logo/png24/800x800/color/blackbg/barebox.png       |  Bin 0 -> 547772 bytes
 logo/png24/800x800/white/barebox.png               |  Bin 0 -> 210397 bytes
 logo/png24/800x800/white/blackbg/barebox.png       |  Bin 0 -> 198356 bytes
 logo/png24/900x900/color/barebox.png               |  Bin 0 -> 713120 bytes
 logo/png24/900x900/color/blackbg/barebox.png       |  Bin 0 -> 611586 bytes
 logo/png24/900x900/white/barebox.png               |  Bin 0 -> 204449 bytes
 logo/png24/900x900/white/blackbg/barebox.png       |  Bin 0 -> 190770 bytes
 logo/png8/100x100/color/blackbg/barebox.png        |  Bin 0 -> 8279 bytes
 logo/png8/100x100/white/blackbg/barebox.png        |  Bin 0 -> 6089 bytes
 logo/png8/200x200/color/blackbg/barebox.png        |  Bin 0 -> 23616 bytes
 logo/png8/200x200/white/blackbg/barebox.png        |  Bin 0 -> 14838 bytes
 logo/png8/400x400/color/blackbg/barebox.png        |  Bin 0 -> 71295 bytes
 logo/png8/400x400/white/blackbg/barebox.png        |  Bin 0 -> 38480 bytes
 logo/png8/600x600/color/blackbg/barebox.png        |  Bin 0 -> 130709 bytes
 logo/png8/600x600/while/blackbg/barebox.png        |  Bin 0 -> 68648 bytes
 logo/png8/800x800/color/blackbg/barebox.png        |  Bin 0 -> 205281 bytes
 logo/png8/800x800/white/blackbg/barebox.png        |  Bin 0 -> 104173 bytes
 logo/png8/900x900/color/blackbg/barebox.png        |  Bin 0 -> 236679 bytes
 logo/png8/900x900/white/blackbg/barebox.png        |  Bin 0 -> 106472 bytes
 88 files changed, 9394 insertions(+), 248 deletions(-)
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
 create mode 100644 logo/bmp/100x100/color/blackbg/barebox.bmp
 create mode 100644 logo/bmp/100x100/white/blackbg/barebox.bmp
 create mode 100644 logo/bmp/200x200/color/blackbg/barebox.bmp
 create mode 100644 logo/bmp/200x200/white/blackbg/barebox.bmp
 create mode 100644 logo/bmp/400x400/color/blackbg/barebox.bmp
 create mode 100644 logo/bmp/400x400/white/blackbg/barebox.bmp
 create mode 100644 logo/bmp/600x600/color/blackbg/barebox.bmp
 create mode 100644 logo/bmp/600x600/while/blackbg/barebox.bmp
 create mode 100644 logo/bmp/800x800/color/blackbg/barebox.bmp
 create mode 100644 logo/bmp/800x800/white/blackbg/barebox.bmp
 create mode 100644 logo/bmp/900x900/color/blackbg/barebox.bmp
 create mode 100644 logo/bmp/900x900/white/blackbg/barebox.bmp
 create mode 100644 logo/png24/100x100/color/barebox.png
 create mode 100644 logo/png24/100x100/color/blackbg/barebox.png
 create mode 100644 logo/png24/100x100/white/barebox.png
 create mode 100644 logo/png24/100x100/white/blackbg/barebox.png
 create mode 100644 logo/png24/200x200/color/barebox.png
 create mode 100644 logo/png24/200x200/color/blackbg/barebox.png
 create mode 100644 logo/png24/200x200/white/barebox.png
 create mode 100644 logo/png24/200x200/white/blackbg/barebox.png
 create mode 100644 logo/png24/400x400/color/barebox.png
 create mode 100644 logo/png24/400x400/color/blackbg/barebox.png
 create mode 100644 logo/png24/400x400/white/barebox.png
 create mode 100644 logo/png24/400x400/white/blackbg/barebox.png
 create mode 100644 logo/png24/600x600/color/barebox.png
 create mode 100644 logo/png24/600x600/color/blackbg/barebox.png
 create mode 100644 logo/png24/600x600/while/barebox.png
 create mode 100644 logo/png24/600x600/while/blackbg/barebox.png
 create mode 100644 logo/png24/800x800/color/barebox.png
 create mode 100644 logo/png24/800x800/color/blackbg/barebox.png
 create mode 100644 logo/png24/800x800/white/barebox.png
 create mode 100644 logo/png24/800x800/white/blackbg/barebox.png
 create mode 100644 logo/png24/900x900/color/barebox.png
 create mode 100644 logo/png24/900x900/color/blackbg/barebox.png
 create mode 100644 logo/png24/900x900/white/barebox.png
 create mode 100644 logo/png24/900x900/white/blackbg/barebox.png
 create mode 100644 logo/png8/100x100/color/blackbg/barebox.png
 create mode 100644 logo/png8/100x100/white/blackbg/barebox.png
 create mode 100644 logo/png8/200x200/color/blackbg/barebox.png
 create mode 100644 logo/png8/200x200/white/blackbg/barebox.png
 create mode 100644 logo/png8/400x400/color/blackbg/barebox.png
 create mode 100644 logo/png8/400x400/white/blackbg/barebox.png
 create mode 100644 logo/png8/600x600/color/blackbg/barebox.png
 create mode 100644 logo/png8/600x600/while/blackbg/barebox.png
 create mode 100644 logo/png8/800x800/color/blackbg/barebox.png
 create mode 100644 logo/png8/800x800/white/blackbg/barebox.png
 create mode 100644 logo/png8/900x900/color/blackbg/barebox.png
 create mode 100644 logo/png8/900x900/white/blackbg/barebox.png

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
