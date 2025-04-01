Delivery-date: Tue, 01 Apr 2025 13:05:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzZQq-006xvc-01
	for lore@lore.pengutronix.de;
	Tue, 01 Apr 2025 13:05:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzZQp-0003Co-CY
	for lore@pengutronix.de; Tue, 01 Apr 2025 13:05:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oixZ7crd/dYnnHdXkweqldGFy4CFnwCOv2SjVnPqKec=; b=HcNX0Es8qeOng1yHVCfWMiN+9t
	y2aT9rzm+Y8xullt9/QbYs5F+ddilQh1Geo+d1esrh0iLgMpuW7zRXxUt6ibRpr224OrDMI9wD82q
	PmWLZm/IwEq4iAjZcWN7HYVdpnBb7IM+B/BcVNLXNocPP9KGj4JXwMNDps5SQx99VPQHPjR3A5+p0
	qF2rkFNpf0pkTQOIndZHJpjksI7HDGIAOlAMnE6f/lAjIhXkEqAITSrK2H0LCcOqINODemEamaBis
	+IJhhMIXQs4aRbpIvz4vILr1AiwHggC49wYzjwrHg3yyBC3c4pxOPDNWD6uU6rRRBXo5mkxOqSO2z
	d8BGnxng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzZQK-00000002iok-3126;
	Tue, 01 Apr 2025 11:04:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzZA8-00000002foc-4Bo3
	for barebox@lists.infradead.org;
	Tue, 01 Apr 2025 10:48:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tzZA7-0000N2-P4; Tue, 01 Apr 2025 12:48:07 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tzZA7-002kWl-1g;
	Tue, 01 Apr 2025 12:48:07 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tzZA7-00GcAa-1N;
	Tue, 01 Apr 2025 12:48:07 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  1 Apr 2025 12:47:56 +0200
Message-Id: <20250401104806.3959859-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250401104806.3959859-1-a.fatoum@pengutronix.de>
References: <20250401104806.3959859-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250401_034809_316484_4AE6D5CB 
X-CRM114-Status: GOOD (  13.98  )
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
Subject: [PATCH 06/16] common: bootscan: add scan_disk callback
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The scan_disk callback will be invoked for every disk and makes
implementing logic easier, where a bootscanner wants to process specific
partitions by type for example.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/bootscan.c  | 25 ++++++++++++++++++++++---
 include/bootscan.h |  3 +++
 2 files changed, 25 insertions(+), 3 deletions(-)

diff --git a/common/bootscan.c b/common/bootscan.c
index cc25f070508a..222498c609a4 100644
--- a/common/bootscan.c
+++ b/common/bootscan.c
@@ -14,10 +14,26 @@
 static int boot_scan_device(struct bootscanner *scanner,
 			    struct bootentries *bootentries, struct device *dev)
 {
+	struct cdev *cdev;
+	int ret;
 
 	pr_debug("%s(%s): %s\n", __func__, scanner->name, dev_name(dev));
 
 	device_detect(dev);
+
+	if (!scanner->scan_disk)
+		goto scan_device;
+
+	list_for_each_entry(cdev, &dev->cdevs, devices_list) {
+		if (cdev_is_partition(cdev))
+			continue;
+
+		ret = scanner->scan_disk(scanner, bootentries, cdev);
+		if (ret)
+			return ret;
+	}
+
+scan_device:
 	return scanner->scan_device(scanner, bootentries, dev);
 }
 
@@ -38,7 +54,7 @@ static int boot_scan_ubi(struct bootscanner *scanner,
 
 	pr_debug("%s(%s): %s\n", __func__, scanner->name, cdev->name);
 
-	if (!scanner->scan_device)
+	if (!scanner->scan_disk && !scanner->scan_device)
 		return 0;
 
 	ret = ubi_attach_mtd_dev(cdev->mtd, UBI_DEV_NUM_AUTO, 0, 20);
@@ -83,8 +99,11 @@ int boot_scan_cdev(struct bootscanner *scanner,
 	filetype = file_detect_type(buf, 512);
 	free(buf);
 
-	if (type == filetype_mbr || type == filetype_gpt)
-		return -EINVAL;
+	if (type == filetype_mbr || type == filetype_gpt) {
+		if (!scanner->scan_disk || cdev_is_partition(cdev))
+			return -EINVAL;
+		return scanner->scan_disk(scanner, bootentries, cdev);
+	}
 
 	if (filetype == filetype_ubi && IS_ENABLED(CONFIG_MTD_UBI)) {
 		ret = boot_scan_ubi(scanner, bootentries, cdev);
diff --git a/include/bootscan.h b/include/bootscan.h
index 3161896faf07..99094dc09320 100644
--- a/include/bootscan.h
+++ b/include/bootscan.h
@@ -16,6 +16,9 @@ struct bootscanner {
 	/** Invoked for when scanning a directory */
 	int (*scan_directory)(struct bootscanner *,
 			      struct bootentries *, const char *);
+	/** Invoked for when scanning a disk */
+	int (*scan_disk)(struct bootscanner *,
+			 struct bootentries *, struct cdev *);
 	/** Fallback: Invoked only when none of the above returned results */
 	int (*scan_device)(struct bootscanner *,
 			   struct bootentries *, struct device *);
-- 
2.39.5



