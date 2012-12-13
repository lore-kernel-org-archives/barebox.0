Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TjC9X-0001rE-Qn
 for barebox@lists.infradead.org; Thu, 13 Dec 2012 17:00:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Dec 2012 18:00:42 +0100
Message-Id: <1355418044-27452-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1355418044-27452-1-git-send-email-s.hauer@pengutronix.de>
References: <1355418044-27452-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 7/9] pcm038: Stop ongoing ULPI transfers before registering
 the transceiver
To: barebox@lists.infradead.org

The ULPI lines are normally input to the USB port. In order to configure
the ULPI transceiver properly the ongoing transfers must be stopped. This
can be done by configuring the the STP pin as gpio output and drinving
it high.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/pcm038/pcm970.c |   10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/pcm038/pcm970.c b/arch/arm/boards/pcm038/pcm970.c
index 7b25110..a50a1f2 100644
--- a/arch/arm/boards/pcm038/pcm970.c
+++ b/arch/arm/boards/pcm038/pcm970.c
@@ -160,7 +160,7 @@ static int pcm970_init(void)
 		PA1_PF_USBH2_DIR,
 		PA2_PF_USBH2_DATA7,
 		PA3_PF_USBH2_NXT,
-		PA4_PF_USBH2_STP,
+		4 | GPIO_PORTA | GPIO_GPIO | GPIO_OUT,
 		PD19_AF_USBH2_DATA4,
 		PD20_AF_USBH2_DATA3,
 		PD21_AF_USBH2_DATA6,
@@ -176,8 +176,14 @@ static int pcm970_init(void)
 	/* Configure SJA1000 on cs4 */
 	imx27_setup_weimcs(4, 0x0000DCF6, 0x444A0301, 0x44443302);
 
-	if (IS_ENABLED(CONFIG_USB))
+	if (IS_ENABLED(CONFIG_USB)) {
+		/* Stop ULPI */
+		gpio_direction_output(4, 1);
+		mdelay(1);
+		imx_gpio_mode(PA4_PF_USBH2_STP);
+
 		imx27_add_usbh2(&pcm970_usbh2_pdata);
+	}
 
 #ifdef CONFIG_DISK_INTF_PLATFORM_IDE
 	pcm970_ide_init();
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
