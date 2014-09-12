Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XSNrr-0003A0-El
 for barebox@lists.infradead.org; Fri, 12 Sep 2014 10:14:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 12 Sep 2014 12:13:45 +0200
Message-Id: <1410516830-9403-6-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/10] resource: Let request_iomem_region return an error
 pointer
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/memory.c                    | 4 ++--
 common/resource.c                  | 8 +-------
 drivers/amba/bus.c                 | 5 +++--
 drivers/ata/intf_platform_ide.c    | 1 +
 drivers/base/driver.c              | 4 ++--
 drivers/gpio/gpio-generic.c        | 5 +++--
 drivers/mfd/syscon.c               | 4 ++--
 drivers/pinctrl/pinctrl-rockchip.c | 4 ++--
 8 files changed, 16 insertions(+), 19 deletions(-)

diff --git a/common/memory.c b/common/memory.c
index c564550..57c73ab 100644
--- a/common/memory.c
+++ b/common/memory.c
@@ -124,8 +124,8 @@ int barebox_add_memory_bank(const char *name, resource_size_t start,
 	struct device_d *dev;
 
 	bank->res = request_iomem_region(name, start, start + size - 1);
-	if (!bank->res)
-		return -EBUSY;
+	if (IS_ERR(bank->res))
+		return PTR_ERR(bank->res);
 
 	dev = add_mem_device(name, start, size, IORESOURCE_MEM_WRITEABLE);
 
diff --git a/common/resource.c b/common/resource.c
index 6e84bd8..fd04f26 100644
--- a/common/resource.c
+++ b/common/resource.c
@@ -125,13 +125,7 @@ struct resource iomem_resource = {
 struct resource *request_iomem_region(const char *name,
 		resource_size_t start, resource_size_t end)
 {
-	struct resource *res;
-
-	res = __request_region(&iomem_resource, name, start, end);
-	if (IS_ERR(res))
-		return NULL;
-
-	return res;
+	return __request_region(&iomem_resource, name, start, end);
 }
 
 /* The root resource for the whole io-mapped io space */
diff --git a/drivers/amba/bus.c b/drivers/amba/bus.c
index 6106252..b934e11 100644
--- a/drivers/amba/bus.c
+++ b/drivers/amba/bus.c
@@ -7,6 +7,7 @@
 #include <common.h>
 #include <driver.h>
 #include <linux/clk.h>
+#include <linux/err.h>
 #include <linux/amba/bus.h>
 #include <io.h>
 #include <init.h>
@@ -115,8 +116,8 @@ int amba_device_add(struct amba_device *dev)
 	 */
 	size = resource_size(&dev->res);
 	res = request_iomem_region("amba", dev->res.start, dev->res.end);
-	if (!res)
-		return -ENOMEM;
+	if (IS_ERR(res))
+		return PTR_ERR(res);
 	dev->base = tmp = (void __force __iomem *)res->start;
 	if (!tmp) {
 		ret = -ENOMEM;
diff --git a/drivers/ata/intf_platform_ide.c b/drivers/ata/intf_platform_ide.c
index b3faf47..db4c356 100644
--- a/drivers/ata/intf_platform_ide.c
+++ b/drivers/ata/intf_platform_ide.c
@@ -28,6 +28,7 @@
 #include <errno.h>
 #include <ata_drive.h>
 #include <platform_ide.h>
+#include <linux/err.h>
 
 /**
  * Setup the register specific addresses for an ATA like divice
diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index e39a351..d90da42 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -311,7 +311,7 @@ void __iomem *dev_request_mem_region_by_name(struct device_d *dev, const char *n
 		return NULL;
 
 	res = request_iomem_region(dev_name(dev), res->start, res->end);
-	if (!res)
+	if (IS_ERR(res))
 		return NULL;
 
 	return (void __force __iomem *)res->start;
@@ -327,7 +327,7 @@ void __iomem *dev_request_mem_region(struct device_d *dev, int num)
 		return NULL;
 
 	res = request_iomem_region(dev_name(dev), res->start, res->end);
-	if (!res)
+	if (IS_ERR(res))
 		return NULL;
 
 	return (void __force __iomem *)res->start;
diff --git a/drivers/gpio/gpio-generic.c b/drivers/gpio/gpio-generic.c
index 60c8b3a..a8b214c 100644
--- a/drivers/gpio/gpio-generic.c
+++ b/drivers/gpio/gpio-generic.c
@@ -14,6 +14,7 @@
 #include <init.h>
 #include <malloc.h>
 #include <linux/log2.h>
+#include <linux/err.h>
 #include <linux/basic_mmio_gpio.h>
 
 static void bgpio_write8(void __iomem *reg, unsigned int data)
@@ -320,8 +321,8 @@ static void __iomem *bgpio_map(struct device_d *dev, const char *name,
 	}
 
 	ret = request_iomem_region(dev_name(dev), r->start, r->end);
-	if (!ret) {
-		*err = -ENOMEM;
+	if (IS_ERR(ret)) {
+		*err = PTR_ERR(ret);
 		return NULL;
 	}
 
diff --git a/drivers/mfd/syscon.c b/drivers/mfd/syscon.c
index 55cc34f..231f4fe 100644
--- a/drivers/mfd/syscon.c
+++ b/drivers/mfd/syscon.c
@@ -77,9 +77,9 @@ static int syscon_probe(struct device_d *dev)
 	}
 
 	res = request_iomem_region(dev_name(dev), res->start, res->end);
-	if (!res) {
+	if (IS_ERR(res)) {
 		free(syscon);
-		return -EBUSY;
+		return PTR_ERR(res);
 	}
 
 	syscon->base = (void __iomem *)res->start;
diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index 56377ea..a5b52a8 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -341,10 +341,10 @@ static int rockchip_get_bank_data(struct rockchip_pin_bank *bank,
 	}
 
 	res = request_iomem_region(dev_name(dev), node_res.start, node_res.end);
-	if (!res) {
+	if (IS_ERR(res)) {
 		dev_err(dev, "cannot request iomem region %08x\n",
 			node_res.start);
-		return -ENOENT;
+		return PTR_ERR(res);
 	}
 
 	bank->reg_base = (void __iomem *)res->start;
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
