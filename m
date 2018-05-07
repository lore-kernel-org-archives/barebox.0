Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fFhSf-0006ea-L5
 for barebox@lists.infradead.org; Mon, 07 May 2018 14:49:59 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1fFhSS-0005mm-VN
 for barebox@lists.infradead.org; Mon, 07 May 2018 16:49:45 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon,  7 May 2018 16:49:44 +0200
Message-Id: <20180507144944.17128-1-l.stach@pengutronix.de>
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
Subject: [PATCH] bbu: imx-bbu-internal: add i.MX51 SPI/I2C flash handler
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/mach-imx/imx-bbu-internal.c | 14 ++++++++++++++
 arch/arm/mach-imx/include/mach/bbu.h |  9 +++++++++
 2 files changed, 23 insertions(+)

diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index d03be7248742..c7375ff52aee 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -490,6 +490,20 @@ int imx51_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
 	return __register_handler(imx_handler);
 }
 
+int imx51_bbu_internal_spi_i2c_register_handler(const char *name,
+		char *devicefile, unsigned long flags)
+{
+	struct imx_internal_bbu_handler *imx_handler;
+
+	imx_handler = __init_handler(name, devicefile, flags);
+	imx_handler->flash_header_offset = FLASH_HEADER_OFFSET_MMC;
+
+	imx_handler->flags = IMX_INTERNAL_FLAG_ERASE;
+	imx_handler->handler.handler = imx_bbu_internal_v1_update;
+
+	return __register_handler(imx_handler);
+}
+
 /*
  * Register an i.MX53 internal boot update handler for MMC/SD
  */
diff --git a/arch/arm/mach-imx/include/mach/bbu.h b/arch/arm/mach-imx/include/mach/bbu.h
index 15bdbe1bec0d..bde3e02d2790 100644
--- a/arch/arm/mach-imx/include/mach/bbu.h
+++ b/arch/arm/mach-imx/include/mach/bbu.h
@@ -12,6 +12,9 @@ struct imx_dcd_v2_entry;
 int imx51_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
 		unsigned long flags);
 
+int imx51_bbu_internal_spi_i2c_register_handler(const char *name,
+		char *devicefile, unsigned long flags);
+
 int imx53_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
 		unsigned long flags);
 
@@ -41,6 +44,12 @@ static inline int imx51_bbu_internal_mmc_register_handler(const char *name, char
 	return -ENOSYS;
 }
 
+static inline int imx51_bbu_internal_spi_i2c_register_handler(const char *name,
+		char *devicefile, unsigned long flags)
+{
+	return -ENOSYS;
+}
+
 static inline int imx53_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
 		unsigned long flags)
 {
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
