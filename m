Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-f50.google.com ([74.125.83.50])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U3Shi-0005Pn-QE
 for barebox@lists.infradead.org; Thu, 07 Feb 2013 14:43:59 +0000
Received: by mail-ee0-f50.google.com with SMTP id e51so1517713eek.9
 for <barebox@lists.infradead.org>; Thu, 07 Feb 2013 06:43:57 -0800 (PST)
From: Fabio Porcedda <fabio.porcedda@gmail.com>
Date: Thu,  7 Feb 2013 15:43:51 +0100
Message-Id: <1360248231-31561-3-git-send-email-fabio.porcedda@gmail.com>
In-Reply-To: <1360248231-31561-1-git-send-email-fabio.porcedda@gmail.com>
References: <1360248231-31561-1-git-send-email-fabio.porcedda@gmail.com>
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
Subject: [PATCH v2 2/2] at91sam9260/9g20ek: enable clock via clock framework
To: barebox@lists.infradead.org

Signed-off-by: Fabio Porcedda <fabio.porcedda@gmail.com>
Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91sam9260ek/init.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/at91sam9260ek/init.c b/arch/arm/boards/at91sam9260ek/init.c
index e0c03ee..06a53f2 100644
--- a/arch/arm/boards/at91sam9260ek/init.c
+++ b/arch/arm/boards/at91sam9260ek/init.c
@@ -23,8 +23,8 @@
 #include <mach/at91sam9_smc.h>
 #include <gpio.h>
 #include <mach/io.h>
-#include <mach/at91_pmc.h>
 #include <mach/at91_rstc.h>
+#include <linux/clk.h>
 
 /*
  * board revision encoding
@@ -126,7 +126,9 @@ static struct at91_ether_platform_data macb_pdata = {
 static void at91sam9260ek_phy_reset(void)
 {
 	unsigned long rstc;
-	at91_pmc_write(AT91_PMC_PCER, 1 << AT91SAM9260_ID_EMAC);
+	struct clk *clk = clk_get(NULL, "macb_clk");
+
+	clk_enable(clk);
 
 	at91_set_gpio_input(AT91_PIN_PA14, 0);
 	at91_set_gpio_input(AT91_PIN_PA15, 0);
-- 
1.8.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
