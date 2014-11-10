Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from down.free-electrons.com ([37.187.137.238]
 helo=mail.free-electrons.com)
 by casper.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XntbK-000221-U6
 for barebox@lists.infradead.org; Mon, 10 Nov 2014 18:22:07 +0000
From: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Date: Mon, 10 Nov 2014 15:19:42 -0300
Message-Id: <1415643587-12643-1-git-send-email-ezequiel.garcia@free-electrons.com>
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
Subject: [PATCH v4 0/5] mvebu: Add network support for Armada 370/XP
To: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Changes from v3:

  * As requested by Sascha, added a patch to fix the indentation
    in the marvell phys array.

Changes from v2:

  * Included SPI in the PUP register as noted by Sebastian.

  * Added MAC flow control configuration. Added missing support
    for TX-delayed RGMII (RGMII_TXID) and RX-delayed RGMII.
    As per Sebastian's comments.

  * Dropped the defconfig patch. mvebu_defconfig should work fine.

Ezequiel Garcia (5):
  ARM: mvebu: Enable PUP register
  net: phy: marvell: Fix array identation
  net: phy: Support Marvell 88EE1545 PHY
  net: phy: Support Marvell 88EE1543 PHY
  net: Add driver for Armada 370/XP 10/100/1000 Mbps network controller

 arch/arm/mach-mvebu/armada-370-xp.c                |   5 +
 .../mach-mvebu/include/mach/armada-370-xp-regs.h   |   7 +
 drivers/net/Kconfig                                |   6 +
 drivers/net/Makefile                               |   1 +
 drivers/net/mvneta.c                               | 766 +++++++++++++++++++++
 drivers/net/phy/marvell.c                          |  85 ++-
 include/linux/marvell_phy.h                        |   2 +
 7 files changed, 863 insertions(+), 9 deletions(-)
 create mode 100644 drivers/net/mvneta.c

-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
