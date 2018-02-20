Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eo8Em-0008OB-PG
 for barebox@lists.infradead.org; Tue, 20 Feb 2018 13:45:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 20 Feb 2018 14:45:26 +0100
Message-Id: <20180220134526.18280-2-s.hauer@pengutronix.de>
In-Reply-To: <20180220134526.18280-1-s.hauer@pengutronix.de>
References: <20180220134526.18280-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] state: find backend node with its reproducible name
To: Barebox List <barebox@lists.infradead.org>

When fixing up the kernels state nodes we depended on the full node path
of the input device tree. This does not work when the kernel device tree
has different names. This has happened lately when the i.MX6 device
trees got their leading zeroes removed from the node names.

Use of_find_node_by_reproducible_name() to find the node corresponding
to the storage backend node in the kernel device tree.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/state/state.c | 6 +++++-
 common/state/state.h | 1 +
 2 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/common/state/state.c b/common/state/state.c
index fdf10991aa..2a91c6aa6a 100644
--- a/common/state/state.c
+++ b/common/state/state.c
@@ -470,7 +470,8 @@ static int of_state_fixup(struct device_node *root, void *ctx)
 	}
 
 	/* backend phandle */
-	backend_node = of_find_node_by_devpath(root, state->backend_path);
+	backend_node = of_find_node_by_reproducible_name(root,
+						state->backend_reproducible_name);
 	if (!backend_node) {
 		ret = -ENODEV;
 		goto out;
@@ -550,6 +551,7 @@ void state_release(struct state *state)
 	state_storage_free(&state->storage);
 	state_format_free(state->format);
 	free(state->backend_path);
+	free(state->backend_reproducible_name);
 	free(state->of_path);
 	free(state);
 }
@@ -595,6 +597,8 @@ struct state *state_new_from_node(struct device_node *node, bool readonly)
 		goto out_release_state;
 	}
 
+	state->backend_reproducible_name = of_get_reproducible_name(partition_node);
+
 	ret = of_property_read_string(node, "backend-type", &backend_type);
 	if (ret) {
 		dev_dbg(&state->dev, "Missing 'backend-type' property\n");
diff --git a/common/state/state.h b/common/state/state.h
index fcc6b9f5cd..cde6a34c23 100644
--- a/common/state/state.h
+++ b/common/state/state.h
@@ -113,6 +113,7 @@ struct state {
 	struct state_backend_format *format;
 	struct state_backend_storage storage;
 	char *backend_path;
+	char *backend_reproducible_name;
 };
 
 enum state_convert {
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
