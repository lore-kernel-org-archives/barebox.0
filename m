Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sj8hP-00088H-LC
 for barebox@lists.infradead.org; Mon, 25 Jun 2012 12:47:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 25 Jun 2012 14:47:19 +0200
Message-Id: <1340628439-18605-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] print out resource_size_t correctly
To: barebox@lists.infradead.org

resource_size_t can be 32bit or 64bit depending on the architecture.
Add a define for it to be able to printf a resource_size_t correctly

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/iomem.c       |    3 ++-
 drivers/base/driver.c  |    3 ++-
 include/linux/ioport.h |    6 ++++++
 3 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/commands/iomem.c b/commands/iomem.c
index 96b03ba..70355fd 100644
--- a/commands/iomem.c
+++ b/commands/iomem.c
@@ -30,7 +30,8 @@ static void __print_resources(struct resource *res, int indent)
 	for (i = 0; i < indent; i++)
 		printf("  ");
 
-	printf("0x%08x - 0x%08x (size 0x%08x) %s\n", res->start,
+	printf(PRINTF_CONVERSION_RESOURCE " - " PRINTF_CONVERSION_RESOURCE
+			" (size " PRINTF_CONVERSION_RESOURCE ") %s\n", res->start,
 			res->start + res->size - 1,
 			res->size, res->name);
 
diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 547d684..3be4b99 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -388,7 +388,8 @@ static int do_devinfo(int argc, char *argv[])
 			printf("num   : %d\n", i);
 			if (res->name)
 				printf("name  : %s\n", res->name);
-			printf("start : 0x%08x\nsize  : 0x%08x\n",
+			printf("start : " PRINTF_CONVERSION_RESOURCE "\nsize  : "
+					PRINTF_CONVERSION_RESOURCE "\n",
 			       res->start, res->size);
 		}
 
diff --git a/include/linux/ioport.h b/include/linux/ioport.h
index c837b53..3f95ddd 100644
--- a/include/linux/ioport.h
+++ b/include/linux/ioport.h
@@ -25,6 +25,12 @@ struct resource {
 	struct list_head sibling;
 };
 
+#ifdef CONFIG_PHYS_ADDR_T_64BIT
+#define PRINTF_CONVERSION_RESOURCE	"0x%016llx"
+#else
+#define PRINTF_CONVERSION_RESOURCE	"0x%08x"
+#endif
+
 /*
  * IO resources have these defined flags.
  */
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
