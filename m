Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TfGN9-0000jW-BV
 for barebox@lists.infradead.org; Sun, 02 Dec 2012 20:42:44 +0000
Received: by mail-lb0-f177.google.com with SMTP id n10so1611582lbo.36
 for <barebox@lists.infradead.org>; Sun, 02 Dec 2012 12:42:42 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon,  3 Dec 2012 00:42:25 +0400
Message-Id: <1354480945-19214-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1354480945-19214-1-git-send-email-antonynpavlov@gmail.com>
References: <1354480945-19214-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 2/2] commands: clk_dump: denote always enabled clocks
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/clk/clk.c |    8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index 2ff7586..cb94755 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -221,9 +221,13 @@ int clk_register(struct clk *clk)
 static void dump_one(struct clk *clk, int verbose, int indent)
 {
 	struct clk *c;
+	char *always = "";
 
-	printf("%*s%s (rate %ld, %sabled)\n", indent * 4, "", clk->name, clk_get_rate(clk),
-			clk->enable_count ? "en" : "dis");
+	if (clk->flags & CLK_ALWAYS_ENABLED)
+		always = "always ";
+
+	printf("%*s%s (rate %ld, %s%sabled)\n", indent * 4, "", clk->name, clk_get_rate(clk),
+			always, clk->enable_count ? "en" : "dis");
 	if (verbose) {
 
 		if (clk->num_parents > 1) {
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
