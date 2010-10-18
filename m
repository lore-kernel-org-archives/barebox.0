Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P7szq-0000cn-Fb
	for barebox@lists.infradead.org; Mon, 18 Oct 2010 16:55:40 +0000
Received: from gallifrey.ext.pengutronix.de
	([2001:6f8:1178:4:5054:ff:fe8d:eefb] helo=localhost)
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <jbe@pengutronix.de>) id 1P7szo-0001oH-FF
	for barebox@lists.infradead.org; Mon, 18 Oct 2010 18:55:36 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 18 Oct 2010 18:55:34 +0200
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201010181855.34960.jbe@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH]  S3C24xx: Remove variable type size restrictions
To: barebox@lists.infradead.org

From: Juergen Beisert <juergen@kreuzholzen.de>
Subject: [PATCH] S3C24xx: Remove variable type size restrictions

There is no need to restrict the size of the variables for the clock calculation
routines. So, remove and replace them by generic types.

Signed-off-by: Juergen Beisert <juergen@kreuzholzen.de>

---
 arch/arm/mach-s3c24xx/generic.c                      |   29 ++++++++++---------
 arch/arm/mach-s3c24xx/include/mach/s3c24xx-generic.h |   14 ++++-----
 2 files changed, 23 insertions(+), 20 deletions(-)

Index: barebox-2010.10.0/arch/arm/mach-s3c24xx/generic.c
===================================================================
--- barebox-2010.10.0.orig/arch/arm/mach-s3c24xx/generic.c
+++ barebox-2010.10.0/arch/arm/mach-s3c24xx/generic.c
@@ -33,9 +33,10 @@
  * Calculate the current M-PLL clock.
  * @return Current frequency in Hz
  */
-uint32_t s3c24xx_get_mpllclk(void)
+unsigned s3c24xx_get_mpllclk(void)
 {
-	uint32_t m, p, s, reg_val;
+	uint32_t reg_val;
+	unsigned m, p, s;
 
 	reg_val = readl(MPLLCON);
 	m = ((reg_val & 0xFF000) >> 12) + 8;
@@ -53,9 +54,10 @@ uint32_t s3c24xx_get_mpllclk(void)
  * Calculate the current U-PLL clock
  * @return Current frequency in Hz
  */
-uint32_t s3c24xx_get_upllclk(void)
+unsigned s3c24xx_get_upllclk(void)
 {
-	uint32_t m, p, s, reg_val;
+	uint32_t reg_val;
+	unsigned m, p, s;
 
 	reg_val = readl(UPLLCON);
 	m = ((reg_val & 0xFF000) >> 12) + 8;
@@ -69,7 +71,7 @@ uint32_t s3c24xx_get_upllclk(void)
  * Calculate the FCLK frequency used for the ARM CPU core
  * @return Current frequency in Hz
  */
-uint32_t s3c24xx_get_fclk(void)
+unsigned s3c24xx_get_fclk(void)
 {
 	return s3c24xx_get_mpllclk();
 }
@@ -78,9 +80,9 @@ uint32_t s3c24xx_get_fclk(void)
  * Calculate the HCLK frequency used for the AHB bus (CPU to main peripheral)
  * @return Current frequency in Hz
  */
-uint32_t s3c24xx_get_hclk(void)
+unsigned s3c24xx_get_hclk(void)
 {
-	uint32_t f_clk;
+	unsigned f_clk;
 
 	f_clk = s3c24xx_get_fclk();
 #ifdef CONFIG_CPU_S3C2410
@@ -104,9 +106,9 @@ uint32_t s3c24xx_get_hclk(void)
  * Calculate the PCLK frequency used for the slower peripherals
  * @return Current frequency in Hz
  */
-uint32_t s3c24xx_get_pclk(void)
+unsigned s3c24xx_get_pclk(void)
 {
-	uint32_t p_clk;
+	unsigned p_clk;
 
 	p_clk = s3c24xx_get_hclk();
 	if (readl(CLKDIVN) & 0x01)
@@ -118,7 +120,7 @@ uint32_t s3c24xx_get_pclk(void)
  * Calculate the UCLK frequency used by the USB host device
  * @return Current frequency in Hz
  */
-uint32_t s3c24xx_get_uclk(void)
+unsigned s3c24xx_get_uclk(void)
 {
     return s3c24xx_get_upllclk();
 }
@@ -127,9 +129,10 @@ uint32_t s3c24xx_get_uclk(void)
  * Calculate the amount of connected and available memory
  * @return Memory size in bytes
  */
-uint32_t s3c24x0_get_memory_size(void)
+unsigned s3c24x0_get_memory_size(void)
 {
-	uint32_t reg, size;
+	uint32_t reg;
+	unsigned size;
 
 	/*
 	 * detect the current memory size
@@ -202,7 +205,7 @@ static struct clocksource cs = {
 
 static int clocksource_init (void)
 {
-	uint32_t p_clk = s3c24xx_get_pclk();
+	unsigned p_clk = s3c24xx_get_pclk();
 
 	writel(0x00000000, TCON);	/* stop all timers */
 	writel(0x00ffffff, TCFG0);	/* PCLK / (255 + 1) for timer 4 */
Index: barebox-2010.10.0/arch/arm/mach-s3c24xx/include/mach/s3c24xx-generic.h
===================================================================
--- barebox-2010.10.0.orig/arch/arm/mach-s3c24xx/include/mach/s3c24xx-generic.h
+++ barebox-2010.10.0/arch/arm/mach-s3c24xx/include/mach/s3c24xx-generic.h
@@ -24,10 +24,10 @@
  * MA 02111-1307 USA
  */
 
-uint32_t s3c24xx_get_mpllclk(void);
-uint32_t s3c24xx_get_upllclk(void);
-uint32_t s3c24xx_get_fclk(void);
-uint32_t s3c24xx_get_hclk(void);
-uint32_t s3c24xx_get_pclk(void);
-uint32_t s3c24xx_get_uclk(void);
-uint32_t s3c24x0_get_memory_size(void);
+unsigned s3c24xx_get_mpllclk(void);
+unsigned s3c24xx_get_upllclk(void);
+unsigned s3c24xx_get_fclk(void);
+unsigned s3c24xx_get_hclk(void);
+unsigned s3c24xx_get_pclk(void);
+unsigned s3c24xx_get_uclk(void);
+unsigned s3c24x0_get_memory_size(void);

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
