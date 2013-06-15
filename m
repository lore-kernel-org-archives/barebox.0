Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp37.i.mail.ru ([94.100.177.97])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UnqkU-0006Rr-Ve
 for barebox@lists.infradead.org; Sat, 15 Jun 2013 13:42:37 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sat, 15 Jun 2013 17:42:04 +0400
Message-Id: <1371303724-27020-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] ARM: pcm038: Add setup for MC13783 IRQ pin
To: barebox@lists.infradead.org

Kernel does not have pinctrl driver for i.MX27 yet. When we using DT,
this cause to unable setup pins to desired function. This patch adds
a setup for MC13783 IRQ pin to avoid this issue.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/pcm038/pcm038.c | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
index dec5164..f6a3e17 100644
--- a/arch/arm/boards/pcm038/pcm038.c
+++ b/arch/arm/boards/pcm038/pcm038.c
@@ -46,9 +46,10 @@
 
 #include "pll.h"
 
+#define PCM038_GPIO_PMIC_IRQ	(GPIO_PORTB + 23)
 #define PCM038_GPIO_FEC_RST	(GPIO_PORTC + 30)
-#define PCM038_GPIO_SPI_CS0	(GPIO_PORTD + 28)
 #define PCM970_GPIO_SPI_CS1	(GPIO_PORTD + 27)
+#define PCM038_GPIO_SPI_CS0	(GPIO_PORTD + 28)
 #define PCM038_GPIO_OTG_STP	(GPIO_PORTE + 1)
 
 static struct fec_platform_data fec_info = {
@@ -225,7 +226,6 @@ static int pcm038_devices_init(void)
 		PD15_AOUT_FEC_COL,
 		PD16_AIN_FEC_TX_ER,
 		PF23_AIN_FEC_TX_EN,
-		PCM038_GPIO_FEC_RST | GPIO_GPIO | GPIO_OUT,
 		/* UART1 */
 		PE12_PF_UART1_TXD,
 		PE13_PF_UART1_RXD,
@@ -236,10 +236,6 @@ static int pcm038_devices_init(void)
 		PD29_PF_CSPI1_SCLK,
 		PD30_PF_CSPI1_MISO,
 		PD31_PF_CSPI1_MOSI,
-		PCM038_GPIO_SPI_CS0 | GPIO_GPIO | GPIO_OUT,
-#ifdef CONFIG_MACH_PCM970_BASEBOARD
-		PCM970_GPIO_SPI_CS1 | GPIO_GPIO | GPIO_OUT,
-#endif
 		/* Display */
 		PA5_PF_LSCLK,
 		PA6_PF_LD0,
@@ -287,6 +283,13 @@ static int pcm038_devices_init(void)
 		/* I2C2 */
 		PC5_PF_I2C2_SDA,
 		PC6_PF_I2C2_SCL,
+		/* Misc */
+		PCM038_GPIO_FEC_RST | GPIO_GPIO | GPIO_OUT,
+		PCM038_GPIO_SPI_CS0 | GPIO_GPIO | GPIO_OUT,
+#ifdef CONFIG_MACH_PCM970_BASEBOARD
+		PCM970_GPIO_SPI_CS1 | GPIO_GPIO | GPIO_OUT,
+#endif
+		PCM038_GPIO_PMIC_IRQ | GPIO_GPIO | GPIO_IN,
 	};
 
 	/* configure 16 bit nor flash on cs0 */
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
