Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp45.i.mail.ru ([94.100.177.105])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UYFml-0007QU-J9
 for barebox@lists.infradead.org; Fri, 03 May 2013 13:12:29 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Fri,  3 May 2013 17:11:48 +0400
Message-Id: <1367586709-29238-2-git-send-email-shc_work@mail.ru>
In-Reply-To: <1367586709-29238-1-git-send-email-shc_work@mail.ru>
References: <1367586709-29238-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 2/3] ARM: pcm038: Add definition for SPI chipselect 0
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/pcm038/pcm038.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
index 1b0c54b..4337f3e 100644
--- a/arch/arm/boards/pcm038/pcm038.c
+++ b/arch/arm/boards/pcm038/pcm038.c
@@ -46,12 +46,14 @@
 
 #include "pll.h"
 
+#define PCM038_GPIO_SPI_CS0	(GPIO_PORTD + 28)
+
 static struct fec_platform_data fec_info = {
 	.xcv_type = PHY_INTERFACE_MODE_MII,
 	.phy_addr = 1,
 };
 
-static int pcm038_spi_cs[] = {GPIO_PORTD + 28};
+static int pcm038_spi_cs[] = { PCM038_GPIO_SPI_CS0 };
 
 static struct spi_imx_master pcm038_spi_0_data = {
 	.chipselect = pcm038_spi_cs,
@@ -217,7 +219,7 @@ static int pcm038_devices_init(void)
 		PE15_PF_UART1_RTS,
 		/* CSPI1 */
 		PD25_PF_CSPI1_RDY,
-		GPIO_PORTD | 28 | GPIO_GPIO | GPIO_OUT,
+		PCM038_GPIO_SPI_CS0 | GPIO_GPIO | GPIO_OUT,
 		PD29_PF_CSPI1_SCLK,
 		PD30_PF_CSPI1_MISO,
 		PD31_PF_CSPI1_MOSI,
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
