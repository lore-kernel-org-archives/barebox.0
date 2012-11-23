Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo3.mail-out.ovh.net ([87.98.172.249]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tbvcl-0005SP-OS
 for barebox@lists.infradead.org; Fri, 23 Nov 2012 15:57:05 +0000
Received: from mail607.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 2D85EFF97A0
 for <barebox@lists.infradead.org>; Fri, 23 Nov 2012 17:08:09 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 23 Nov 2012 16:55:01 +0100
Message-Id: <1353686104-31295-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20121123155224.GV8327@game.jcrosoft.org>
References: <20121123155224.GV8327@game.jcrosoft.org>
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
Subject: [PATCH 1/4] at91: fix timer rate
To: barebox@lists.infradead.org

today the timer rate is hardcoded to 6MHz which is wrong the PIT rate is MCK / 16

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/at91sam926x_time.c |    7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-at91/at91sam926x_time.c b/arch/arm/mach-at91/at91sam926x_time.c
index 7411ad8..7425e0a 100644
--- a/arch/arm/mach-at91/at91sam926x_time.c
+++ b/arch/arm/mach-at91/at91sam926x_time.c
@@ -34,6 +34,7 @@
 #include <mach/at91_rstc.h>
 #include <mach/io.h>
 #include <io.h>
+#include <linux/clk.h>
 
 uint64_t at91sam9_clocksource_read(void)
 {
@@ -48,16 +49,20 @@ static struct clocksource cs = {
 
 static int clocksource_init (void)
 {
+	u32 pit_rate;
+
 	/*
 	 * Enable PITC Clock
 	 * The clock is already enabled for system controller in boot
 	 */
 	at91_sys_write(AT91_PMC_PCER, 1 << AT91_ID_SYS);
 
+	pit_rate = clk_get_rate(clk_get(NULL, "mck")) / 16;
+
 	/* Enable PITC */
 	at91_sys_write(AT91_PIT_MR, 0xfffff | AT91_PIT_PITEN);
 
-	cs.mult = clocksource_hz2mult(1000000 * 6, cs.shift);
+	cs.mult = clocksource_hz2mult(pit_rate, cs.shift);
 
 	init_clock(&cs);
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
