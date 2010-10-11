Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P5GYQ-0003Ft-Fm
	for barebox@lists.infradead.org; Mon, 11 Oct 2010 11:28:31 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Oct 2010 13:28:09 +0200
Message-Id: <1286796505-16049-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1286796505-16049-1-git-send-email-s.hauer@pengutronix.de>
References: <1286796505-16049-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/17] i.MX27: Add support for SDHC pins
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/iomux-mx27.h |    6 ++++++
 1 files changed, 6 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/iomux-mx27.h b/arch/arm/mach-imx/include/mach/iomux-mx27.h
index 993b141..23e448b 100644
--- a/arch/arm/mach-imx/include/mach/iomux-mx27.h
+++ b/arch/arm/mach-imx/include/mach/iomux-mx27.h
@@ -28,6 +28,12 @@
 #define PA2_PF_USBH2_DATA7	(GPIO_PORTA | GPIO_PF | 2)
 #define PA3_PF_USBH2_NXT	(GPIO_PORTA | GPIO_PF | 3)
 #define PA4_PF_USBH2_STP	(GPIO_PORTA | GPIO_PF | 4)
+#define PB4_PF_SD2_D0		(GPIO_PORTB | GPIO_PF | 4)
+#define PB5_PF_SD2_D1		(GPIO_PORTB | GPIO_PF | 5)
+#define PB6_PF_SD2_D2		(GPIO_PORTB | GPIO_PF | 6)
+#define PB7_PF_SD2_D3		(GPIO_PORTB | GPIO_PF | 7)
+#define PB8_PF_SD2_CMD		(GPIO_PORTB | GPIO_PF | 8)
+#define PB9_PF_SD2_CLK		(GPIO_PORTB | GPIO_PF | 9)
 #define PB22_PF_USBH1_SUSP	(GPIO_PORTB | GPIO_PF | 22)
 #define PB25_PF_USBH1_RCV	(GPIO_PORTB | GPIO_PF | 25)
 #define PC5_PF_I2C2_SDA		(GPIO_PORTC | GPIO_PF | GPIO_IN | 5)
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
