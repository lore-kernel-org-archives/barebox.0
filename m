Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.z9.com ([64.142.101.243])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sqfe2-0003mR-1A
 for barebox@lists.infradead.org; Mon, 16 Jul 2012 07:23:27 +0000
Received: from GPontisPC by z9.com (MDaemon PRO v12.5.4)
 with ESMTP id md50000218181.msg
 for <barebox@lists.infradead.org>; Mon, 16 Jul 2012 00:22:43 -0700
From: "George Pontis" <GPontis@z9.com>
Date: Mon, 16 Jul 2012 00:22:13 -0700
Message-ID: <025c01cd6323$b85f2220$291d6660$@com>
MIME-Version: 1.0
Content-Language: en-us
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
Subject: Atmel AT91 SD/MMC clock too fast
To: barebox@lists.infradead.org

Due to integer truncation, the calculated divisor for the SD/MMC clock may
be too low, resulting in a clock that is too fast. For example, the
at91sam9g45 is typically run with a master clock at 133 MHz. There is no
divisor possible that will result in a 25 or 50 MHz clock as is typically
used for a SD card. The existing code will set the clock at 33 MHz or 66 MHz
when 25 or 50 MHz is requested. A Kingston class 10 8G SDHC was found to not
work properly at 33 MHz, but did after patching. The patch, in this case,
generated a 22.1 MHz clock ( 133/6 ). This is the same frequency that this
card sees after booting Linux. If a perfect integer division is possible,
the patch will provide an exact clock rate. If not, the frequency will be
the closest possible without exceeding the target.

The following was based on barebox 2012-07:

--- a/drivers/mci/atmel_mci.c   2012-07-02 01:31:52.000000000 -0700
+++ b/drivers/mci/atmel_mci.c   2012-07-15 23:14:02.203872596 -0700
@@ -76,7 +76,8 @@
        unsigned int clk_in = clk_get_rate(host->clk);

        if (clk_ios > 0) {
-               divider = (clk_in / clk_ios) / 2;
+               /* don't allow integer truncation to result in too small a
divider */
+               divider = (clk_in + 2 * clk_ios - 1) / (2 * clk_ios);
                if (divider > 0)
                        divider -= 1;
        }



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
