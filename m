Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNttH-0005Wt-LX
 for barebox@lists.infradead.org; Mon, 13 Apr 2020 07:52:25 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1jNttE-0003RO-KS
 for barebox@lists.infradead.org; Mon, 13 Apr 2020 09:52:20 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1jNttE-0005EE-A2
 for barebox@lists.infradead.org; Mon, 13 Apr 2020 09:52:20 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 13 Apr 2020 09:51:51 +0200
Message-Id: <20200413075204.17544-9-a.fatoum@pengutronix.de>
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
Subject: [PATCH 08/21] clk: implement clk_register_fixed_rate
To: barebox@lists.infradead.org

We lack a way to instantiate a fixed clock while specifying a parent.
This is used in the at91 clock code sync with upstream in a later
commit, so prepare by porting clk_register_fixed_rate.

It's based on the Linux commit of the same name with the difference that
it doesn't use (and thus doesn't require) a struct device_d * as first
parameter.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/clk-fixed.c | 16 +++++++++++++++-
 include/linux/clk.h     |  9 ++++++++-
 2 files changed, 23 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/clk-fixed.c b/drivers/clk/clk-fixed.c
index 57bf36b39ecd..411f6fe4736a 100644
--- a/drivers/clk/clk-fixed.c
+++ b/drivers/clk/clk-fixed.c
@@ -37,17 +37,31 @@ static struct clk_ops clk_fixed_ops = {
 	.is_enabled = clk_is_enabled_always,
 };
 
-struct clk *clk_fixed(const char *name, int rate)
+struct clk *clk_register_fixed_rate(const char *name,
+				    const char *parent_name, unsigned long flags,
+				    unsigned long rate)
 {
 	struct clk_fixed *fix = xzalloc(sizeof *fix);
+	const char **parent_names = NULL;
 	int ret;
 
 	fix->rate = rate;
 	fix->clk.ops = &clk_fixed_ops;
 	fix->clk.name = name;
+	fix->clk.flags = flags;
+
+	if (parent_name) {
+		parent_names = kzalloc(sizeof(const char *), GFP_KERNEL);
+		if (!parent_names)
+			return ERR_PTR(-ENOMEM);
+
+		fix->clk.parent_names = parent_names;
+		fix->clk.num_parents = 1;
+	}
 
 	ret = clk_register(&fix->clk);
 	if (ret) {
+		free(parent_names);
 		free(fix);
 		return ERR_PTR(ret);
 	}
diff --git a/include/linux/clk.h b/include/linux/clk.h
index c3aeea80ddc5..efb0fe4415aa 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -325,7 +325,14 @@ struct clk_div_table {
 	unsigned int	div;
 };
 
-struct clk *clk_fixed(const char *name, int rate);
+struct clk *clk_register_fixed_rate(const char *name,
+				    const char *parent_name, unsigned long flags,
+				    unsigned long fixed_rate);
+
+static inline struct clk *clk_fixed(const char *name, int rate)
+{
+	return clk_register_fixed_rate(name, NULL, 0, rate);
+}
 
 struct clk_divider {
 	struct clk clk;
-- 
2.26.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
