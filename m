Delivery-date: Tue, 01 Apr 2025 13:05:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzZQo-006xul-1V
	for lore@lore.pengutronix.de;
	Tue, 01 Apr 2025 13:05:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzZQn-0003B6-Kq
	for lore@pengutronix.de; Tue, 01 Apr 2025 13:05:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=o0LT2WCJctU+ssWSxVufMoZzcusxA8Ajky31V3dmJcA=; b=gwBcWSSrenq6hoIPvjktFfjg1z
	dXs5kR3vNUONVhAJtIK+ER1zOb/Xw0RVWtNLOoFZnLE94GhbFEPympY3u+f94EkKGk5uNOh1ZEtpl
	VOTTo45F95MAuKQUAeyAYzcww60X5R23SAHwmCn2ubzMwUYIvurk2anWh4tMC31JHOIbEAWTs+nl1
	v04rftJD+N5zVb6DW+t2HPJRnmE6Ids+VLnJYgAtvVNzyZWqNr5r2Bj8DUf19qvdRsNoqdmbnbqSD
	IkCJ/HwpZb7Q77UmD1rHPpkMpD3iHyIaBa9FuhJauBb2XNdgU8F9onTr/aIiOWoQW3wSt9MEUdpkt
	puWNkv7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzZQF-00000002ik6-0X5b;
	Tue, 01 Apr 2025 11:04:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzZA8-00000002foZ-3efa
	for barebox@lists.infradead.org;
	Tue, 01 Apr 2025 10:48:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tzZA7-0000Ml-Kb; Tue, 01 Apr 2025 12:48:07 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tzZA7-002kWf-1N;
	Tue, 01 Apr 2025 12:48:07 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tzZA7-00GcAa-16;
	Tue, 01 Apr 2025 12:48:07 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  1 Apr 2025 12:47:54 +0200
Message-Id: <20250401104806.3959859-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250401104806.3959859-1-a.fatoum@pengutronix.de>
References: <20250401104806.3959859-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250401_034808_990097_615C0861 
X-CRM114-Status: GOOD (  15.31  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 04/16] blspec: don't export blspec functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

All of these functions are used only internally and need not be visible
externally.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/blspec.c  | 52 +++++++++++++++++++++++++++++-------------------
 include/blspec.h | 27 -------------------------
 2 files changed, 32 insertions(+), 47 deletions(-)
 delete mode 100644 include/blspec.h

diff --git a/common/blspec.c b/common/blspec.c
index c4e65906ad9f..d2db9f0db9fa 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -7,7 +7,6 @@
 #include <readkey.h>
 #include <common.h>
 #include <driver.h>
-#include <blspec.h>
 #include <malloc.h>
 #include <block.h>
 #include <fcntl.h>
@@ -19,13 +18,39 @@
 #include <fs.h>
 #include <of.h>
 #include <linux/stat.h>
+#include <linux/list.h>
 #include <linux/err.h>
 #include <mtd/ubi-user.h>
+#include <boot.h>
+
+struct blspec_entry {
+	struct bootentry entry;
+
+	struct device_node *node;
+	struct cdev *cdev;
+	const char *rootpath;
+	const char *configpath;
+};
+
+static int blspec_scan_device(struct bootentries *bootentries, struct device *dev);
+
+/*
+ * blspec_entry_var_get - get the value of a variable
+ */
+static const char *blspec_entry_var_get(struct blspec_entry *entry, const char *name)
+{
+	const char *str;
+	int ret;
+
+	ret = of_property_read_string(entry->node, name, &str);
+
+	return ret ? NULL : str;
+}
 
 /*
  * blspec_entry_var_set - set a variable to a value
  */
-int blspec_entry_var_set(struct blspec_entry *entry, const char *name,
+static int blspec_entry_var_set(struct blspec_entry *entry, const char *name,
 		const char *val)
 {
 	return of_set_property(entry->node, name, val,
@@ -154,19 +179,6 @@ static int blspec_boot(struct bootentry *be, int verbose, int dryrun)
 	return ret;
 }
 
-/*
- * blspec_entry_var_get - get the value of a variable
- */
-const char *blspec_entry_var_get(struct blspec_entry *entry, const char *name)
-{
-	const char *str;
-	int ret;
-
-	ret = of_property_read_string(entry->node, name, &str);
-
-	return ret ? NULL : str;
-}
-
 static void blspec_entry_free(struct bootentry *be)
 {
 	struct blspec_entry *entry = container_of(be, struct blspec_entry, entry);
@@ -384,8 +396,8 @@ static bool entry_is_match_machine_id(struct blspec_entry *entry)
 	return ret;
 }
 
-int blspec_scan_file(struct bootentries *bootentries, const char *root,
-		     const char *configname)
+static int blspec_scan_file(struct bootentries *bootentries, const char *root,
+			    const char *configname)
 {
 	char *devname = NULL, *hwdevname = NULL;
 	struct blspec_entry *entry;
@@ -440,7 +452,7 @@ int blspec_scan_file(struct bootentries *bootentries, const char *root,
  *
  * returns the number of entries found or a negative error value otherwise.
  */
-int blspec_scan_directory(struct bootentries *bootentries, const char *root)
+static int blspec_scan_directory(struct bootentries *bootentries, const char *root)
 {
 	glob_t globb;
 	char *abspath;
@@ -565,7 +577,7 @@ static int blspec_scan_cdev(struct bootentries *bootentries, struct cdev *cdev)
  * Returns the number of entries found or a negative error code if some unexpected
  * error occurred.
  */
-int blspec_scan_device(struct bootentries *bootentries, struct device *dev)
+static int blspec_scan_device(struct bootentries *bootentries, struct device *dev)
 {
 	struct device *child;
 	struct cdev *cdev;
@@ -627,7 +639,7 @@ int blspec_scan_device(struct bootentries *bootentries, struct device *dev)
  * Returns the number of entries found or a negative error code if some unexpected
  * error occurred.
  */
-int blspec_scan_devicename(struct bootentries *bootentries, const char *devname)
+static int blspec_scan_devicename(struct bootentries *bootentries, const char *devname)
 {
 	struct device *dev;
 	struct cdev *cdev;
diff --git a/include/blspec.h b/include/blspec.h
deleted file mode 100644
index cebc7a648703..000000000000
--- a/include/blspec.h
+++ /dev/null
@@ -1,27 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-#ifndef __LOADER_H__
-#define __LOADER_H__
-
-#include <linux/list.h>
-#include <boot.h>
-
-struct blspec_entry {
-	struct bootentry entry;
-
-	struct device_node *node;
-	struct cdev *cdev;
-	const char *rootpath;
-	const char *configpath;
-};
-
-int blspec_entry_var_set(struct blspec_entry *entry, const char *name,
-		const char *val);
-const char *blspec_entry_var_get(struct blspec_entry *entry, const char *name);
-
-int blspec_scan_device(struct bootentries *bootentries, struct device *dev);
-int blspec_scan_devicename(struct bootentries *bootentries, const char *devname);
-int blspec_scan_directory(struct bootentries *bootentries, const char *root);
-int blspec_scan_file(struct bootentries *bootentries, const char *root,
-		     const char *configname);
-
-#endif /* __LOADER_H__ */
-- 
2.39.5



