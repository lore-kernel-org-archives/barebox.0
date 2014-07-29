Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from top.free-electrons.com ([176.31.233.9]
 helo=mail.free-electrons.com)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XCEIG-0004dg-LI
 for barebox@lists.infradead.org; Tue, 29 Jul 2014 20:46:45 +0000
From: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Date: Tue, 29 Jul 2014 17:44:55 -0300
Message-Id: <1406666701-15356-1-git-send-email-ezequiel.garcia@free-electrons.com>
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
Subject: [PATCH 0/6] Add network support for Armada 370/XP
To: barebox@lists.infradead.org
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, Jason Cooper <jason@lakedaemon.net>, Willy Tarreau <w@1wt.eu>

This patchset adds support for the network controller found on Marvell
Armada 370/XP SoC.

The first patch is needed to parse the PHY property used in the current
devicetree, which uses 'phy' instead of 'phy-handle'. While here, the patch
adds support for the two obsolete DT PHY properties: 'phy' and 'phy-device'.

The second patch is actually an improvement. It makes the clock a required
property of the mvmdio driver, which makes the probing of the device more
robust, and prevents the annoying freezing when the clock is not provided.

The third patch supports the QSGMII interface.

The fourth patch adds support for the Marvell 88E1545 PHY chip. There's not
much work to do, except configuring the QSGMII interface. This chip is present
in Marvell's Armada XP GP board.

The fifth patch adds the mvneta driver. Most of the configuration part is
based on Linux's mvneta driver, while some of code organization is based
on Barebox's orion-gbe driver.

The last patch adds network support in the defconfigs.

This has been tested on the Armada XP GP board only. I'll try to test
Openblocks AX3 and Mirabox in the following days. However, we might need
some special PHY support for each them, as the Openblocks AX3 has a
88E1543 PHY, and the Mirabox has a 88E1510 PHY.

Ezequiel Garcia (6):
  net: phy: Add fallbacks for the obsoletes phy DT properties
  net: phy: mdio-mvebu: Make the clock property required
  net: phy: Add minimal support for QSGMII PHY
  net: phy: Support Marvell 88EE1545 PHY
  net: Add driver for Armada 370/XP 10/100/1000 Mbps network controller
  configs: Add network options to Armada 370/XP boards

 arch/arm/configs/globalscale_mirabox_defconfig     |   4 +
 arch/arm/configs/marvell_armada_xp_gp_defconfig    |   4 +
 arch/arm/configs/plathome_openblocks_ax3_defconfig |   4 +
 drivers/net/Kconfig                                |   6 +
 drivers/net/Makefile                               |   1 +
 drivers/net/mvneta.c                               | 758 +++++++++++++++++++++
 drivers/net/phy/marvell.c                          |  59 ++
 drivers/net/phy/mdio-mvebu.c                       |   8 +-
 drivers/net/phy/phy.c                              |   4 +
 drivers/of/of_net.c                                |   1 +
 include/linux/phy.h                                |   1 +
 11 files changed, 846 insertions(+), 4 deletions(-)
 create mode 100644 drivers/net/mvneta.c

-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
