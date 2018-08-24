Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ft2E9-0005PE-0Q
 for barebox@lists.infradead.org; Fri, 24 Aug 2018 02:53:42 +0000
Received: by mail-pf1-x441.google.com with SMTP id s13-v6so3655655pfi.7
 for <barebox@lists.infradead.org>; Thu, 23 Aug 2018 19:53:22 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 23 Aug 2018 19:52:34 -0700
Message-Id: <20180824025243.19479-16-andrew.smirnov@gmail.com>
In-Reply-To: <20180824025243.19479-1-andrew.smirnov@gmail.com>
References: <20180824025243.19479-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 15/24] ARM: i.MX: bbu: Add support for SPI/I2C on VFxxx
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/imx-bbu-internal.c | 10 ++++++++++
 arch/arm/mach-imx/include/mach/bbu.h | 11 +++++++++++
 2 files changed, 21 insertions(+)

diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index c1b3d9ce8..ecc885d29 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -598,6 +598,16 @@ int imx6_bbu_internal_spi_i2c_register_handler(const char *name,
 					       unsigned long flags)
 	__alias(imx53_bbu_internal_spi_i2c_register_handler);
 
+/*
+ * Register an VFxxx internal boot update handler for i2c/spi
+ * EEPROMs / flashes. Nearly the same as MMC/SD, but we do not need to
+ * keep a partition table. We have to erase the device beforehand though.
+ */
+int vf610_bbu_internal_spi_i2c_register_handler(const char *name,
+						const char *devicefile,
+						unsigned long flags)
+	__alias(imx6_bbu_internal_spi_i2c_register_handler);
+
 int imx_bbu_external_nor_register_handler(const char *name,
 					  const char *devicefile,
 					  unsigned long flags)
diff --git a/arch/arm/mach-imx/include/mach/bbu.h b/arch/arm/mach-imx/include/mach/bbu.h
index b16766c75..d543d0e92 100644
--- a/arch/arm/mach-imx/include/mach/bbu.h
+++ b/arch/arm/mach-imx/include/mach/bbu.h
@@ -59,6 +59,9 @@ int imx6_bbu_internal_spi_i2c_register_handler(const char *name, const char *dev
 int vf610_bbu_internal_mmc_register_handler(const char *name, const char *devicefile,
 		unsigned long flags);
 
+int vf610_bbu_internal_spi_i2c_register_handler(const char *name, const char *devicefile,
+						unsigned long flags);
+
 int imx_bbu_external_nor_register_handler(const char *name, const char *devicefile,
 		unsigned long flags);
 
@@ -124,6 +127,14 @@ static inline int imx_bbu_external_nor_register_handler(const char *name, const
 {
 	return -ENOSYS;
 }
+
+static inline int
+vf610_bbu_internal_spi_i2c_register_handler(const char *name, char *devicefile,
+					    unsigned long flags)
+{
+	return -ENOSYS;
+}
+
 #endif
 
 #if defined(CONFIG_BAREBOX_UPDATE_IMX_EXTERNAL_NAND)
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
