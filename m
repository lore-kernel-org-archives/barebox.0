Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g9P7c-0004yT-HC
 for barebox@lists.infradead.org; Mon, 08 Oct 2018 06:34:47 +0000
Received: by mail-pl1-x641.google.com with SMTP id y11-v6so6437092plt.3
 for <barebox@lists.infradead.org>; Sun, 07 Oct 2018 23:34:25 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun,  7 Oct 2018 23:34:08 -0700
Message-Id: <20181008063409.17566-6-andrew.smirnov@gmail.com>
In-Reply-To: <20181008063409.17566-1-andrew.smirnov@gmail.com>
References: <20181008063409.17566-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 5/6] ARM: i.MX7: bbu: Add I2C and SPI handler
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/imx-bbu-internal.c |  6 ++++++
 arch/arm/mach-imx/include/mach/bbu.h | 10 ++++++++++
 2 files changed, 16 insertions(+)

diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index 77e0b86bc..5f85b13dc 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -649,6 +649,12 @@ int vf610_bbu_internal_spi_i2c_register_handler(const char *name,
 						unsigned long flags)
 	__alias(imx6_bbu_internal_spi_i2c_register_handler);
 
+
+int imx7_bbu_internal_spi_i2c_register_handler(const char *name,
+						const char *devicefile,
+						unsigned long flags)
+	__alias(imx6_bbu_internal_spi_i2c_register_handler);
+
 int imx_bbu_external_nor_register_handler(const char *name,
 					  const char *devicefile,
 					  unsigned long flags)
diff --git a/arch/arm/mach-imx/include/mach/bbu.h b/arch/arm/mach-imx/include/mach/bbu.h
index 1174c21d2..c8223c840 100644
--- a/arch/arm/mach-imx/include/mach/bbu.h
+++ b/arch/arm/mach-imx/include/mach/bbu.h
@@ -71,6 +71,9 @@ int vf610_bbu_internal_mmc_register_handler(const char *name, const char *device
 int vf610_bbu_internal_spi_i2c_register_handler(const char *name, const char *devicefile,
 						unsigned long flags);
 
+int imx7_bbu_internal_spi_i2c_register_handler(const char *name, const char *devicefile,
+					       unsigned long flags);
+
 int imx8mq_bbu_internal_mmc_register_handler(const char *name, const char *devicefile,
 					     unsigned long flags);
 
@@ -175,6 +178,13 @@ vf610_bbu_internal_spi_i2c_register_handler(const char *name, char *devicefile,
 	return -ENOSYS;
 }
 
+static inline int
+imx7_bbu_internal_spi_i2c_register_handler(const char *name, char *devicefile,
+					   unsigned long flags)
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
