Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1StfVF-0003Of-Bq
 for barebox@lists.infradead.org; Tue, 24 Jul 2012 13:50:22 +0000
Received: by lbbgg6 with SMTP id gg6so9443262lbb.36
 for <barebox@lists.infradead.org>; Tue, 24 Jul 2012 06:50:15 -0700 (PDT)
Message-ID: <500EA810.3050902@kiwigrid.com>
Date: Tue, 24 Jul 2012 15:50:08 +0200
From: "Wjatscheslaw Stoljarski (Slawa)" <wjatscheslaw.stoljarski@kiwigrid.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] ARM i.MX53: notify clocksource about changing clock
To: barebox@lists.infradead.org

This fix a clock inaccuracy in get_time_ns (used by sleep, time, etc).

At i.MX53 power-on GPT clock is typically 55500000 Hz, and it will be used
to calc the clock multiplier. After call imx53_init_lowlevel() GPT clock 
will
changed (e.g. to 66666666 Hz), but multiplier not. To fix this behavior call
clock_notifier_call_chain() after changing clock in imx53_init_lowlevel().

Signed-off-by: Wjatscheslaw Stoljarski 
<wjatscheslaw.stoljarski@kiwigrid.com>
---
  arch/arm/mach-imx/imx53.c |    3 +++
  1 file changed, 3 insertions(+)

diff --git a/arch/arm/mach-imx/imx53.c b/arch/arm/mach-imx/imx53.c
index e20b60a..3359819 100644
--- a/arch/arm/mach-imx/imx53.c
+++ b/arch/arm/mach-imx/imx53.c
@@ -18,6 +18,7 @@
  #include <init.h>
  #include <common.h>
  #include <io.h>
+#include <notifier.h>
  #include <sizes.h>
  #include <mach/imx5.h>
  #include <mach/imx-regs.h>
@@ -211,4 +212,6 @@ void imx53_init_lowlevel(unsigned int cpufreq_mhz)
  	writel(0xffffffff, ccm + MX53_CCM_CCGR7);
   	writel(0, ccm + MX5_CCM_CCDR);
+
+	clock_notifier_call_chain();
  }
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
