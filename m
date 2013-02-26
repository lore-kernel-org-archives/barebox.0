Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1UAHL6-0007Xv-0R
 for barebox@lists.infradead.org; Tue, 26 Feb 2013 10:00:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 26 Feb 2013 11:00:42 +0100
Message-Id: <1361872842-2336-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1361872842-2336-1-git-send-email-s.hauer@pengutronix.de>
References: <1361872842-2336-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] ARM i.MX35: Let MAX clk be in run-mode-on
To: barebox@lists.infradead.org

The reset value for the MAX clk gate is 0b10, that is it is turned
on in CPU run mode and off in stop mode. Configure it that way during
startup.

The 0b11 value previously in this field causes some nasty behaviour in
the Linux kernel:

- The i.MX35 has two bits per clock gate which are decoded as follows:
  0b00 -> clock off
  0b01 -> clock is on in run mode, off in wait/doze
  0b10 -> clock is on in run/wait mode, off in doze
  0b11 -> clock is always on

The MAX clock is needed by the SoC, yet unused in the Kernel, so the
common clock framework will disable it during late init time. It will
only disable clocks though which it detects as being on. This detection
is made depending on the lower bit of the gate. So with the value of
0b11 the clock framework will detect the clock as turned on, yet unused,
hence it will turn it off and the system locks up.
With the value of 0b10 instead, the clock framework will detect the
clock as being disabled and will not try to turn it off, so the
system works.

The real bug is in the Linux clock framework. However, the value 0f 0b10
seems to be a sane default value, so restore it. This lets Linux work
again and gives time to fix the bug in Linux.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/clk-imx35.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/clk-imx35.c b/arch/arm/mach-imx/clk-imx35.c
index 5b5a9e7..f50c07d 100644
--- a/arch/arm/mach-imx/clk-imx35.c
+++ b/arch/arm/mach-imx/clk-imx35.c
@@ -99,7 +99,7 @@ static int imx35_ccm_probe(struct device_d *dev)
 
 	writel(0xffffffff, base + CCM_CGR0);
 	writel(0xffffffff, base + CCM_CGR1);
-	writel(0xffffffff, base + CCM_CGR2);
+	writel(0xfbffffff, base + CCM_CGR2);
 	writel(0xffffffff, base + CCM_CGR3);
 
 	pdr0 = __raw_readl(base + CCM_PDR0);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
