Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp6-g21.free.fr ([2a01:e0c:1:1599::15])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RqVQD-0000dM-VU
 for barebox@lists.infradead.org; Thu, 26 Jan 2012 19:55:50 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Thu, 26 Jan 2012 20:55:26 +0100
Message-Id: <1327607728-2788-3-git-send-email-robert.jarzmik@free.fr>
In-Reply-To: <1327607728-2788-1-git-send-email-robert.jarzmik@free.fr>
References: <1327607728-2788-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH] arm/mach-pxa: add standard LCD panel GPIO settings
To: barebox@lists.infradead.org

Add standard GPIO routings for LCD panels, taken from linux
kernel.

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 arch/arm/mach-pxa/include/mach/mfp-pxa27x.h |   32 +++++++++++++++++++++++++++
 1 files changed, 32 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-pxa/include/mach/mfp-pxa27x.h b/arch/arm/mach-pxa/include/mach/mfp-pxa27x.h
index 6543c05..f6a27a2 100644
--- a/arch/arm/mach-pxa/include/mach/mfp-pxa27x.h
+++ b/arch/arm/mach-pxa/include/mach/mfp-pxa27x.h
@@ -434,5 +434,37 @@
 #define GPIO112_nMSINS		MFP_CFG_IN(GPIO112, AF2)
 #define GPIO32_MSSCLK		MFP_CFG_OUT(GPIO32, AF1, DRIVE_LOW)
 
+/* commonly used pin configurations */
+#define GPIOxx_LCD_16BPP	\
+	GPIO58_LCD_LDD_0,	\
+	GPIO59_LCD_LDD_1,	\
+	GPIO60_LCD_LDD_2,	\
+	GPIO61_LCD_LDD_3,	\
+	GPIO62_LCD_LDD_4,	\
+	GPIO63_LCD_LDD_5,	\
+	GPIO64_LCD_LDD_6,	\
+	GPIO65_LCD_LDD_7,	\
+	GPIO66_LCD_LDD_8,	\
+	GPIO67_LCD_LDD_9,	\
+	GPIO68_LCD_LDD_10,	\
+	GPIO69_LCD_LDD_11,	\
+	GPIO70_LCD_LDD_12,	\
+	GPIO71_LCD_LDD_13,	\
+	GPIO72_LCD_LDD_14,	\
+	GPIO73_LCD_LDD_15
+
+#define GPIOxx_LCD_DSTN_16BPP	\
+	GPIOxx_LCD_16BPP,	\
+	GPIO74_LCD_FCLK,	\
+	GPIO75_LCD_LCLK,	\
+	GPIO76_LCD_PCLK
+
+#define GPIOxx_LCD_TFT_16BPP	\
+	GPIOxx_LCD_16BPP,	\
+	GPIO74_LCD_FCLK,	\
+	GPIO75_LCD_LCLK,	\
+	GPIO76_LCD_PCLK,	\
+	GPIO77_LCD_BIAS
+
 extern int keypad_set_wake(unsigned int on);
 #endif /* __ASM_ARCH_MFP_PXA27X_H */
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
