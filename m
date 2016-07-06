Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x244.google.com ([2a00:1450:4010:c07::244])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bKtb0-00073R-MT
 for barebox@lists.infradead.org; Wed, 06 Jul 2016 20:38:59 +0000
Received: by mail-lf0-x244.google.com with SMTP id a2so23244109lfe.3
 for <barebox@lists.infradead.org>; Wed, 06 Jul 2016 13:38:37 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed,  6 Jul 2016 23:38:26 +0300
Message-Id: <1467837506-32177-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1467837506-32177-1-git-send-email-antonynpavlov@gmail.com>
References: <1467837506-32177-1-git-send-email-antonynpavlov@gmail.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/2] MIPS: csrc-r4k: get cp0 counter rate from devicetree
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/lib/csrc-r4k.c | 24 ++++++++++++++++++++++--
 1 file changed, 22 insertions(+), 2 deletions(-)

diff --git a/arch/mips/lib/csrc-r4k.c b/arch/mips/lib/csrc-r4k.c
index 5c3f18f..6f6e18c 100644
--- a/arch/mips/lib/csrc-r4k.c
+++ b/arch/mips/lib/csrc-r4k.c
@@ -21,6 +21,8 @@
  */
 
 #include <init.h>
+#include <of.h>
+#include <linux/clk.h>
 #include <clock.h>
 #include <io.h>
 #include <asm/mipsregs.h>
@@ -37,8 +39,26 @@ static struct clocksource cs = {
 
 static int clocksource_init(void)
 {
-	cs.mult = clocksource_hz2mult(100000000, cs.shift);
+	unsigned int mips_hpt_frequency;
+	struct device_node *np;
+	struct clk *clk;
+
+	/* default rate: 100 MHz */
+	mips_hpt_frequency = 100000000;
+
+	if (IS_ENABLED(CONFIG_OFTREE)) {
+		np = of_get_cpu_node(0, NULL);
+		if (np) {
+			clk = of_clk_get(np, 0);
+			if (!IS_ERR(clk)) {
+				mips_hpt_frequency = clk_get_rate(clk) / 2;
+			}
+		}
+	}
+
+	clocks_calc_mult_shift(&cs.mult, &cs.shift,
+		mips_hpt_frequency, NSEC_PER_SEC, 10);
 
 	return init_clock(&cs);
 }
-core_initcall(clocksource_init);
+postcore_initcall(clocksource_init);
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
