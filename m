Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1grHxc-0001gn-IA
 for barebox@lists.infradead.org; Wed, 06 Feb 2019 07:49:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  6 Feb 2019 08:49:13 +0100
Message-Id: <20190206074921.11115-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 0/8] MMC: esdhc: Add Layerscape support
To: Barebox List <barebox@lists.infradead.org>

This adds support for the esdhc controller found found on Layerscape
SoCs. It is essentially the same controller as found on i.MX SoCs, but
with bigendian accesses. Some preparation needs to be done to drop
architecture specific stuff from the driver.

Layerscape support itself is in progress but still needs some time.

Sascha

Sascha Hauer (8):
  mci: imx-esdhc: Do not reset twice
  mci: imx-esdhc: use dev_id
  mci: imx-esdhc: move platform_data
  mci: imx-esdhc: make clkidx configurable
  mci: imx-esdhc: remove unnecessary include
  mci: imx-esdhc: implement static inline io wrappers
  mci: imx-esdhc: Add bigendian register access support
  mci: imx-esdhc: Add layerscape support

 arch/arm/mach-imx/devices.c                   |   9 +-
 .../arm/mach-imx/include/mach/devices-imx25.h |   4 +-
 .../arm/mach-imx/include/mach/devices-imx35.h |   6 +-
 .../arm/mach-imx/include/mach/devices-imx50.h |   8 +-
 .../arm/mach-imx/include/mach/devices-imx51.h |   6 +-
 .../arm/mach-imx/include/mach/devices-imx53.h |   8 +-
 arch/arm/mach-imx/include/mach/devices-imx6.h |  20 --
 arch/arm/mach-imx/include/mach/devices.h      |   5 +-
 drivers/mci/Kconfig                           |   2 +-
 drivers/mci/imx-esdhc.c                       | 286 ++++++++++--------
 drivers/mci/imx-esdhc.h                       |   6 -
 .../platform_data/mmc-esdhc-imx.h             |   0
 12 files changed, 195 insertions(+), 165 deletions(-)
 rename arch/arm/mach-imx/include/mach/esdhc.h => include/platform_data/mmc-esdhc-imx.h (100%)

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
