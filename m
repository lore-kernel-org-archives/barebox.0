Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PS62I-000206-SQ
	for barebox@lists.infradead.org; Mon, 13 Dec 2010 10:53:52 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <jbe@pengutronix.de>) id 1PS62F-0008Ql-Qb
	for barebox@lists.infradead.org; Mon, 13 Dec 2010 11:53:39 +0100
Received: from jbe by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1PS62F-0002IR-OU
	for barebox@lists.infradead.org; Mon, 13 Dec 2010 11:53:39 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 13 Dec 2010 11:53:26 +0100
Message-Id: <1292237617-7064-4-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1292237617-7064-1-git-send-email-jbe@pengutronix.de>
References: <1292237617-7064-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 03/14] STM378x: Use Hz as the clock unit like in all other arch
To: barebox@lists.infradead.org

i.MX23 currently uses kHz as the unit for its clock handling and calculation
to avoid overflows when calculation with the internal 480 MHz PLL and its
fractional divider. This patch changes all routines to accept Hz and deliver
Hz as the clock unit.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/mach-stm/speed-imx23.c |   49 +++++++++++++++++++--------------------
 drivers/mci/stm378x.c           |   10 ++++----
 drivers/serial/stm-serial.c     |    2 +-
 3 files changed, 30 insertions(+), 31 deletions(-)

diff --git a/arch/arm/mach-stm/speed-imx23.c b/arch/arm/mach-stm/speed-imx23.c
index f32ae92..a31139d 100644
--- a/arch/arm/mach-stm/speed-imx23.c
+++ b/arch/arm/mach-stm/speed-imx23.c
@@ -29,8 +29,6 @@
 #include <mach/generic.h>
 #include <mach/clock.h>
 
-/* Note: all clock frequencies are returned in kHz */
-
 #define HW_CLKCTRL_PLLCTRL0 0x000
 #define HW_CLKCTRL_PLLCTRL1 0x010
 #define HW_CLKCTRL_CPU 0x20
@@ -84,13 +82,13 @@
 unsigned imx_get_mpllclk(void)
 {
 	/* the main PLL runs at 480 MHz */
-	return 480U * 1000U;
+	return 480000000;
 }
 
 unsigned imx_get_xtalclk(void)
 {
 	/* the external reference runs at 24 MHz */
-	return 24U * 1000U;
+	return 24000000;
 }
 
 /* used for the SDRAM controller */
@@ -105,14 +103,15 @@ unsigned imx_get_emiclk(void)
 	if (readl(IMX_CCM_BASE + HW_CLKCTRL_CLKSEQ) & CLKCTRL_CLKSEQ_BYPASS_EMI)
 		return imx_get_xtalclk() / GET_EMI_XTAL_DIV(readl(IMX_CCM_BASE + HW_CLKCTRL_EMI));
 
-	rate = imx_get_mpllclk();
+	rate = imx_get_mpllclk() / 1000;
 	reg = readl(IMX_CCM_BASE + HW_CLKCTRL_FRAC);
 	if (!(reg & CLKCTRL_FRAC_CLKGATEEMI)) {
 		rate *= 18U;
 		rate /= GET_EMIFRAC(reg);
 	}
 
-	return rate / GET_EMI_PLL_DIV(readl(IMX_CCM_BASE + HW_CLKCTRL_EMI));
+	return (rate / GET_EMI_PLL_DIV(readl(IMX_CCM_BASE + HW_CLKCTRL_EMI)))
+			* 1000;
 }
 
 /*
@@ -121,7 +120,7 @@ unsigned imx_get_emiclk(void)
 unsigned imx_get_ioclk(void)
 {
 	uint32_t reg;
-	unsigned rate = imx_get_mpllclk();
+	unsigned rate = imx_get_mpllclk() / 1000;
 
 	reg = readl(IMX_CCM_BASE + HW_CLKCTRL_FRAC);
 	if (reg & CLKCTRL_FRAC_CLKGATEIO)
@@ -129,12 +128,12 @@ unsigned imx_get_ioclk(void)
 
 	rate *= 18U;
 	rate /= GET_IOFRAC(reg);
-	return rate;
+	return rate * 1000;
 }
 
 /**
  * Setup a new frequency to the IOCLK domain.
- * @param nc New frequency in [kHz]
+ * @param nc New frequency in [Hz]
  *
  * The FRAC divider for the IOCLK must be between 18 (* 18/18) and 35 (* 18/35)
  */
@@ -143,10 +142,9 @@ unsigned imx_set_ioclk(unsigned nc)
 	uint32_t reg;
 	unsigned div;
 
-	div = imx_get_mpllclk();
-	div *= 18U;
-	div += nc >> 1;
-	div /= nc;
+	nc /= 1000;
+	div = (imx_get_mpllclk() / 1000) * 18;
+	div = DIV_ROUND_CLOSEST(div, nc);
 	if (div > 0x3f)
 		div = 0x3f;
 	/* mask the current settings */
@@ -171,24 +169,25 @@ unsigned imx_get_armclk(void)
 	if (reg & CLKCTRL_FRAC_CLKGATECPU)
 		return 0U;	/* should not possible, shouldn't it? */
 
-	rate = imx_get_mpllclk();
+	rate = imx_get_mpllclk() / 1000;
 	rate *= 18U;
 	rate /= GET_CPUFRAC(reg);
 
-	return rate / GET_CPU_PLL_DIV(readl(IMX_CCM_BASE + HW_CLKCTRL_CPU));
+	return (rate / GET_CPU_PLL_DIV(readl(IMX_CCM_BASE + HW_CLKCTRL_CPU)))
+			* 1000;
 }
 
 /* this is the AHB and APBH bus clock */
 unsigned imx_get_hclk(void)
 {
-	unsigned rate = imx_get_armclk();
+	unsigned rate = imx_get_armclk() / 1000;
 
 	if (readl(IMX_CCM_BASE + HW_CLKCTRL_HBUS) & 0x20) {
 		rate *= readl(IMX_CCM_BASE + HW_CLKCTRL_HBUS) & 0x1f;
 		rate >>= 5U; /* / 32 */
 	} else
 		rate /= readl(IMX_CCM_BASE + HW_CLKCTRL_HBUS) & 0x1f;
-	return rate;
+	return rate * 1000;
 }
 
 /*
@@ -219,7 +218,7 @@ unsigned imx_get_sspclk(unsigned index)
 
 /**
  * @param index Unit index (ignored on i.MX23)
- * @param nc New frequency in [kHz]
+ * @param nc New frequency in [Hz]
  * @param high != 0 if ioclk should be the source
  * @return The new possible frequency in [kHz]
  */
@@ -269,11 +268,11 @@ unsigned imx_set_sspclk(unsigned index, unsigned nc, int high)
 
 void imx_dump_clocks(void)
 {
-	printf("mpll:    %10u kHz\n", imx_get_mpllclk());
-	printf("arm:     %10u kHz\n", imx_get_armclk());
-	printf("ioclk:   %10u kHz\n", imx_get_ioclk());
-	printf("emiclk:  %10u kHz\n", imx_get_emiclk());
-	printf("hclk:    %10u kHz\n", imx_get_hclk());
-	printf("xclk:    %10u kHz\n", imx_get_xclk());
-	printf("ssp:     %10u kHz\n", imx_get_sspclk(0));
+	printf("mpll:    %10u kHz\n", imx_get_mpllclk() / 1000);
+	printf("arm:     %10u kHz\n", imx_get_armclk() / 1000);
+	printf("ioclk:   %10u kHz\n", imx_get_ioclk() / 1000);
+	printf("emiclk:  %10u kHz\n", imx_get_emiclk() / 1000);
+	printf("hclk:    %10u kHz\n", imx_get_hclk() / 1000);
+	printf("xclk:    %10u kHz\n", imx_get_xclk() / 1000);
+	printf("ssp:     %10u kHz\n", imx_get_sspclk(0) / 1000);
 }
diff --git a/drivers/mci/stm378x.c b/drivers/mci/stm378x.c
index a2802af..fb74822 100644
--- a/drivers/mci/stm378x.c
+++ b/drivers/mci/stm378x.c
@@ -481,7 +481,7 @@ static unsigned setup_clock_speed(struct device_d *hw_dev, unsigned nc)
 		return 0;
 	}
 
-	ssp = imx_get_sspclk(0) * 1000;
+	ssp = imx_get_sspclk(0);
 
 	for (div = 2; div < 255; div += 2) {
 		rate = DIV_ROUND_CLOSEST(DIV_ROUND_CLOSEST(ssp, nc), div);
@@ -658,20 +658,20 @@ static int stm_mci_probe(struct device_d *hw_dev)
 	host->host_caps = pd->caps;
 
 	if (pd->f_min == 0) {
-		host->f_min = imx_get_sspclk(0) / 254U / 256U * 1000U;
+		host->f_min = imx_get_sspclk(0) / 254U / 256U;
 		pr_debug("Min. frequency is %u Hz\n", host->f_min);
 	} else {
 		host->f_min = pd->f_min;
 		pr_debug("Min. frequency is %u Hz, could be %u Hz\n",
-			host->f_min, imx_get_sspclk(0) / 254U / 256U * 1000U);
+			host->f_min, imx_get_sspclk(0) / 254U / 256U);
 	}
 	if (pd->f_max == 0) {
-		host->f_max = imx_get_sspclk(0) / 2U / 1U * 1000U;
+		host->f_max = imx_get_sspclk(0) / 2U / 1U;
 		pr_debug("Max. frequency is %u Hz\n", host->f_max);
 	} else {
 		host->f_max =  pd->f_max;
 		pr_debug("Max. frequency is %u Hz, could be %u Hz\n",
-			host->f_max, imx_get_sspclk(0) / 2U / 1U * 1000U);
+			host->f_max, imx_get_sspclk(0) / 2U / 1U);
 	}
 
 #ifdef CONFIG_MCI_INFO
diff --git a/drivers/serial/stm-serial.c b/drivers/serial/stm-serial.c
index 90563f5..3edd484 100644
--- a/drivers/serial/stm-serial.c
+++ b/drivers/serial/stm-serial.c
@@ -108,7 +108,7 @@ static int stm_serial_setbaudrate(struct console_device *cdev, int new_baudrate)
 	writel(0, dev->map_base + UARTDBGCR);
 
 	/* Calculate and set baudrate */
-	quot = (imx_get_xclk() * 4000) / new_baudrate;
+	quot = (imx_get_xclk() * 4) / new_baudrate;
 	writel(quot & 0x3f, dev->map_base + UARTDBGFBRD);
 	writel(quot >> 6, dev->map_base + UARTDBGIBRD);
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
