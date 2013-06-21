Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x233.google.com ([2a00:1450:4008:c01::233])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uq341-0005sZ-DG
 for barebox@lists.infradead.org; Fri, 21 Jun 2013 15:15:50 +0000
Received: by mail-bk0-f51.google.com with SMTP id ji1so3425657bkc.24
 for <barebox@lists.infradead.org>; Fri, 21 Jun 2013 08:15:27 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Fri, 21 Jun 2013 17:15:16 +0200
Message-Id: <1371827718-7928-2-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 1/3] OF: base: add sanity checks to of_new/delete_property
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

This adds some sanity checks to of_new_property and of_delete_property.
Also, data passed to of_new_property is only copied if non-NULL.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 drivers/of/base.c |   18 +++++++++++++++++-
 1 files changed, 17 insertions(+), 1 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 1b351ee..bcfd73a 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1527,21 +1527,37 @@ struct property *of_new_property(struct device_node *node, const char *name,
 	struct property *prop;
 
 	prop = xzalloc(sizeof(*prop));
+	if (!prop)
+		return NULL;
 
 	prop->name = strdup(name);
+	if (!prop->name)
+		goto bail_out;
+
 	prop->length = len;
 	if (len) {
 		prop->value = xzalloc(len);
-		memcpy(prop->value, data, len);
+		if (!prop->value)
+			goto bail_out;
 	}
 
+	if (len && data)
+		memcpy(prop->value, data, len);
+
 	list_add_tail(&prop->list, &node->properties);
 
 	return prop;
+
+bail_out:
+	of_delete_property(prop);
+	return NULL;
 }
 
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
