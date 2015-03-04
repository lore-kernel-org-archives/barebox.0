Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from forward6l.mail.yandex.net ([2a02:6b8:0:1819::6])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YTFeg-0007fG-En
 for barebox@lists.infradead.org; Wed, 04 Mar 2015 20:12:31 +0000
From: Andrey Panov <rockford@yandex.ru>
Date: Wed,  4 Mar 2015 23:11:36 +0300
Message-Id: <1425499906-32125-9-git-send-email-rockford@yandex.ru>
In-Reply-To: <1425499906-32125-1-git-send-email-rockford@yandex.ru>
References: <1425499906-32125-1-git-send-email-rockford@yandex.ru>
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
Subject: [PATCH v2 08/18] CLK: Check and do not allow to register clock twice
To: barebox@lists.infradead.org

Signed-off-by: Andrey Panov <rockford@yandex.ru>
---
 drivers/clk/clk.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index 584e2f3..b77d022 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -212,6 +212,16 @@ struct clk *clk_get_parent(struct clk *clk)
 
 int clk_register(struct clk *clk)
 {
+	struct clk *c;
+
+	list_for_each_entry(c, &clks, list) {
+		if (!strcmp(c->name, clk->name)) {
+			pr_err("%s clk %s is already registered, skipping!\n",
+				__func__, clk->name);
+			return -EBUSY;
+		}
+	}
+
 	clk->parents = xzalloc(sizeof(struct clk *) * clk->num_parents);
 
 	list_add_tail(&clk->list, &clks);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
