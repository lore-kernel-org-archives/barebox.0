Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Ypynx-0004Ug-Jl
 for barebox@lists.infradead.org; Wed, 06 May 2015 12:52:02 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Wed,  6 May 2015 14:51:29 +0200
Message-Id: <1430916691-12459-4-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1430916691-12459-1-git-send-email-mkl@pengutronix.de>
References: <1430916691-12459-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 4/6] state: state_new_from_fdt(): remove unused function
To: barebox@lists.infradead.org

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 common/state.c  | 21 ---------------------
 include/state.h |  1 -
 2 files changed, 22 deletions(-)

diff --git a/common/state.c b/common/state.c
index 7f12341bd578..cc44cecb484f 100644
--- a/common/state.c
+++ b/common/state.c
@@ -678,27 +678,6 @@ struct state *state_new_from_node(const char *name, struct device_node *node)
 		return ERR_PTR(ret);
 	}
 
-	return state;
-}
-
-/*
- * state_new_from_fdt - create a new state instance from a fdt binary blob
- *
- * @name	The name of the new state instance
- * @fdt		The fdt binary blob describing the new state instance
- */
-struct state *state_new_from_fdt(const char *name, void *fdt)
-{
-	struct state *state;
-	struct device_node *root;
-
-	root = of_unflatten_dtb(fdt);
-	if (!root)
-		return ERR_PTR(-EINVAL);
-
-	state = state_new_from_node(name, root);
-
-	of_delete_node(root);
 
 	return state;
 }
diff --git a/include/state.h b/include/state.h
index e96d3bfb2e4f..d321451e1490 100644
--- a/include/state.h
+++ b/include/state.h
@@ -9,7 +9,6 @@ int state_backend_dtb_file(struct state *state, const char *path);
 int state_backend_raw_file(struct state *state, const char *path,
 		off_t offset, size_t size);
 
-struct state *state_new_from_fdt(const char *name, void *fdt);
 struct state *state_new_from_node(const char *name, struct device_node *node);
 
 struct state *state_by_name(const char *name);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
