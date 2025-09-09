Delivery-date: Tue, 09 Sep 2025 12:20:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uvvSv-00125k-0A
	for lore@lore.pengutronix.de;
	Tue, 09 Sep 2025 12:20:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uvvSu-0004fJ-DB
	for lore@pengutronix.de; Tue, 09 Sep 2025 12:20:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=zvFoeivDwDGD9cbEc7PEBBGPpWXSrT5vKHJBFVKMu1o=; b=PmIZH8vrewrCTt8/k74IovxAOA
	QVWj3prP5dqAbh98Tc+RWbEKk0PZl16BT2cuZudOpJ2k2Ij0Y+g8kfRajxF9LQFO+j8sQeDiMoWng
	6toZL7J32uLYMMcgCFAqh1P4odfanwsaCszqjneiF5ed5XcPcWBQ/y54c3nv8/EOtsEVOgee66QeG
	LxIu1y5H3pMZzA7S3+kNP50N+o4QUS4TJhIXLdOi8R8RQODI7QqXv9doedNcP2VA0B2lAhTS/zeW+
	y59c1INxrBGS4OoUDD+WQQ5Op8DDsgIJIPQ0oPH0kMz8ab5EULg442ChS2OznO4TcayI40FFGr6KR
	1FHBdFTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvvSE-00000006LAD-3Tk1;
	Tue, 09 Sep 2025 10:20:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvuCP-00000005kij-3fFo
	for barebox@lists.infradead.org;
	Tue, 09 Sep 2025 08:59:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uvuCM-0004rt-MB; Tue, 09 Sep 2025 10:59:34 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uvuCM-000OKv-1c;
	Tue, 09 Sep 2025 10:59:34 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uvuCM-00000003swG-1dhd;
	Tue, 09 Sep 2025 10:59:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  9 Sep 2025 10:59:33 +0200
Message-ID: <20250909085933.926161-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250909_015937_976175_A4B63881 
X-CRM114-Status: GOOD (  13.72  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] treewide: drop useless casting to void * in of_device_id
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

struct of_device_id::data already is a const void *, so drop explicit
casting to void * when initialized with something that already is a
pointer.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/hw_random/rockchip-rng.c   |  6 +++---
 drivers/pinctrl/pinctrl-rockchip.c |  2 +-
 drivers/spi/dspi_spi.c             |  2 +-
 drivers/spi/spi-nxp-fspi.c         | 10 +++++-----
 drivers/video/ssd1307fb.c          |  8 ++++----
 5 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/hw_random/rockchip-rng.c b/drivers/hw_random/rockchip-rng.c
index 62a21db0e2..8856a3883e 100644
--- a/drivers/hw_random/rockchip-rng.c
+++ b/drivers/hw_random/rockchip-rng.c
@@ -187,15 +187,15 @@ static const struct rk_rng_soc_data rk_rng_v2_soc_data = {
 static const struct of_device_id rk_rng_dt_match[] = {
 	{
 		.compatible = "rockchip,rk3399-crypto",
-		.data = (void *)&rk_rng_rk3399_soc_data,
+		.data = &rk_rng_rk3399_soc_data,
 	},
 	{
 		.compatible = "rockchip,cryptov1-rng",
-		.data = (void *)&rk_rng_v1_soc_data,
+		.data = &rk_rng_v1_soc_data,
 	},
 	{
 		.compatible = "rockchip,rk3568-rng",
-		.data = (void *)&rk_rng_v2_soc_data,
+		.data = &rk_rng_v2_soc_data,
 	},
 	{ },
 };
diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index 9c11104513..58e9153bd6 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -3236,7 +3236,7 @@ static const struct of_device_id rockchip_pinctrl_dt_match[] = {
 #endif
 #ifdef CONFIG_ARCH_RK3128
 	{ .compatible = "rockchip,rk3128-pinctrl",
-		.data = (void *)&rk3128_pin_ctrl },
+		.data = &rk3128_pin_ctrl },
 #endif
 #ifdef CONFIG_ARCH_RK3188
 	{ .compatible = "rockchip,rk3188-pinctrl",
diff --git a/drivers/spi/dspi_spi.c b/drivers/spi/dspi_spi.c
index 75addfd12c..356259a814 100644
--- a/drivers/spi/dspi_spi.c
+++ b/drivers/spi/dspi_spi.c
@@ -397,7 +397,7 @@ static const struct fsl_dspi_devtype_data vf610_data = {
 };
 
 static const struct of_device_id dspi_dt_ids[] = {
-	{ .compatible = "fsl,vf610-dspi", .data = (void *)&vf610_data, },
+	{ .compatible = "fsl,vf610-dspi", .data = &vf610_data, },
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, dspi_dt_ids);
diff --git a/drivers/spi/spi-nxp-fspi.c b/drivers/spi/spi-nxp-fspi.c
index 6f91e75d5e..4937932a36 100644
--- a/drivers/spi/spi-nxp-fspi.c
+++ b/drivers/spi/spi-nxp-fspi.c
@@ -1039,11 +1039,11 @@ static int nxp_fspi_probe(struct device *dev)
 }
 
 static const struct of_device_id nxp_fspi_dt_ids[] = {
-	{ .compatible = "nxp,imx8mm-fspi", .data = (void *)&imx8mm_data, },
-	{ .compatible = "nxp,imx8mn-fspi", .data = (void *)&imx8mm_data, },
-	{ .compatible = "nxp,imx8mp-fspi", .data = (void *)&imx8mm_data, },
-	{ .compatible = "nxp,imx8qxp-fspi", .data = (void *)&imx8qxp_data, },
-	{ .compatible = "nxp,imx8dxl-fspi", .data = (void *)&imx8dxl_data, },
+	{ .compatible = "nxp,imx8mm-fspi", .data = &imx8mm_data, },
+	{ .compatible = "nxp,imx8mn-fspi", .data = &imx8mm_data, },
+	{ .compatible = "nxp,imx8mp-fspi", .data = &imx8mm_data, },
+	{ .compatible = "nxp,imx8qxp-fspi", .data = &imx8qxp_data, },
+	{ .compatible = "nxp,imx8dxl-fspi", .data = &imx8dxl_data, },
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, nxp_fspi_dt_ids);
diff --git a/drivers/video/ssd1307fb.c b/drivers/video/ssd1307fb.c
index 5880f2b4a5..abb8031636 100644
--- a/drivers/video/ssd1307fb.c
+++ b/drivers/video/ssd1307fb.c
@@ -404,11 +404,11 @@ static struct ssd1307fb_deviceinfo ssd1307fb_ssd1309_deviceinfo = {
 static const struct of_device_id ssd1307fb_of_match[] = {
 	{
 		.compatible = "solomon,ssd1305fb-i2c",
-		.data = (void *)&ssd1307fb_ssd1305_deviceinfo,
+		.data = &ssd1307fb_ssd1305_deviceinfo,
 	},
 	{
 		.compatible = "solomon,ssd1306fb-i2c",
-		.data = (void *)&ssd1307fb_ssd1306_deviceinfo,
+		.data = &ssd1307fb_ssd1306_deviceinfo,
 	},
 	{
 		/*
@@ -416,11 +416,11 @@ static const struct of_device_id ssd1307fb_of_match[] = {
 		 * documented as device tree binding.
 		 */
 		.compatible = "solomon,ssd1306",
-		.data = (void *)&ssd1307fb_ssd1306_deviceinfo,
+		.data = &ssd1307fb_ssd1306_deviceinfo,
 	},
 	{
 		.compatible = "solomon,ssd1309fb-i2c",
-		.data = (void *)&ssd1307fb_ssd1309_deviceinfo,
+		.data = &ssd1307fb_ssd1309_deviceinfo,
 	},
 	{},
 };
-- 
2.47.3



