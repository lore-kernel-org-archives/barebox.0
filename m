Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kVClE-0007UO-13
 for barebox@lists.infradead.org; Wed, 21 Oct 2020 11:58:33 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1kVClC-0007DQ-Pj
 for barebox@lists.infradead.org; Wed, 21 Oct 2020 13:58:30 +0200
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1kVClC-0000dL-6l
 for barebox@lists.infradead.org; Wed, 21 Oct 2020 13:58:30 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Wed, 21 Oct 2020 13:58:04 +0200
Message-Id: <20201021115813.31645-2-m.felsch@pengutronix.de>
In-Reply-To: <20201021115813.31645-1-m.felsch@pengutronix.de>
References: <20201021115813.31645-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v3 01/10] imx53: remove unused imx53_add_nand
To: barebox@lists.infradead.org

The TX53 board was the last user of this function. This board was
converted to device tree based boot by commit 971366078893
("i.MX53/TX53: rework to dts based boot") so we can remove this
legacy helper.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
Changelog:

v3:
- new patch
---
 .../arm/mach-imx/include/mach/devices-imx53.h | 27 -------------------
 1 file changed, 27 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/devices-imx53.h b/arch/arm/mach-imx/include/mach/devices-imx53.h
index e5c257a40b..3d1e8a27a8 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx53.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx53.h
@@ -77,33 +77,6 @@ static inline struct device_d *imx53_add_mmc3(struct esdhc_platform_data *pdata)
 	return imx_add_esdhc_imx5((void *)MX53_ESDHC4_BASE_ADDR, 3, pdata);
 }
 
-static inline struct device_d *imx53_add_nand(struct imx_nand_platform_data *pdata)
-{
-	struct resource res[] = {
-		{
-			.start = MX53_NFC_BASE_ADDR,
-			.end = MX53_NFC_BASE_ADDR + SZ_4K - 1,
-			.flags = IORESOURCE_MEM,
-		}, {
-			.start = MX53_NFC_AXI_BASE_ADDR,
-			.end = MX53_NFC_AXI_BASE_ADDR + SZ_4K - 1,
-			.flags = IORESOURCE_MEM,
-		},
-	};
-	struct device_d *dev = xzalloc(sizeof(*dev));
-
-	dev->resource = xzalloc(sizeof(struct resource) * ARRAY_SIZE(res));
-	memcpy(dev->resource, res, sizeof(struct resource) * ARRAY_SIZE(res));
-	dev->num_resources = ARRAY_SIZE(res);
-	dev_set_name(dev, "imx_nand");
-	dev->id = DEVICE_ID_DYNAMIC;
-	dev->platform_data = pdata;
-
-	platform_device_register(dev);
-
-	return dev;
-}
-
 static inline struct device_d *imx53_add_kpp(struct matrix_keymap_data *pdata)
 {
 	return imx_add_kpp((void *)MX53_KPP_BASE_ADDR, pdata);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
