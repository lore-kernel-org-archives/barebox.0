Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNttO-0005hv-Ak
 for barebox@lists.infradead.org; Mon, 13 Apr 2020 07:52:33 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1jNttM-0003V0-Pg
 for barebox@lists.infradead.org; Mon, 13 Apr 2020 09:52:28 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1jNttL-0005F8-Qi
 for barebox@lists.infradead.org; Mon, 13 Apr 2020 09:52:27 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 13 Apr 2020 09:51:55 +0200
Message-Id: <20200413075204.17544-13-a.fatoum@pengutronix.de>
In-Reply-To: <20200413075204.17544-1-a.fatoum@pengutronix.de>
References: <20200413075204.17544-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 12/21] clk: at91: fix masterck name
To: barebox@lists.infradead.org

From: Alexandre Belloni <alexandre.belloni@bootlin.com>

The master clock is actually named masterck earlier in the driver. Having
"mck" in the parent list means that it can never be selected.

Fixes: 1eabdc2f9dd8 ("clk: at91: add at91sam9x5 PMCs driver")
Fixes: a2038077de9a ("clk: at91: add sama5d2 PMC driver")
Fixes: 084b696bb509 ("clk: at91: add sama5d4 pmc driver")
Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>
Cc: <stable@vger.kernel.org> # v4.20+
Signed-off-by: Stephen Boyd <sboyd@kernel.org>
[afa: ported to barebox from Linux commit 65a91e2e597dea]
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/at91/at91sam9x5.c | 2 +-
 drivers/clk/at91/sama5d2.c    | 4 ++--
 drivers/clk/at91/sama5d4.c    | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/at91/at91sam9x5.c b/drivers/clk/at91/at91sam9x5.c
index 5e0aacfbf653..c01dabe0e814 100644
--- a/drivers/clk/at91/at91sam9x5.c
+++ b/drivers/clk/at91/at91sam9x5.c
@@ -216,7 +216,7 @@ static void __init at91sam9x5_pmc_setup(struct device_node *np,
 	parent_names[1] = "mainck";
 	parent_names[2] = "plladivck";
 	parent_names[3] = "utmick";
-	parent_names[4] = "mck";
+	parent_names[4] = "masterck";
 	for (i = 0; i < 2; i++) {
 		char *name;
 
diff --git a/drivers/clk/at91/sama5d2.c b/drivers/clk/at91/sama5d2.c
index 7627c584ac08..6bc70aed9a3b 100644
--- a/drivers/clk/at91/sama5d2.c
+++ b/drivers/clk/at91/sama5d2.c
@@ -227,7 +227,7 @@ static void __init sama5d2_pmc_setup(struct device_node *np)
 	parent_names[1] = "mainck";
 	parent_names[2] = "plladivck";
 	parent_names[3] = "utmick";
-	parent_names[4] = "mck";
+	parent_names[4] = "masterck";
 	for (i = 0; i < 3; i++) {
 		char *name;
 
@@ -278,7 +278,7 @@ static void __init sama5d2_pmc_setup(struct device_node *np)
 	parent_names[1] = "mainck";
 	parent_names[2] = "plladivck";
 	parent_names[3] = "utmick";
-	parent_names[4] = "mck";
+	parent_names[4] = "masterck";
 	for (i = 0; i < ARRAY_SIZE(sama5d2_gck); i++) {
 		hw = at91_clk_register_generated(regmap,
 						 sama5d2_gck[i].n,
diff --git a/drivers/clk/at91/sama5d4.c b/drivers/clk/at91/sama5d4.c
index 2fbfca6f8500..d36ca4f85964 100644
--- a/drivers/clk/at91/sama5d4.c
+++ b/drivers/clk/at91/sama5d4.c
@@ -213,7 +213,7 @@ static void __init sama5d4_pmc_setup(struct device_node *np)
 	parent_names[1] = "mainck";
 	parent_names[2] = "plladivck";
 	parent_names[3] = "utmick";
-	parent_names[4] = "mck";
+	parent_names[4] = "masterck";
 	for (i = 0; i < 3; i++) {
 		char *name;
 
-- 
2.26.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
