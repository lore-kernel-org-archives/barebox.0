Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x236.google.com ([2a00:1450:4013:c01::236])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VXVX3-0002nf-Ps
 for barebox@lists.infradead.org; Sat, 19 Oct 2013 12:21:26 +0000
Received: by mail-ea0-f182.google.com with SMTP id o10so2584349eaj.13
 for <barebox@lists.infradead.org>; Sat, 19 Oct 2013 05:21:03 -0700 (PDT)
Received: from mamamia.internal (a89-182-1-5.net-htp.de. [89.182.1.5])
 by mx.google.com with ESMTPSA id b42sm17147502eem.9.2013.10.19.05.21.02
 for <barebox@lists.infradead.org>
 (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
 Sat, 19 Oct 2013 05:21:02 -0700 (PDT)
From: Andre Heider <a.heider@gmail.com>
Date: Sat, 19 Oct 2013 14:20:49 +0200
Message-Id: <1382185254-29183-3-git-send-email-a.heider@gmail.com>
In-Reply-To: <1382185130-28995-1-git-send-email-a.heider@gmail.com>
References: <1382185130-28995-1-git-send-email-a.heider@gmail.com>
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
Subject: [PATCH 04/10] ARM: bcm2835: cleanup clock registering
To: barebox@lists.infradead.org

Sync exposed names while at it.

Signed-off-by: Andre Heider <a.heider@gmail.com>
---
 arch/arm/mach-bcm2835/core.c | 31 +++++++------------------------
 1 file changed, 7 insertions(+), 24 deletions(-)

diff --git a/arch/arm/mach-bcm2835/core.c b/arch/arm/mach-bcm2835/core.c
index 906e434..6835960 100644
--- a/arch/arm/mach-bcm2835/core.c
+++ b/arch/arm/mach-bcm2835/core.c
@@ -32,37 +32,20 @@
 #include <mach/core.h>
 #include <linux/amba/bus.h>
 
-enum brcm_clks {
-	dummy, clk_ref_3, clk_ref_1, clks_max
-};
-
-static struct clk *clks[clks_max];
-
 static int bcm2835_clk_init(void)
 {
-	int ret;
-
-	clks[dummy] = clk_fixed("dummy", 0);
-	clks[clk_ref_3] = clk_fixed("ref3", 3 * 1000 * 1000);
-	clks[clk_ref_1] = clk_fixed("ref1", 1 * 1000 * 1000);
+	struct clk *clk;
 
-	ret = clk_register_clkdev(clks[dummy], "apb_pclk", NULL);
-	if (ret)
-		goto clk_err;
+	clk = clk_fixed("apb_pclk", 0);
+	clk_register_clkdev(clk, "apb_pclk", NULL);
 
-	ret = clk_register_clkdev(clks[clk_ref_3], NULL, "uart0-pl0110");
-	if (ret)
-		goto clk_err;
+	clk = clk_fixed("uart0-pl0110", 3 * 1000 * 1000);
+	clk_register_clkdev(clk, NULL, "uart0-pl0110");
 
-	ret = clk_register_clkdev(clks[clk_ref_1], NULL, "bcm2835-cs");
-	if (ret)
-		goto clk_err;
+	clk = clk_fixed("bcm2835-cs", 1 * 1000 * 1000);
+	clk_register_clkdev(clk, NULL, "bcm2835-cs");
 
 	return 0;
-
-clk_err:
-	return ret;
-
 }
 postcore_initcall(bcm2835_clk_init);
 
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
