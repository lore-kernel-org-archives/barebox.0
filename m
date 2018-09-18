Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g2OPE-0002BA-2D
 for barebox@lists.infradead.org; Tue, 18 Sep 2018 22:23:42 +0000
Received: by mail-pl1-x641.google.com with SMTP id b12-v6so1641729plr.8
 for <barebox@lists.infradead.org>; Tue, 18 Sep 2018 15:23:29 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 18 Sep 2018 15:22:56 -0700
Message-Id: <20180918222305.6834-3-andrew.smirnov@gmail.com>
In-Reply-To: <20180918222305.6834-1-andrew.smirnov@gmail.com>
References: <20180918222305.6834-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 02/11] ARM: i.MX51: bbu: Add a handler for MMC boot partitions
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/imx-bbu-internal.c |  5 +++++
 arch/arm/mach-imx/include/mach/bbu.h | 10 ++++++++++
 2 files changed, 15 insertions(+)

diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index a283b7c5c..697e59f12 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -602,6 +602,11 @@ int imx6_bbu_internal_mmcboot_register_handler(const char *name,
 					       unsigned long flags)
 	__alias(imx_bbu_internal_mmcboot_register_handler);
 
+int imx51_bbu_internal_mmcboot_register_handler(const char *name,
+						const char *devicefile,
+						unsigned long flags)
+	__alias(imx_bbu_internal_mmcboot_register_handler);
+
 /*
  * Register an i.MX53 internal boot update handler for i2c/spi
  * EEPROMs / flashes. Nearly the same as MMC/SD, but we do not need to
diff --git a/arch/arm/mach-imx/include/mach/bbu.h b/arch/arm/mach-imx/include/mach/bbu.h
index b64c8d118..f0b6233f6 100644
--- a/arch/arm/mach-imx/include/mach/bbu.h
+++ b/arch/arm/mach-imx/include/mach/bbu.h
@@ -53,6 +53,9 @@ int imx6_bbu_internal_mmc_register_handler(const char *name, const char *devicef
 int imx6_bbu_internal_mmcboot_register_handler(const char *name, const char *devicefile,
 		unsigned long flags);
 
+int imx51_bbu_internal_mmcboot_register_handler(const char *name, const char *devicefile,
+		unsigned long flags);
+
 int imx6_bbu_internal_spi_i2c_register_handler(const char *name, const char *devicefile,
 		unsigned long flags);
 
@@ -113,6 +116,13 @@ static inline int imx6_bbu_internal_mmcboot_register_handler(const char *name,
 	return -ENOSYS;
 }
 
+static inline int imx51_bbu_internal_mmcboot_register_handler(const char *name,
+							      const char *devicefile,
+							      unsigned long flags)
+{
+	return -ENOSYS;
+}
+
 static inline int imx6_bbu_internal_spi_i2c_register_handler(const char *name, const char *devicefile,
 		unsigned long flags)
 {
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
