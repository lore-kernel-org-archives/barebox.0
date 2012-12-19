Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f169.google.com ([209.85.217.169])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TlRDL-0006OW-9I
 for barebox@lists.infradead.org; Wed, 19 Dec 2012 21:30:08 +0000
Received: by mail-lb0-f169.google.com with SMTP id gk1so2374216lbb.28
 for <barebox@lists.infradead.org>; Wed, 19 Dec 2012 13:30:05 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 20 Dec 2012 01:29:51 +0400
Message-Id: <1355952595-1432-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1355952595-1432-1-git-send-email-antonynpavlov@gmail.com>
References: <1355952595-1432-1-git-send-email-antonynpavlov@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [RFC 1/5] resource: add create_resource() helper function
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 common/resource.c      |   15 +++++++++++++++
 include/linux/ioport.h |    2 ++
 2 files changed, 17 insertions(+)

diff --git a/common/resource.c b/common/resource.c
index ea6abe8..a493e70 100644
--- a/common/resource.c
+++ b/common/resource.c
@@ -113,3 +113,18 @@ struct resource *request_iomem_region(const char *name,
 {
 	return request_region(&iomem_resource, name, start, end);
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
index 6d6cd68..0a282ae 100644
--- a/include/linux/ioport.h
+++ b/include/linux/ioport.h
@@ -128,6 +128,8 @@ struct resource *request_region(struct resource *parent,
 		resource_size_t size);
 
 int release_region(struct resource *res);
+struct resource *create_resource(const char *name,
+	resource_size_t start, resource_size_t end);
 
 extern struct resource iomem_resource;
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
