Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x241.google.com ([2607:f8b0:400e:c05::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSoGc-0002y1-Aa
 for barebox@lists.infradead.org; Tue, 12 Jun 2018 18:43:43 +0000
Received: by mail-pg0-x241.google.com with SMTP id q4-v6so10809504pgr.1
 for <barebox@lists.infradead.org>; Tue, 12 Jun 2018 11:43:37 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 12 Jun 2018 11:43:15 -0700
Message-Id: <20180612184316.4579-7-andrew.smirnov@gmail.com>
In-Reply-To: <20180612184316.4579-1-andrew.smirnov@gmail.com>
References: <20180612184316.4579-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 5/6] ARM: i.MX: bbu: Add support for MMC on VFxxx
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add support for MMC on VFxxx by providing an alias to
imx6_bbu_internal_mmc_register_handler().

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/imx-bbu-internal.c | 7 +++++++
 arch/arm/mach-imx/include/mach/bbu.h | 9 +++++++++
 2 files changed, 16 insertions(+)

diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index c69160f47..84810f18a 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -568,6 +568,13 @@ int imx6_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
 					   unsigned long flags)
 	__alias(imx53_bbu_internal_mmc_register_handler);
 
+/*
+ * Register an VF610 internal boot update handler for MMC/SD
+ */
+int vf610_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
+					    unsigned long flags)
+	__alias(imx6_bbu_internal_mmc_register_handler);
+
 /*
  * Register a handler that writes to the non-active boot partition of an mmc
  * medium and on success activates the written-to partition. So the machine can
diff --git a/arch/arm/mach-imx/include/mach/bbu.h b/arch/arm/mach-imx/include/mach/bbu.h
index bde3e02d2..d62382831 100644
--- a/arch/arm/mach-imx/include/mach/bbu.h
+++ b/arch/arm/mach-imx/include/mach/bbu.h
@@ -33,6 +33,9 @@ int imx6_bbu_internal_mmcboot_register_handler(const char *name, char *devicefil
 int imx6_bbu_internal_spi_i2c_register_handler(const char *name, char *devicefile,
 		unsigned long flags);
 
+int vf610_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
+		unsigned long flags);
+
 int imx_bbu_external_nor_register_handler(const char *name, char *devicefile,
 		unsigned long flags);
 
@@ -87,6 +90,12 @@ static inline int imx6_bbu_internal_spi_i2c_register_handler(const char *name, c
 	return -ENOSYS;
 }
 
+int vf610_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
+					    unsigned long flags)
+{
+	return -ENOSYS;
+}
+
 static inline int imx_bbu_external_nor_register_handler(const char *name, char *devicefile,
 		unsigned long flags)
 {
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
