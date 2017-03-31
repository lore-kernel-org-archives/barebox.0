Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ctqbc-0005fq-71
 for barebox@lists.infradead.org; Fri, 31 Mar 2017 07:04:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 Mar 2017 09:03:46 +0200
Message-Id: <20170331070346.26878-43-s.hauer@pengutronix.de>
In-Reply-To: <20170331070346.26878-1-s.hauer@pengutronix.de>
References: <20170331070346.26878-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 42/42] state: find device node from device path,
 not from device node path
To: Barebox List <barebox@lists.infradead.org>

The device node path may change from the internal device tree to the
one Linux is started with, so using this path to fixup the tree is
not very robust. Instead, use of_find_node_by_devpath() which has
been created for exactly this purpose.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/state/state.c | 10 +++++-----
 common/state/state.h |  2 +-
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/common/state/state.c b/common/state/state.c
index bdeda2e5a1..94a423b825 100644
--- a/common/state/state.c
+++ b/common/state/state.c
@@ -461,7 +461,7 @@ static int of_state_fixup(struct device_node *root, void *ctx)
 	}
 
 	/* backend phandle */
-	backend_node = of_find_node_by_path_from(root, state->of_backend_path);
+	backend_node = of_find_node_by_devpath(root, state->backend_path);
 	if (!backend_node) {
 		ret = -ENODEV;
 		goto out;
@@ -529,7 +529,7 @@ void state_release(struct state *state)
 	unregister_device(&state->dev);
 	state_storage_free(&state->storage);
 	state_format_free(state->format);
-	free(state->of_backend_path);
+	free(state->backend_path);
 	free(state->of_path);
 	free(state);
 }
@@ -591,6 +591,8 @@ struct state *state_new_from_node(struct device_node *node, char *path,
 		}
 	}
 
+	state->backend_path = xstrdup(path);
+
 	ret = of_property_read_string(node, "backend-type", &backend_type);
 	if (ret) {
 		goto out_release_state;
@@ -617,8 +619,6 @@ struct state *state_new_from_node(struct device_node *node, char *path,
 	if (ret)
 		goto out_release_state;
 
-	state->of_backend_path = xstrdup(of_path);
-
 	if (readonly)
 		state_backend_set_readonly(state);
 
@@ -693,7 +693,7 @@ void state_info(void)
 		if (state->format)
 			printf("(backend: %s, path: %s)\n",
 			       state->format->name,
-			       state->of_backend_path);
+			       state->backend_path);
 		else
 			printf("(no backend)\n");
 	}
diff --git a/common/state/state.h b/common/state/state.h
index 5e240c4773..ead8cc88c1 100644
--- a/common/state/state.h
+++ b/common/state/state.h
@@ -104,7 +104,7 @@ struct state {
 
 	struct state_backend_format *format;
 	struct state_backend_storage storage;
-	char *of_backend_path;
+	char *backend_path;
 };
 
 enum state_convert {
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
