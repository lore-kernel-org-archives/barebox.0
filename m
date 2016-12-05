Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wj0-x243.google.com ([2a00:1450:400c:c01::243])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cDplr-00027f-Tm
 for barebox@lists.infradead.org; Mon, 05 Dec 2016 09:41:26 +0000
Received: by mail-wj0-x243.google.com with SMTP id kp2so38280573wjc.0
 for <barebox@lists.infradead.org>; Mon, 05 Dec 2016 01:40:55 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon,  5 Dec 2016 12:40:28 +0300
Message-Id: <20161205094033.31569-4-antonynpavlov@gmail.com>
In-Reply-To: <20161205094033.31569-1-antonynpavlov@gmail.com>
References: <20161205094033.31569-1-antonynpavlov@gmail.com>
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
Subject: [RFC v2 3/8] resource: add create_resource() helper function
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 common/resource.c      | 15 +++++++++++++++
 include/linux/ioport.h |  2 ++
 2 files changed, 17 insertions(+)

diff --git a/common/resource.c b/common/resource.c
index e4bbe15..fa9ffd0 100644
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
index 3d375a8..2a944cc 100644
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
2.10.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
