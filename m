Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x244.google.com ([2a00:1450:400c:c09::244])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aIXYB-0004rb-1R
 for barebox@lists.infradead.org; Mon, 11 Jan 2016 08:10:04 +0000
Received: by mail-wm0-x244.google.com with SMTP id l65so25075593wmf.3
 for <barebox@lists.infradead.org>; Mon, 11 Jan 2016 00:09:42 -0800 (PST)
From: yegorslists@googlemail.com
Date: Mon, 11 Jan 2016 09:09:25 +0100
Message-Id: <1452499765-14013-1-git-send-email-yegorslists@googlemail.com>
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
Subject: [PATCH v2] FIT: make RSA signature verification configurable
To: barebox@lists.infradead.org

From: Yegor Yefremov <yegorslists@googlemail.com>

Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
---
Changes:
	v2: get rid of #ifdefs, modify option description

 commands/Kconfig   | 10 ++++++++++
 common/image-fit.c | 32 +++++++++++++++++++-------------
 2 files changed, 29 insertions(+), 13 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index 3e4a32a..e2e3127 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -428,6 +428,16 @@ config CMD_BOOTM_FITIMAGE
 	  tree in the "doc/uImage.FIT" folder for more information:
 	  http://git.denx.de/?p=u-boot.git;a=tree;f=doc/uImage.FIT
 
+config CMD_BOOTM_FITIMAGE_SIGNATURE
+	bool
+	prompt "Make signature verification mandatory"
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
index 296285b..f943081 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -456,7 +456,7 @@ static int fit_open_configuration(struct fit_handle *handle, int num)
 	struct device_node *conf_node = NULL, *sig_node;
 	char unit_name[10];
 	const char *unit, *desc;
-	int ret, level;
+	int level;
 
 	conf_node = of_get_child_by_name(handle->root, "configurations");
 	if (!conf_node)
@@ -482,19 +482,25 @@ static int fit_open_configuration(struct fit_handle *handle, int num)
 	}
 
 	level = CHECK_LEVEL_MAX;
-	for_each_child_of_node(conf_node, sig_node) {
-		if (handle->verbose)
-			of_print_nodes(sig_node, 0);
-		ret = fit_verify_signature(sig_node, handle->fit);
-		if (ret < 0)
-			return ret;
-		level = min(level, ret);
-	}
-	if (level == CHECK_LEVEL_MAX)
-		return -EINVAL;
 
-	if (level != CHECK_LEVEL_SIG)
-		return -EINVAL;
+	if (IS_ENABLED(CONFIG_CMD_BOOTM_FITIMAGE_SIGNATURE)) {
+		for_each_child_of_node(conf_node, sig_node) {
+			int ret;
+			if (handle->verbose)
+				of_print_nodes(sig_node, 0);
+			ret = fit_verify_signature(sig_node, handle->fit);
+			if (ret < 0)
+				return ret;
+			level = min(level, ret);
+		}
+		if (level == CHECK_LEVEL_MAX)
+			return -EINVAL;
+
+		if (level != CHECK_LEVEL_SIG)
+			return -EINVAL;
+	} else {
+		level = CHECK_LEVEL_SIG;
+	}
 
 	if (of_property_read_string(conf_node, "kernel", &unit) == 0)
 		level = min(level, fit_open_image(handle, unit));
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
