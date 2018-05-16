Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fIzVy-0002wT-Az
 for barebox@lists.infradead.org; Wed, 16 May 2018 16:43:22 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Wed, 16 May 2018 18:42:24 +0200
Message-Id: <20180516164233.27581-2-linux@rempel-privat.de>
In-Reply-To: <20180516164233.27581-1-linux@rempel-privat.de>
References: <20180516164233.27581-1-linux@rempel-privat.de>
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
Subject: [PATCH v1 01/10] resource: add create_resource() helper function
To: barebox@lists.infradead.org

From: Antony Pavlov <antonynpavlov@gmail.com>

needed for kexec support

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 common/resource.c      | 15 +++++++++++++++
 include/linux/ioport.h |  2 ++
 2 files changed, 17 insertions(+)

diff --git a/common/resource.c b/common/resource.c
index e4bbe15fd..fa9ffd084 100644
--- a/common/resource.c
+++ b/common/resource.c
@@ -150,3 +150,18 @@ struct resource *request_ioport_region(const char *name,
 
 	return res;
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
index 3d375a874..2a944cc73 100644
--- a/include/linux/ioport.h
+++ b/include/linux/ioport.h
@@ -140,6 +140,8 @@ struct resource *__request_region(struct resource *parent,
 		resource_size_t size);
 
 int release_region(struct resource *res);
+struct resource *create_resource(const char *name,
+	resource_size_t start, resource_size_t end);
 
 extern struct resource iomem_resource;
 extern struct resource ioport_resource;
-- 
2.14.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
