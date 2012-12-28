Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo3.mail-out.ovh.net ([87.98.172.249]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TofRI-0004HB-Ht
 for barebox@lists.infradead.org; Fri, 28 Dec 2012 19:17:58 +0000
Received: from mail637.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id A50A8FF9735
 for <barebox@lists.infradead.org>; Fri, 28 Dec 2012 20:30:32 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 28 Dec 2012 20:16:08 +0100
Message-Id: <1356722174-22598-7-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1356722174-22598-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121228191327.GC7216@game.jcrosoft.org>
 <1356722174-22598-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 07/13] at91: at91sam9: provide its own clkdev for pit
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/at91sam9260.c |    1 +
 arch/arm/mach-at91/at91sam9261.c |    1 +
 arch/arm/mach-at91/at91sam9263.c |    1 +
 arch/arm/mach-at91/at91sam9g45.c |    1 +
 arch/arm/mach-at91/at91sam9n12.c |    1 +
 arch/arm/mach-at91/at91sam9x5.c  |    1 +
 6 files changed, 6 insertions(+)

diff --git a/arch/arm/mach-at91/at91sam9260.c b/arch/arm/mach-at91/at91sam9260.c
index 6c741f8..fdda9c6 100644
--- a/arch/arm/mach-at91/at91sam9260.c
+++ b/arch/arm/mach-at91/at91sam9260.c
@@ -175,6 +175,7 @@ static struct clk_lookup periph_clocks_lookups[] = {
 	CLKDEV_DEV_ID("at91rm9200-gpio0", &pioA_clk),
 	CLKDEV_DEV_ID("at91rm9200-gpio1", &pioB_clk),
 	CLKDEV_DEV_ID("at91rm9200-gpio2", &pioC_clk),
+	CLKDEV_DEV_ID("at91-pit", &mck),
 };
 
 static struct clk_lookup usart_clocks_lookups[] = {
diff --git a/arch/arm/mach-at91/at91sam9261.c b/arch/arm/mach-at91/at91sam9261.c
index b57e119..ac635d7 100644
--- a/arch/arm/mach-at91/at91sam9261.c
+++ b/arch/arm/mach-at91/at91sam9261.c
@@ -139,6 +139,7 @@ static struct clk_lookup periph_clocks_lookups[] = {
 	CLKDEV_DEV_ID("at91rm9200-gpio0", &pioA_clk),
 	CLKDEV_DEV_ID("at91rm9200-gpio1", &pioB_clk),
 	CLKDEV_DEV_ID("at91rm9200-gpio2", &pioC_clk),
+	CLKDEV_DEV_ID("at91-pit", &mck),
 };
 
 static struct clk_lookup usart_clocks_lookups[] = {
diff --git a/arch/arm/mach-at91/at91sam9263.c b/arch/arm/mach-at91/at91sam9263.c
index a4387ee..84c986f 100644
--- a/arch/arm/mach-at91/at91sam9263.c
+++ b/arch/arm/mach-at91/at91sam9263.c
@@ -173,6 +173,7 @@ static struct clk_lookup periph_clocks_lookups[] = {
 	CLKDEV_DEV_ID("at91rm9200-gpio2", &pioCDE_clk),
 	CLKDEV_DEV_ID("at91rm9200-gpio3", &pioCDE_clk),
 	CLKDEV_DEV_ID("at91rm9200-gpio4", &pioCDE_clk),
+	CLKDEV_DEV_ID("at91-pit", &mck),
 };
 
 static struct clk_lookup usart_clocks_lookups[] = {
diff --git a/arch/arm/mach-at91/at91sam9g45.c b/arch/arm/mach-at91/at91sam9g45.c
index c3a3158..0affc67 100644
--- a/arch/arm/mach-at91/at91sam9g45.c
+++ b/arch/arm/mach-at91/at91sam9g45.c
@@ -195,6 +195,7 @@ static struct clk_lookup periph_clocks_lookups[] = {
 	CLKDEV_DEV_ID("at91rm9200-gpio2", &pioC_clk),
 	CLKDEV_DEV_ID("at91rm9200-gpio3", &pioDE_clk),
 	CLKDEV_DEV_ID("at91rm9200-gpio4", &pioDE_clk),
+	CLKDEV_DEV_ID("at91-pit", &mck),
 };
 
 static struct clk_lookup usart_clocks_lookups[] = {
diff --git a/arch/arm/mach-at91/at91sam9n12.c b/arch/arm/mach-at91/at91sam9n12.c
index 3ddaa7d..f4a981e 100644
--- a/arch/arm/mach-at91/at91sam9n12.c
+++ b/arch/arm/mach-at91/at91sam9n12.c
@@ -154,6 +154,7 @@ static struct clk_lookup periph_clocks_lookups[] = {
 	CLKDEV_DEV_ID("at91sam9x5-gpio1", &pioAB_clk),
 	CLKDEV_DEV_ID("at91sam9x5-gpio2", &pioCD_clk),
 	CLKDEV_DEV_ID("at91sam9x5-gpio3", &pioCD_clk),
+	CLKDEV_DEV_ID("at91-pit", &mck),
 };
 
 static struct clk_lookup usart_clocks_lookups[] = {
diff --git a/arch/arm/mach-at91/at91sam9x5.c b/arch/arm/mach-at91/at91sam9x5.c
index b4c582f..a6d2b9d 100644
--- a/arch/arm/mach-at91/at91sam9x5.c
+++ b/arch/arm/mach-at91/at91sam9x5.c
@@ -213,6 +213,7 @@ static struct clk_lookup periph_clocks_lookups[] = {
 	CLKDEV_DEV_ID("at91sam9x5-gpio1", &pioAB_clk),
 	CLKDEV_DEV_ID("at91sam9x5-gpio2", &pioCD_clk),
 	CLKDEV_DEV_ID("at91sam9x5-gpio3", &pioCD_clk),
+	CLKDEV_DEV_ID("at91-pit", &mck),
 };
 
 static struct clk_lookup usart_clocks_lookups[] = {
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
