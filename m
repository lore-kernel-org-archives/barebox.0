Delivery-date: Wed, 23 Jun 2021 07:20:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvvJC-0005LW-I0
	for lore@lore.pengutronix.de; Wed, 23 Jun 2021 07:20:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvvJA-0008Dm-Mv
	for lore@pengutronix.de; Wed, 23 Jun 2021 07:20:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p7DzIJ5RXDbsedU6+bOGjqVf/UEpfJx7WQJKbuhP3D0=; b=XwOK5V22Lar7Bb
	dBJPtOYbqEDRvId1jkM3U5aIH5ALVXkHNog5fcTxuQjR1fez+K341LgrU+zWYHzOBVD+4tlOuY4iG
	gZ/0JtP55VNf/UiAZQ5TXaayF/ofuikGXamZyhnjvwuE6GKx5Kh+C6zVjKMDmplP81hxiDdUr5m7T
	PAwEEFV7qdLpLnWX5NXrZdOEC0uyQAh8JtMI30iYhRLt715V+edeyITpZBc9B457RGtjqcXRwO+Go
	OWj/rzK4vcyQiU3Szi8vDrI5HFvUJgyov8FY8N3Vag9XyLvXFQKWA61BNTkVkMocOYsbYhpSwwEcg
	dVFhM+w70wst8qgI6KSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvvHl-009NhD-N0; Wed, 23 Jun 2021 05:18:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvvG1-009McJ-Cf
 for barebox@lists.infradead.org; Wed, 23 Jun 2021 05:17:02 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvvFc-0006rM-4V; Wed, 23 Jun 2021 07:16:36 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvvFa-0000UP-V2; Wed, 23 Jun 2021 07:16:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 23 Jun 2021 07:16:26 +0200
Message-Id: <20210623051632.30253-12-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210623051632.30253-1-s.hauer@pengutronix.de>
References: <20210623051632.30253-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210622_221701_454653_BE4EA98C 
X-CRM114-Status: GOOD (  19.80  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 11/17] firmware: Load from global search path
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We have a global firmware search path, so use it. This removes the
path argument from of_firmware_load_overlay(). blspec already extends
the global firmware search path, so the path is not needed there.
The of_overlay command has an option for specifying the search path,
this is removed here, the global search path has to be used instead.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/of_overlay.c    | 31 ++++++-------------------------
 common/blspec.c          | 11 +----------
 drivers/of/of_firmware.c | 25 ++++---------------------
 include/of.h             |  4 ++--
 4 files changed, 13 insertions(+), 58 deletions(-)

diff --git a/commands/of_overlay.c b/commands/of_overlay.c
index 9a4c008efc..71f41a3c04 100644
--- a/commands/of_overlay.c
+++ b/commands/of_overlay.c
@@ -13,23 +13,12 @@
 
 static int do_of_overlay(int argc, char *argv[])
 {
-	int opt, ret;
+	int ret;
 	struct fdt_header *fdt;
 	struct device_node *overlay;
-	const char *search_path = NULL;
 	size_t size;
 
-	while ((opt = getopt(argc, argv, "S:")) > 0) {
-		switch (opt) {
-		case 'S':
-			search_path = optarg;
-			break;
-		default:
-			return COMMAND_ERROR_USAGE;
-		}
-	}
-
-	if (argc != optind + 1)
+	if (argc != 2)
 		return COMMAND_ERROR_USAGE;
 
 	fdt = read_file(argv[optind], &size);
@@ -43,11 +32,9 @@ static int do_of_overlay(int argc, char *argv[])
 	if (IS_ERR(overlay))
 		return PTR_ERR(overlay);
 
-	if (search_path) {
-		ret = of_firmware_load_overlay(overlay, search_path);
-		if (ret)
-			goto err;
-	}
+	ret = of_firmware_load_overlay(overlay);
+	if (ret)
+		goto err;
 
 	ret = of_register_overlay(overlay);
 	if (ret) {
@@ -62,15 +49,9 @@ err:
 	return ret;
 }
 
-BAREBOX_CMD_HELP_START(of_overlay)
-BAREBOX_CMD_HELP_TEXT("Options:")
-BAREBOX_CMD_HELP_OPT("-S path", "load firmware using this search path")
-BAREBOX_CMD_HELP_END
-
 BAREBOX_CMD_START(of_overlay)
 	.cmd = do_of_overlay,
 	BAREBOX_CMD_DESC("register device tree overlay as fixup")
-	BAREBOX_CMD_OPTS("[-S path] FILE")
+	BAREBOX_CMD_OPTS("FILE")
 	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
-	BAREBOX_CMD_HELP(cmd_of_overlay_help)
 BAREBOX_CMD_END
diff --git a/common/blspec.c b/common/blspec.c
index c39805cb0b..148e52b038 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -39,7 +39,6 @@ static int blspec_apply_oftree_overlay(char *file, const char *abspath,
 	struct fdt_header *fdt;
 	struct device_node *overlay;
 	char *path;
-	char *firmware_path;
 	size_t size;
 
 	path = basprintf("%s/%s", abspath, file);
@@ -64,15 +63,7 @@ static int blspec_apply_oftree_overlay(char *file, const char *abspath,
 		goto out;
 	}
 
-	/*
-	 * Unfortunately the device tree overlay contains only the filename of
-	 * the firmware and relies on the firmware search paths to find the
-	 * actual file. Use /lib/firmware in the Linux root directory and hope
-	 * for the best.
-	 */
-	firmware_path = basprintf("%s/%s", abspath, "/lib/firmware");
-	ret = of_firmware_load_overlay(overlay, firmware_path);
-	free(firmware_path);
+	ret = of_firmware_load_overlay(overlay);
 	if (ret) {
 		pr_warn("failed to load firmware: skip overlay \"%s\"\n", path);
 		of_delete_node(overlay);
diff --git a/drivers/of/of_firmware.c b/drivers/of/of_firmware.c
index 096f84572e..12ce1d95d0 100644
--- a/drivers/of/of_firmware.c
+++ b/drivers/of/of_firmware.c
@@ -6,10 +6,6 @@
 #include <firmware.h>
 #include <of.h>
 
-struct overlay_info {
-	const char *firmware_path;
-};
-
 static struct firmware_mgr *of_node_get_mgr(struct device_node *np)
 {
 	struct device_node *mgr_node;
@@ -26,12 +22,9 @@ static struct firmware_mgr *of_node_get_mgr(struct device_node *np)
 }
 
 static int load_firmware(struct device_node *target,
-			 struct device_node *fragment, void *data)
+			 struct device_node *fragment, void *unused)
 {
-	struct overlay_info *info = data;
 	const char *firmware_name;
-	const char *firmware_path = info->firmware_path;
-	char *firmware;
 	int err;
 	struct firmware_mgr *mgr;
 
@@ -50,22 +43,13 @@ static int load_firmware(struct device_node *target,
 	if (!mgr)
 		return -EINVAL;
 
-	firmware = basprintf("%s/%s", firmware_path, firmware_name);
-	if (!firmware)
-		return -ENOMEM;
-
-	err = firmwaremgr_load_file(mgr, firmware);
-
-	free(firmware);
+	err = firmwaremgr_load_file(mgr, firmware_name);
 
 	return err;
 }
 
-int of_firmware_load_overlay(struct device_node *overlay, const char *path)
+int of_firmware_load_overlay(struct device_node *overlay)
 {
-	struct overlay_info info = {
-		.firmware_path = path,
-	};
 	int err;
 	struct device_node *root;
 	struct device_node *resolved;
@@ -81,8 +65,7 @@ int of_firmware_load_overlay(struct device_node *overlay, const char *path)
 	 */
 	ovl = resolved ? resolved : overlay;
 
-	err = of_process_overlay(root, ovl,
-				 load_firmware, &info);
+	err = of_process_overlay(root, ovl, load_firmware, NULL);
 
 	if (resolved)
 		of_delete_node(resolved);
diff --git a/include/of.h b/include/of.h
index c58d8de600..3817fd3a9f 100644
--- a/include/of.h
+++ b/include/of.h
@@ -1034,7 +1034,7 @@ int of_process_overlay(struct device_node *root,
 				   struct device_node *overlay, void *data),
 		    void *data);
 
-int of_firmware_load_overlay(struct device_node *overlay, const char *path);
+int of_firmware_load_overlay(struct device_node *overlay);
 #else
 static inline struct device_node *of_resolve_phandles(struct device_node *root,
 					const struct device_node *overlay)
@@ -1068,7 +1068,7 @@ static inline int of_process_overlay(struct device_node *root,
 	return -ENOSYS;
 }
 
-static inline int of_firmware_load_overlay(struct device_node *overlay, const char *path)
+static inline int of_firmware_load_overlay(struct device_node *overlay)
 {
 	return -ENOSYS;
 }
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

