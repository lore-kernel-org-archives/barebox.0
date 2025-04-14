Delivery-date: Mon, 14 Apr 2025 08:32:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4DNG-000X0X-0J
	for lore@lore.pengutronix.de;
	Mon, 14 Apr 2025 08:32:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4DNF-0001SV-DW
	for lore@pengutronix.de; Mon, 14 Apr 2025 08:32:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7tjVKNSmQzKKlzyLmFqMVH6aa7ct1nAyhsSYjLK3q+o=; b=RONhVizH9jn52Kq9uHjfLLd9ok
	K/57GbbYnqvUJHumPyaBuRk8waQpu/iflPpsbaubKXdK1oPTBrfJZdorZipLCRg5LoT1Nk1INNpl3
	KVXOmhNg0I5mf4MsUyOlhD5hiBeVryQVkJfTjCXN1Lf6Vm21e2DE747kCtd3klCM4T6lLxRxbsX8S
	2dObeKIyWqYUSFGm81OVjAl83oQT38ZN5ncF+NrESAq0O5luhHmu/YPRsYVaSXP38ASQZ2eGqwhcu
	zRjhcn2cFWJSAVgNo0XPh6T1TEsFeTI+e+ZAQBqguUvFcfOm6Givt/3RtcPGadqVp0/xZqdWJKIcJ
	pvm7K/zQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4DMl-00000000nzF-0wTa;
	Mon, 14 Apr 2025 06:32:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4DMR-00000000nsQ-0MiZ
	for barebox@lists.infradead.org;
	Mon, 14 Apr 2025 06:32:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4DMH-0000l1-NI; Mon, 14 Apr 2025 08:31:53 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4DMH-000ChZ-1g;
	Mon, 14 Apr 2025 08:31:53 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4DMH-00BUi8-1M;
	Mon, 14 Apr 2025 08:31:53 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Apr 2025 08:31:37 +0200
Message-Id: <20250414063152.2736649-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250414063152.2736649-1-a.fatoum@pengutronix.de>
References: <20250414063152.2736649-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250413_233203_129023_6416AAC7 
X-CRM114-Status: GOOD (  15.71  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 03/18] partition: efi: respect DPS_TYPE_FLAG_NO_AUTO flag
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

The DPS_TYPE_FLAG_NO_AUTO flag indicates that a partition should not be
automatically discovered by type UUID if not directly referenced.

We do auto discovery for barebox env and sate using
cdev_find_child_by_gpt_typeuuid, so teach it to respect that flag.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/blspec.c    |  4 ++--
 common/bootscan.c  | 11 +++++++++--
 fs/devfs-core.c    | 11 +++++++++--
 include/bootscan.h |  5 ++++-
 4 files changed, 24 insertions(+), 7 deletions(-)

diff --git a/common/blspec.c b/common/blspec.c
index 5223ac30f8a5..59fa40c9ff50 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -511,7 +511,7 @@ static int blspec_scan_disk(struct bootscanner *scanner,
 		 * should be used as $BOOT
 		 */
 		if (cdev_is_mbr_partitioned(cdev) && partcdev->dos_partition_type == 0xea) {
-			ret = boot_scan_cdev(scanner, bootentries, partcdev);
+			ret = boot_scan_cdev(scanner, bootentries, partcdev, true);
 			if (ret == 0)
 				ret = -ENOENT;
 
@@ -560,7 +560,7 @@ static int blspec_scan_device(struct bootscanner *scanner,
 	 * by the bootblspec spec).
 	 */
 	list_for_each_entry(cdev, &dev->cdevs, devices_list) {
-		ret = boot_scan_cdev(scanner, bootentries, cdev);
+		ret = boot_scan_cdev(scanner, bootentries, cdev, true);
 		if (ret > 0)
 			found += ret;
 	}
diff --git a/common/bootscan.c b/common/bootscan.c
index 222498c609a4..813d6d242a08 100644
--- a/common/bootscan.c
+++ b/common/bootscan.c
@@ -8,6 +8,7 @@
 #include <linux/stat.h>
 #include <linux/err.h>
 #include <mtd/ubi-user.h>
+#include <uapi/spec/dps.h>
 
 #include <bootscan.h>
 
@@ -80,7 +81,8 @@ static int boot_scan_ubi(struct bootscanner *scanner,
  * error occurred.
  */
 int boot_scan_cdev(struct bootscanner *scanner,
-		   struct bootentries *bootentries, struct cdev *cdev)
+		   struct bootentries *bootentries, struct cdev *cdev,
+		   bool autodiscover)
 {
 	int ret, found = 0;
 	void *buf = xzalloc(512);
@@ -89,6 +91,11 @@ int boot_scan_cdev(struct bootscanner *scanner,
 
 	pr_debug("%s(%s): %s\n", __func__, scanner->name, cdev->name);
 
+	if (autodiscover && (cdev->typeflags & DPS_TYPE_FLAG_NO_AUTO)) {
+		pr_debug("auto discovery skipped\n");
+		return 0;
+	}
+
 	ret = cdev_read(cdev, buf, 512, 0, 0);
 	if (ret < 0) {
 		free(buf);
@@ -144,7 +151,7 @@ static int boot_scan_devicename(struct bootscanner *scanner,
 
 	cdev = cdev_by_name(devname);
 	if (cdev) {
-		int ret = boot_scan_cdev(scanner, bootentries, cdev);
+		int ret = boot_scan_cdev(scanner, bootentries, cdev, false);
 		if (ret > 0)
 			return ret;
 	}
diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index f84b34ea53ab..c69c38d6506e 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -27,6 +27,7 @@
 #include <unistd.h>
 #include <range.h>
 #include <fs.h>
+#include <spec/dps.h>
 
 LIST_HEAD(cdev_list);
 
@@ -135,8 +136,14 @@ cdev_find_child_by_gpt_typeuuid(struct cdev *cdev, const guid_t *typeuuid)
 		return ERR_PTR(-EINVAL);
 
 	for_each_cdev_partition(partcdev, cdev) {
-		if (guid_equal(&partcdev->typeuuid, typeuuid))
-			return partcdev;
+		if (!guid_equal(&partcdev->typeuuid, typeuuid))
+			continue;
+		if (cdev->typeflags & DPS_TYPE_FLAG_NO_AUTO) {
+			dev_dbg(cdev->dev, "auto discovery skipped\n");
+			continue;
+		}
+
+		return partcdev;
 	}
 
 	return ERR_PTR(-ENOENT);
diff --git a/include/bootscan.h b/include/bootscan.h
index 99094dc09320..ffc67c4a90ab 100644
--- a/include/bootscan.h
+++ b/include/bootscan.h
@@ -2,6 +2,8 @@
 #ifndef __BOOTSCAN_H
 #define __BOOTSCAN_H
 
+#include <linux/types.h>
+
 struct bootentries;
 struct device;
 struct cdev;
@@ -25,7 +27,8 @@ struct bootscanner {
 };
 
 int boot_scan_cdev(struct bootscanner *scanner,
-		   struct bootentries *bootentries, struct cdev *cdev);
+		   struct bootentries *bootentries, struct cdev *cdev,
+		   bool autodiscover);
 
 int bootentry_scan_generate(struct bootscanner *scanner,
 			    struct bootentries *bootentries,
-- 
2.39.5



