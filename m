Delivery-date: Mon, 26 Feb 2024 15:15:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1reblv-0085TD-0G
	for lore@lore.pengutronix.de;
	Mon, 26 Feb 2024 15:15:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1reblu-0000Iy-EB
	for lore@pengutronix.de; Mon, 26 Feb 2024 15:15:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=CbUCyhnkGUbcRFTy9VeqrgWMkGLsvpCv2+vrk4Y3Uss=; b=zKlSYGs+f8tXfD590QKdw6gnpM
	1welGKaJXw1t3ozCKOMr3Vx6QKOZlBezCVVnIbUVt0x8nHdZDBECXPH46XbmxNXVT5Vq6dZyEJ5Sy
	bbjsluTJIMMX6wGynWUXJuRePUu4uA8Q3hxhYVgPgWH3DwptporlHVp9Vc2sn+HX1vugcLoyA3tov
	y1BGZ5QewJ3bgDftQ0u4ldmtmIYM6I/J1yGjGFTEtzCOb6LGmzye5jkudQEoVRueQkTQswqVWDU9a
	84N2xwTZ4+Oi1H0sdrokaDsp9eQg3sGl7dW1ZtvfkXYYm8QiHaQ/4XyBb5CiLXhDbH+u/BxYkvaPH
	a46MQPGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1reblA-0000000146t-0Fez;
	Mon, 26 Feb 2024 14:15:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rebl1-000000013yq-1P1p
	for barebox@lists.infradead.org;
	Mon, 26 Feb 2024 14:15:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rebkx-00005r-TB; Mon, 26 Feb 2024 15:14:59 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rebkx-0030pb-Gb; Mon, 26 Feb 2024 15:14:59 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rebkx-002bPf-1I;
	Mon, 26 Feb 2024 15:14:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 26 Feb 2024 15:14:57 +0100
Message-Id: <20240226141458.620463-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240226_061503_977858_905B059C 
X-CRM114-Status: GOOD (  15.22  )
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
Subject: [PATCH 1/2] ARM: i.MX6ul: TQMa6ul: fix mmc aliases
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The TQMa6ul upstream device trees contain aliases which swap the order
of the mmc nodes, so what used to be mmc0 has now become mmc1 and vice
versa. With this mmc0 now is the eMMC and mmc1 is the SD card.

Introduce a imx6ul.dtsi which adds barebox,bootsource-mmcx aliases so
that bootsource_get_instance() matches our mmc numbering again. Also
register the eMMC BBU handler on /dev/mmc0 and the SD BBU handler on
/dev/mmc1.

Fixes: 5a23f05267 ("ARM: tqma6ul: use upstream device trees")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/tqma6ulx/board.c        | 8 ++++----
 arch/arm/dts/imx6ul-tqma6ul-common.dtsi | 2 ++
 arch/arm/dts/imx6ul.dtsi                | 6 ++++++
 3 files changed, 12 insertions(+), 4 deletions(-)
 create mode 100644 arch/arm/dts/imx6ul.dtsi

diff --git a/arch/arm/boards/tqma6ulx/board.c b/arch/arm/boards/tqma6ulx/board.c
index 312bb9f585..04e35c199e 100644
--- a/arch/arm/boards/tqma6ulx/board.c
+++ b/arch/arm/boards/tqma6ulx/board.c
@@ -80,11 +80,11 @@ static int mba6ulx_probe(struct device *dev)
 		clk_enable(clk);
 
 	/* the bootloader is stored in one of the two boot partitions */
-	flags = bootsource_get_instance() == 0 ? BBU_HANDLER_FLAG_DEFAULT : 0;
-	imx6_bbu_internal_mmc_register_handler("SD", "/dev/mmc0.barebox", flags);
-
 	flags = bootsource_get_instance() == 1 ? BBU_HANDLER_FLAG_DEFAULT : 0;
-	imx6_bbu_internal_mmcboot_register_handler("eMMC", "/dev/mmc1", flags);
+	imx6_bbu_internal_mmc_register_handler("SD", "/dev/mmc1.barebox", flags);
+
+	flags = bootsource_get_instance() == 0 ? BBU_HANDLER_FLAG_DEFAULT : 0;
+	imx6_bbu_internal_mmc_register_handler("eMMC", "/dev/mmc0", flags);
 
 	if (bootsource_get_instance() == 0)
 		of_device_enable_path("/chosen/environment-sd");
diff --git a/arch/arm/dts/imx6ul-tqma6ul-common.dtsi b/arch/arm/dts/imx6ul-tqma6ul-common.dtsi
index 64f1ee253c..71a447a394 100644
--- a/arch/arm/dts/imx6ul-tqma6ul-common.dtsi
+++ b/arch/arm/dts/imx6ul-tqma6ul-common.dtsi
@@ -4,6 +4,8 @@
  * Author: Rouven Czerwinski
  */
 
+#include "imx6ul.dtsi"
+
 / {
 	chosen {
 		environment-sd {
diff --git a/arch/arm/dts/imx6ul.dtsi b/arch/arm/dts/imx6ul.dtsi
new file mode 100644
index 0000000000..7d600f505b
--- /dev/null
+++ b/arch/arm/dts/imx6ul.dtsi
@@ -0,0 +1,6 @@
+/ {
+	aliases {
+		barebox,bootsource-mmc0 = &usdhc1;
+		barebox,bootsource-mmc1 = &usdhc2;
+	};
+};
-- 
2.39.2



