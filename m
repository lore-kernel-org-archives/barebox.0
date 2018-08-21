Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x241.google.com ([2607:f8b0:400e:c01::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fs07p-0000Aj-4V
 for barebox@lists.infradead.org; Tue, 21 Aug 2018 06:26:50 +0000
Received: by mail-pl0-x241.google.com with SMTP id c6-v6so3449337pls.4
 for <barebox@lists.infradead.org>; Mon, 20 Aug 2018 23:26:40 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Subject: [PATCH 16/22] ARM: i.MX: bbu: Add support for MMC on i.MX8MQ
Date: Mon, 20 Aug 2018 23:25:57 -0700
Message-Id: <20180821062603.17393-17-andrew.smirnov@gmail.com>
In-Reply-To: <20180821062603.17393-1-andrew.smirnov@gmail.com>
References: <20180821062603.17393-1-andrew.smirnov@gmail.com>
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
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/imx-bbu-internal.c | 8 ++++++++
 arch/arm/mach-imx/include/mach/bbu.h | 9 +++++++++
 2 files changed, 17 insertions(+)

diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index dcabb8625..d83eb972c 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -561,6 +561,14 @@ int vf610_bbu_internal_mmc_register_handler(const char *name,
 					    unsigned long flags)
 	__alias(imx6_bbu_internal_mmc_register_handler);
 
+/*
+ * Register an i.MX8MQ internal boot update handler for MMC/SD
+ */
+int imx8mq_bbu_internal_mmc_register_handler(const char *name,
+					     const char *devicefile,
+					     unsigned long flags)
+	__alias(imx6_bbu_internal_mmc_register_handler);
+
 /*
  * Register a handler that writes to the non-active boot partition of an mmc
  * medium and on success activates the written-to partition. So the machine can
diff --git a/arch/arm/mach-imx/include/mach/bbu.h b/arch/arm/mach-imx/include/mach/bbu.h
index d543d0e92..b30403328 100644
--- a/arch/arm/mach-imx/include/mach/bbu.h
+++ b/arch/arm/mach-imx/include/mach/bbu.h
@@ -62,6 +62,9 @@ int vf610_bbu_internal_mmc_register_handler(const char *name, const char *device
 int vf610_bbu_internal_spi_i2c_register_handler(const char *name, const char *devicefile,
 						unsigned long flags);
 
+int imx8mq_bbu_internal_mmc_register_handler(const char *name, const char *devicefile,
+					     unsigned long flags);
+
 int imx_bbu_external_nor_register_handler(const char *name, const char *devicefile,
 		unsigned long flags);
 
@@ -122,6 +125,12 @@ static inline int vf610_bbu_internal_mmc_register_handler(const char *name, cons
 	return -ENOSYS;
 }
 
+static inline int imx8mq_bbu_internal_mmc_register_handler(const char *name, const char *devicefile,
+							   unsigned long flags);
+{
+	return -ENOSYS;
+}
+
 static inline int imx_bbu_external_nor_register_handler(const char *name, const char *devicefile,
 		unsigned long flags)
 {
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
