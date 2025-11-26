Delivery-date: Wed, 26 Nov 2025 07:48:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vO9K2-004zSk-2g
	for lore@lore.pengutronix.de;
	Wed, 26 Nov 2025 07:48:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vO9K1-0003Ov-Jl
	for lore@pengutronix.de; Wed, 26 Nov 2025 07:48:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9a6qWEO5nR1nr/38Y7T5rkuDD99DkY4XBdjFt27uNI0=; b=SYxcUhwdaGd1nBAJqCYF4utYqI
	GGkiASFcnspoYjZa3eLHq5zsbpZtTP7WT88IY1HK3LK20SuMHdHaH7Eyx41iGLuO58REDiLtMYIJW
	rx6sembupTstKyiqx+F9KQBCI6OJ/oyzH+Wvxysp9KptifG+D2CD7TlmJBUG+I6upxx7NtMF4RDDB
	YkUkyThEyglowPnJgwJaWmisjWk3bLrp9I+ijwhYH64dYlLxnd9dC64avMDLl4+cn1ync9e3vT1ft
	nu89ZXSEDaxXs7r3VfX+2MGSbtcEuCMLns8hvVi0XmthK8i/qknBAYYCoH7EnE3WvAK5yAo12CYis
	zL7JcBoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vO9JV-0000000ESUS-0Kbl;
	Wed, 26 Nov 2025 06:47:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vO9JS-0000000EST6-42dY
	for barebox@lists.infradead.org;
	Wed, 26 Nov 2025 06:47:40 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1vO9JQ-0003Bf-Ly; Wed, 26 Nov 2025 07:47:36 +0100
From: Fabian Pflug <f.pflug@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Fabian Pflug <f.pflug@pengutronix.de>
Date: Wed, 26 Nov 2025 07:42:18 +0100
Message-ID: <20251126064710.3721039-4-f.pflug@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251126064710.3721039-1-f.pflug@pengutronix.de>
References: <29c84edc-9619-4524-a698-1edd3a60ac89@pengutronix.de>
 <20251126064710.3721039-1-f.pflug@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251125_224739_018872_DA55C581 
X-CRM114-Status: GOOD (  13.69  )
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
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 3/4] bootm: use new api to get kernel command line params
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Getting root device adn root kernel options seperatily any combining
them in this function instead of getting the full string from the helper
functions. This is in preperation for replacing the root= string in the
kernel commandline with something defined during runtime.

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
 common/bootm.c | 34 ++++++++++++++++++++--------------
 1 file changed, 20 insertions(+), 14 deletions(-)

diff --git a/common/bootm.c b/common/bootm.c
index 17792b2a1d..5d7dc00e3e 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -4,6 +4,7 @@
 #include <bootm.h>
 #include <bootm-overrides.h>
 #include <fs.h>
+#include <fcntl.h>
 #include <malloc.h>
 #include <memory.h>
 #include <block.h>
@@ -841,33 +842,38 @@ int bootm_boot(struct bootm_data *bootm_data)
 	}
 
 	if (bootm_data->appendroot) {
-		char *rootarg;
+		char *root;
+		char *rootopts;
 
 		if (bootm_data->root_dev) {
 			const char *root_dev_name = devpath_to_name(bootm_data->root_dev);
 			struct cdev *root_cdev = cdev_open_by_name(root_dev_name, O_RDONLY);
 
-			rootarg = cdev_get_linux_rootarg(root_cdev);
-			if (!rootarg) {
-				rootarg = ERR_PTR(-EINVAL);
-
-				if (!root_cdev)
-					pr_err("no cdev found for %s, cannot set root= option\n",
-						root_dev_name);
-				else if (!root_cdev->partuuid[0])
-					pr_err("%s doesn't have a PARTUUID, cannot set root= option\n",
-						root_dev_name);
-			}
+			cdev_get_linux_root_and_opts(root_cdev, &root, &rootopts);
 
 			if (root_cdev)
 				cdev_close(root_cdev);
+			else
+				pr_err("no cdev found for %s, cannot set root= option\n", root_dev_name);
 		} else {
-			rootarg = path_get_linux_rootarg(data->os_file);
+			struct fs_device *fsdev = get_fsdevice_by_path(AT_FDCWD, data->os_file);
+			if(fsdev)
+				fsdev_get_linux_root_options(fsdev, &root, &rootopts);
+			else
+				pr_err("no fsdevice under path: %s\n", data->os_file);
 		}
 
-		if (IS_ERR(rootarg)) {
+		if (!root) {
 			pr_err("Failed to append kernel cmdline parameter 'root='\n");
 		} else {
+			char *rootarg;
+			if(rootopts) {
+				rootarg = xasprintf("root=%s %s", root, rootopts);
+				free(rootopts);
+			} else {
+				rootarg = xasprintf("root=%s", root);
+			}
+			free(root);
 			pr_info("Adding \"%s\" to Kernel commandline\n", rootarg);
 			globalvar_add_simple("linux.bootargs.bootm.appendroot",
 					     rootarg);
-- 
2.47.3



