Delivery-date: Tue, 07 Feb 2023 13:55:08 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPNV8-00H12t-6g
	for lore@lore.pengutronix.de; Tue, 07 Feb 2023 13:55:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPNV5-00059I-4P
	for lore@pengutronix.de; Tue, 07 Feb 2023 13:55:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=giPP0cllSITQqCy40QVkhRmaaagT9QUIEn1Cpd/SkJk=; b=uVG1ZFg1qMndXnIPYAKQQ95Nm0
	L5la5zRYrPCrZjrjhsybAY7rPjMeCU2TPFarZ4XNQCRSpyKQmMufTC4LEA4IWe7jLvo6cgpGwJdT5
	Cj/nUPlGETavM9xaC6/IW6WyBsNScTHaxEZy1ip6lbTix2qpAMN5KlsQz0Z158JNzew3KIzBYlkts
	StBkQqORyJdwdBiv6iIha+WDd1RXGVA4BbgpwX/u+BEWLRhtS4rGhRveep3AA5mByAM2SCBWWp3Ch
	ENX9vU8/9X1bdAj0bh2yz9PbQEPnS2QybAKpAUGr2rZJSZvbmgq0HGH2AOoUqdrY5xVAVS+/qI86I
	GxQQtwuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPNTi-00CADk-Pi; Tue, 07 Feb 2023 12:53:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPNTa-00CABd-Rd
	for barebox@lists.infradead.org; Tue, 07 Feb 2023 12:53:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pPNTZ-00050q-6v; Tue, 07 Feb 2023 13:53:33 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pPNTX-003Hwx-Cc; Tue, 07 Feb 2023 13:53:32 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pPNTX-009mOa-Qq; Tue, 07 Feb 2023 13:53:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  7 Feb 2023 13:53:26 +0100
Message-Id: <20230207125327.2329378-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230207125327.2329378-1-s.hauer@pengutronix.de>
References: <20230207125327.2329378-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230207_045334_923147_03E6EC51 
X-CRM114-Status: GOOD (  13.78  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] ARM: i.MX Riotboard: Switch to board driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Switch the Riotboard to board driver with deep probe enabled.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/embest-riotboard/board.c | 20 +++++++++++++++-----
 1 file changed, 15 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boards/embest-riotboard/board.c b/arch/arm/boards/embest-riotboard/board.c
index ee6ae22190..c5162d2b06 100644
--- a/arch/arm/boards/embest-riotboard/board.c
+++ b/arch/arm/boards/embest-riotboard/board.c
@@ -17,6 +17,7 @@
 #include <mfd/imx6q-iomuxc-gpr.h>
 #include <linux/sizes.h>
 #include <linux/phy.h>
+#include <deep-probe.h>
 
 static int ar8035_phy_fixup(struct phy_device *dev)
 {
@@ -51,11 +52,8 @@ static int ar8035_phy_fixup(struct phy_device *dev)
 	return 0;
 }
 
-static int riotboard_device_init(void)
+static int riotboard_probe(struct device *dev)
 {
-	if (!of_machine_is_compatible("riot,imx6s-riotboard"))
-		return 0;
-
 	phy_register_fixup_for_uid(0x004dd072, 0xffffffef, ar8035_phy_fixup);
 
 	imx6_bbu_internal_mmc_register_handler("emmc", "/dev/mmc3.barebox",
@@ -66,4 +64,16 @@ static int riotboard_device_init(void)
 
 	return 0;
 }
-device_initcall(riotboard_device_init);
+
+static const struct of_device_id riotboard_of_match[] = {
+	{ .compatible = "riot,imx6s-riotboard"},
+	{ /* sentinel */ },
+};
+BAREBOX_DEEP_PROBE_ENABLE(riotboard_of_match);
+
+static struct driver riotboard_board_driver = {
+	.name = "board-riotboard",
+	.probe = riotboard_probe,
+	.of_compatible = DRV_OF_COMPAT(riotboard_of_match),
+};
+device_platform_driver(riotboard_board_driver);
-- 
2.30.2



