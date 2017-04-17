Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x242.google.com ([2a00:1450:4010:c07::242])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d047C-0005Lj-8o
 for barebox@lists.infradead.org; Mon, 17 Apr 2017 10:42:39 +0000
Received: by mail-lf0-x242.google.com with SMTP id 88so4553575lfr.0
 for <barebox@lists.infradead.org>; Mon, 17 Apr 2017 03:42:17 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 17 Apr 2017 13:42:10 +0300
Message-Id: <20170417104210.8196-3-antonynpavlov@gmail.com>
In-Reply-To: <20170417104210.8196-1-antonynpavlov@gmail.com>
References: <20170417104210.8196-1-antonynpavlov@gmail.com>
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
Subject: [PATCH 2/2] of: base: of_new_property(): use xstrdup() instead of
 strdup()
To: barebox@lists.infradead.org

At the moment of_new_property() uses xfunctions for memory
allocation so we can use xstrdup() instead of strdup()
for code simplification.

A side effect of this commmit is that
the of_new_property() function can't return NULL
anymore if CONFIG_OFTREE is set.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/of/base.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 1161ce9793..c9bdd91810 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1802,12 +1802,7 @@ struct property *of_new_property(struct device_node *node, const char *name,
 	struct property *prop;
 
 	prop = xzalloc(sizeof(*prop));
-	prop->name = strdup(name);
-	if (!prop->name) {
-		free(prop);
-		return NULL;
-	}
-
+	prop->name = xstrdup(name);
 	prop->length = len;
 	prop->value = xzalloc(len);
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
