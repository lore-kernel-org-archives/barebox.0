Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d6EWx-0007yu-NN
 for barebox@lists.infradead.org; Thu, 04 May 2017 11:02:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  4 May 2017 13:02:19 +0200
Message-Id: <20170504110219.17929-5-s.hauer@pengutronix.de>
In-Reply-To: <20170504110219.17929-1-s.hauer@pengutronix.de>
References: <20170504110219.17929-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] state: Create alias in of_state_fixup()
To: Barebox List <barebox@lists.infradead.org>

When the kernel device tree is fixed up we assume that it doesn't
have a state node, so we must also assume that it doesn't have
a alias. Create it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/state/state.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/common/state/state.c b/common/state/state.c
index 41bee0fdc5..b4a634fa99 100644
--- a/common/state/state.c
+++ b/common/state/state.c
@@ -407,7 +407,7 @@ static int of_state_fixup(struct device_node *root, void *ctx)
 {
 	struct state *state = ctx;
 	const char *compatible = "barebox,state";
-	struct device_node *new_node, *node, *parent, *backend_node;
+	struct device_node *new_node, *node, *parent, *backend_node, *aliases;
 	struct property *p;
 	int ret;
 	phandle phandle;
@@ -520,6 +520,17 @@ static int of_state_fixup(struct device_node *root, void *ctx)
 	if (ret)
 		goto out;
 
+	aliases = of_create_node(root, "/aliases");
+	if (!aliases) {
+		ret = -ENOMEM;
+		goto out;
+	}
+
+	ret = of_set_property(aliases, state->name, new_node->full_name,
+			      strlen(new_node->full_name) + 1, 1);
+	if (ret)
+		goto out;
+
 	/* delete existing node */
 	if (node)
 		of_delete_node(node);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
