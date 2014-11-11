Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pd0-x233.google.com ([2607:f8b0:400e:c02::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XoJE5-000739-Hk
 for barebox@lists.infradead.org; Tue, 11 Nov 2014 21:43:49 +0000
Received: by mail-pd0-f179.google.com with SMTP id g10so10917959pdj.10
 for <barebox@lists.infradead.org>; Tue, 11 Nov 2014 13:43:28 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 11 Nov 2014 13:43:04 -0800
Message-Id: <1415742184-21334-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH] ARM: i.MX6 Phytec phyFLEX: Fix imx6_bbu_nand_register_handler
 prototype
To: barebox@lists.infradead.org
Cc: andrew.smirnov@gmail.com

imx6_bbu_nand_register_handler is dependent on
CONFIG_BAREBOX_UPDATE_IMX6_NAND. Change the protoype definition such
that said function is stubbed-out when CONFIG_BAREBOX_UPDATE_IMX6_NAND
is not defined.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/include/mach/bbu.h | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/bbu.h b/arch/arm/mach-imx/include/mach/bbu.h
index 74c334a..5eb9a47 100644
--- a/arch/arm/mach-imx/include/mach/bbu.h
+++ b/arch/arm/mach-imx/include/mach/bbu.h
@@ -27,8 +27,6 @@ int imx6_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
 int imx6_bbu_internal_spi_i2c_register_handler(const char *name, char *devicefile,
 		unsigned long flags);
 
-int imx6_bbu_nand_register_handler(const char *name, unsigned long flags);
-
 int imx_bbu_external_nor_register_handler(const char *name, char *devicefile,
 		unsigned long flags);
 
@@ -70,13 +68,17 @@ static inline int imx6_bbu_internal_spi_i2c_register_handler(const char *name, c
 	return -ENOSYS;
 }
 
-static inline int imx6_bbu_nand_register_handler(const char *name, unsigned long flags)
+static inline int imx_bbu_external_nor_register_handler(const char *name, char *devicefile,
+		unsigned long flags)
 {
 	return -ENOSYS;
 }
+#endif
 
-static inline int imx_bbu_external_nor_register_handler(const char *name, char *devicefile,
-		unsigned long flags)
+#if defined(CONFIG_BAREBOX_UPDATE_IMX6_NAND)
+int imx6_bbu_nand_register_handler(const char *name, unsigned long flags);
+#else
+static inline int imx6_bbu_nand_register_handler(const char *name, unsigned long flags)
 {
 	return -ENOSYS;
 }
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
