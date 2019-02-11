Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gtDK6-0008Qw-0C
 for barebox@lists.infradead.org; Mon, 11 Feb 2019 15:16:44 +0000
From: Teresa Remmet <t.remmet@phytec.de>
Date: Mon, 11 Feb 2019 16:16:33 +0100
Message-Id: <1549898200-32688-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 0/7] Add ti-sysc bus driver
To: barebox@lists.infradead.org

Hello,

with the device tree update to v5.0-rc2 most of the barebox devices
could not be enabled or probed any more. The am33xx*.dtsi files
have been updated to the interconnect target module hierarchy.
To make barebox working again we need a ti-sysc bus driver to
register the child devices of the ti-sysc bus.

Teresa

Teresa Remmet (7):
  drivers: bus: Add ti-sysc bus driver
  arm: configs: omap_defconfig: Enable ti-sysc bus driver
  arm: configs: am33xx_mlo_defconfig: Enable ti-sysc bus driver
  drivers: of: Add function to enable and register a device by alias
  arm: mach-omap: am335x_generic: Enable nodes by alias where needed
  net: ethernet: cpsw: cpsw-phy-sel: Use phandle for phy sel
  arm: dts: am335x-phytec: Use phy-handle instead of phy_id

 arch/arm/configs/am335x_mlo_defconfig       |  2 +-
 arch/arm/configs/omap_defconfig             |  2 +-
 arch/arm/dts/am335x-phytec-phycard-som.dtsi |  7 ++++-
 arch/arm/dts/am335x-phytec-phycore-som.dtsi |  7 ++++-
 arch/arm/dts/am335x-phytec-phyflex-som.dtsi | 12 ++++++--
 arch/arm/mach-omap/am33xx_generic.c         |  8 ++---
 drivers/bus/Kconfig                         |  7 +++++
 drivers/bus/Makefile                        |  1 +
 drivers/bus/ti-sysc.c                       | 45 +++++++++++++++++++++++++++++
 drivers/net/cpsw.c                          | 17 +++++++----
 drivers/of/platform.c                       | 19 ++++++++++++
 include/of.h                                |  8 +++++
 12 files changed, 119 insertions(+), 16 deletions(-)
 create mode 100644 drivers/bus/ti-sysc.c

-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
