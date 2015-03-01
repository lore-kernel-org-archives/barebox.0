Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YS339-0004dF-NY
 for barebox@lists.infradead.org; Sun, 01 Mar 2015 12:32:50 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Sun,  1 Mar 2015 13:32:09 +0100
Message-Id: <1425213143-4529-4-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1425213143-4529-1-git-send-email-mkl@pengutronix.de>
References: <1425213143-4529-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH v2 03/17] of_path: of_find_path(): remove unused variable len
To: barebox@lists.infradead.org

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 drivers/of/of_path.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/of/of_path.c b/drivers/of/of_path.c
index f0fd917ada56..df63c5782a02 100644
--- a/drivers/of/of_path.c
+++ b/drivers/of/of_path.c
@@ -132,9 +132,9 @@ int of_find_path(struct device_node *node, const char *propname, char **outpath)
 	struct of_path op = {};
 	struct device_node *rnode;
 	const char *path, *str;
-	int i, len, ret;
+	int i, ret;
 
-	path = of_get_property(node, propname, &len);
+	path = of_get_property(node, propname, NULL);
 	if (!path)
 		return -EINVAL;
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
