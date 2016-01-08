Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x231.google.com ([2a00:1450:400c:c09::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aHX22-0005nG-A2
 for barebox@lists.infradead.org; Fri, 08 Jan 2016 13:24:43 +0000
Received: by mail-wm0-x231.google.com with SMTP id f206so134929948wmf.0
 for <barebox@lists.infradead.org>; Fri, 08 Jan 2016 05:24:21 -0800 (PST)
From: yegorslists@googlemail.com
Date: Fri,  8 Jan 2016 14:24:07 +0100
Message-Id: <1452259447-32006-1-git-send-email-yegorslists@googlemail.com>
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
Subject: [PATCH] FIT: make RSA signature verification configurable
To: barebox@lists.infradead.org

From: Yegor Yefremov <yegorslists@googlemail.com>

Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
---
 commands/Kconfig   | 10 ++++++++++
 common/image-fit.c | 15 +++++++++++++--
 2 files changed, 23 insertions(+), 2 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index 3e4a32a..2fe37b9 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -428,6 +428,16 @@ config CMD_BOOTM_FITIMAGE
 	  tree in the "doc/uImage.FIT" folder for more information:
 	  http://git.denx.de/?p=u-boot.git;a=tree;f=doc/uImage.FIT
 
+config CMD_BOOTM_FITIMAGE_SIGNATURE
+	bool
+	prompt "Enable signature verification of FIT images"
+	depends on CMD_BOOTM_FITIMAGE
+	help
+	  This option enables signature verification of FIT uImages,
+	  using a hash signed and verified using RSA. If
+	  CONFIG_SHA_PROG_HW_ACCEL is defined, i.e support for progressive
+	  hashing is available using hardware, RSA library will use it.
+
 config CMD_BOOTU
 	tristate
 	default y
diff --git a/common/image-fit.c b/common/image-fit.c
index 296285b..96cc3e2 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -40,6 +40,7 @@
 #define CHECK_LEVEL_SIG 2
 #define CHECK_LEVEL_MAX 3
 
+#ifdef CONFIG_CMD_BOOTM_FITIMAGE_SIGNATURE
 static uint32_t dt_struct_advance(struct fdt_header *f, uint32_t dt, int size)
 {
 	dt += size;
@@ -342,6 +343,7 @@ static int fit_verify_signature(struct device_node *sig_node, void *fit)
  out:
 	return ret;
 }
+#endif
 
 static int fit_verify_hash(struct device_node *hash, const void *data, int data_len)
 {
@@ -453,10 +455,13 @@ static int fit_open_image(struct fit_handle *handle, const char* unit)
 
 static int fit_open_configuration(struct fit_handle *handle, int num)
 {
-	struct device_node *conf_node = NULL, *sig_node;
+	struct device_node *conf_node = NULL;
 	char unit_name[10];
 	const char *unit, *desc;
-	int ret, level;
+	int level;
+#ifdef CONFIG_CMD_BOOTM_FITIMAGE_SIGNATURE
+	struct device_node *sig_node;
+#endif
 
 	conf_node = of_get_child_by_name(handle->root, "configurations");
 	if (!conf_node)
@@ -482,7 +487,10 @@ static int fit_open_configuration(struct fit_handle *handle, int num)
 	}
 
 	level = CHECK_LEVEL_MAX;
+
+#ifdef CONFIG_CMD_BOOTM_FITIMAGE_SIGNATURE
 	for_each_child_of_node(conf_node, sig_node) {
+		int ret;
 		if (handle->verbose)
 			of_print_nodes(sig_node, 0);
 		ret = fit_verify_signature(sig_node, handle->fit);
@@ -495,6 +503,9 @@ static int fit_open_configuration(struct fit_handle *handle, int num)
 
 	if (level != CHECK_LEVEL_SIG)
 		return -EINVAL;
+#else
+	level = CHECK_LEVEL_SIG;
+#endif
 
 	if (of_property_read_string(conf_node, "kernel", &unit) == 0)
 		level = min(level, fit_open_image(handle, unit));
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
