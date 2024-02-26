Delivery-date: Mon, 26 Feb 2024 15:16:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rebmC-0085VD-0z
	for lore@lore.pengutronix.de;
	Mon, 26 Feb 2024 15:16:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rebmB-0000Np-M1
	for lore@pengutronix.de; Mon, 26 Feb 2024 15:16:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IxfyWOTJogatvpZdnwUPZYhRDkFF1LfCsk24uVXpo+A=; b=XFC834ZnTrZH7Qy942qmvD17kG
	HlajcTQYfruXyStx1IP0zsKYoL3E2Jx1JRLPPQ64OBoSZdk52P8L7+3iYfi/u2YlTOCQZf+gQAOfq
	LHhUKlKG/mSwzcc4I2KmqE/6Ec+EOh/yG1LEBWZzRmiyso1LfcYV+DkI/gpYdruBnHb+HNv+vpVLL
	L+60S2NNP18/aTO/goDuHCNc56PNLfPlN1L9aJCy2WEJKm8LjTPanST2nM1hZS8QrZ3zuRl2Vr6wd
	K6/NO46CONF7e8YGMarebKDZDpjU6XyvUBhUm+7WuudejN66XQqpmS11LV8ncnVTG0KxUDjLaRjQz
	RsT81GSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rebl8-0000000145u-3mER;
	Mon, 26 Feb 2024 14:15:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rebl1-000000013yy-0d9d
	for barebox@lists.infradead.org;
	Mon, 26 Feb 2024 14:15:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rebkx-00005s-UL; Mon, 26 Feb 2024 15:14:59 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rebkx-0030pc-Ho; Mon, 26 Feb 2024 15:14:59 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rebkx-002bPf-1S;
	Mon, 26 Feb 2024 15:14:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 26 Feb 2024 15:14:58 +0100
Message-Id: <20240226141458.620463-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240226141458.620463-1-s.hauer@pengutronix.de>
References: <20240226141458.620463-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240226_061503_896623_9E20629E 
X-CRM114-Status: GOOD (  11.10  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] ARM: i.MX6ul: TQMa6ul: install barebox on eMMC boot partitions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Install barebox on the eMMC boot partitions which offer enough space
for bigger barebox images and which also provides a failsafe update.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/tqma6ulx/board.c        | 2 +-
 arch/arm/dts/imx6ul-tqma6ul-common.dtsi | 5 -----
 2 files changed, 1 insertion(+), 6 deletions(-)

diff --git a/arch/arm/boards/tqma6ulx/board.c b/arch/arm/boards/tqma6ulx/board.c
index 04e35c199e..c559568880 100644
--- a/arch/arm/boards/tqma6ulx/board.c
+++ b/arch/arm/boards/tqma6ulx/board.c
@@ -84,7 +84,7 @@ static int mba6ulx_probe(struct device *dev)
 	imx6_bbu_internal_mmc_register_handler("SD", "/dev/mmc1.barebox", flags);
 
 	flags = bootsource_get_instance() == 0 ? BBU_HANDLER_FLAG_DEFAULT : 0;
-	imx6_bbu_internal_mmc_register_handler("eMMC", "/dev/mmc0", flags);
+	imx6_bbu_internal_mmcboot_register_handler("eMMC", "/dev/mmc0", flags);
 
 	if (bootsource_get_instance() == 0)
 		of_device_enable_path("/chosen/environment-sd");
diff --git a/arch/arm/dts/imx6ul-tqma6ul-common.dtsi b/arch/arm/dts/imx6ul-tqma6ul-common.dtsi
index 71a447a394..5ff318fcfc 100644
--- a/arch/arm/dts/imx6ul-tqma6ul-common.dtsi
+++ b/arch/arm/dts/imx6ul-tqma6ul-common.dtsi
@@ -27,11 +27,6 @@ partitions {
 		#address-cells = <1>;
 		#size-cells = <1>;
 
-		partition@0 {
-			label = "barebox";
-			reg = <0x0 0xe0000>;
-		};
-
 		environment_emmc: partition@e0000 {
 			label = "barebox-environment";
 			reg = <0xe0000 0x20000>;
-- 
2.39.2



