Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-f49.google.com ([209.85.215.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TgWmA-00005B-DP
 for barebox@lists.infradead.org; Thu, 06 Dec 2012 08:25:47 +0000
Received: by mail-la0-f49.google.com with SMTP id r15so4584595lag.36
 for <barebox@lists.infradead.org>; Thu, 06 Dec 2012 00:25:45 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu,  6 Dec 2012 12:25:35 +0400
Message-Id: <1354782336-16239-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1354782336-16239-1-git-send-email-antonynpavlov@gmail.com>
References: <1354782336-16239-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 1/2] clk: pass the 'flags' parameter to clk_fixed()
To: barebox@lists.infradead.org

The 'flags' parameter make possible creation
of a 'CLK_ALWAYS_ENABLED' clock without code overhead.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/clk/clk-fixed.c |    3 ++-
 include/linux/clk.h     |    2 +-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/clk-fixed.c b/drivers/clk/clk-fixed.c
index fa89cb2..5ac5663 100644
--- a/drivers/clk/clk-fixed.c
+++ b/drivers/clk/clk-fixed.c
@@ -36,7 +36,7 @@ struct clk_ops clk_fixed_ops = {
 	.recalc_rate = clk_fixed_recalc_rate,
 };
 
-struct clk *clk_fixed(const char *name, int rate)
+struct clk *clk_fixed(const char *name, int rate, unsigned long flags)
 {
 	struct clk_fixed *fix = xzalloc(sizeof *fix);
 	int ret;
@@ -44,6 +44,7 @@ struct clk *clk_fixed(const char *name, int rate)
 	fix->rate = rate;
 	fix->clk.ops = &clk_fixed_ops;
 	fix->clk.name = name;
+	fix->clk.flags = flags;
 
 	ret = clk_register(&fix->clk);
 	if (ret) {
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 1030b50..9d89a21 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -184,7 +184,7 @@ struct clk {
 
 #define CLK_ALWAYS_ENABLED	(1 << 0)
 
-struct clk *clk_fixed(const char *name, int rate);
+struct clk *clk_fixed(const char *name, int rate, unsigned long flags);
 struct clk *clk_divider(const char *name, const char *parent,
 		void __iomem *reg, u8 shift, u8 width);
 struct clk *clk_fixed_factor(const char *name,
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
