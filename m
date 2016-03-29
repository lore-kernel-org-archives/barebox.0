Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1akpMl-000657-F3
 for barebox@lists.infradead.org; Tue, 29 Mar 2016 08:51:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 29 Mar 2016 10:50:48 +0200
Message-Id: <1459241448-16598-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] bbu: print and evaluate image Metadata
To: Barebox List <barebox@lists.infradead.org>

With imd we can store metadata in barebox images. Let's use this
information to further verify that the image that is to be flashed
is the correct one. This patch extracts the device tree compatible
from the image and compares it with the one from the currently
running barebox. If it doesn't match the update is aborted with a
warning.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/bbu.c  | 73 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/bbu.h |  1 +
 2 files changed, 74 insertions(+)

diff --git a/common/bbu.c b/common/bbu.c
index 68812a7..b49fbe6 100644
--- a/common/bbu.c
+++ b/common/bbu.c
@@ -26,6 +26,7 @@
 #include <fcntl.h>
 #include <malloc.h>
 #include <linux/stat.h>
+#include <image-metadata.h>
 
 static LIST_HEAD(bbu_image_handlers);
 
@@ -125,6 +126,76 @@ bool barebox_update_handler_exists(struct bbu_data *data)
 	return !bbu_find_handler(data->handler_name);
 }
 
+static int bbu_check_of_compat(struct bbu_data *data)
+{
+	struct device_node *root_node;
+	const char *machine, *str;
+	int ret;
+	struct imd_header *of_compat;
+
+	if (!IS_ENABLED(CONFIG_OFDEVICE) || !IS_ENABLED(CONFIG_IMD))
+		return 0;
+
+	of_compat = imd_find_type(data->imd_data, IMD_TYPE_OF_COMPATIBLE);
+	if (!of_compat)
+		return 0;
+
+	root_node = of_get_root_node();
+	if (!root_node)
+		return 0;
+
+	str = imd_string_data(of_compat, 0);
+
+	if (of_machine_is_compatible(str)) {
+		pr_info("Devicetree compatible \"%s\" matches current machine\n", str);
+		return 0;
+	}
+
+	ret = of_property_read_string(root_node, "compatible", &machine);
+	if (ret)
+		return 0;
+
+	if (!bbu_force(data, "machine is incompatible with \"%s\", have \"%s\"\n", str, machine))
+		return -EINVAL;
+
+	return 0;
+}
+
+static int bbu_check_metadata(struct bbu_data *data)
+{
+	struct imd_header *imd;
+	int ret;
+	char *str;
+
+	if (!data->image)
+		return 0;
+
+	data->imd_data = imd_get(data->image, data->len);
+	if (IS_ERR(data->imd_data)) {
+		data->imd_data = NULL;
+		return 0;
+	}
+
+	printf("Image Metadata:\n");
+	imd_for_each(data->imd_data, imd) {
+		uint32_t type = imd_read_type(imd);
+
+		if (!imd_is_string(type))
+			continue;
+
+		str = imd_concat_strings(imd);
+
+		printf("  %s: %s\n", imd_type_to_name(type), str);
+		free(str);
+	}
+
+	ret = bbu_check_of_compat(data);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
 /*
  * do a barebox update with data from *data
  */
@@ -147,6 +218,8 @@ int barebox_update(struct bbu_data *data)
 	if (!data->devicefile)
 		data->devicefile = handler->devicefile;
 
+	bbu_check_metadata(data);
+
 	ret = handler->handler(handler, data);
 	if (ret == -EINTR)
 		printf("update aborted\n");
diff --git a/include/bbu.h b/include/bbu.h
index 0fe7a1a..701d7f6 100644
--- a/include/bbu.h
+++ b/include/bbu.h
@@ -16,6 +16,7 @@ struct bbu_data {
 	const char *devicefile;
 	size_t len;
 	const char *handler_name;
+	struct imd_header *imd_data;
 };
 
 struct bbu_handler {
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
