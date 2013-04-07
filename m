Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp43.i.mail.ru ([94.100.177.103])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UOlHi-0005K1-2v
 for barebox@lists.infradead.org; Sun, 07 Apr 2013 08:49:11 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun,  7 Apr 2013 12:48:56 +0400
Message-Id: <1365324537-23090-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 1/2] ARM: i.MX: Update MX2x iomux definitions
To: barebox@lists.infradead.org

The patch updates MX2x iomux definitions from kernel.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-imx/include/mach/iomux-mx27.h |  6 ------
 arch/arm/mach-imx/include/mach/iomux-mx2x.h | 12 ++++++------
 2 files changed, 6 insertions(+), 12 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/iomux-mx27.h b/arch/arm/mach-imx/include/mach/iomux-mx27.h
index 7d24967..b6e3345 100644
--- a/arch/arm/mach-imx/include/mach/iomux-mx27.h
+++ b/arch/arm/mach-imx/include/mach/iomux-mx27.h
@@ -25,12 +25,6 @@
 #define PA2_PF_USBH2_DATA7	(GPIO_PORTA | GPIO_PF | 2)
 #define PA3_PF_USBH2_NXT	(GPIO_PORTA | GPIO_PF | 3)
 #define PA4_PF_USBH2_STP	(GPIO_PORTA | GPIO_PF | 4)
-#define PB4_PF_SD2_D0		(GPIO_PORTB | GPIO_PF | 4)
-#define PB5_PF_SD2_D1		(GPIO_PORTB | GPIO_PF | 5)
-#define PB6_PF_SD2_D2		(GPIO_PORTB | GPIO_PF | 6)
-#define PB7_PF_SD2_D3		(GPIO_PORTB | GPIO_PF | 7)
-#define PB8_PF_SD2_CMD		(GPIO_PORTB | GPIO_PF | 8)
-#define PB9_PF_SD2_CLK		(GPIO_PORTB | GPIO_PF | 9)
 #define PB22_PF_USBH1_SUSP	(GPIO_PORTB | GPIO_PF | 22)
 #define PB25_PF_USBH1_RCV	(GPIO_PORTB | GPIO_PF | 25)
 #define PC5_PF_I2C2_SDA		(GPIO_PORTC | GPIO_PF | GPIO_IN | 5)
diff --git a/arch/arm/mach-imx/include/mach/iomux-mx2x.h b/arch/arm/mach-imx/include/mach/iomux-mx2x.h
index 2f9560f..15c2e2b 100644
--- a/arch/arm/mach-imx/include/mach/iomux-mx2x.h
+++ b/arch/arm/mach-imx/include/mach/iomux-mx2x.h
@@ -86,12 +86,12 @@
 #define PC31_PF_SSI3_CLK	(GPIO_PORTC | GPIO_PF | GPIO_IN | 31)
 #define PD17_PF_I2C_DATA	(GPIO_PORTD | GPIO_PF | GPIO_OUT | 17)
 #define PD18_PF_I2C_CLK		(GPIO_PORTD | GPIO_PF | GPIO_OUT | 18)
-#define PD19_PF_CSPI2_SS2	(GPIO_PORTD | GPIO_PF | 19)
-#define PD20_PF_CSPI2_SS1	(GPIO_PORTD | GPIO_PF | 20)
-#define PD21_PF_CSPI2_SS0	(GPIO_PORTD | GPIO_PF | 21)
-#define PD22_PF_CSPI2_SCLK	(GPIO_PORTD | GPIO_PF | 22)
-#define PD23_PF_CSPI2_MISO	(GPIO_PORTD | GPIO_PF | 23)
-#define PD24_PF_CSPI2_MOSI	(GPIO_PORTD | GPIO_PF | 24)
+#define PD19_PF_CSPI2_SS2	(GPIO_PORTD | GPIO_PF | GPIO_OUT | 19)
+#define PD20_PF_CSPI2_SS1	(GPIO_PORTD | GPIO_PF | GPIO_OUT | 20)
+#define PD21_PF_CSPI2_SS0	(GPIO_PORTD | GPIO_PF | GPIO_OUT | 21)
+#define PD22_PF_CSPI2_SCLK	(GPIO_PORTD | GPIO_PF | GPIO_OUT | 22)
+#define PD23_PF_CSPI2_MISO	(GPIO_PORTD | GPIO_PF | GPIO_IN | 23)
+#define PD24_PF_CSPI2_MOSI	(GPIO_PORTD | GPIO_PF | GPIO_OUT | 24)
 #define PD25_PF_CSPI1_RDY	(GPIO_PORTD | GPIO_PF | GPIO_OUT | 25)
 #define PD26_PF_CSPI1_SS2	(GPIO_PORTD | GPIO_PF | GPIO_OUT | 26)
 #define PD27_PF_CSPI1_SS1	(GPIO_PORTD | GPIO_PF | GPIO_OUT | 27)
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
