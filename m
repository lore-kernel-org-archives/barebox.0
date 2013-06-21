Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x22b.google.com ([2a00:1450:4008:c01::22b])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uq343-0005sd-1l
 for barebox@lists.infradead.org; Fri, 21 Jun 2013 15:15:51 +0000
Received: by mail-bk0-f43.google.com with SMTP id jm2so3423386bkc.2
 for <barebox@lists.infradead.org>; Fri, 21 Jun 2013 08:15:28 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Fri, 21 Jun 2013 17:15:18 +0200
Message-Id: <1371827718-7928-4-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 3/3] OF: base: add empty property value pointer
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

Since property values can be empty, we need property value pointer to
be non-NULL to distinguish those properties from non-existing properties.
This adds a static u32 to which empty properties set their value pointer.
Also, the value memory is only freed, if property length is not zero.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 drivers/of/base.c |    6 +++++-
 1 files changed, 5 insertions(+), 1 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 7926d5d..a100a17 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1501,6 +1501,8 @@ struct device_node *of_new_node(struct device_node *parent, const char *name)
 	return node;
 }
 
+static u32 empty_prop_value;
+
 struct property *of_new_property(struct device_node *node, const char *name,
 		const void *data, int len)
 {
@@ -1515,6 +1517,7 @@ struct property *of_new_property(struct device_node *node, const char *name,
 		goto bail_out;
 
 	prop->length = len;
+	prop->value = &empty_prop_value;
 	if (len) {
 		prop->value = xzalloc(len);
 		if (!prop->value)
@@ -1541,7 +1544,8 @@ void of_delete_property(struct property *pp)
 	list_del(&pp->list);
 
 	free(pp->name);
-	free(pp->value);
+	if (pp->length)
+		free(pp->value);
 	free(pp);
 }
 
-- 
1.7.2.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
