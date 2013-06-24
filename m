Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x233.google.com ([2a00:1450:4008:c01::233])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ur4LM-0005BF-5O
 for barebox@lists.infradead.org; Mon, 24 Jun 2013 10:49:56 +0000
Received: by mail-bk0-f51.google.com with SMTP id ji1so4110512bkc.38
 for <barebox@lists.infradead.org>; Mon, 24 Jun 2013 03:49:32 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Mon, 24 Jun 2013 12:49:20 +0200
Message-Id: <1372070961-10132-1-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1371827718-7928-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1371827718-7928-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 1/2] OF: base: add sanity checks to of_new/delete_property
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

This adds some sanity checks to of_new_property and of_delete_property.
Also, value pointer is always allocated even with zero length to allow
empty properties to be distinguished from non-existing properties.
Finally, data passed to of_new_property is only copied if non-NULL.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Note: Patch 3 of the former patch set has been dropped in favour of zero
length allocation here.

Changelog:
v1->v2:
- remove unneccesary NULL checks after xzalloc (Suggested by Sascha Hauer)
- allocate zero length value pointer (Suggested by Sascha Hauer)

Cc: barebox@lists.infradead.org
---
 drivers/of/base.c |   15 +++++++++++----
 1 files changed, 11 insertions(+), 4 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 1b351ee..e65cf85 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1527,13 +1527,17 @@ struct property *of_new_property(struct device_node *node, const char *name,
 	struct property *prop;
 
 	prop = xzalloc(sizeof(*prop));
-
 	prop->name = strdup(name);
+	if (!prop->name) {
+		free(prop);
+		return NULL;
+	}
+
 	prop->length = len;
-	if (len) {
-		prop->value = xzalloc(len);
+	prop->value = xzalloc(len);
+
+	if (data)
 		memcpy(prop->value, data, len);
-	}
 
 	list_add_tail(&prop->list, &node->properties);
 
@@ -1542,6 +1546,9 @@ struct property *of_new_property(struct device_node *node, const char *name,
 
 void of_delete_property(struct property *pp)
 {
+	if (!pp)
+		return;
+
 	list_del(&pp->list);
 
 	free(pp->name);
-- 
1.7.2.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
