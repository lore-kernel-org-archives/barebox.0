Delivery-date: Wed, 25 Feb 2026 15:03:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vvFUH-005XgV-13
	for lore@lore.pengutronix.de;
	Wed, 25 Feb 2026 15:03:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vvFUH-0001SP-Fp
	for lore@pengutronix.de; Wed, 25 Feb 2026 15:03:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Tq7G4+9IFMJ7gKz8kw9E5VLp0Or5v04E07aRk/G5QgU=; b=fObItasP3z79xGt0sXPYHn7U8v
	RwR9+XV74P6/O+BtiFSnQaxmF02WuGbfnPMUyTgvTh2xyTV8KgKS4V+LYwF5kG8OZaBpnK2J9Pmdw
	Hu/sCaB6q4sk2oQdKehB1XzYCCWzea/g/SBGrD3VdoKhoyZk5tMaaK+cz0VLrvbM3B/ka7tcfGgIH
	OVZ7c78MJeF3bNml/dd4sK0SkdB1FZxhRZ+NMK1sPFAy4dKK9S7Hy5z5W+uMZuWyip76E+k45ks1G
	gydoSgeSE/37EHag6QBvnRv/NGXtaH/q9zeuvYqp+TJMv8Dr8cFEA4Gy/DzLOQAxMOPesjXwsWqh1
	WjjuesSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvFTj-00000004A4W-06qG;
	Wed, 25 Feb 2026 14:03:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvFTf-00000004A3x-3XZ8
	for barebox@lists.infradead.org;
	Wed, 25 Feb 2026 14:03:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vvFTe-0001HP-4K; Wed, 25 Feb 2026 15:02:58 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vvFTc-002ZYz-1v;
	Wed, 25 Feb 2026 15:02:57 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vvFTd-00000000i7p-3QeZ;
	Wed, 25 Feb 2026 15:02:57 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 25 Feb 2026 15:02:49 +0100
Message-ID: <20260225140256.165703-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260225_060259_883980_4FA8DBC1 
X-CRM114-Status: GOOD (  21.26  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master] net: am65-cpsw-nuss: fix up PHY mode for fixed RGMII TX delay
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To restore compatibility with newer Linux device trees and fix network
breakage on Beagleplay, import following U-Boot commit:

| commit 4b10bcfdef9cb544ca80988fe36d307a622bcd21
| Author:     Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
| AuthorDate: Tue Sep 30 10:05:11 2025 +0200
| Commit:     Tom Rini <trini@konsulko.com>
| CommitDate: Fri Oct 10 11:07:44 2025 -0600
|
|     net: ethernet: ti: am65-cpsw: fix up PHY mode for fixed RGMII TX delay
|
|     The am65-cpsw driver currently sets the SEL_RGMII_IDMODE flag in a MAC's
|     mode register to enable or disable the TX delay. While this was supported
|     for earlier generations of the CPSW controller, the datasheets of all
|     modern TI SoCs using the am65-cpsw MAC state that the TX delay is fixed,
|     and the SEL_RGMII_IDMODE bit is documented as reserved in most of them.
|     Furthermore, while it was found that this bit does in fact disable the TX
|     delay, [1] states that this setting is truly unsupported by TI and not
|     just undocumented.
|
|     Following the clarification of the rgmii* phy-mode values in the Linux
|     DT bindings in [2], the Linux am65-cpsw driver was changed in [3] to
|     account for the fixed TX delay by fixing up the mode passed to the PHY
|     driver; a similar fixup already existed in the TI icssg-prueth driver.
|     [4] followed up on this by explicitly clearing the SEL_RGMII_IDMODE flag
|     to handle the case where it is set by the bootloader or other firmware
|     before Linux.
|
|     With the above changes, Device Trees that set the recommended "rgmii-id"
|     mode are now appearing in Linux 6.17+. Avoid setting the unsupported
|     SEL_RGMII_IDMODE flag for such Device Trees, and instead fix up the PHY
|     interface mode, thus aligning the U-Boot driver with the Linux kernel.
|
|     [1] https://www.spinics.net/lists/netdev/msg1112647.html
|     [2] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=c360eb0c3ccb95306704fd221442283ee82f1f58
|     [3] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=ca13b249f291f4920466638d1adbfb3f9c8db6e9
|     [4] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=a22d3b0d49d411e64ed07e30c2095035ecb30ed2
|
|     Signed-off-by: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>

Fixes: a3bf6c16f77d ("dts: update to v6.19-rc1")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/am65-cpsw-nuss.c | 43 +++++++++++++++++++++++-------------
 1 file changed, 28 insertions(+), 15 deletions(-)

diff --git a/drivers/net/am65-cpsw-nuss.c b/drivers/net/am65-cpsw-nuss.c
index 6b5a5d9533bf..66116338a96b 100644
--- a/drivers/net/am65-cpsw-nuss.c
+++ b/drivers/net/am65-cpsw-nuss.c
@@ -195,14 +195,11 @@ static void am65_cpsw_update_link(struct eth_device *edev)
 #define AM65_GMII_SEL_MODE_RGMII	2
 #define AM65_GMII_SEL_MODE_SGMII	3
 
-#define AM65_GMII_SEL_RGMII_IDMODE	BIT(4)
-
 static int am65_cpsw_gmii_sel_k3(struct am65_cpsw_port *port,
 				 phy_interface_t phy_mode)
 {
 	struct device *dev = &port->dev;
 	u32 offset, reg;
-	bool rgmii_id = false;
 	struct regmap *gmii_sel;
 	u32 mode = 0;
 	int ret;
@@ -229,12 +226,6 @@ static int am65_cpsw_gmii_sel_k3(struct am65_cpsw_port *port,
 		mode = AM65_GMII_SEL_MODE_RGMII;
 		break;
 
-	case PHY_INTERFACE_MODE_RGMII_ID:
-	case PHY_INTERFACE_MODE_RGMII_TXID:
-		mode = AM65_GMII_SEL_MODE_RGMII;
-		rgmii_id = true;
-		break;
-
 	case PHY_INTERFACE_MODE_SGMII:
 		mode = AM65_GMII_SEL_MODE_SGMII;
 		break;
@@ -249,9 +240,6 @@ static int am65_cpsw_gmii_sel_k3(struct am65_cpsw_port *port,
 		break;
 	};
 
-	if (rgmii_id)
-		mode |= AM65_GMII_SEL_RGMII_IDMODE;
-
 	reg = mode;
 	dev_dbg(dev, "gmii_sel PHY mode: %u, new gmii_sel: %08x\n",
 		phy_mode, reg);
@@ -594,11 +582,36 @@ static int am65_cpsw_ofdata_parse_phy(struct am65_cpsw_port *port)
 {
 	int ret;
 
+
 	ret = of_get_phy_mode(port->device_node);
-	if (ret < 0)
+	if (ret < 0) {
+		dev_warn(&port->dev, "Invalid PHY mode, port %u\n", port->port_id);
 		port->interface = PHY_INTERFACE_MODE_MII;
-	else
-		port->interface = ret;
+		return 0;
+	}
+
+	port->interface = ret;
+
+	/* CPSW controllers supported by this driver have a fixed
+	 * internal TX delay in RGMII mode. Fix up PHY mode to account
+	 * for this and warn about Device Trees that claim to have a TX
+	 * delay on the PCB.
+	 */
+	switch (port->interface) {
+	case PHY_INTERFACE_MODE_RGMII_ID:
+		port->interface = PHY_INTERFACE_MODE_RGMII_RXID;
+		break;
+	case PHY_INTERFACE_MODE_RGMII_TXID:
+		port->interface = PHY_INTERFACE_MODE_RGMII;
+		break;
+	case PHY_INTERFACE_MODE_RGMII:
+	case PHY_INTERFACE_MODE_RGMII_RXID:
+		dev_warn(&port->dev,
+			 "RGMII mode without internal TX delay unsupported; please fix your Device Tree\n");
+		break;
+	default:
+		break;
+	}
 
 	return 0;
 }
-- 
2.47.3



