Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from moutng.kundenserver.de ([212.227.126.186])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SqjfV-0000Zz-TG
 for barebox@lists.infradead.org; Mon, 16 Jul 2012 11:40:51 +0000
From: Christian Kapeller <christian.kapeller@cmotion.eu>
Date: Mon, 16 Jul 2012 13:40:30 +0200
Message-Id: <1342438830-30214-3-git-send-email-christian.kapeller@cmotion.eu>
In-Reply-To: <1342438830-30214-1-git-send-email-christian.kapeller@cmotion.eu>
References: <1342438830-30214-1-git-send-email-christian.kapeller@cmotion.eu>
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
Subject: [PATCH 2/2] input: add i.MX51 platform code for matrix keypad driver
To: barebox@lists.infradead.org


diff --git a/arch/arm/mach-imx/devices.c b/arch/arm/mach-imx/devices.c
index 6cd50f3..8120f56 100644
--- a/arch/arm/mach-imx/devices.c
+++ b/arch/arm/mach-imx/devices.c
@@ -52,3 +52,8 @@ struct device_d *imx_add_esdhc(void *base, int id, struct esdhc_platform_data *p
 {
 	return imx_add_device("imx-esdhc", id, base, 0x1000, pdata);
 }
+
+struct device_d *imx_add_kpp(void *base, struct matrix_keymap_data *pdata)
+{
+       return imx_add_device("imx-kpp", -1, base, 0x1000, pdata);
+}
diff --git a/arch/arm/mach-imx/include/mach/devices-imx51.h b/arch/arm/mach-imx/include/mach/devices-imx51.h
index dbf5862..3d7ff72 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx51.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx51.h
@@ -89,3 +89,7 @@ static inline struct device_d *imx51_add_nand(struct imx_nand_platform_data *pda
 	return dev;
 }
 
+static inline struct device_d *imx51_add_kpp(struct matrix_keymap_data *pdata)
+{
+	return imx_add_kpp((void *)MX51_KPP_BASE_ADDR, pdata);
+}
diff --git a/arch/arm/mach-imx/include/mach/devices.h b/arch/arm/mach-imx/include/mach/devices.h
index f0f730a..da91646 100644
--- a/arch/arm/mach-imx/include/mach/devices.h
+++ b/arch/arm/mach-imx/include/mach/devices.h
@@ -1,5 +1,6 @@
 
 #include <fec.h>
+#include <matrix_keypad.h>
 #include <i2c/i2c.h>
 #include <mach/spi.h>
 #include <mach/imx-nand.h>
@@ -16,4 +17,5 @@ struct device_d *imx_add_fb(void *base, struct imx_fb_platform_data *pdata);
 struct device_d *imx_add_ipufb(void *base, struct imx_ipu_fb_platform_data *pdata);
 struct device_d *imx_add_mmc(void *base, int id, void *pdata);
 struct device_d *imx_add_esdhc(void *base, int id, struct esdhc_platform_data *pdata);
+struct device_d *imx_add_kpp(void *base, struct matrix_keymap_data *pdata);
 
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
