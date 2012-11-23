Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo3.mail-out.ovh.net ([188.165.41.191]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tbvcn-0005TJ-HL
 for barebox@lists.infradead.org; Fri, 23 Nov 2012 15:57:07 +0000
Received: from mail607.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 1EE27FF98B7
 for <barebox@lists.infradead.org>; Fri, 23 Nov 2012 17:08:11 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 23 Nov 2012 16:55:03 +0100
Message-Id: <1353686104-31295-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1353686104-31295-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121123155224.GV8327@game.jcrosoft.org>
 <1353686104-31295-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/4] at91: clock: check overclock for sam9260/9261/9263/9rl
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/clock.c |   12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm/mach-at91/clock.c b/arch/arm/mach-at91/clock.c
index bda02fd..fd9ba46 100644
--- a/arch/arm/mach-at91/clock.c
+++ b/arch/arm/mach-at91/clock.c
@@ -50,6 +50,12 @@
 
 #define cpu_has_300M_plla()	(cpu_is_at91sam9g10())
 
+#define cpu_has_240M_plla()	(cpu_is_at91sam9261() \
+				|| cpu_is_at91sam9263() \
+				|| cpu_is_at91sam9rl())
+
+#define cpu_has_210M_plla()	(cpu_is_at91sam9260())
+
 #define cpu_has_pllb()		(!(cpu_is_at91sam9rl() \
 				|| cpu_is_at91sam9g45() \
 				|| cpu_is_at91sam9x5()))
@@ -602,6 +608,12 @@ int at91_clock_init(unsigned long main_clock)
 	} else if (cpu_has_800M_plla()) {
 		if (plla.rate_hz > 800000000)
 			pll_overclock = 1;
+	} else if (cpu_has_240M_plla()) {
+		if (plla.rate_hz > 240000000)
+			pll_overclock = 1;
+	} else if (cpu_has_210M_plla()) {
+		if (plla.rate_hz > 210000000)
+			pll_overclock = 1;
 	} else {
 		if (plla.rate_hz > 209000000)
 			pll_overclock = 1;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
