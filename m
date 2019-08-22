Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0g0T-0002yM-Fr
 for barebox@lists.infradead.org; Thu, 22 Aug 2019 05:51:36 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Thu, 22 Aug 2019 07:51:03 +0200
Message-Id: <20190822055114.931-1-ahmad@a3f.at>
MIME-Version: 1.0
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 00/11] treewide: fix some ARCH=arm clang warnings
To: barebox@lists.infradead.org
Cc: afa@pengutronix.de

I had tried to build imx_v7_defconfig with clang and ran into some
warnings. This series fixes them. Building for arm32 is still not
possible though, because clang explicitly doesn't support mixing C and
inline assembly in naked functions. (In GCC it is undefined behavior,
but happens to usually work for us).

Ahmad Fatoum (11):
  linux/kbuild.h: sync with upstream
  ratp: fix use of %hu for printing int
  complete: remove unused variable
  i2c-mux-pca954x: remove use of uninitialized variable
  net: phy: mv88e6xxx: remove duplicate member in struct initializer
  smc911x: fix inverted poll-for-ready
  nvme: use 64 bit types for timeouts even on 32 bit systems
  usb: gadget: fsl_udc: remove always-true null pointer checks
  commands: mmc_extcsd: describe missing bit
  gui: png_lode: fix freeing of uninitialized pointer
  fs: fat: fix use of wrong enumeration type

 commands/mmc_extcsd.c               | 11 +++++++++--
 common/complete.c                   |  2 --
 common/ratp/mw.c                    |  2 +-
 drivers/i2c/muxes/i2c-mux-pca954x.c |  6 +++---
 drivers/net/phy/mv88e6xxx/chip.c    |  1 -
 drivers/net/smc911x.c               |  2 +-
 drivers/nvme/host/core.c            |  4 ++--
 drivers/usb/gadget/fsl_udc.c        |  9 +--------
 fs/fat/ff.c                         |  2 +-
 include/ata_drive.h                 |  4 ++--
 include/linux/kbuild.h              |  7 ++++---
 include/mci.h                       |  1 +
 lib/gui/png_lode.c                  | 13 +++++++------
 13 files changed, 32 insertions(+), 32 deletions(-)

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
