Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a9Mon-0004ds-M3
 for barebox@lists.infradead.org; Thu, 17 Dec 2015 00:53:18 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Thu, 17 Dec 2015 00:52:49 +0000
Message-ID: <1450313569.26955.190.camel@rtred1test09.kymeta.local>
References: <1450313304.26955.188.camel@rtred1test09.kymeta.local>
In-Reply-To: <1450313304.26955.188.camel@rtred1test09.kymeta.local>
Content-Language: en-US
Content-ID: <CB8176F5B41C914AA5CAC20497E27D32@kymetacorp.com>
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
Subject: [PATCH 3/4] environment: Support env from file in a file-system via
 device tree
To: barebox <barebox@lists.infradead.org>

Current barebox,environment node only allows specifying a raw device or
partition to load an environment from.  Some boards, like OMAP and
SoCFPGA, instead want to use a file located in a FAT filesystem.
Extend the device tree bindings with a new property 'file-path' that
will trigger this behavior.

This allows any board using this driver to get the env from a file or
from a raw device, instead of each machine type being either raw
device only or file only.

Signed-off-by: Trent Piepho <tpiepho@kymetacorp.com>
---
 .../bindings/barebox/barebox,environment.rst       | 15 ++++++-
 drivers/of/Kconfig                                 |  7 ++++
 drivers/of/barebox.c                               | 47 +++++++++++++++++++++-
 3 files changed, 66 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/barebox/barebox,environment.rst b/Documentation/devicetree/bindings/barebox/barebox,environment.rst
index d5e52ea..12b103b 100644
--- a/Documentation/devicetree/bindings/barebox/barebox,environment.rst
+++ b/Documentation/devicetree/bindings/barebox/barebox,environment.rst
@@ -6,7 +6,10 @@ This driver provides an environment for barebox from the devicetree.
 Required properties:
 
 * ``compatible``: should be ``barebox,environment``
-* ``device-path``: path to the environment
+* ``device-path``: path to the device environment is on
+
+Optional properties:
+* ``file-path``: path to a file in the device named by device-path
 
 The device-path is a multistring property. The first string should contain
 a nodepath to the node containing the physical device of the environment or
@@ -19,9 +22,19 @@ the path to the environment. Supported values for <type>:
   be the label for MTD partitions, the number for DOS
   partitions (beginning with 0) or the name for GPT partitions.
 
+The file-path is the name of a file located in a FAT filesystem on the
+device named in device-path.  This filesystem will be mounted and the
+environment loaded from the file's location in the directory tree.
+
 Example::
 
   environment@0 {
   	compatible = "barebox,environment";
   	device-path = &flash, "partname:barebox-environment";
   };
+
+  environment@1 {
+  	compatible = "barebox,environment";
+  	device-path = &mmc, "partname:1";
+  	file-path = "barebox.env";
+  };
diff --git a/drivers/of/Kconfig b/drivers/of/Kconfig
index 90475cf..d0a62bd 100644
--- a/drivers/of/Kconfig
+++ b/drivers/of/Kconfig
@@ -43,3 +43,10 @@ config OF_BAREBOX_DRIVERS
 	  support for this feature. This currently allows to configure the
 	  environment path from devicetree and to partition devices. See
 	  Documentation/devicetree/bindings/barebox/ for more information.
+
+config OF_BAREBOX_ENV_IN_FS
+	depends on OF_BAREBOX_DRIVERS
+	bool "Allow environment to come from file"
+	help
+	  Allow the devie tree configuration of the barebox environment path
+	  to specify a file in filesystem, which will be mounted.
diff --git a/drivers/of/barebox.c b/drivers/of/barebox.c
index 1b3078e..125feef 100644
--- a/drivers/of/barebox.c
+++ b/drivers/of/barebox.c
@@ -24,7 +24,46 @@
 #include <malloc.h>
 #include <partition.h>
 #include <envfs.h>
-#include <linux/mtd/mtd.h>
+#include <fs.h>
+
+#define ENV_MNT_DIR "/boot"	/* If env on filesystem, where to mount */
+
+/* If dev describes a file on a fs, mount the fs and change devpath to
+ * point to the file's path.  Otherwise leave devpath alone.  Does
+ * nothing in env in a file support isn't enabled.  */
+static int environment_check_mount(struct device_d *dev, char **devpath)
+{
+	const char *filepath;
+	int ret;
+
+	if (!IS_ENABLED(CONFIG_OF_BAREBOX_ENV_IN_FS))
+		return 0;
+
+	ret = of_property_read_string(dev->device_node, "file-path", &filepath);
+	if (ret == -EINVAL) {
+		/* No file-path so just use device-path */
+		return 0;
+	} else if (ret) {
+		/* file-path property exists, but has error */
+		dev_err(dev, "Problem with file-path property\n");
+		return ret;
+	}
+
+	/* Get device env is on and mount it */
+	mkdir(ENV_MNT_DIR, 0777);
+	ret = mount(*devpath, "fat", ENV_MNT_DIR, NULL);
+	if (ret) {
+		dev_err(dev, "Failed to load environment: mount %s failed (%d)\n",
+			*devpath, ret);
+		return ret;
+	}
+
+	/* Set env to be in a file on the now mounted device */
+	dev_dbg(dev, "Loading default env from %s on device %s\n",
+		filepath, *devpath);
+	*devpath = asprintf("%s/%s", ENV_MNT_DIR, filepath);
+	return 0;
+}
 
 static int environment_probe(struct device_d *dev)
 {
@@ -35,8 +74,12 @@ static int environment_probe(struct device_d *dev)
 	if (ret)
 		return ret;
 
-	dev_info(dev, "setting default environment path to %s\n", path);
+	/* Do we need to mount a fs and find env there? */
+	ret = environment_check_mount(dev, &path);
+	if (ret)
+		return ret;
 
+	dev_dbg(dev, "Setting default environment path to %s\n", path);
 	default_environment_path_set(path);
 
 	return 0;
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
