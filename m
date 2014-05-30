Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x22d.google.com ([2a00:1450:400c:c03::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WqIi4-0002BA-Ih
 for barebox@lists.infradead.org; Fri, 30 May 2014 09:02:45 +0000
Received: by mail-we0-f173.google.com with SMTP id u57so1684039wes.32
 for <barebox@lists.infradead.org>; Fri, 30 May 2014 02:02:22 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
Date: Fri, 30 May 2014 11:07:29 +0200
Message-Id: <1401440856-6145-4-git-send-email-holgerschurig@gmail.com>
In-Reply-To: <1401440856-6145-1-git-send-email-holgerschurig@gmail.com>
References: <1401440856-6145-1-git-send-email-holgerschurig@gmail.com>
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
Subject: [PATCH 03/10] devinfo: make the output of "devinfo DEVICE" nicer
To: barebox@lists.infradead.org

* some output sections started with "foo: bar", some with "foo = bar". Unify this.
* there was a fixed size to the "foo =" parameters, which wasn't fitting, this
  was especially visible at "devinfo global"
* don't output "resources:", "driver:" and "bus:" lines if there are none
  resources, drivers or busses involved.
* remove some empty lines
* harmonize differentiation between headlines (e.g. "resources:") and values
  by indenting values slightly
* uppercase some texts

Signed-off-by: Holger Schurig <holgerschurig@gmail.com>
---
 commands/devinfo.c |   38 +++++++++++++++++++++-----------------
 drivers/video/fb.c |    7 ++-----
 2 files changed, 23 insertions(+), 22 deletions(-)

diff --git a/commands/devinfo.c b/commands/devinfo.c
index 3fb309b..1a35e3f 100644
--- a/commands/devinfo.c
+++ b/commands/devinfo.c
@@ -52,16 +52,16 @@ static int do_devinfo_subtree(struct device_d *dev, int depth)
 	return 0;
 }
 
+
 static int do_devinfo(int argc, char *argv[])
 {
 	struct device_d *dev;
 	struct param_d *param;
 	int i;
+	int first;
 	struct resource *res;
 
 	if (argc == 1) {
-		printf("devices:\n");
-
 		for_each_device(dev) {
 			if (!dev->parent)
 				do_devinfo_subtree(dev, 0);
@@ -74,38 +74,42 @@ static int do_devinfo(int argc, char *argv[])
 			return -1;
 		}
 
-		printf("resources:\n");
+		if (dev->num_resources)
+			printf("Resources:\n");
 		for (i = 0; i < dev->num_resources; i++) {
 			res = &dev->resource[i];
-			printf("num   : %d\n", i);
+			printf("  num: %d\n", i);
 			if (res->name)
-				printf("name  : %s\n", res->name);
-			printf("start : " PRINTF_CONVERSION_RESOURCE "\nsize  : "
-					PRINTF_CONVERSION_RESOURCE "\n",
+				printf("  name: %s\n", res->name);
+			printf("  start: " PRINTF_CONVERSION_RESOURCE "\n"
+				   "  size: "  PRINTF_CONVERSION_RESOURCE "\n",
 			       res->start, resource_size(res));
 		}
 
-		printf("driver: %s\n", dev->driver ?
-				dev->driver->name : "none");
+		if (dev->driver)
+			printf("Driver: %s\n", dev->driver->name);
 
-		printf("bus: %s\n\n", dev->bus ?
-				dev->bus->name : "none");
+		if (dev->bus)
+			printf("Bus: %s\n", dev->bus->name);
 
 		if (dev->info)
 			dev->info(dev);
 
-		printf("%s\n", list_empty(&dev->parameters) ?
-				"no parameters available" : "Parameters:");
-
+		first = true;
 		list_for_each_entry(param, &dev->parameters, list) {
-			printf("%16s = %s", param->name, dev_get_param(dev, param->name));
-			if (param->info)
+			if (first) {
+				printf("Parameters:\n");
+				first = false;
+			}
+			printf("  %s: %s", param->name, dev_get_param(dev, param->name));
+			if (param->info) {
 				param->info(param);
+			}
 			printf("\n");
 		}
 #ifdef CONFIG_OFDEVICE
 		if (dev->device_node) {
-			printf("\ndevice node: %s\n", dev->device_node->full_name);
+			printf("Device node: %s\n", dev->device_node->full_name);
 			of_print_nodes(dev->device_node, 0);
 		}
 #endif
diff --git a/drivers/video/fb.c b/drivers/video/fb.c
index ecf6142..e30ab59 100644
--- a/drivers/video/fb.c
+++ b/drivers/video/fb.c
@@ -125,7 +125,7 @@ static struct file_operations fb_ops = {
 
 static void fb_print_mode(struct fb_videomode *mode)
 {
-	printf("%-20s %dx%d@%d\n", mode->name,
+	printf("  %s: %dx%d@%d\n", mode->name,
 			mode->xres, mode->yres, mode->refresh);
 }
 
@@ -141,12 +141,9 @@ static void fb_info(struct device_d *dev)
 {
 	struct fb_info *info = dev->priv;
 
-	printf("available modes:\n");
-
+	printf("Available modes:\n");
 	fb_print_modes(&info->modes);
 	fb_print_modes(&info->edid_modes);
-
-	printf("\n");
 }
 
 int register_framebuffer(struct fb_info *info)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
