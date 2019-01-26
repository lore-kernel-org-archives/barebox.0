Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gnCn0-0004vF-Vh
 for barebox@lists.infradead.org; Sat, 26 Jan 2019 01:29:44 +0000
Received: by mail-pf1-x443.google.com with SMTP id c73so5507805pfe.13
 for <barebox@lists.infradead.org>; Fri, 25 Jan 2019 17:29:42 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 25 Jan 2019 17:29:25 -0800
Message-Id: <20190126012926.9236-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/2] ARM: i.MX8MQ: bbu: Add MMC boot handler
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/imx-bbu-internal.c | 5 +++++
 arch/arm/mach-imx/include/mach/bbu.h | 9 +++++++++
 2 files changed, 14 insertions(+)

diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index 5f85b13dc..188369fe3 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -629,6 +629,11 @@ int imx7_bbu_internal_mmcboot_register_handler(const char *name,
 						unsigned long flags)
 	__alias(imx_bbu_internal_mmcboot_register_handler);
 
+int imx8mq_bbu_internal_mmcboot_register_handler(const char *name,
+						 const char *devicefile,
+						 unsigned long flags)
+	__alias(imx_bbu_internal_mmcboot_register_handler);
+
 /*
  * Register an i.MX53 internal boot update handler for i2c/spi
  * EEPROMs / flashes. Nearly the same as MMC/SD, but we do not need to
diff --git a/arch/arm/mach-imx/include/mach/bbu.h b/arch/arm/mach-imx/include/mach/bbu.h
index c8223c840..10638a7fc 100644
--- a/arch/arm/mach-imx/include/mach/bbu.h
+++ b/arch/arm/mach-imx/include/mach/bbu.h
@@ -76,6 +76,8 @@ int imx7_bbu_internal_spi_i2c_register_handler(const char *name, const char *dev
 
 int imx8mq_bbu_internal_mmc_register_handler(const char *name, const char *devicefile,
 					     unsigned long flags);
+int imx8mq_bbu_internal_mmcboot_register_handler(const char *name, const char *devicefile,
+						 unsigned long flags);
 
 int imx_bbu_external_nor_register_handler(const char *name, const char *devicefile,
 		unsigned long flags);
@@ -165,6 +167,13 @@ static inline int imx8mq_bbu_internal_mmc_register_handler(const char *name, con
 	return -ENOSYS;
 }
 
+static inline int imx8mq_bbu_internal_mmcboot_register_handler(const char *name,
+							       const char *devicefile,
+							       unsigned long flags)
+{
+	return -ENOSYS;
+}
+
 static inline int imx_bbu_external_nor_register_handler(const char *name, const char *devicefile,
 		unsigned long flags)
 {
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
