Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8lPc-0004oe-Kb
 for barebox@lists.infradead.org; Fri, 13 Sep 2019 13:14:58 +0000
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Fri, 13 Sep 2019 15:14:44 +0200
Message-Id: <20190913131446.8202-7-m.tretter@pengutronix.de>
In-Reply-To: <20190913131446.8202-1-m.tretter@pengutronix.de>
References: <20190913131446.8202-1-m.tretter@pengutronix.de>
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
Subject: [PATCH v3 6/8] blspec: load firmware if specified in dt overlay
To: barebox@lists.infradead.org
Cc: Michael Tretter <m.tretter@pengutronix.de>

If a device tree overlay referenced by the blspec depends on firmware,
try to load the firmware from the default Linux firmware search path
/lib/firmware in the about to be started rootfs.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>

---
Changelog:

v2->v3:
- fix name of of_firmware_load_overlay()
- print warning if loading firmware fails

v1->v2: none
---
 common/blspec.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/common/blspec.c b/common/blspec.c
index fbba2fc78c..7c27e0b869 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -14,6 +14,7 @@
 
 #include <environment.h>
 #include <globalvar.h>
+#include <firmware.h>
 #include <readkey.h>
 #include <common.h>
 #include <driver.h>
@@ -49,6 +50,7 @@ static int blspec_apply_oftree_overlay(char *file, const char *abspath,
 	struct fdt_header *fdt;
 	struct device_node *overlay;
 	char *path;
+	char *firmware_path;
 
 	path = basprintf("%s/%s", abspath, file);
 
@@ -72,6 +74,21 @@ static int blspec_apply_oftree_overlay(char *file, const char *abspath,
 		goto out;
 	}
 
+	/*
+	 * Unfortunately the device tree overlay contains only the filename of
+	 * the firmware and relies on the firmware search paths to find the
+	 * actual file. Use /lib/firmware in the Linux root directory and hope
+	 * for the best.
+	 */
+	firmware_path = basprintf("%s/%s", abspath, "/lib/firmware");
+	ret = of_firmware_load_overlay(overlay, firmware_path);
+	free(firmware_path);
+	if (ret) {
+		pr_warn("failed to load firmware: skip overlay \"%s\"\n", path);
+		of_delete_node(overlay);
+		goto out;
+	}
+
 	ret = of_register_overlay(overlay);
 	if (ret) {
 		pr_warn("cannot register devicetree overlay \"%s\"\n", path);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
