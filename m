Delivery-date: Mon, 10 Jul 2023 08:38:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qIkXm-005NaM-RO
	for lore@lore.pengutronix.de; Mon, 10 Jul 2023 08:38:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qIkXk-0003Ev-DS
	for lore@pengutronix.de; Mon, 10 Jul 2023 08:38:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=9oXf5nW+4+rurocN6FOirVcMq+ECnVW9+T4yLzOP+ug=; b=TqTsZj94wtwAk4hGf3eWvHtv+5
	G8d2GfcOpKEKdJnOp9JL3zQnHfo33so8AvYfuQskig2/aV4Anq9cuT4xmJZ5Jy+/QStbeKaqq760k
	FY3UonW1GXB2PbPZSo/ZpXXbB0QZQKsYy7SjmhxTpre9CSKt41siB/MIMphnTZ0ap9sNfYf9/WHxd
	evVAj7eZm0+m8FbI+vxo/MuYE9IvGnnEIlfamvOxC7+MWLpOSl0kle5Ncw/kNy6WS6aCmTc5VzmsE
	ganDIVyH8FxaUNqFcirJyT9vlX+5BwLKfDxdZp+dgPDbtE8OSMNByHAh3RpKF44vPJaCJKLzT6/27
	JmW+wNbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qIkWN-00Aaxg-3A;
	Mon, 10 Jul 2023 06:37:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qIkWG-00Aath-2u
	for barebox@lists.infradead.org;
	Mon, 10 Jul 2023 06:37:15 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qIkW3-0002w5-Iv
	for barebox@lists.infradead.org; Mon, 10 Jul 2023 08:36:59 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 10 Jul 2023 08:36:47 +0200
Message-Id: <20230710063653.660040-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230709_233712_936233_F950FDDC 
X-CRM114-Status: UNSURE (   9.27  )
X-CRM114-Notice: Please train this message.
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/7] ARM: boards: make use of MDIO_MMD register defines
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Make use of the register definition instead of having magic numbers. No
functional change.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/boards/datamodul-edm-qmx6/board.c   | 7 ++++---
 arch/arm/boards/embest-marsboard/board.c     | 7 ++++---
 arch/arm/boards/terasic-de0-nano-soc/board.c | 7 ++++---
 arch/arm/boards/terasic-de10-nano/board.c    | 7 ++++---
 arch/arm/boards/tqma6x/board.c               | 7 ++++---
 5 files changed, 20 insertions(+), 15 deletions(-)

diff --git a/arch/arm/boards/datamodul-edm-qmx6/board.c b/arch/arm/boards/datamodul-edm-qmx6/board.c
index 9adb3ee0f8..366b64d35a 100644
--- a/arch/arm/boards/datamodul-edm-qmx6/board.c
+++ b/arch/arm/boards/datamodul-edm-qmx6/board.c
@@ -11,6 +11,7 @@
 #include <gpio.h>
 #include <of.h>
 
+#include <linux/mdio.h>
 #include <linux/micrel_phy.h>
 #include <mfd/stmpe-i2c.h>
 
@@ -48,9 +49,9 @@ static int ksz9031rn_phy_fixup(struct phy_device *dev)
 	 * min rx data delay, max rx/tx clock delay,
 	 * min rx/tx control delay
 	 */
-	phy_write_mmd_indirect(dev, 4, 2, 0);
-	phy_write_mmd_indirect(dev, 5, 2, 0);
-	phy_write_mmd_indirect(dev, 8, 2, 0x03ff);
+	phy_write_mmd_indirect(dev, 4, MDIO_MMD_WIS, 0);
+	phy_write_mmd_indirect(dev, 5, MDIO_MMD_WIS, 0);
+	phy_write_mmd_indirect(dev, 8, MDIO_MMD_WIS, 0x03ff);
 
 	return 0;
 }
diff --git a/arch/arm/boards/embest-marsboard/board.c b/arch/arm/boards/embest-marsboard/board.c
index 7835a9265a..7274595e2a 100644
--- a/arch/arm/boards/embest-marsboard/board.c
+++ b/arch/arm/boards/embest-marsboard/board.c
@@ -9,6 +9,7 @@
 #include <init.h>
 #include <envfs.h>
 #include <mach/imx/bbu.h>
+#include <linux/mdio.h>
 #include <linux/phy.h>
 #include <deep-probe.h>
 
@@ -19,13 +20,13 @@ static int ar8035_phy_fixup(struct phy_device *dev)
 	/* Ar803x phy SmartEEE feature cause link status generates glitch,
 	 * which cause ethernet link down/up issue, so disable SmartEEE
 	 */
-	val = phy_read_mmd_indirect(dev, 0x805d, 0x3);
+	val = phy_read_mmd_indirect(dev, 0x805d, MDIO_MMD_PCS);
 	phy_write(dev, MII_MMD_DATA, val & ~(1 << 8));
 
-	val = phy_read_mmd_indirect(dev, 0x4003, 0x3);
+	val = phy_read_mmd_indirect(dev, 0x4003, MDIO_MMD_PCS);
 	phy_write(dev, MII_MMD_DATA, val & ~(1 << 8));
 
-	val = phy_read_mmd_indirect(dev, 0x4007, 0x3);
+	val = phy_read_mmd_indirect(dev, 0x4007, MDIO_MMD_PCS);
 	val &= 0xffe3;
 	val |= 0x18;
 	phy_write(dev, MII_MMD_DATA, val);
diff --git a/arch/arm/boards/terasic-de0-nano-soc/board.c b/arch/arm/boards/terasic-de0-nano-soc/board.c
index 19f74b784c..832160c595 100644
--- a/arch/arm/boards/terasic-de0-nano-soc/board.c
+++ b/arch/arm/boards/terasic-de0-nano-soc/board.c
@@ -5,6 +5,7 @@
 #include <driver.h>
 #include <init.h>
 #include <asm/armlinux.h>
+#include <linux/mdio.h>
 #include <linux/micrel_phy.h>
 #include <linux/phy.h>
 #include <linux/sizes.h>
@@ -18,9 +19,9 @@ static int phy_fixup(struct phy_device *dev)
 	 * min rx data delay, max rx/tx clock delay,
 	 * min rx/tx control delay
 	 */
-	phy_write_mmd_indirect(dev, 4, 2, 0);
-	phy_write_mmd_indirect(dev, 5, 2, 0);
-	phy_write_mmd_indirect(dev, 8, 2, 0x003ff);
+	phy_write_mmd_indirect(dev, 4, MDIO_MMD_WIS, 0);
+	phy_write_mmd_indirect(dev, 5, MDIO_MMD_WIS, 0);
+	phy_write_mmd_indirect(dev, 8, MDIO_MMD_WIS, 0x003ff);
 	return 0;
 }
 
diff --git a/arch/arm/boards/terasic-de10-nano/board.c b/arch/arm/boards/terasic-de10-nano/board.c
index 580c898012..e47d9ac841 100644
--- a/arch/arm/boards/terasic-de10-nano/board.c
+++ b/arch/arm/boards/terasic-de10-nano/board.c
@@ -5,6 +5,7 @@
 #include <driver.h>
 #include <init.h>
 #include <asm/armlinux.h>
+#include <linux/mdio.h>
 #include <linux/micrel_phy.h>
 #include <linux/phy.h>
 #include <linux/sizes.h>
@@ -18,9 +19,9 @@ static int phy_fixup(struct phy_device *dev)
 	 * min rx data delay, max rx/tx clock delay,
 	 * min rx/tx control delay
 	 */
-	phy_write_mmd_indirect(dev, 4, 2, 0);
-	phy_write_mmd_indirect(dev, 5, 2, 0);
-	phy_write_mmd_indirect(dev, 8, 2, 0x003ff);
+	phy_write_mmd_indirect(dev, 4, MDIO_MMD_WIS, 0);
+	phy_write_mmd_indirect(dev, 5, MDIO_MMD_WIS, 0);
+	phy_write_mmd_indirect(dev, 8, MDIO_MMD_WIS, 0x003ff);
 	return 0;
 }
 
diff --git a/arch/arm/boards/tqma6x/board.c b/arch/arm/boards/tqma6x/board.c
index 4bb7223a6e..8a91ad652a 100644
--- a/arch/arm/boards/tqma6x/board.c
+++ b/arch/arm/boards/tqma6x/board.c
@@ -11,6 +11,7 @@
 #include <gpio.h>
 #include <of.h>
 
+#include <linux/mdio.h>
 #include <linux/micrel_phy.h>
 #include <mfd/stmpe-i2c.h>
 
@@ -46,9 +47,9 @@ static int ksz9031rn_phy_fixup(struct phy_device *dev)
 	 * min rx data delay, max rx/tx clock delay,
 	 * min rx/tx control delay
 	 */
-	phy_write_mmd_indirect(dev, 4, 2, 0);
-	phy_write_mmd_indirect(dev, 5, 2, 0);
-	phy_write_mmd_indirect(dev, 8, 2, 0x003ff);
+	phy_write_mmd_indirect(dev, 4, MDIO_MMD_WIS, 0);
+	phy_write_mmd_indirect(dev, 5, MDIO_MMD_WIS, 0);
+	phy_write_mmd_indirect(dev, 8, MDIO_MMD_WIS, 0x003ff);
 
 	return 0;
 }
-- 
2.39.2



