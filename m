Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kIXrG-0007wb-Th
 for barebox@lists.infradead.org; Wed, 16 Sep 2020 13:52:29 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 16 Sep 2020 15:50:29 +0200
Message-Id: <20200916135035.7089-5-a.fatoum@pengutronix.de>
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
Subject: [PATCH 04/10] power: reset: reboot-mode: fix up node into boot device
 tree
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Instead of relying that the kernel and barebox device trees are in sync,
just enforce it by having barebox fix up the device tree node it probed
into the kernel device tree. We usually want that, but some reboot mode
drivers might want to inhibit the fixup, e.g. because they implement
a non-upstream binding or because they communicate with the BootROM,
while the kernel shouldn't. For those the fixup is made optional via
a struct reboot_mode_driver::no_fixup member.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/power/reset/reboot-mode.c | 39 +++++++++++++++++++++++++++++++
 include/linux/reboot-mode.h       |  1 +
 2 files changed, 40 insertions(+)

diff --git a/drivers/power/reset/reboot-mode.c b/drivers/power/reset/reboot-mode.c
index 5992a2acd99a..5fc29ebf8091 100644
--- a/drivers/power/reset/reboot-mode.c
+++ b/drivers/power/reset/reboot-mode.c
@@ -52,6 +52,42 @@ static int reboot_mode_add_param(struct device_d *dev,
 	return PTR_ERR_OR_ZERO(param);
 }
 
+static struct device_node *of_get_node_by_reproducible_name(struct device_node *dstroot,
+							    struct device_node *srcnp)
+{
+	struct device_node *dstnp;
+	char *name;
+
+	name = of_get_reproducible_name(srcnp);
+	dstnp = of_find_node_by_reproducible_name(dstroot, name);
+	free(name);
+
+	return dstnp;
+}
+
+static int of_reboot_mode_fixup(struct device_node *root, void *ctx)
+{
+	struct reboot_mode_driver *reboot = ctx;
+	struct device_node *dstnp, *srcnp, *dstparent;
+
+	srcnp = reboot->dev->device_node;
+
+	dstnp = of_get_node_by_reproducible_name(root, srcnp);
+	if (dstnp) {
+		dstparent = dstnp->parent;
+		of_delete_node(dstnp);
+	} else {
+		dstparent = of_get_node_by_reproducible_name(root, srcnp->parent);
+	}
+
+	if (!dstparent)
+		return -EINVAL;
+
+	of_copy_node(dstparent, srcnp);
+
+	return 0;
+}
+
 static int reboot_mode_add_globalvar(void)
 {
 	struct reboot_mode_driver *reboot = __boot_mode;
@@ -59,6 +95,9 @@ static int reboot_mode_add_globalvar(void)
 	if (!reboot)
 		return 0;
 
+	if (!reboot->no_fixup)
+		of_register_fixup(of_reboot_mode_fixup, reboot);
+
 	return reboot_mode_add_param(&global_device, "system.reboot_mode.", reboot);
 }
 late_initcall(reboot_mode_add_globalvar);
diff --git a/include/linux/reboot-mode.h b/include/linux/reboot-mode.h
index 92a1da7b5562..bc57f1d72df7 100644
--- a/include/linux/reboot-mode.h
+++ b/include/linux/reboot-mode.h
@@ -11,6 +11,7 @@ struct reboot_mode_driver {
 	struct device_d *dev;
 	int (*write)(struct reboot_mode_driver *reboot, u32 magic);
 	int priority;
+	bool no_fixup;
 
 	/* filled by reboot_mode_register */
 	int reboot_mode_prev, reboot_mode_next;
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
