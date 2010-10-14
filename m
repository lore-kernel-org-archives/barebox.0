Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P6Tf7-0003PJ-5Z
	for barebox@lists.infradead.org; Thu, 14 Oct 2010 19:40:26 +0000
Received: from gallifrey.ext.pengutronix.de
	([2001:6f8:1178:4:5054:ff:fe8d:eefb] helo=localhost)
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <jbe@pengutronix.de>) id 1P6Tf1-0007lA-QW
	for barebox@lists.infradead.org; Thu, 14 Oct 2010 21:40:19 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Thu, 14 Oct 2010 21:38:45 +0200
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201010142138.45775.jbe@pengutronix.de>
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
Subject: [PATCH] i.MX23/MCI: Make the clock calculation easier to read and
	correct
To: barebox@lists.infradead.org

From: Juergen Beisert <jbe@pengutronix.de>
Subject: Make the clock calculation easier to read and correct

Due to a wrong rounding while calculating the clock divider the requested clock
of 25 MHz resulted into a 48 MHz clock. With this patch a clock frequency
below or equal the requested one will be set.
By using 'div' and 'rate' as vars, its also easier to check against the data
sheet.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>

---
 drivers/mci/stm378x.c |   14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

Index: a/drivers/mci/stm378x.c
===================================================================
--- a/drivers/mci/stm378x.c
+++ b/drivers/mci/stm378x.c
@@ -474,7 +474,7 @@ static int stm_mci_adtc(struct device_d 
  */
 static unsigned setup_clock_speed(struct device_d *hw_dev, unsigned nc)
 {
-	unsigned ssp, div1, div2, reg;
+	unsigned ssp, div, rate, reg;
 
 	if (nc == 0U) {
 		/* TODO stop the clock */
@@ -483,21 +483,21 @@ static unsigned setup_clock_speed(struct
 
 	ssp = imx_get_sspclk(0) * 1000;
 
-	for (div1 = 2; div1 < 255; div1 += 2) {
-		div2 = ssp / nc / div1;
-		if (div2 <= 0x100)
+	for (div = 2; div < 255; div += 2) {
+		rate = (((ssp + (nc >> 1) ) / nc) + (div >> 1)) / div;
+		if (rate <= 0x100)
 			break;
 	}
-	if (div1 >= 255) {
+	if (div >= 255) {
 		pr_warning("Cannot set clock to %d Hz\n", nc);
 		return 0;
 	}
 
 	reg = readl(hw_dev->map_base + HW_SSP_TIMING) & SSP_TIMING_TIMEOUT_MASK;
-	reg |= SSP_TIMING_CLOCK_DIVIDE(div1) | SSP_TIMING_CLOCK_RATE(div2 - 1);
+	reg |= SSP_TIMING_CLOCK_DIVIDE(div) | SSP_TIMING_CLOCK_RATE(rate - 1);
 	writel(reg, hw_dev->map_base + HW_SSP_TIMING);
 
-	return ssp / div1 / div2;
+	return ssp / div / rate;
 }
 
 /**

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-8766-939 228     |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
