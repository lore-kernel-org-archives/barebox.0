Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-f49.google.com ([209.85.214.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SkJWS-0007q7-3j
 for barebox@lists.infradead.org; Thu, 28 Jun 2012 18:32:56 +0000
Received: by bkwj4 with SMTP id j4so2506100bkw.36
 for <barebox@lists.infradead.org>; Thu, 28 Jun 2012 11:32:53 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 28 Jun 2012 22:32:34 +0400
Message-Id: <1340908354-17895-6-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1340908354-17895-1-git-send-email-antonynpavlov@gmail.com>
References: <1340908354-17895-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 5/5] MIPS: XBurst: use clocks_calc_mult_shift() for
 JZ4755's clocksource
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/mach-xburst/csrc-jz4750.c |    5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/mips/mach-xburst/csrc-jz4750.c b/arch/mips/mach-xburst/csrc-jz4750.c
index dc7135a..36e401e 100644
--- a/arch/mips/mach-xburst/csrc-jz4750.c
+++ b/arch/mips/mach-xburst/csrc-jz4750.c
@@ -38,12 +38,13 @@ static uint64_t jz4750_cs_read(void)
 static struct clocksource jz4750_cs = {
 	.read	= jz4750_cs_read,
 	.mask   = CLOCKSOURCE_MASK(32),
-	.shift  = 10,
 };
 
 static int clocksource_init(void)
 {
-	jz4750_cs.mult = clocksource_hz2mult(JZ_TIMER_CLOCK, jz4750_cs.shift);
+	clocks_calc_mult_shift(&jz4750_cs.mult, &jz4750_cs.shift,
+		JZ_TIMER_CLOCK, NSEC_PER_SEC, 10);
+
 	init_clock(&jz4750_cs);
 
 	__raw_writel(TCU_OSTCSR_PRESCALE1 | TCU_OSTCSR_EXT_EN,
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
