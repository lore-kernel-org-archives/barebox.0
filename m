Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-f176.google.com ([209.85.215.176])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U0rbn-00080M-Ml
 for barebox@lists.infradead.org; Thu, 31 Jan 2013 10:43:08 +0000
Received: by mail-ea0-f176.google.com with SMTP id a13so1126541eaa.7
 for <barebox@lists.infradead.org>; Thu, 31 Jan 2013 02:43:06 -0800 (PST)
From: Fabio Porcedda <fabio.porcedda@gmail.com>
Date: Thu, 31 Jan 2013 11:42:57 +0100
Message-Id: <1359628977-20069-4-git-send-email-fabio.porcedda@gmail.com>
In-Reply-To: <1359628977-20069-1-git-send-email-fabio.porcedda@gmail.com>
References: <1359628977-20069-1-git-send-email-fabio.porcedda@gmail.com>
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
Subject: [PATCH 3/3] at91sam9260/9g20ek: enable clock via clock framework
To: barebox@lists.infradead.org

Signed-off-by: Fabio Porcedda <fabio.porcedda@gmail.com>
Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91sam9260ek/init.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/at91sam9260ek/init.c b/arch/arm/boards/at91sam9260ek/init.c
index 5080f2a..7d4f9be 100644
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
@@ -124,7 +124,9 @@ static struct at91_ether_platform_data macb_pdata = {
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
