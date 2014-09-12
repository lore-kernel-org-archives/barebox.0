Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XSNrr-00039x-Eh
 for barebox@lists.infradead.org; Fri, 12 Sep 2014 10:14:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 12 Sep 2014 12:13:44 +0200
Message-Id: <1410516830-9403-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1410516830-9403-1-git-send-email-s.hauer@pengutronix.de>
References: <1410516830-9403-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/10] resource: Let __request_region return an error pointer
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/memory.c   |  3 ++-
 common/resource.c | 23 ++++++++++++++++++-----
 2 files changed, 20 insertions(+), 6 deletions(-)

diff --git a/common/memory.c b/common/memory.c
index 4a8fe28..c564550 100644
--- a/common/memory.c
+++ b/common/memory.c
@@ -22,6 +22,7 @@
 #include <of.h>
 #include <init.h>
 #include <linux/ioport.h>
+#include <linux/err.h>
 #include <asm-generic/memory_layout.h>
 #include <asm/sections.h>
 #include <malloc.h>
@@ -150,7 +151,7 @@ struct resource *request_sdram_region(const char *name, resource_size_t start,
 
 		res = __request_region(bank->res, name, start,
 				       start + size - 1);
-		if (res)
+		if (!IS_ERR(res))
 			return res;
 	}
 
diff --git a/common/resource.c b/common/resource.c
index fe4680e..6e84bd8 100644
--- a/common/resource.c
+++ b/common/resource.c
@@ -20,6 +20,7 @@
 #include <errno.h>
 #include <init.h>
 #include <linux/ioport.h>
+#include <linux/err.h>
 #include <asm/io.h>
 
 static int init_resource(struct resource *res, const char *name)
@@ -48,7 +49,7 @@ struct resource *__request_region(struct resource *parent,
 				__func__,
 				(unsigned long long)start,
 				(unsigned long long)end);
-		return NULL;
+		return ERR_PTR(-EINVAL);
 	}
 
 	/* outside parent resource? */
@@ -59,7 +60,7 @@ struct resource *__request_region(struct resource *parent,
 				(unsigned long long)end,
 				(unsigned long long)parent->start,
 				(unsigned long long)parent->end);
-		return NULL;
+		return ERR_PTR(-EINVAL);
 	}
 
 	/*
@@ -77,7 +78,7 @@ struct resource *__request_region(struct resource *parent,
 				(unsigned long long)end,
 				(unsigned long long)r->start,
 				(unsigned long long)r->end);
-		return NULL;
+		return ERR_PTR(-EBUSY);
 	}
 
 ok:
@@ -124,7 +125,13 @@ struct resource iomem_resource = {
 struct resource *request_iomem_region(const char *name,
 		resource_size_t start, resource_size_t end)
 {
-	return __request_region(&iomem_resource, name, start, end);
+	struct resource *res;
+
+	res = __request_region(&iomem_resource, name, start, end);
+	if (IS_ERR(res))
+		return NULL;
+
+	return res;
 }
 
 /* The root resource for the whole io-mapped io space */
@@ -141,5 +148,11 @@ struct resource ioport_resource = {
 struct resource *request_ioport_region(const char *name,
 		resource_size_t start, resource_size_t end)
 {
-	return __request_region(&ioport_resource, name, start, end);
+	struct resource *res;
+
+	res = __request_region(&ioport_resource, name, start, end);
+	if (IS_ERR(res))
+		return NULL;
+
+	return res;
 }
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
