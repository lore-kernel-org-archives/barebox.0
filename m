Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aK5Se-0002Ni-US
 for barebox@lists.infradead.org; Fri, 15 Jan 2016 14:34:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 15 Jan 2016 15:34:16 +0100
Message-Id: <1452868456-2057-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1452868456-2057-1-git-send-email-s.hauer@pengutronix.de>
References: <1452868456-2057-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] Convert users of PRINTF_CONVERSION_RESOURCE to %pa
To: Barebox List <barebox@lists.infradead.org>

printf now supports printing resource_size_t directly, convert
all users of the previously used PRINTF_CONVERSION_RESOURCE over
to %pa.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/devinfo.c     |  8 +++++---
 commands/iomemport.c   |  6 +++---
 common/bootm.c         | 12 ++++++------
 common/uimage.c        |  7 +++----
 drivers/of/platform.c  |  7 +++++--
 include/linux/ioport.h |  6 ------
 6 files changed, 22 insertions(+), 24 deletions(-)

diff --git a/commands/devinfo.c b/commands/devinfo.c
index c78efcb..9d5e8b8 100644
--- a/commands/devinfo.c
+++ b/commands/devinfo.c
@@ -77,13 +77,15 @@ static int do_devinfo(int argc, char *argv[])
 		if (dev->num_resources)
 			printf("Resources:\n");
 		for (i = 0; i < dev->num_resources; i++) {
+			resource_size_t size;
 			res = &dev->resource[i];
+			size = resource_size(res);
 			printf("  num: %d\n", i);
 			if (res->name)
 				printf("  name: %s\n", res->name);
-			printf("  start: " PRINTF_CONVERSION_RESOURCE "\n"
-				   "  size: "  PRINTF_CONVERSION_RESOURCE "\n",
-			       res->start, resource_size(res));
+			printf("  start: %pa\n"
+				   "  size: %pa\n",
+			       &res->start, &size);
 		}
 
 		if (dev->driver)
diff --git a/commands/iomemport.c b/commands/iomemport.c
index 5294c13..6d97c57 100644
--- a/commands/iomemport.c
+++ b/commands/iomemport.c
@@ -22,14 +22,14 @@
 static void __print_resources(struct resource *res, int indent)
 {
 	struct resource *r;
+	resource_size_t size = resource_size(res);
 	int i;
 
 	for (i = 0; i < indent; i++)
 		printf("  ");
 
-	printf(PRINTF_CONVERSION_RESOURCE " - " PRINTF_CONVERSION_RESOURCE
-			" (size " PRINTF_CONVERSION_RESOURCE ") %s\n",
-			res->start, res->end, resource_size(res), res->name);
+	printf("%pa - %pa (size %pa) %s\n",
+			&res->start, &res->end, &size, res->name);
 
 	list_for_each_entry(r, &res->children, sibling)
 		__print_resources(r, indent + 1);
diff --git a/common/bootm.c b/common/bootm.c
index 08125e7..ec6e899 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -326,9 +326,9 @@ static int bootm_open_oftree(struct image_data *data)
 static void bootm_print_info(struct image_data *data)
 {
 	if (data->os_res)
-		printf("OS image is at " PRINTF_CONVERSION_RESOURCE "-" PRINTF_CONVERSION_RESOURCE "\n",
-				data->os_res->start,
-				data->os_res->end);
+		printf("OS image is at %pa-%pa\n",
+				&data->os_res->start,
+				&data->os_res->end);
 	else
 		printf("OS image not yet relocated\n");
 
@@ -343,9 +343,9 @@ static void bootm_print_info(struct image_data *data)
 			printf(", multifile image %d", data->initrd_num);
 		printf("\n");
 		if (data->initrd_res)
-			printf("initrd is at " PRINTF_CONVERSION_RESOURCE "-" PRINTF_CONVERSION_RESOURCE "\n",
-				data->initrd_res->start,
-				data->initrd_res->end);
+			printf("initrd is at %pa-%pa\n",
+				&data->initrd_res->start,
+				&data->initrd_res->end);
 		else
 			printf("initrd image not yet relocated\n");
 	}
diff --git a/common/uimage.c b/common/uimage.c
index a7011a7..59d7b65 100644
--- a/common/uimage.c
+++ b/common/uimage.c
@@ -354,10 +354,9 @@ static int uimage_sdram_flush(void *buf, unsigned int len)
 		uimage_resource = request_sdram_region("uimage",
 				start, size);
 		if (!uimage_resource) {
-			printf("unable to request SDRAM "
-					PRINTF_CONVERSION_RESOURCE "-"
-					PRINTF_CONVERSION_RESOURCE "\n",
-				start, start + size - 1);
+			resource_size_t prsize = start + size - 1;
+			printf("unable to request SDRAM %pa - %pa\n",
+				&start, &prsize);
 			return -ENOMEM;
 		}
 	}
diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index 2c075db..3f848a4 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -123,6 +123,7 @@ struct device_d *of_platform_device_create(struct device_node *np,
 {
 	struct device_d *dev;
 	struct resource *res = NULL, temp_res;
+	resource_size_t resinval;
 	int i, j, ret, num_reg = 0, match;
 
 	if (!of_device_is_available(np))
@@ -183,9 +184,11 @@ struct device_d *of_platform_device_create(struct device_node *np,
 	dev->num_resources = num_reg;
 	of_device_make_bus_id(dev);
 
-	debug("%s: register device %s, io=" PRINTF_CONVERSION_RESOURCE "\n",
+	resinval = (-1);
+
+	debug("%s: register device %s, io=%pa\n",
 			__func__, dev_name(dev),
-		(num_reg) ? dev->resource[0].start : (-1));
+		(num_reg) ? &dev->resource[0].start : &resinval);
 
 	ret = platform_device_register(dev);
 	if (!ret)
diff --git a/include/linux/ioport.h b/include/linux/ioport.h
index 9b35a30..3d375a8 100644
--- a/include/linux/ioport.h
+++ b/include/linux/ioport.h
@@ -26,12 +26,6 @@ struct resource {
 	struct list_head sibling;
 };
 
-#ifdef CONFIG_PHYS_ADDR_T_64BIT
-#define PRINTF_CONVERSION_RESOURCE	"0x%016llx"
-#else
-#define PRINTF_CONVERSION_RESOURCE	"0x%08x"
-#endif
-
 /*
  * IO resources have these defined flags.
  */
-- 
2.6.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
