Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp45.i.mail.ru ([94.100.177.105])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UYFml-0007QV-J7
 for barebox@lists.infradead.org; Fri, 03 May 2013 13:12:29 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Fri,  3 May 2013 17:11:49 +0400
Message-Id: <1367586709-29238-3-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 3/3] ARM: pcm038: Add definition for FEC reset
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/pcm038/pcm038.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
index 4337f3e..4b2fa6c 100644
--- a/arch/arm/boards/pcm038/pcm038.c
+++ b/arch/arm/boards/pcm038/pcm038.c
@@ -46,6 +46,7 @@
 
 #include "pll.h"
 
+#define PCM038_GPIO_FEC_RST	(GPIO_PORTC + 30)
 #define PCM038_GPIO_SPI_CS0	(GPIO_PORTD + 28)
 
 static struct fec_platform_data fec_info = {
@@ -212,6 +213,7 @@ static int pcm038_devices_init(void)
 		PD15_AOUT_FEC_COL,
 		PD16_AIN_FEC_TX_ER,
 		PF23_AIN_FEC_TX_EN,
+		PCM038_GPIO_FEC_RST | GPIO_GPIO | GPIO_OUT,
 		/* UART1 */
 		PE12_PF_UART1_TXD,
 		PE13_PF_UART1_RXD,
@@ -303,6 +305,7 @@ static int pcm038_devices_init(void)
 	/* Register the fec device after the PLL re-initialisation
 	 * as the fec depends on the (now higher) ipg clock
 	 */
+	gpio_set_value(PCM038_GPIO_FEC_RST, 1);
 	imx27_add_fec(&fec_info);
 
 	switch (bootsource_get()) {
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
