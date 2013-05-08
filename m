Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp12.mail.ru ([94.100.176.89])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UZyu1-0002tN-Cx
 for barebox@lists.infradead.org; Wed, 08 May 2013 07:35:06 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Wed,  8 May 2013 11:34:38 +0400
Message-Id: <1367998478-9314-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] ARM: PCM970: Add definition for SPI CS1
To: barebox@lists.infradead.org

This chipselect is used on RDK Zigbee connector. Since we cannot
define additional chipselect after SPI is initialized, define this one
in main SPI initialization in PCM038 SOM.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/pcm038/pcm038.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
index 4b2fa6c..cfc1e5e 100644
--- a/arch/arm/boards/pcm038/pcm038.c
+++ b/arch/arm/boards/pcm038/pcm038.c
@@ -48,13 +48,19 @@
 
 #define PCM038_GPIO_FEC_RST	(GPIO_PORTC + 30)
 #define PCM038_GPIO_SPI_CS0	(GPIO_PORTD + 28)
+#define PCM970_GPIO_SPI_CS1	(GPIO_PORTD + 27)
 
 static struct fec_platform_data fec_info = {
 	.xcv_type = PHY_INTERFACE_MODE_MII,
 	.phy_addr = 1,
 };
 
-static int pcm038_spi_cs[] = { PCM038_GPIO_SPI_CS0 };
+static int pcm038_spi_cs[] = {
+	PCM038_GPIO_SPI_CS0,
+#ifdef CONFIG_MACH_PCM970_BASEBOARD
+	PCM970_GPIO_SPI_CS1,
+#endif
+};
 
 static struct spi_imx_master pcm038_spi_0_data = {
 	.chipselect = pcm038_spi_cs,
@@ -221,10 +227,13 @@ static int pcm038_devices_init(void)
 		PE15_PF_UART1_RTS,
 		/* CSPI1 */
 		PD25_PF_CSPI1_RDY,
-		PCM038_GPIO_SPI_CS0 | GPIO_GPIO | GPIO_OUT,
 		PD29_PF_CSPI1_SCLK,
 		PD30_PF_CSPI1_MISO,
 		PD31_PF_CSPI1_MOSI,
+		PCM038_GPIO_SPI_CS0 | GPIO_GPIO | GPIO_OUT,
+#ifdef CONFIG_MACH_PCM970_BASEBOARD
+		PCM970_GPIO_SPI_CS1 | GPIO_GPIO | GPIO_OUT,
+#endif
 		/* Display */
 		PA5_PF_LSCLK,
 		PA6_PF_LD0,
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
