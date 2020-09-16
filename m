Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kIXrM-000806-Ut
 for barebox@lists.infradead.org; Wed, 16 Sep 2020 13:52:34 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 16 Sep 2020 15:50:33 +0200
Message-Id: <20200916135035.7089-9-a.fatoum@pengutronix.de>
In-Reply-To: <20200916135035.7089-1-a.fatoum@pengutronix.de>
References: <20200916135035.7089-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 08/10] power: reset: reboot-mode: support multi-word magic
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The upstream binding and driver implementation only supports
reboot modes of 32-bit length. This is insufficient for cases where
multiple registers need to be written for the reboot mode to become
active. The i.MX6 is an example for this, the BootROM expects a second
32-bit register to indicate whether the reboot mode in the first is
valid. In preparation for adding support for this to the
syscon-reboot-mode driver. Migrate the reboot-mode core to support this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/power/reset/reboot-mode.c        | 37 ++++++++++++++----------
 drivers/power/reset/syscon-reboot-mode.c | 11 +++++--
 include/linux/reboot-mode.h              |  7 +++--
 3 files changed, 33 insertions(+), 22 deletions(-)

diff --git a/drivers/power/reset/reboot-mode.c b/drivers/power/reset/reboot-mode.c
index 5fc29ebf8091..5a72f6dca22d 100644
--- a/drivers/power/reset/reboot-mode.c
+++ b/drivers/power/reset/reboot-mode.c
@@ -20,11 +20,9 @@ static struct reboot_mode_driver *__boot_mode;
 static int reboot_mode_param_set(struct param_d *p, void *priv)
 {
 	struct reboot_mode_driver *reboot = priv;
-	u32 magic;
+	size_t i = reboot->reboot_mode_next * reboot->nelems;
 
-	magic = reboot->magics[reboot->reboot_mode_next];
-
-	return reboot->write(reboot, magic);
+	return reboot->write(reboot, &reboot->magics[i]);
 }
 
 static int reboot_mode_add_param(struct device_d *dev,
@@ -104,9 +102,13 @@ late_initcall(reboot_mode_add_globalvar);
 
 
 static void reboot_mode_print(struct reboot_mode_driver *reboot,
-			      const char *prefix, u32 magic)
+			      const char *prefix, const u32 *arr)
 {
-	dev_dbg(reboot->dev, "%s: %08x\n", prefix, magic);
+	size_t i;
+	dev_dbg(reboot->dev, "%s: ", prefix);
+	for (i = 0; i < reboot->nelems; i++)
+		__pr_printk(7, "%08x ", arr[i]);
+	__pr_printk(7, "\n");
 }
 
 /**
@@ -116,7 +118,8 @@ static void reboot_mode_print(struct reboot_mode_driver *reboot,
  *
  * Returns: 0 on success or a negative error code on failure.
  */
-int reboot_mode_register(struct reboot_mode_driver *reboot, u32 reboot_mode)
+int reboot_mode_register(struct reboot_mode_driver *reboot,
+			 const u32 *reboot_mode, size_t nelems)
 {
 	struct property *prop;
 	struct device_node *np = reboot->dev->device_node;
@@ -138,7 +141,8 @@ int reboot_mode_register(struct reboot_mode_driver *reboot, u32 reboot_mode)
 	}
 
 	reboot->nmodes = nmodes;
-	reboot->magics = xzalloc(nmodes * sizeof(u32));
+	reboot->nelems = nelems;
+	reboot->magics = xzalloc(nmodes * nelems * sizeof(u32));
 	reboot->modes = xzalloc(nmodes * sizeof(const char *));
 
 	reboot_mode_print(reboot, "registering magic", reboot_mode);
@@ -147,13 +151,13 @@ int reboot_mode_register(struct reboot_mode_driver *reboot, u32 reboot_mode)
 		const char **mode;
 		u32 *magic;
 
-		magic = &reboot->magics[i];
+		magic = &reboot->magics[i * nelems];
 		mode = &reboot->modes[i];
 
 		if (strncmp(prop->name, PREFIX, len))
 			continue;
 
-		if (of_property_read_u32(np, prop->name, magic)) {
+		if (of_property_read_u32_array(np, prop->name, magic, nelems)) {
 			dev_err(reboot->dev, "reboot mode %s without magic number\n",
 				*mode);
 			continue;
@@ -167,22 +171,23 @@ int reboot_mode_register(struct reboot_mode_driver *reboot, u32 reboot_mode)
 			goto error;
 		}
 
-		reboot_mode_print(reboot, *mode, *magic);
+		reboot_mode_print(reboot, *mode, magic);
 
 		i++;
 	}
 
 	for (i = 0; i < reboot->nmodes; i++) {
-		if (reboot->magics[i] == reboot_mode) {
-			reboot->reboot_mode_prev = i;
-			break;
-		}
+		if (memcmp(&reboot->magics[i * nelems], reboot_mode, nelems * sizeof(u32)))
+			continue;
+
+		reboot->reboot_mode_prev = i;
+		break;
 	}
 
 	reboot_mode_add_param(reboot->dev, "", reboot);
 
 	/* clear mode for next reboot */
-	reboot->write(reboot, 0);
+	reboot->write(reboot, &(u32) { 0 });
 
 	if (!reboot->priority)
 		reboot->priority = REBOOT_MODE_DEFAULT_PRIORITY;
diff --git a/drivers/power/reset/syscon-reboot-mode.c b/drivers/power/reset/syscon-reboot-mode.c
index 5e4aed943d5c..bd4f1a3d04b0 100644
--- a/drivers/power/reset/syscon-reboot-mode.c
+++ b/drivers/power/reset/syscon-reboot-mode.c
@@ -19,7 +19,7 @@ struct syscon_reboot_mode {
 };
 
 static int syscon_reboot_mode_write(struct reboot_mode_driver *reboot,
-				    unsigned int magic)
+				    const u32 *magic)
 {
 	struct syscon_reboot_mode *syscon_rbm;
 	int ret;
@@ -27,7 +27,7 @@ static int syscon_reboot_mode_write(struct reboot_mode_driver *reboot,
 	syscon_rbm = container_of(reboot, struct syscon_reboot_mode, reboot);
 
 	ret = regmap_update_bits(syscon_rbm->map, syscon_rbm->offset,
-				 syscon_rbm->mask, magic);
+				 syscon_rbm->mask, *magic);
 	if (ret < 0)
 		dev_err(reboot->dev, "update reboot mode bits failed\n");
 
@@ -39,8 +39,13 @@ static int syscon_reboot_mode_probe(struct device_d *dev)
 	int ret;
 	struct syscon_reboot_mode *syscon_rbm;
 	struct device_node *np = dev->device_node;
+	size_t nelems;
 	u32 magic;
 
+	nelems = of_property_count_elems_of_size(np, "offset", sizeof(__be32));
+	if (nelems != 1)
+		return -EINVAL;
+
 	syscon_rbm = xzalloc(sizeof(*syscon_rbm));
 
 	syscon_rbm->reboot.dev = dev;
@@ -65,7 +70,7 @@ static int syscon_reboot_mode_probe(struct device_d *dev)
 
 	magic &= syscon_rbm->mask;
 
-	ret = reboot_mode_register(&syscon_rbm->reboot, magic);
+	ret = reboot_mode_register(&syscon_rbm->reboot, &magic, 1);
 	if (ret)
 		dev_err(dev, "can't register reboot mode\n");
 
diff --git a/include/linux/reboot-mode.h b/include/linux/reboot-mode.h
index bc57f1d72df7..9d9ce19c0e5f 100644
--- a/include/linux/reboot-mode.h
+++ b/include/linux/reboot-mode.h
@@ -9,18 +9,19 @@ struct device_d;
 #ifdef CONFIG_REBOOT_MODE
 struct reboot_mode_driver {
 	struct device_d *dev;
-	int (*write)(struct reboot_mode_driver *reboot, u32 magic);
+	int (*write)(struct reboot_mode_driver *reboot, const u32 *magic);
 	int priority;
 	bool no_fixup;
 
 	/* filled by reboot_mode_register */
 	int reboot_mode_prev, reboot_mode_next;
-	unsigned nmodes;
+	unsigned nmodes, nelems;
 	const char **modes;
 	u32 *magics;
 };
 
-int reboot_mode_register(struct reboot_mode_driver *reboot, u32 reboot_mode);
+int reboot_mode_register(struct reboot_mode_driver *reboot,
+			 const u32 *magic, size_t num);
 const char *reboot_mode_get(void);
 
 #define REBOOT_MODE_DEFAULT_PRIORITY 100
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
