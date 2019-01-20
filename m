Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp48.i.mail.ru ([94.100.177.108])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1glAS7-0002U4-GE
 for barebox@lists.infradead.org; Sun, 20 Jan 2019 10:35:45 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun, 20 Jan 2019 13:35:27 +0300
Message-Id: <20190120103533.7146-4-shc_work@mail.ru>
In-Reply-To: <20190120103533.7146-1-shc_work@mail.ru>
References: <20190120103533.7146-1-shc_work@mail.ru>
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
Subject: [PATCH 04/10] ARM: imx: delete unused mach/devices-imx50.h
To: barebox@lists.infradead.org

This removes the stale mach/devices-imx50.h include as there is no user of it.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-imx/include/mach/devices-imx50.h | 83 --------------------------
 1 file changed, 83 deletions(-)
 delete mode 100644 arch/arm/mach-imx/include/mach/devices-imx50.h

diff --git a/arch/arm/mach-imx/include/mach/devices-imx50.h b/arch/arm/mach-imx/include/mach/devices-imx50.h
deleted file mode 100644
index 9e0eaa8..0000000
--- a/arch/arm/mach-imx/include/mach/devices-imx50.h
+++ /dev/null
@@ -1,83 +0,0 @@
-
-#include <mach/devices.h>
-#include <mach/imx50-regs.h>
-
-static inline struct device_d *imx50_add_spi0(struct spi_imx_master *pdata)
-{
-	return imx_add_spi_imx51((void *)MX50_ECSPI1_BASE_ADDR, 0, pdata);
-}
-
-static inline struct device_d *imx50_add_spi1(struct spi_imx_master *pdata)
-{
-	return imx_add_spi_imx51((void *)MX50_ECSPI2_BASE_ADDR, 1, pdata);
-}
-
-static inline struct device_d *imx50_add_cspi(struct spi_imx_master *pdata)
-{
-	return imx_add_spi_imx35((void *)MX50_CSPI_BASE_ADDR, 2, pdata);
-}
-
-static inline struct device_d *imx50_add_i2c0(struct i2c_platform_data *pdata)
-{
-	return imx_add_i2c((void *)MX50_I2C1_BASE_ADDR, 0, pdata);
-}
-
-static inline struct device_d *imx50_add_i2c1(struct i2c_platform_data *pdata)
-{
-	return imx_add_i2c((void *)MX50_I2C2_BASE_ADDR, 1, pdata);
-}
-
-static inline struct device_d *imx50_add_i2c2(struct i2c_platform_data *pdata)
-{
-	return imx_add_i2c((void *)MX50_I2C3_BASE_ADDR, 2, pdata);
-}
-
-static inline struct device_d *imx50_add_uart0(void)
-{
-	return imx_add_uart_imx21((void *)MX50_UART1_BASE_ADDR, 0);
-}
-
-static inline struct device_d *imx50_add_uart1(void)
-{
-	return imx_add_uart_imx21((void *)MX50_UART2_BASE_ADDR, 1);
-}
-
-static inline struct device_d *imx50_add_uart2(void)
-{
-	return imx_add_uart_imx21((void *)MX50_UART3_BASE_ADDR, 2);
-}
-
-static inline struct device_d *imx50_add_uart3(void)
-{
-	return imx_add_uart_imx21((void *)MX50_UART4_BASE_ADDR, 3);
-}
-
-static inline struct device_d *imx50_add_fec(struct fec_platform_data *pdata)
-{
-	return imx_add_fec_imx27((void *)MX50_FEC_BASE_ADDR, pdata);
-}
-
-static inline struct device_d *imx50_add_mmc0(struct esdhc_platform_data *pdata)
-{
-	return imx_add_esdhc((void *)MX50_ESDHC1_BASE_ADDR, 0, pdata);
-}
-
-static inline struct device_d *imx50_add_mmc1(struct esdhc_platform_data *pdata)
-{
-	return imx_add_esdhc((void *)MX50_ESDHC2_BASE_ADDR, 1, pdata);
-}
-
-static inline struct device_d *imx50_add_mmc2(struct esdhc_platform_data *pdata)
-{
-	return imx_add_esdhc((void *)MX50_ESDHC3_BASE_ADDR, 2, pdata);
-}
-
-static inline struct device_d *imx50_add_mmc3(struct esdhc_platform_data *pdata)
-{
-	return imx_add_esdhc((void *)MX50_ESDHC4_BASE_ADDR, 3, pdata);
-}
-
-static inline struct device_d *imx50_add_kpp(struct matrix_keymap_data *pdata)
-{
-	return imx_add_kpp((void *)MX50_KPP_BASE_ADDR, pdata);
-}
-- 
2.10.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
