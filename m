Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RzoYO-0002IG-Hn
 for barebox@lists.infradead.org; Tue, 21 Feb 2012 12:10:46 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Tue, 21 Feb 2012 13:10:34 +0100
Message-ID: <87aa4ctmit.fsf@free.fr>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="=-=-="
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Pending patches
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

--=-=-=
Content-Type: text/plain

Hi Sascha,

I have 2 sent patches which were somehow ... lost.
They have been sent on January the 26th, with the following subjects:
 - [PATCH] arm/mach-pxa: add standard LCD panel GPIO settings
 - [PATCH] arm/mach-pxa: add CCCR bits definitions

These are targeted at next branch. Could you consider pulling them ?
I joined them in this mail to ease your search.

Cheers.

-- 
Robert


--=-=-=
Content-Type: text/x-diff
Content-Disposition: inline;
 filename=0001-arm-mach-pxa-add-standard-LCD-panel-GPIO-settings.patch

From 2a3e758be559e34bffca8224b92e1d6f304ca5b8 Mon Sep 17 00:00:00 2001
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Wed, 25 Jan 2012 10:12:28 +0100
Subject: [PATCH 1/2] arm/mach-pxa: add standard LCD panel GPIO settings

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


--=-=-=
Content-Type: text/x-diff
Content-Disposition: inline;
 filename=0002-arm-mach-pxa-add-CCCR-bits-definitions.patch

From f6f80c5430c279eddaee39929e2182b6f4b6ac90 Mon Sep 17 00:00:00 2001
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Wed, 25 Jan 2012 10:13:55 +0100
Subject: [PATCH 2/2] arm/mach-pxa: add CCCR bits definitions

Add CCCR bits definition for PXA SoC, so that the bootloader
can setup a stable core clock frequency, which is not the
initial reset clock, as required by Intel's PXA27x Processor
family developer's guide, chapter 3.5.5, table 3.7 (clock
frequencies).

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 arch/arm/mach-pxa/include/mach/pxa2xx-regs.h |    5 +++++
 1 files changed, 5 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-pxa/include/mach/pxa2xx-regs.h b/arch/arm/mach-pxa/include/mach/pxa2xx-regs.h
index 4762d8a..b43648e 100644
--- a/arch/arm/mach-pxa/include/mach/pxa2xx-regs.h
+++ b/arch/arm/mach-pxa/include/mach/pxa2xx-regs.h
@@ -222,6 +222,11 @@
 #define CCCR_N_MASK	0x0380	/* Run Mode Frequency to Turbo Mode Frequency Multiplier */
 #define CCCR_M_MASK	0x0060	/* Memory Frequency to Run Mode Frequency Multiplier */
 #define CCCR_L_MASK	0x001f	/* Crystal Frequency to Memory Frequency Multiplier */
+#define CCCR_CPDIS	(1 << 31)
+#define CCCR_PPDIS	(1 << 30)
+#define CCCR_LCD26	(1 << 27)
+#define CCCR_PLL_EARLY	(1 << 26)
+#define CCCR_A		(1 << 25)
 
 #define CKEN_AC97CONF   (1 << 31)    /* AC97 Controller Configuration */
 #define CKEN_CAMERA	(1 << 24)	/* Camera Interface Clock Enable */
-- 
1.7.5.4


--=-=-=
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--=-=-=--
