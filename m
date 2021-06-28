Delivery-date: Mon, 28 Jun 2021 09:10:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxlPQ-0002Lm-2k
	for lore@lore.pengutronix.de; Mon, 28 Jun 2021 09:10:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxlPO-0007Ot-UE
	for lore@pengutronix.de; Mon, 28 Jun 2021 09:10:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PhI6hXNV8M2iSdk3b8L7+RyIB6i8kg84E9qO3W+uGuc=; b=sbuHHkgjMz8M8k
	XKYlchYxHC9DginBrUbCjJjx9IaMYFhfjEJmedz2QOW4rRjXw6gQTGWn/heyn7WEM9cYsS99kkj8A
	q3/xg0ax5b9NuYNpw4ceH/LREP5fIM3Fkp97I20gPx+3l983sXAerhoR4+Iae6ANDRKghtVhDWUEu
	0hQk6CJFShp1ZzvxfxK5evRavSBCFMm5Xsjd9echLOiZTH4VxT7Jbb0cGENbkeJ+W83vpfQ884lGW
	uEH43vM20vvICPKGjVM2PGd+8iBsOXagQ6ae0SCphNDLPOH7MmAoQ3pUfJr9kl3qVSEepEqsE574m
	6azO0D7krkH9bFY27l6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lxlO6-007AQW-VY; Mon, 28 Jun 2021 07:08:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lxlLi-0079UA-OZ
 for barebox@lists.infradead.org; Mon, 28 Jun 2021 07:06:32 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lxlLh-0006iK-BD; Mon, 28 Jun 2021 09:06:29 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lxlLh-0004JE-24; Mon, 28 Jun 2021 09:06:29 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 28 Jun 2021 09:06:26 +0200
Message-Id: <20210628070627.16329-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210628_000630_888216_EC32E5D8 
X-CRM114-Status: GOOD (  10.15  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] ARM: imx6: marsboard: simplify ar8035 PHY fixups
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

These are the same fixups as the riotboard's, itself propably taken from Linux,
where mach-imx registers the same fixups for  ar803x PHYs.

Some of these fixups can now be solved by PHY properties added since.
Make use of them and make the remaining MMD indirect phy usage
more compact by using phy_read_mmd_indirect.

Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/embest-marsboard/board.c | 24 ++++++------------------
 arch/arm/dts/imx6q-marsboard.dts         |  5 +++++
 2 files changed, 11 insertions(+), 18 deletions(-)

diff --git a/arch/arm/boards/embest-marsboard/board.c b/arch/arm/boards/embest-marsboard/board.c
index 66893434c2cc..72d0aa28f781 100644
--- a/arch/arm/boards/embest-marsboard/board.c
+++ b/arch/arm/boards/embest-marsboard/board.c
@@ -18,28 +18,16 @@ static int ar8035_phy_fixup(struct phy_device *dev)
 	/* Ar803x phy SmartEEE feature cause link status generates glitch,
 	 * which cause ethernet link down/up issue, so disable SmartEEE
 	 */
-	phy_write(dev, 0xd, 0x3);
-	phy_write(dev, 0xe, 0x805d);
-	phy_write(dev, 0xd, 0x4003);
+	val = phy_read_mmd_indirect(dev, 0x805d, 0x3);
+	phy_write(dev, MII_MMD_DATA, val & ~(1 << 8));
 
-	val = phy_read(dev, 0xe);
-	phy_write(dev, 0xe, val & ~(1 << 8));
+	val = phy_read_mmd_indirect(dev, 0x4003, 0x3);
+	phy_write(dev, MII_MMD_DATA, val & ~(1 << 8));
 
-	/* To enable AR8031 ouput a 125MHz clk from CLK_25M */
-	phy_write(dev, 0xd, 0x7);
-	phy_write(dev, 0xe, 0x8016);
-	phy_write(dev, 0xd, 0x4007);
-
-	val = phy_read(dev, 0xe);
+	val = phy_read_mmd_indirect(dev, 0x4007, 0x3);
 	val &= 0xffe3;
 	val |= 0x18;
-	phy_write(dev, 0xe, val);
-
-	/* introduce tx clock delay */
-	phy_write(dev, 0x1d, 0x5);
-	val = phy_read(dev, 0x1e);
-	val |= 0x0100;
-	phy_write(dev, 0x1e, val);
+	phy_write(dev, MII_MMD_DATA, val);
 
 	return 0;
 }
diff --git a/arch/arm/dts/imx6q-marsboard.dts b/arch/arm/dts/imx6q-marsboard.dts
index 1d9f8f005df7..cc5edfff66f9 100644
--- a/arch/arm/dts/imx6q-marsboard.dts
+++ b/arch/arm/dts/imx6q-marsboard.dts
@@ -36,6 +36,11 @@
 
 &fec {
 	phy-reset-duration = <2>;
+	phy-mode = "rgmii-id";
+};
+
+&rgmii_phy {
+	qca,clk-out-frequency = <125000000>;
 };
 
 &ocotp {
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

