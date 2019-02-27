Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2a00:ee2:100:3a01::1] (helo=chandra.tablix.org)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gyzAM-0004ra-LX
 for barebox@lists.infradead.org; Wed, 27 Feb 2019 13:22:34 +0000
Received: from 77-111-10-47.ipv4.tusmobil.si ([77.111.10.47]
 helo=muffin.lju.klevio.com)
 by chandra.tablix.org with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <tomaz.solc@tablix.org>)
 id 1gyzA8-00088i-Am
 for barebox@lists.infradead.org; Wed, 27 Feb 2019 14:22:16 +0100
From: Tomaz Solc <tomaz.solc@tablix.org>
Date: Wed, 27 Feb 2019 14:22:15 +0100
Message-Id: <20190227132215.9765-4-tomaz.solc@tablix.org>
In-Reply-To: <20190227132215.9765-1-tomaz.solc@tablix.org>
References: <20190227132215.9765-1-tomaz.solc@tablix.org>
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
Subject: [PATCH v2 3/3] ARM: rpi: save bootargs from VC FDT to vc.bootargs
To: barebox@lists.infradead.org

When booting a Raspberry Pi, it is useful to extract bootargs from the
device tree that was created by the VideoCore firmware. These bootargs
contain for example settings for the framebuffer that the kernel needs
to properly set the video output.

This commit extracts the bootargs in the board initialization code and
saves them to the vc.bootargs global variable.

For example, a bootloader environment can then add the contents of this
variable to linux.bootargs.vc, which then gets included into the final
bootargs for the kernel using CONFIG_FLEXIBLE_BOOTARGS.
---
 Documentation/boards/bcm2835.rst          |  6 ++++
 arch/arm/boards/raspberry-pi/rpi-common.c | 47 +++++++++++++++++++++++++++++++
 2 files changed, 53 insertions(+)

diff --git a/Documentation/boards/bcm2835.rst b/Documentation/boards/bcm2835.rst
index 95e910896..e9ad1d4d5 100644
--- a/Documentation/boards/bcm2835.rst
+++ b/Documentation/boards/bcm2835.rst
@@ -34,5 +34,11 @@ VideoCore firmware creates a device tree based on the entries in ``config.txt``.
 
     bootm -o /vc.dtb /boot/kernel7.img
 
+VideoCore device tree also contains the kernel command-line that is constructed from ``cmdline.txt`` and other parameters internally determined by the VideoCore firmware. Normally in Barebox this command-line gets overwritten on boot by the Linux bootargs (see :ref:`booting_linux`).
+
+The original command-line from VideoCore device tree is available to the Barebox environment in the ``vc.bootargs`` global variable. For example, to append it to the Linux bootargs::
+
+    global linux.bootargs.vc="$global.vc.bootargs"
+
 .. _Raspberry Pi firmware: https://codeload.github.com/raspberrypi/firmware/zip/80e1fbeb78f9df06701d28c0ed3a3060a3f557ef
 .. _documentation for config.txt: https://www.raspberrypi.org/documentation/configuration/config-txt/
diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index fffa882a7..9d334cde1 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -30,6 +30,7 @@
 #include <asm/barebox-arm.h>
 #include <generated/mach-types.h>
 #include <linux/sizes.h>
+#include <globalvar.h>
 
 #include <mach/core.h>
 #include <mach/mbox.h>
@@ -375,11 +376,50 @@ static int rpi_env_init(void)
 	return 0;
 }
 
+/* Extract /chosen/bootargs from the VideoCore FDT into vc.bootargs
+ * global variable. */
+static int rpi_vc_fdt_bootargs(void *fdt)
+{
+	int ret = 0;
+	struct device_node *root = NULL, *node;
+	const char *cmdline;
+
+	root = of_unflatten_dtb(fdt);
+	if (IS_ERR(root)) {
+		ret = PTR_ERR(root);
+		root = NULL;
+		goto out;
+	}
+
+	node = of_find_node_by_path_from(root, "/chosen");
+	if (!node) {
+		pr_err("no /chosen node\n");
+		ret = -ENOENT;
+		goto out;
+	}
+
+	cmdline = of_get_property(node, "bootargs", NULL);
+	if (!cmdline) {
+		pr_err("no bootargs property in the /chosen node\n");
+		ret = -ENOENT;
+		goto out;
+	}
+
+	globalvar_add_simple("vc.bootargs", cmdline);
+
+out:
+	if (root)
+		of_delete_node(root);
+
+	return ret;
+}
+
 static void rpi_vc_fdt(void)
 {
 	void *saved_vc_fdt;
 	struct fdt_header *oftree;
 	unsigned long magic, size;
+	int ret;
 
 	/* VideoCore FDT was copied in PBL just above Barebox memory */
 	saved_vc_fdt = (void *)(arm_mem_endmem_get());
@@ -401,6 +441,13 @@ static void rpi_vc_fdt(void)
 		pr_err("failed to save videocore fdt to a file\n");
 		return;
 	}
+
+	ret = rpi_vc_fdt_bootargs(saved_vc_fdt);
+	if (ret) {
+		pr_err("failed to extract bootargs from videocore fdt: %d\n",
+									ret);
+		return;
+	}
 }
 
 static int rpi_devices_init(void)
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
