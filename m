Delivery-date: Thu, 27 Nov 2025 15:31:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOd2B-005SIX-2z
	for lore@lore.pengutronix.de;
	Thu, 27 Nov 2025 15:31:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOd2B-000403-Aw
	for lore@pengutronix.de; Thu, 27 Nov 2025 15:31:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3Snn4u1F+KULjsznYHWA6rCRASz3thQeuuMpMqPihpU=; b=kGvIS0GzX1p4ssjV7GnyPdsgxS
	XR/a3CGv7WWZLkdVAgyMHHpn4BYxlgZVUzmUJbFGh8EF+1peVGCjl8wxpmTdEJWxCkiGYncn0YP2A
	8Bs+zVC7ILyB+9S5J5RNL1Oc5ezfAS924m1xUJovE0Ne5fpoX6E9T9lQuD8lnz4ehX35DUeJ+3wET
	bDNOaukhr8Qf/yP8u+ZHk/qeXxFKVFWsYBNnNzGJfsTcnWK2ujZirCw/7fSWej55BosSjjCqmlIKW
	c0jLlO8Lj35E7/oCwUWBbGYReDYKk8FxMXrafbCVA/rBJnHHcxFbRBT12KjSGwDKjC0df7hXlYZRm
	1hlg0xaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOd1e-0000000Gmlp-1hhf;
	Thu, 27 Nov 2025 14:31:14 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOd1c-0000000Gmji-1mGK
	for barebox@bombadil.infradead.org;
	Thu, 27 Nov 2025 14:31:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=3Snn4u1F+KULjsznYHWA6rCRASz3thQeuuMpMqPihpU=; b=Z4ECK6EKax+dOr7+HM26QE5yZX
	1ZmtYP6x2a6A454T3JhJ1JHvspQ5OFAJolVx7LIDSeiYbYAN62pP4GlRERT0fBudbucWxgegLZBmZ
	B65rSxEspMBmuKnJAn5Re9Am54LUXnyRoJRc8Ck7gaPcGVLfy6HpQuCgRwCXj5aj/kFeNPpa2CvAE
	fvYgDb2rdAKxXoImgdk68ST4XP4CpmJ1d/RiWzgdkVlDJQcHEFNQBGjdfgHFs2AMnGzIIThMPZbJS
	mpnPnmYibwVmF/BW2D5hQyoOZddJy0yJ2C0v3WP2ZcapfwgNZYeudZOsa3uUjFarxIDi01gNLHu9Q
	uogKf1UA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOc9y-0000000AGti-3JRf
	for barebox@lists.infradead.org;
	Thu, 27 Nov 2025 13:35:49 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1vOd1W-0003i7-5j; Thu, 27 Nov 2025 15:31:06 +0100
From: Fabian Pflug <f.pflug@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Fabian Pflug <f.pflug@pengutronix.de>
Date: Thu, 27 Nov 2025 15:25:23 +0100
Message-ID: <20251127143052.3114915-4-f.pflug@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251127143052.3114915-1-f.pflug@pengutronix.de>
References: <20251127105824.3560951-1-f.pflug@pengutronix.de>
 <20251127143052.3114915-1-f.pflug@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251127_133547_021105_B3C4EE58 
X-CRM114-Status: GOOD (  13.04  )
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
Subject: [PATCH v3 3/4] bootm: use new api to get kernel command line params
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Getting root device adn root kernel options seperatily any combining
them in this function instead of getting the full string from the helper
functions. This is in preperation for replacing the root= string in the
kernel commandline with something defined during runtime.

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
 common/bootm.c | 28 ++++++++++++++++++----------
 1 file changed, 18 insertions(+), 10 deletions(-)

diff --git a/common/bootm.c b/common/bootm.c
index 17792b2a1d..8efe3426fe 100644
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
@@ -841,33 +843,39 @@ int bootm_boot(struct bootm_data *bootm_data)
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
-					pr_err("no cdev found for %s, cannot set root= option\n",
-						root_dev_name);
+					pr_err("no cdev found for %s, cannot set root= option\n", root_dev_name);
 				else if (!root_cdev->partuuid[0])
-					pr_err("%s doesn't have a PARTUUID, cannot set root= option\n",
-						root_dev_name);
+					pr_err("%s doesn't have a PARTUUID, cannot set root= option\n", root_dev_name);
+				else
+					pr_err("could not determine root= from %s\n", root_dev_name);
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
-- 
2.47.3



