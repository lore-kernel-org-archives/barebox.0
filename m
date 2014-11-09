Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from down.free-electrons.com ([37.187.137.238]
 helo=mail.free-electrons.com)
 by casper.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XnTx1-0004gN-H1
 for barebox@lists.infradead.org; Sun, 09 Nov 2014 14:58:47 +0000
From: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Date: Sun,  9 Nov 2014 11:56:14 -0300
Message-Id: <1415544978-22392-1-git-send-email-ezequiel.garcia@free-electrons.com>
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
Subject: [PATCH v3 0/4] mvebu: Add network support for Armada 370/XP
To: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Very delayed third round of the support for the network controller present
on Marvell Armada 370/XP SoC.

The first patch enables the peripherals in a PUP register, which is required
on RGMII ports.

The second and third patches add support for Marvell's 88E1543 and 88E1545 PHY
chips.

The fourth patch adds the mvneta driver. Most of the configuration part is
based on Linux's mvneta driver, while some of code organization is based
on Barebox's orion-gbe driver.

Changes from v2:

  * Included SPI in the PUP register as noted by Sebastian.

  * Added MAC flow control configuration. Added missing support
    for TX-delayed RGMII (RGMII_TXID) and RX-delayed RGMII.
    As per Sebastian's comments.

  * Dropped the defconfig patch. mvebu_defconfig should work fine.

Ezequiel Garcia (4):
  ARM: mvebu: Enable PUP register
  net: phy: Support Marvell 88EE1545 PHY
  net: phy: Support Marvell 88EE1543 PHY
  net: Add driver for Armada 370/XP 10/100/1000 Mbps network controller

 arch/arm/mach-mvebu/armada-370-xp.c                |   5 +
 .../mach-mvebu/include/mach/armada-370-xp-regs.h   |   7 +
 drivers/net/Kconfig                                |   6 +
 drivers/net/Makefile                               |   1 +
 drivers/net/mvneta.c                               | 766 +++++++++++++++++++++
 drivers/net/phy/marvell.c                          |  67 ++
 include/linux/marvell_phy.h                        |   2 +
 7 files changed, 854 insertions(+)
 create mode 100644 drivers/net/mvneta.c

-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
