Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 11.mo1.mail-out.ovh.net ([188.165.48.29]
	helo=mo1.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1R5d6r-0000UT-Ho
	for barebox@lists.infradead.org; Mon, 19 Sep 2011 12:38:07 +0000
Received: from mail179.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo1.mail-out.ovh.net (Postfix) with SMTP id 23C221004755
	for <barebox@lists.infradead.org>;
	Mon, 19 Sep 2011 14:38:56 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 19 Sep 2011 14:15:40 +0200
Message-Id: <1316434549-15243-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1316434549-15243-1-git-send-email-plagnioj@jcrosoft.com>
References: <1316434549-15243-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 03/12] at91: Fix uhpck clock rate in upll case
To: barebox@lists.infradead.org

from linux
commit 8251544f9e28058e54c4f35b7cd13b0d191d7555
Author: Ryan Mallon <ryan@bluewatersys.com>

The uhpck clock should be divided from the utmi clock, not its parent
(main). This change is mostly cosmetic as the uhpck rate value is not
used anywhere except for the debugfs clock output.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/clock.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/arch/arm/mach-at91/clock.c b/arch/arm/mach-at91/clock.c
index c9c32b2..0406382 100644
--- a/arch/arm/mach-at91/clock.c
+++ b/arch/arm/mach-at91/clock.c
@@ -530,7 +530,7 @@ static void at91_upll_usbfs_clock_init(unsigned long main_clock)
 	/* Now set uhpck values */
 	uhpck.parent = &utmi_clk;
 	uhpck.pmc_mask = AT91SAM926x_PMC_UHP;
-	uhpck.rate_hz = utmi_clk.parent->rate_hz;
+	uhpck.rate_hz = utmi_clk.rate_hz;
 	uhpck.rate_hz /= 1 + ((at91_sys_read(AT91_PMC_USB) & AT91_PMC_OHCIUSBDIV) >> 8);
 }
 
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
