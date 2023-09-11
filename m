Delivery-date: Mon, 11 Sep 2023 14:23:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qffwn-00BTs4-Fv
	for lore@lore.pengutronix.de; Mon, 11 Sep 2023 14:23:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qffwl-0002nr-Fv
	for lore@pengutronix.de; Mon, 11 Sep 2023 14:23:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=rQx8tMwIFBXDwJCerQ3qxsoMv7eStX9ONpv07MUD+lE=; b=R1eFBAIe1BUdqUDPBxM89ijRBU
	YBnMczBsMfJ44tz+XTSpj2qBv6RW2/hacCp3KYOOHf/1qlyQ1HKQvnPsXG/xe0F8o808X9sXCYRGS
	TXYrYD+o8853OXzhqGyuYV3rstKuWWRu7mKXeSf92ZunvPaXQWamH4fj7GI6hYihNarZQdXpGX6HB
	RZHNIWKF4JZdbSQd25cWAcbMlPJ9og6RrpoHw8SO5i28hrR4TZ2r9rY35Y/2zgLlbBhHCwOba1Xuw
	Q3j2Rj3dGWrC/oM64o3Cd7kXcjV3cEM8DJGaXrV4AKsIdYX2FoHNPMxfFVHASnYyAXCAsTYLESlJL
	mkDJ4MwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qffvf-000Ti9-2D;
	Mon, 11 Sep 2023 12:22:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qffvc-000Thm-2e
	for barebox@lists.infradead.org;
	Mon, 11 Sep 2023 12:22:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qffvb-0002g0-IY; Mon, 11 Sep 2023 14:22:07 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qffvb-005XuE-6F; Mon, 11 Sep 2023 14:22:07 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qffva-00BKbA-2T;
	Mon, 11 Sep 2023 14:22:06 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 11 Sep 2023 14:22:04 +0200
Message-Id: <20230911122204.2698005-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230911_052208_860237_9515DBA1 
X-CRM114-Status: GOOD (  13.06  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] aiodev: imx_thermal: fix breakage after device tree sync
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

fsl,tempmon-data is a deprecated property that has been replaced
upstream by a NVMEM cell pointing at the calibration value and so
made it into barebox breaking the driver.

Switch to using the new property to fix the regression.

Fixes: abef60363d8e ("dts: update to v5.8-rc1")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/aiodev/imx_thermal.c | 25 ++++---------------------
 1 file changed, 4 insertions(+), 21 deletions(-)

diff --git a/drivers/aiodev/imx_thermal.c b/drivers/aiodev/imx_thermal.c
index 3263519cb241..2693ad05e0e5 100644
--- a/drivers/aiodev/imx_thermal.c
+++ b/drivers/aiodev/imx_thermal.c
@@ -22,6 +22,7 @@
 #include <linux/math64.h>
 #include <linux/log2.h>
 #include <linux/clk.h>
+#include <linux/nvmem-consumer.h>
 #include <mach/imx/imx6-anadig.h>
 #include <io.h>
 #include <aiodev.h>
@@ -29,7 +30,6 @@
 
 #define FACTOR0			10000000
 #define MEASURE_FREQ		327
-#define OCOTP_ANA1_OFFSET      (0xE * sizeof(uint32_t))
 
 struct imx_thermal_data {
 	int c1, c2;
@@ -109,30 +109,13 @@ static int imx_thermal_read(struct aiochannel *chan, int *val)
 static int imx_thermal_probe(struct device *dev)
 {
 	uint32_t ocotp_ana1;
-	struct device_node *node;
 	struct imx_thermal_data *imx_thermal;
-	struct cdev *ocotp;
 	int t1, n1, t2, n2;
 	int ret;
 
-	node = of_parse_phandle(dev->of_node, "fsl,tempmon-data", 0);
-	if (!node) {
-		dev_err(dev, "No calibration data source\n");
-		return -ENODEV;
-	}
-
-	ocotp = cdev_by_device_node(node);
-	if (!ocotp) {
-		dev_err(dev, "No OCOTP character device\n");
-		return -ENODEV;
-	}
-
-	ret = cdev_read(ocotp, &ocotp_ana1, sizeof(ocotp_ana1),
-			OCOTP_ANA1_OFFSET, 0);
-	if (ret != sizeof(ocotp_ana1)) {
-		dev_err(dev, "Failed to read calibration data\n");
-		return ret < 0 ? ret : -EIO;
-	}
+	ret = nvmem_cell_read_variable_le_u32(dev, "calib", &ocotp_ana1);
+	if (ret)
+		return ret;
 
 	imx_thermal = xzalloc(sizeof(*imx_thermal));
 	imx_thermal->base = syscon_base_lookup_by_phandle(dev->of_node,
-- 
2.39.2



