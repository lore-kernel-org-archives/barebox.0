Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKHgO-0008PQ-Tn
 for barebox@lists.infradead.org; Tue, 15 Oct 2019 07:55:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Oct 2019 09:55:49 +0200
Message-Id: <20191015075549.4380-6-s.hauer@pengutronix.de>
In-Reply-To: <20191015075549.4380-1-s.hauer@pengutronix.de>
References: <20191015075549.4380-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/5] fit-image: Use compiled-in keys
To: Barebox List <barebox@lists.infradead.org>

The compiled-in keys can be retrieved with rsa_get_key(). Try to use
them first before falling back to looking up the keys in the device
tree.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/image-fit.c | 19 ++++++++++++-------
 1 file changed, 12 insertions(+), 7 deletions(-)

diff --git a/common/image-fit.c b/common/image-fit.c
index 71053fbef5..ca4d9ca10c 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -287,16 +287,21 @@ static int fit_check_rsa_signature(struct device_node *sig_node,
 		pr_err("key name not found in %s\n", sig_node->full_name);
 		return -EINVAL;
 	}
-	key_path = xasprintf("/signature/key-%s", key_name);
-	key_node = of_find_node_by_path(key_path);
-	if (!key_node) {
-		pr_info("failed to find key node %s\n", key_path);
+
+	key = rsa_get_key(key_name);
+	if (IS_ERR(key)) {
+		key_path = xasprintf("/signature/key-%s", key_name);
+		key_node = of_find_node_by_path(key_path);
+		if (!key_node) {
+			pr_info("failed to find key node %s\n", key_path);
+			free(key_path);
+			return -ENOENT;
+		}
 		free(key_path);
-		return -ENOENT;
+
+		key = rsa_of_read_key(key_node);
 	}
-	free(key_path);
 
-	key = rsa_of_read_key(key_node);
 	if (IS_ERR(key)) {
 		pr_info("failed to read key in %s\n", key_node->full_name);
 		return -ENOENT;
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
