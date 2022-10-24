Delivery-date: Mon, 24 Oct 2022 08:38:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1omr6g-000Lzt-KY
	for lore@lore.pengutronix.de; Mon, 24 Oct 2022 08:38:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1omr6f-0005Y0-FD
	for lore@pengutronix.de; Mon, 24 Oct 2022 08:38:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=PlCRH9F2JBpzCi9htfeWOj9fnr49omt67cWyA9nC+64=; b=Qx7frxeZLDPksYaKnsLfCZDAGp
	hrNlVH9nMqKu9kBsnGgvHyvYMYwRxg+jqb+pgn1JMHAAzvdxqdR0F7Msj8wuVKhFDk96eyErLCQvx
	WtO0kI3L+g/tRUYKm/1QpktJ/FBp2HBwu6s3rKyMe0JSa1HsPve2BddBCbSKY8tkPOHEjTkkNKfLt
	EeHek2ed4uosHVXJFA+LHkStK1gO7WeBwzGCkoz0tEYBdHdR6lYqlNO9q0P3i4/r6s+Wcc01++Ynh
	sr7m9dTeVyCOtRZc1PbusKQFh9ckbFmVMrTDh39MMge7lcmeiAuLxbB5Z7cDz2E+kSKjk/rkFACUJ
	giQ/dOSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omr4s-00HJYJ-36; Mon, 24 Oct 2022 06:36:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omr4n-00HJXW-3S
	for barebox@lists.infradead.org; Mon, 24 Oct 2022 06:36:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1omr4h-0005Nr-F5; Mon, 24 Oct 2022 08:36:39 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1omr4h-0003pU-OX; Mon, 24 Oct 2022 08:36:38 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1omr4f-0091Mh-Pm; Mon, 24 Oct 2022 08:36:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 24 Oct 2022 08:36:35 +0200
Message-Id: <20221024063636.2150155-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221023_233645_158249_542B0261 
X-CRM114-Status: GOOD (  13.37  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] ARM: imx8mm-evk: Switch to deep-probe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/nxp-imx8mm-evk/board.c | 24 +++++++++++++++++++-----
 1 file changed, 19 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boards/nxp-imx8mm-evk/board.c b/arch/arm/boards/nxp-imx8mm-evk/board.c
index 6e4df60065..3f14c05da1 100644
--- a/arch/arm/boards/nxp-imx8mm-evk/board.c
+++ b/arch/arm/boards/nxp-imx8mm-evk/board.c
@@ -8,6 +8,7 @@
 #include <linux/phy.h>
 #include <linux/sizes.h>
 #include <mach/bbu.h>
+#include <deep-probe.h>
 
 #include <envfs.h>
 
@@ -30,14 +31,11 @@ static int ar8031_phy_fixup(struct phy_device *phydev)
 	return 0;
 }
 
-static int nxp_imx8mm_evk_init(void)
+static int imx8mm_evk_probe(struct device_d *dev)
 {
 	int emmc_bbu_flag = 0;
 	int sd_bbu_flag = 0;
 
-	if (!of_machine_is_compatible("fsl,imx8mm-evk"))
-		return 0;
-
 	barebox_set_hostname("imx8mm-evk");
 
 	if (bootsource_get() == BOOTSOURCE_MMC) {
@@ -60,4 +58,20 @@ static int nxp_imx8mm_evk_init(void)
 				   ar8031_phy_fixup);
 	return 0;
 }
-device_initcall(nxp_imx8mm_evk_init);
+
+static const struct of_device_id imx8mm_evk_of_match[] = {
+	{
+		.compatible = "fsl,imx8mm-evk",
+	},
+	{ /* sentinel */ },
+};
+
+
+static struct driver_d imx8mm_evk_board_driver = {
+	.name = "board-imx8mm-evk",
+	.probe = imx8mm_evk_probe,
+	.of_compatible = imx8mm_evk_of_match,
+};
+coredevice_platform_driver(imx8mm_evk_board_driver);
+
+BAREBOX_DEEP_PROBE_ENABLE(imx8mm_evk_of_match);
-- 
2.30.2



