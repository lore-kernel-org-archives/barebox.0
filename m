Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNttT-0005oF-Gw
 for barebox@lists.infradead.org; Mon, 13 Apr 2020 07:52:50 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1jNttS-0003ZC-3k
 for barebox@lists.infradead.org; Mon, 13 Apr 2020 09:52:34 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1jNttR-0005Fp-86
 for barebox@lists.infradead.org; Mon, 13 Apr 2020 09:52:33 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 13 Apr 2020 09:52:00 +0200
Message-Id: <20200413075204.17544-18-a.fatoum@pengutronix.de>
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
Subject: [PATCH 17/21] clk: at91: Mark struct clk_range as const
To: barebox@lists.infradead.org

From: Stephen Boyd <sboyd@kernel.org>

It's just some static data that doesn't get changed after being used.
Mark it const everywhere.

Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
Signed-off-by: Stephen Boyd <sboyd@kernel.org>
[afa: ported to barebox from Linux commit 7b4c162e03d47e0]
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/at91/at91sam9260.c | 14 +++++++-------
 drivers/clk/at91/at91sam9rl.c  |  2 +-
 drivers/clk/at91/at91sam9x5.c  |  2 +-
 drivers/clk/at91/pmc.h         |  2 +-
 drivers/clk/at91/sama5d2.c     |  2 +-
 drivers/clk/at91/sama5d4.c     |  2 +-
 6 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/clk/at91/at91sam9260.c b/drivers/clk/at91/at91sam9260.c
index 39135b6c9711..066dedf2a146 100644
--- a/drivers/clk/at91/at91sam9260.c
+++ b/drivers/clk/at91/at91sam9260.c
@@ -47,7 +47,7 @@ static u8 sam9260_plla_out[] = { 0, 2 };
 
 static u16 sam9260_plla_icpll[] = { 1, 1 };
 
-static struct clk_range sam9260_plla_outputs[] = {
+static const struct clk_range sam9260_plla_outputs[] = {
 	{ .min = 80000000, .max = 160000000 },
 	{ .min = 150000000, .max = 240000000 },
 };
@@ -64,7 +64,7 @@ static u8 sam9260_pllb_out[] = { 1 };
 
 static u16 sam9260_pllb_icpll[] = { 1 };
 
-static struct clk_range sam9260_pllb_outputs[] = {
+static const struct clk_range sam9260_pllb_outputs[] = {
 	{ .min = 70000000, .max = 130000000 },
 };
 
@@ -134,7 +134,7 @@ static u8 sam9g20_plla_out[] = { 0, 1, 2, 3, 0, 1, 2, 3 };
 
 static u16 sam9g20_plla_icpll[] = { 0, 0, 0, 0, 1, 1, 1, 1 };
 
-static struct clk_range sam9g20_plla_outputs[] = {
+static const struct clk_range sam9g20_plla_outputs[] = {
 	{ .min = 745000000, .max = 800000000 },
 	{ .min = 695000000, .max = 750000000 },
 	{ .min = 645000000, .max = 700000000 },
@@ -157,7 +157,7 @@ static u8 sam9g20_pllb_out[] = { 0 };
 
 static u16 sam9g20_pllb_icpll[] = { 0 };
 
-static struct clk_range sam9g20_pllb_outputs[] = {
+static const struct clk_range sam9g20_pllb_outputs[] = {
 	{ .min = 30000000, .max = 100000000 },
 };
 
@@ -188,7 +188,7 @@ static const struct clk_master_characteristics sam9261_mck_characteristics = {
 	.divisors = { 1, 2, 4, 0 },
 };
 
-static struct clk_range sam9261_plla_outputs[] = {
+static const struct clk_range sam9261_plla_outputs[] = {
 	{ .min = 80000000, .max = 200000000 },
 	{ .min = 190000000, .max = 240000000 },
 };
@@ -205,7 +205,7 @@ static u8 sam9261_pllb_out[] = { 1 };
 
 static u16 sam9261_pllb_icpll[] = { 1 };
 
-static struct clk_range sam9261_pllb_outputs[] = {
+static const struct clk_range sam9261_pllb_outputs[] = {
 	{ .min = 70000000, .max = 130000000 },
 };
 
@@ -268,7 +268,7 @@ static const struct clk_master_characteristics sam9263_mck_characteristics = {
 	.divisors = { 1, 2, 4, 0 },
 };
 
-static struct clk_range sam9263_pll_outputs[] = {
+static const struct clk_range sam9263_pll_outputs[] = {
 	{ .min = 80000000, .max = 200000000 },
 	{ .min = 190000000, .max = 240000000 },
 };
diff --git a/drivers/clk/at91/at91sam9rl.c b/drivers/clk/at91/at91sam9rl.c
index 9be162d63bfe..ff47f94a8df0 100644
--- a/drivers/clk/at91/at91sam9rl.c
+++ b/drivers/clk/at91/at91sam9rl.c
@@ -20,7 +20,7 @@ static const struct clk_master_characteristics sam9rl_mck_characteristics = {
 
 static u8 sam9rl_plla_out[] = { 0, 2 };
 
-static struct clk_range sam9rl_plla_outputs[] = {
+static const struct clk_range sam9rl_plla_outputs[] = {
 	{ .min = 80000000, .max = 200000000 },
 	{ .min = 190000000, .max = 240000000 },
 };
diff --git a/drivers/clk/at91/at91sam9x5.c b/drivers/clk/at91/at91sam9x5.c
index db3076967753..87b0fd2e1cad 100644
--- a/drivers/clk/at91/at91sam9x5.c
+++ b/drivers/clk/at91/at91sam9x5.c
@@ -23,7 +23,7 @@ static u8 plla_out[] = { 0, 1, 2, 3, 0, 1, 2, 3 };
 
 static u16 plla_icpll[] = { 0, 0, 0, 0, 1, 1, 1, 1 };
 
-static struct clk_range plla_outputs[] = {
+static const struct clk_range plla_outputs[] = {
 	{ .min = 745000000, .max = 800000000 },
 	{ .min = 695000000, .max = 750000000 },
 	{ .min = 645000000, .max = 700000000 },
diff --git a/drivers/clk/at91/pmc.h b/drivers/clk/at91/pmc.h
index 67890300c750..705486a1f440 100644
--- a/drivers/clk/at91/pmc.h
+++ b/drivers/clk/at91/pmc.h
@@ -58,7 +58,7 @@ extern const struct clk_pll_layout sama5d3_pll_layout;
 struct clk_pll_characteristics {
 	struct clk_range input;
 	int num_output;
-	struct clk_range *output;
+	const struct clk_range *output;
 	u16 *icpll;
 	u8 *out;
 };
diff --git a/drivers/clk/at91/sama5d2.c b/drivers/clk/at91/sama5d2.c
index 65c4f701bdd9..3daff89f5958 100644
--- a/drivers/clk/at91/sama5d2.c
+++ b/drivers/clk/at91/sama5d2.c
@@ -22,7 +22,7 @@ static u8 plla_out[] = { 0 };
 
 static u16 plla_icpll[] = { 0 };
 
-static struct clk_range plla_outputs[] = {
+static const struct clk_range plla_outputs[] = {
 	{ .min = 600000000, .max = 1200000000 },
 };
 
diff --git a/drivers/clk/at91/sama5d4.c b/drivers/clk/at91/sama5d4.c
index 174bc341c905..de14640f91d2 100644
--- a/drivers/clk/at91/sama5d4.c
+++ b/drivers/clk/at91/sama5d4.c
@@ -22,7 +22,7 @@ static u8 plla_out[] = { 0 };
 
 static u16 plla_icpll[] = { 0 };
 
-static struct clk_range plla_outputs[] = {
+static const struct clk_range plla_outputs[] = {
 	{ .min = 600000000, .max = 1200000000 },
 };
 
-- 
2.26.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
