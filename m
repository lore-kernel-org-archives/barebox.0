Delivery-date: Tue, 21 Oct 2025 16:45:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBDbl-00AHbh-0C
	for lore@lore.pengutronix.de;
	Tue, 21 Oct 2025 16:45:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBDbk-0000WR-IB
	for lore@pengutronix.de; Tue, 21 Oct 2025 16:45:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=KV90ntcKGWcgyCBFcTbuJd6RKDwtt16g7hpt4qhc7lg=; b=O2WC5EA1XWMqtH/4JHw8W9zbxg
	w3USrpQ/j3TP5LIzKlanp6jYD/1FI2aGEI31Yk5I/KjLkCGHc7jxMiujGrKHzlFIwo2wIvDMiuTCV
	4zO6oC+8znE1GS3/tI8o2X4HEFvgOKAeeE2EK4QbpKWVyZaEuAfQQ0cZFDX5d0/CEmEcoC5v/eDIP
	Nz1od9phvaME/ga3vdMzhyWklGOdy4M/UqlpS5HOFvDxVpIsNCWohaVIBJguyE6ETsFj8QpruwnjL
	CegRbpM+jP2rfjmu+cGuKHZbkG1EAu3eCCY1QzwGChI95aQqjag5eyLu8BIO8ykoZ9qxt9txotP8u
	T9CjvkuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBDbN-0000000HNBN-3xP5;
	Tue, 21 Oct 2025 14:44:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBDbL-0000000HNAW-2fkV
	for barebox@lists.infradead.org;
	Tue, 21 Oct 2025 14:44:40 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pfitzner@pengutronix.de>)
	id 1vBDbK-0000SW-6G; Tue, 21 Oct 2025 16:44:38 +0200
From: Fabian Pfitzner <f.pfitzner@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Fabian Pfitzner <f.pfitzner@pengutronix.de>
Date: Tue, 21 Oct 2025 16:42:44 +0200
Message-ID: <20251021144243.1231871-2-f.pfitzner@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_074439_691299_B0476BE6 
X-CRM114-Status: UNSURE (   8.89  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] dts: arm: imx6: remove mmc1 alias
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Setting the mmc1 alias to usdhc4 in the dts overwrites the mmc1 alias set in
the included imx6dl.dtsi file. This causes mmc1 and mmc3 pointing to the same address.

This creates the device name as /dev/mmc1* instead of the expected /dev/mmc3* name.
As the barebox update handler is configured for mmc3, updating is not
possible anymore.

This patch solves this by removing the mmc1 alias from the dts.

Signed-off-by: Fabian Pfitzner <f.pfitzner@pengutronix.de>
---
 dts/src/arm/nxp/imx/imx6s-btx53lb000.dts | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/dts/src/arm/nxp/imx/imx6s-btx53lb000.dts b/dts/src/arm/nxp/imx/imx6s-btx53lb000.dts
index f8141832cd..c395bffe06 100644
--- a/dts/src/arm/nxp/imx/imx6s-btx53lb000.dts
+++ b/dts/src/arm/nxp/imx/imx6s-btx53lb000.dts
@@ -9,10 +9,6 @@ / {
 	model = "Waygate BTX53LB000v2";
 	compatible = "karo,imx6dl-tx6dl", "fsl,imx6dl";
 
-	aliases {
-		mmc1 = &usdhc4;
-	};
-
 	backlight: backlight {
 		compatible = "pwm-backlight";
 		pinctrl-0 = <&pinctrl_backlight>;
-- 
2.47.3



