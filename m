Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RENEe-0005RL-GA
	for barebox@lists.infradead.org; Thu, 13 Oct 2011 15:30:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Oct 2011 17:30:08 +0200
Message-Id: <1318519808-14316-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1318519808-14316-1-git-send-email-s.hauer@pengutronix.de>
References: <1318519808-14316-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 6/6] ARM i.MX53: Fix nand registration helper
To: barebox@lists.infradead.org

We switched to resources recently and the nand controller
of the i.MX53 needs two of them, so fix the helper in the
same way as the i.MX51

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/devices-imx53.h |   25 ++++++++++++++++++++++-
 1 files changed, 23 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/devices-imx53.h b/arch/arm/mach-imx/include/mach/devices-imx53.h
index 41572a7..70e7671 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx53.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx53.h
@@ -53,6 +53,27 @@ static inline struct device_d *imx53_add_mmc2(void *pdata)
 
 static inline struct device_d *imx53_add_nand(struct imx_nand_platform_data *pdata)
 {
-	return imx_add_nand((void *)MX53_NFC_AXI_BASE_ADDR, pdata);
-}
+	struct resource res[] = {
+		{
+			.start = MX53_NFC_BASE_ADDR,
+			.size = SZ_4K,
+			.flags = IORESOURCE_MEM,
+		}, {
+			.start = MX53_NFC_AXI_BASE_ADDR,
+			.size = SZ_4K,
+			.flags = IORESOURCE_MEM,
+		},
+	};
+	struct device_d *dev = xzalloc(sizeof(*dev));
+
+	dev->resource = xzalloc(sizeof(struct resource) * ARRAY_SIZE(res));
+	memcpy(dev->resource, res, sizeof(struct resource) * ARRAY_SIZE(res));
+	dev->num_resources = ARRAY_SIZE(res);
+	strcpy(dev->name, "imx_nand");
+	dev->id = -1;
+	dev->platform_data = pdata;
 
+	register_device(dev);
+
+	return dev;
+}
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
