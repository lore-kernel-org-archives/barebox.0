Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6VTz-0006BP-0o
 for barebox@lists.infradead.org; Tue, 25 Feb 2020 08:22:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 25 Feb 2020 09:22:02 +0100
Message-Id: <20200225082202.10569-3-s.hauer@pengutronix.de>
In-Reply-To: <20200225082202.10569-1-s.hauer@pengutronix.de>
References: <20200225082202.10569-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] clk: print more consistent clock states
To: Barebox List <barebox@lists.infradead.org>

In clk_dump we only print the state of clk_is_enabled(). Depending on
the clock this can mean different things. When the clock provides an
is_enabled() callback it will print its result, so the enabled state
matches the hardware state of that clock, but doesn't necessarily mean
its parents are enabled. If a clock does not provide an is_enabled()
callback then we rely on our internal enable_count tracker.

Change this to always print the hardware state of the current clock. It
can be:

- disabled: The clock is disabled (as provided by is_enabled())
- enabled: The clock is enabled (as provided by is_enabled())
- always enabled: The clock can't be disabled (no is_enabled callback
                  and can't be enabled/disabled)
- unknown: no is_enabled callback but can be enabled/disabled

Additionally we print the enable_count variable, so from enable_count !=
0 we can know that barebox has enabled the clock.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/clk.c | 32 ++++++++++++++++++++++++++++++--
 1 file changed, 30 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index 5777c9c58e..b27ad6d249 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -632,12 +632,40 @@ int of_clk_init(struct device_node *root, const struct of_device_id *matches)
 }
 #endif
 
+static const char *clk_hw_stat(struct clk *clk)
+{
+	if (clk->ops->is_enabled) {
+		if (clk->ops->is_enabled(clk))
+			return "enabled";
+		else
+			return "disabled";
+	}
+
+	if (!clk->ops->enable)
+		return "always enabled";
+
+	return "unknown";
+}
+
 static void dump_one(struct clk *clk, int verbose, int indent)
 {
 	struct clk *c;
+	int enabled = clk_is_enabled(clk);
+	const char *hwstat, *stat;
+
+	hwstat = clk_hw_stat(clk);
+
+	if (enabled == 0)
+		stat = "disabled";
+	else
+		stat = "enabled";
+
+	printf("%*s%s (rate %lu, enable_count: %d, %s)\n", indent * 4, "",
+	       clk->name,
+	       clk_get_rate(clk),
+	       clk->enable_count,
+	       hwstat);
 
-	printf("%*s%s (rate %lu, %sabled)\n", indent * 4, "", clk->name, clk_get_rate(clk),
-			clk_is_enabled(clk) ? "en" : "dis");
 	if (verbose) {
 
 		if (clk->num_parents > 1) {
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
