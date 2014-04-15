Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x231.google.com ([2a00:1450:4010:c04::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WZy4u-0007j0-Mo
 for barebox@lists.infradead.org; Tue, 15 Apr 2014 07:46:49 +0000
Received: by mail-lb0-f177.google.com with SMTP id z11so6520842lbi.36
 for <barebox@lists.infradead.org>; Tue, 15 Apr 2014 00:46:26 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 15 Apr 2014 11:38:29 +0400
Message-Id: <1397547514-19925-6-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1397547514-19925-1-git-send-email-antonynpavlov@gmail.com>
References: <1397547514-19925-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 05/10] resource: add create_resource() helper function
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 common/resource.c      | 15 +++++++++++++++
 include/linux/ioport.h |  2 ++
 2 files changed, 17 insertions(+)

diff --git a/common/resource.c b/common/resource.c
index fe4680e..b6c7c87 100644
--- a/common/resource.c
+++ b/common/resource.c
@@ -143,3 +143,18 @@ struct resource *request_ioport_region(const char *name,
 {
 	return __request_region(&ioport_resource, name, start, end);
 }
+
+struct resource *create_resource(const char *name,
+	resource_size_t start, resource_size_t end)
+{
+	struct resource *t;
+
+	t = xzalloc(sizeof *t);
+	INIT_LIST_HEAD(&t->children);
+	t->parent = NULL;
+	t->name = xstrdup(name);
+	t->start = start;
+	t->end = end;
+
+	return t;
+}
diff --git a/include/linux/ioport.h b/include/linux/ioport.h
index d1b2f55..bce9b62 100644
--- a/include/linux/ioport.h
+++ b/include/linux/ioport.h
@@ -145,6 +145,8 @@ struct resource *__request_region(struct resource *parent,
 		resource_size_t size);
 
 int release_region(struct resource *res);
+struct resource *create_resource(const char *name,
+	resource_size_t start, resource_size_t end);
 
 extern struct resource iomem_resource;
 extern struct resource ioport_resource;
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
