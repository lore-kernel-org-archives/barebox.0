Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g2OPJ-0002BS-OI
 for barebox@lists.infradead.org; Tue, 18 Sep 2018 22:24:03 +0000
Received: by mail-pg1-x541.google.com with SMTP id i190-v6so1706404pgc.6
 for <barebox@lists.infradead.org>; Tue, 18 Sep 2018 15:23:35 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 18 Sep 2018 15:23:00 -0700
Message-Id: <20180918222305.6834-7-andrew.smirnov@gmail.com>
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
Subject: [PATCH 06/11] ARM: VFxxx: bbu: Add a handler for MMC boot partitions
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/imx-bbu-internal.c |  5 +++++
 arch/arm/mach-imx/include/mach/bbu.h | 11 +++++++++++
 2 files changed, 16 insertions(+)

diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index 796d9454c..799b97361 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -619,6 +619,11 @@ int imx51_bbu_internal_mmcboot_register_handler(const char *name,
 						unsigned long flags)
 	__alias(imx_bbu_internal_mmcboot_register_handler);
 
+int vf610_bbu_internal_mmcboot_register_handler(const char *name,
+						const char *devicefile,
+						unsigned long flags)
+	__alias(imx_bbu_internal_mmcboot_register_handler);
+
 /*
  * Register an i.MX53 internal boot update handler for i2c/spi
  * EEPROMs / flashes. Nearly the same as MMC/SD, but we do not need to
diff --git a/arch/arm/mach-imx/include/mach/bbu.h b/arch/arm/mach-imx/include/mach/bbu.h
index f0b6233f6..bc1fc4ba6 100644
--- a/arch/arm/mach-imx/include/mach/bbu.h
+++ b/arch/arm/mach-imx/include/mach/bbu.h
@@ -56,6 +56,9 @@ int imx6_bbu_internal_mmcboot_register_handler(const char *name, const char *dev
 int imx51_bbu_internal_mmcboot_register_handler(const char *name, const char *devicefile,
 		unsigned long flags);
 
+int vf610_bbu_internal_mmcboot_register_handler(const char *name, const char *devicefile,
+						unsigned long flags);
+
 int imx6_bbu_internal_spi_i2c_register_handler(const char *name, const char *devicefile,
 		unsigned long flags);
 
@@ -123,6 +126,14 @@ static inline int imx51_bbu_internal_mmcboot_register_handler(const char *name,
 	return -ENOSYS;
 }
 
+
+static inline int vf610_bbu_internal_mmcboot_register_handler(const char *name,
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
