Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Te9Md-0008Dm-R9
 for barebox@lists.infradead.org; Thu, 29 Nov 2012 19:01:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 29 Nov 2012 20:01:22 +0100
Message-Id: <1354215684-25235-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1354215684-25235-1-git-send-email-s.hauer@pengutronix.de>
References: <1354215684-25235-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] ARM i.MX bbu: Add i.MX6 MMC handler
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx-bbu-internal.c |   14 ++++++++++++++
 arch/arm/mach-imx/include/mach/bbu.h |   11 +++++++++++
 2 files changed, 25 insertions(+)

diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index c34f86f..029bd5b 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -541,3 +541,17 @@ int imx53_bbu_internal_nand_register_handler(const char *name,
 
 	return __register_handler(imx_handler);
 }
+
+/*
+ * Register a i.MX6 internal boot update handler for MMC/SD
+ */
+int imx6_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
+		unsigned long flags, struct imx_dcd_v2_entry *dcd, int dcdsize,
+		unsigned long app_dest)
+{
+	if (!app_dest)
+		app_dest = 0x10000000;
+
+	return imx53_bbu_internal_mmc_register_handler(name, devicefile,
+		flags, dcd, dcdsize, app_dest);
+}
diff --git a/arch/arm/mach-imx/include/mach/bbu.h b/arch/arm/mach-imx/include/mach/bbu.h
index f9ec1cc..249ed4a 100644
--- a/arch/arm/mach-imx/include/mach/bbu.h
+++ b/arch/arm/mach-imx/include/mach/bbu.h
@@ -18,6 +18,10 @@ int imx53_bbu_internal_nand_register_handler(const char *name,
 		unsigned long flags, struct imx_dcd_v2_entry *, int dcdsize,
 		int partition_size);
 
+int imx6_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
+		unsigned long flags, struct imx_dcd_v2_entry *, int dcdsize,
+		unsigned long app_dest);
+
 #else
 
 static inline int imx51_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
@@ -39,6 +43,13 @@ static inline int imx53_bbu_internal_nand_register_handler(const char *name,
 	return -ENOSYS;
 }
 
+static inline int imx6_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
+		unsigned long flags, struct imx_dcd_v2_entry *dcd, int dcdsize,
+		unsigned long app_dest)
+{
+	return -ENOSYS;
+}
+
 #endif
 
 struct dcd_table {
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
