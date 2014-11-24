Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XsrUL-00070q-09
 for barebox@lists.infradead.org; Mon, 24 Nov 2014 11:07:30 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1XsrTx-0000NZ-0t
 for barebox@lists.infradead.org; Mon, 24 Nov 2014 12:07:01 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 24 Nov 2014 12:06:50 +0100
Message-Id: <1416827220-3103-11-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1416827220-3103-1-git-send-email-l.stach@pengutronix.de>
References: <1416827220-3103-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 10/20] arm: imx: properly stub out NAND bbu handler
To: barebox@lists.infradead.org

The nand handler is only built in if config
BAREBOX_UPDATE_IMX6_NAND is selected.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/bbu.h | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/bbu.h b/arch/arm/mach-imx/include/mach/bbu.h
index 74c334a075a7..5eb9a47363af 100644
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
2.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
