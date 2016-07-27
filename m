Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bSQEv-0001N9-Jp
 for barebox@lists.infradead.org; Wed, 27 Jul 2016 14:55:19 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Wed, 27 Jul 2016 16:52:52 +0200
Message-Id: <1469631172-27342-1-git-send-email-akurz@blala.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] ARM i.MX31: Add i2c register convenience functions
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 arch/arm/mach-imx/include/mach/devices-imx31.h | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm/mach-imx/include/mach/devices-imx31.h b/arch/arm/mach-imx/include/mach/devices-imx31.h
index 63319fe..8169b98 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx31.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx31.h
@@ -2,6 +2,21 @@
 #include <mach/imx31-regs.h>
 #include <mach/devices.h>
 
+static inline struct device_d *imx31_add_i2c0(void *pdata)
+{
+	return imx_add_i2c((void *)MX31_I2C1_BASE_ADDR, 0, pdata);
+}
+
+static inline struct device_d *imx31_add_i2c1(void *pdata)
+{
+	return imx_add_i2c((void *)MX31_I2C2_BASE_ADDR, 1, pdata);
+}
+
+static inline struct device_d *imx31_add_i2c2(void *pdata)
+{
+	return imx_add_i2c((void *)MX31_I2C3_BASE_ADDR, 2, pdata);
+}
+
 static inline struct device_d *imx31_add_spi0(struct spi_imx_master *pdata)
 {
 	return imx_add_spi_imx27((void *)MX31_CSPI1_BASE_ADDR, 0, pdata);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
