Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fnscg-00030H-Be
 for barebox@lists.infradead.org; Thu, 09 Aug 2018 21:37:35 +0000
From: Roland Hieber <r.hieber@pengutronix.de>
Date: Thu,  9 Aug 2018 23:37:15 +0200
Message-Id: <20180809213715.23715-1-r.hieber@pengutronix.de>
In-Reply-To: <20180809130740.14125-1-r.hieber@pengutronix.de>
References: <20180809130740.14125-1-r.hieber@pengutronix.de>
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
Subject: [PATCH v2] FIT: be more verbose when RSA signature check fails
To: barebox@lists.infradead.org
Cc: Roland Hieber <r.hieber@pengutronix.de>

Tell the user what device tree node we're looking for.

Signed-off-by: Roland Hieber <r.hieber@pengutronix.de>
---
v1 -> v2: prevent use-after-free of key_path

---
 common/image-fit.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/common/image-fit.c b/common/image-fit.c
index 6cbf23250d..dfd1fa02c9 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -289,11 +289,12 @@ static int fit_check_rsa_signature(struct device_node *sig_node,
 	}
 	key_path = xasprintf("/signature/key-%s", key_name);
 	key_node = of_find_node_by_path(key_path);
-	free(key_path);
 	if (!key_node) {
-		pr_info("failed to find key node\n");
+		pr_info("failed to find key node %s\n", key_path);
+		free(key_path);
 		return -ENOENT;
 	}
+	free(key_path);
 
 	ret = rsa_of_read_key(key_node, &key);
 	if (ret) {
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
