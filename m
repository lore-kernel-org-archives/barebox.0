Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from forward7l.mail.yandex.net ([84.201.143.140])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YSWrR-0005xu-UR
 for barebox@lists.infradead.org; Mon, 02 Mar 2015 20:22:45 +0000
From: Andrey Panov <rockford@yandex.ru>
Date: Mon,  2 Mar 2015 23:21:52 +0300
Message-Id: <1425327722-28232-9-git-send-email-rockford@yandex.ru>
In-Reply-To: <1425327722-28232-1-git-send-email-rockford@yandex.ru>
References: <1425327722-28232-1-git-send-email-rockford@yandex.ru>
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
Subject: [PATCH 08/18] CLK: Check and do not allow to register clock twice.
To: barebox@lists.infradead.org

Signed-off-by: Andrey Panov <rockford@yandex.ru>
---
 drivers/clk/clk.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index 584e2f3..5f78c9c 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -212,8 +212,17 @@ struct clk *clk_get_parent(struct clk *clk)
 
 int clk_register(struct clk *clk)
 {
+	struct clk *c;
+
 	clk->parents = xzalloc(sizeof(struct clk *) * clk->num_parents);
 
+	list_for_each_entry(c, &clks, list) {
+		if (!strcmp(c->name, clk->name)){
+			pr_err("%s clk %s is already registered, skipping!\n", __func__, clk->name);
+			return 0;
+		}
+	}
+
 	list_add_tail(&clk->list, &clks);
 
 	return 0;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
