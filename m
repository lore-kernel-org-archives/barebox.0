Delivery-date: Wed, 10 Mar 2021 14:30:51 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJyvL-0001Uz-0p
	for lore@lore.pengutronix.de; Wed, 10 Mar 2021 14:30:51 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJyvF-0004dk-Er
	for lore@pengutronix.de; Wed, 10 Mar 2021 14:30:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gFM8BAz5+5pffQAdk7npl8UH+ipzWzPnKdZTjjTjR2E=; b=RGWDoV6oWzVh4CABn7BQgxTpe
	Bu52SYAa93YRhlA+HetBCky0g8Qr+eyqtqYcwb2n/eHeKDCayJ4niJxLJAEKtsr6xVpPxnd1MA+Ih
	5kwSelqZwbcVEfuMuvDb5fEz0BGfx14S5dO5kzMoFxG9N4+7FI6uSotjSlCZrHb4A0FsjzTiEYMb2
	79FTSqPBh7phV0gzdlsHcfmzfd+hTq2+NF8dR5aIxtt+gudPX5wS58gTvnOcX1Lbo3huo8LcNzTMA
	OLL8Fn2IRpc7zyb5hUR47/aaev47Aaa7fjnx/2k3n+Qm/smlIKr2F7XMLffX6yJBIh14akSQFmfzh
	VmUPpNP2Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJyty-006vES-4T; Wed, 10 Mar 2021 13:29:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJytA-006unV-0e
 for barebox@lists.infradead.org; Wed, 10 Mar 2021 13:28:41 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lJyt7-0003fs-UZ; Wed, 10 Mar 2021 14:28:33 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lJyt6-0006cH-M2; Wed, 10 Mar 2021 14:28:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 10 Mar 2021 14:28:23 +0100
Message-Id: <20210310132829.7662-12-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210310132829.7662-1-s.hauer@pengutronix.de>
References: <20210310132829.7662-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210310_132836_227430_8E1D58B9 
X-CRM114-Status: GOOD (  19.38  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 11/17] firmware: Load from global search path
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We have a global firmware search path, so use it. This removes the
path argument from of_firmware_load_overlay(). blspec already extends
the global firmware search path, so the path is not needed there.
The of_overlay command has an option for specifying the search path,
this is simply ignored from now on in favour for the global search path.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/of_overlay.c    | 13 +++++--------
 common/blspec.c          | 11 +----------
 drivers/of/of_firmware.c | 25 ++++---------------------
 include/of.h             |  4 ++--
 4 files changed, 12 insertions(+), 41 deletions(-)

diff --git a/commands/of_overlay.c b/commands/of_overlay.c
index 9a4c008efc..9b1cc6e8c7 100644
--- a/commands/of_overlay.c
+++ b/commands/of_overlay.c
@@ -16,13 +16,12 @@ static int do_of_overlay(int argc, char *argv[])
 	int opt, ret;
 	struct fdt_header *fdt;
 	struct device_node *overlay;
-	const char *search_path = NULL;
 	size_t size;
 
 	while ((opt = getopt(argc, argv, "S:")) > 0) {
 		switch (opt) {
 		case 'S':
-			search_path = optarg;
+			/* Ignore for compatibility */
 			break;
 		default:
 			return COMMAND_ERROR_USAGE;
@@ -43,11 +42,9 @@ static int do_of_overlay(int argc, char *argv[])
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
@@ -64,7 +61,7 @@ err:
 
 BAREBOX_CMD_HELP_START(of_overlay)
 BAREBOX_CMD_HELP_TEXT("Options:")
-BAREBOX_CMD_HELP_OPT("-S path", "load firmware using this search path")
+BAREBOX_CMD_HELP_OPT("-S path", "ignored")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(of_overlay)
diff --git a/common/blspec.c b/common/blspec.c
index 14e3238c0f..d771176a45 100644
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
index e43e225338..56291b9801 100644
--- a/include/of.h
+++ b/include/of.h
@@ -1033,7 +1033,7 @@ int of_process_overlay(struct device_node *root,
 				   struct device_node *overlay, void *data),
 		    void *data);
 
-int of_firmware_load_overlay(struct device_node *overlay, const char *path);
+int of_firmware_load_overlay(struct device_node *overlay);
 #else
 static inline struct device_node *of_resolve_phandles(struct device_node *root,
 					const struct device_node *overlay)
@@ -1067,7 +1067,7 @@ static inline int of_process_overlay(struct device_node *root,
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

