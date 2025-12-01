Delivery-date: Mon, 01 Dec 2025 08:25:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vPyIE-006jnn-0N
	for lore@lore.pengutronix.de;
	Mon, 01 Dec 2025 08:25:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vPyID-0004D4-Bt
	for lore@pengutronix.de; Mon, 01 Dec 2025 08:25:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iUI6pSRP2EwXE6y0kEBwvmyhyLcDZWc4tl+b7ijseDQ=; b=aEedjf09Rj50g77LWIWhX5QH7H
	NdBbZ8nH6O1bVr5CRijgdJ00iKiP8LDQ+hdEGzhpzBgQE6pGShrbt72Ci63cPsKLyDDckHMHB5Ssl
	dP0ZEI9aotTEt+Wcy3q1bOD2sns5u4pv+wrn+cH7/mWn8AAXgKOFxRB66xpOZezqWVyDi9btVLeyp
	oKLpZq3KGLoV1X+kdq4vxwXMIy4fjcH2KdZYYpdIY2pAH/Dzd6E7Ok4Nb7Xw9Ncb8ddR/E+q+5PPp
	1HHvdOHpMbEIJtV9lFTI98pQU4PoHZoX0f5ALGumHJxhF3WJqKxOzbtwbOKkGzNqwLDtyGFiNtAXf
	KWRAoJVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vPyHc-0000000332s-2CqN;
	Mon, 01 Dec 2025 07:25:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vPyHW-0000000330T-3wkB
	for barebox@lists.infradead.org;
	Mon, 01 Dec 2025 07:25:13 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1vPyHS-0003y9-KQ; Mon, 01 Dec 2025 08:25:06 +0100
From: Fabian Pflug <f.pflug@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Fabian Pflug <f.pflug@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  1 Dec 2025 08:20:59 +0100
Message-ID: <20251201072452.1829564-4-f.pflug@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251201072452.1829564-1-f.pflug@pengutronix.de>
References: <20251128150434.3842713-1-f.pflug@pengutronix.de>
 <20251201072452.1829564-1-f.pflug@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251130_232510_975903_135006BD 
X-CRM114-Status: GOOD (  15.18  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v5 3/4] bootm: use new api to get kernel command line params
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Getting root device and root kernel options seperatly and combining
them in this function instead of getting the full string from the helper
functions. This is in preparation for replacing the root= string in the
kernel commandline with something defined during runtime.

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/bootm.c | 23 +++++++++++++++++------
 fs/fs.c        | 26 --------------------------
 include/fs.h   |  1 -
 3 files changed, 17 insertions(+), 33 deletions(-)

diff --git a/common/bootm.c b/common/bootm.c
index 17792b2a1d..adc76eba64 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -1,9 +1,11 @@
 // SPDX-License-Identifier: GPL-2.0-or-later
 
 #include <common.h>
+#include <bootargs.h>
 #include <bootm.h>
 #include <bootm-overrides.h>
 #include <fs.h>
+#include <fcntl.h>
 #include <malloc.h>
 #include <memory.h>
 #include <block.h>
@@ -841,33 +843,42 @@ int bootm_boot(struct bootm_data *bootm_data)
 	}
 
 	if (bootm_data->appendroot) {
-		char *rootarg;
+		char *root = NULL;
+		char *rootopts = NULL;
 
 		if (bootm_data->root_dev) {
 			const char *root_dev_name = devpath_to_name(bootm_data->root_dev);
 			struct cdev *root_cdev = cdev_open_by_name(root_dev_name, O_RDONLY);
 
-			rootarg = cdev_get_linux_rootarg(root_cdev);
-			if (!rootarg) {
-				rootarg = ERR_PTR(-EINVAL);
+			ret = cdev_get_linux_root_and_opts(root_cdev, &root, &rootopts);
 
+			if (ret) {
 				if (!root_cdev)
 					pr_err("no cdev found for %s, cannot set root= option\n",
 						root_dev_name);
 				else if (!root_cdev->partuuid[0])
 					pr_err("%s doesn't have a PARTUUID, cannot set root= option\n",
 						root_dev_name);
+				else
+					pr_err("could not determine root= from %s\n",
+						root_dev_name);
 			}
 
 			if (root_cdev)
 				cdev_close(root_cdev);
 		} else {
-			rootarg = path_get_linux_rootarg(data->os_file);
+			struct fs_device *fsdev = get_fsdevice_by_path(AT_FDCWD, data->os_file);
+			if (fsdev)
+				fsdev_get_linux_root_options(fsdev, &root, &rootopts);
+			else
+				pr_err("no fsdevice under path: %s\n", data->os_file);
 		}
 
-		if (IS_ERR(rootarg)) {
+		if (!root) {
 			pr_err("Failed to append kernel cmdline parameter 'root='\n");
 		} else {
+			char *rootarg;
+			rootarg = format_root_bootarg("root", root, rootopts);
 			pr_info("Adding \"%s\" to Kernel commandline\n", rootarg);
 			globalvar_add_simple("linux.bootargs.bootm.appendroot",
 					     rootarg);
diff --git a/fs/fs.c b/fs/fs.c
index 0f27879395..ae6a776b2b 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -1257,32 +1257,6 @@ char *format_root_bootarg(const char *root_arg, char *root, char *rootopts) {
 	return bootarg;
 }
 
-/**
- * path_get_linux_rootarg() - Given a path return a suitable root= option for
- *                            Linux
- * @path: The path
- *
- * Return: A string containing the root= option or an ERR_PTR. the returned
- *         string must be freed by the caller.
- */
-char *path_get_linux_rootarg(const char *path)
-{
-	struct fs_device *fsdev;
-	char *root = NULL;
-	char *rootopts = NULL;
-
-	fsdev = get_fsdevice_by_path(AT_FDCWD, path);
-	if (!fsdev)
-		return ERR_PTR(-ENOSYS);
-
-	fsdev_get_linux_root_options(fsdev, &root, &rootopts);
-
-	if (!root)
-		return ERR_PTR(-ENOSYS);
-
-	return format_root_bootarg("root", root, rootopts);
-}
-
 /**
  * __is_tftp_fs() - return true when path is mounted on TFTP
  * @path: The path
diff --git a/include/fs.h b/include/fs.h
index c50437d609..ddd93e93ec 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -162,7 +162,6 @@ void mount_all(void);
 
 void fsdev_set_linux_root_options(struct fs_device *fsdev, const char *root, const char* rootopts);
 void fsdev_get_linux_root_options(struct fs_device *fsdev, char **root, char **rootopts);
-char *path_get_linux_rootarg(const char *path);
 
 static inline const char *devpath_to_name(const char *devpath)
 {
-- 
2.47.3



