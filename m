Delivery-date: Mon, 19 Feb 2024 15:52:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rc50c-00EkVT-02
	for lore@lore.pengutronix.de;
	Mon, 19 Feb 2024 15:52:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rc50b-0007JA-BF
	for lore@pengutronix.de; Mon, 19 Feb 2024 15:52:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ckecxD2noxtzvu5G21K7pCoEJGTCufhFOWC+q5c5noY=; b=ggojSzpOthyITplPiMCHcRJIHW
	wxQKc8wOhBvAhQuLqa/ILx1YfX7cjC1JrXAiUorWFW74ovqsgM5GwX7ZHegOqCcEDXTMrawXIYyhV
	Oth/NKxbbvXGA7S4nJQeO7mogj/qkEy6MpiDQGayeshfjZy8uaXvN8XyVen0XTt2+bqLuUskbHmy4
	BUgpGuchbmBddCQJKDlYPL6gd70BRToz7jLHR8EiFagoHvFWwwHoLyveIJYMMlvokCy/EBTkz715u
	vTQUk7FahTdhdPyQelkOZUCX0++Y6cWixEwx32pIjY3AvHzX9YnRyA1gzFWPG7wGUQGZ8zZl9szeA
	+tn47Y0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc504-0000000Aver-2cqK;
	Mon, 19 Feb 2024 14:52:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc4zy-0000000AvcP-3c5b
	for barebox@lists.infradead.org;
	Mon, 19 Feb 2024 14:52:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rc4zx-0006lf-D7; Mon, 19 Feb 2024 15:52:01 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rc4zx-001fcS-0Y; Mon, 19 Feb 2024 15:52:01 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rc4zw-008lEV-2y;
	Mon, 19 Feb 2024 15:52:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 19 Feb 2024 15:51:59 +0100
Message-Id: <20240219145159.1962618-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240219145159.1962618-1-s.hauer@pengutronix.de>
References: <20240219145159.1962618-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_065202_957092_70EF6D86 
X-CRM114-Status: GOOD (  17.98  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/3] environment: use barebox environment from GPT partitions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Documentation states that the barebox environment shall be put in a
partition with GUID 6c3737f2-07f8-45d1-ad45-15d260aab24d. So far
barebox doesn't use these partitions though, so let's change that.

With this patch barebox iterates over the currently registered block
devices and searches for partitions with the barebox environment GUID.
When one is found then it will be used for the environment. The device
barebox has booted from is preferred over other devices. Also this will
current serve as a fallback only. When board code has provided other
ideas in terms of calling default_environment_path_set() then that
will be used instead.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/environment.c | 65 +++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 64 insertions(+), 1 deletion(-)

diff --git a/common/environment.c b/common/environment.c
index a7432a84f3..583a2f0a03 100644
--- a/common/environment.c
+++ b/common/environment.c
@@ -26,6 +26,9 @@
 #include <environment.h>
 #include <globalvar.h>
 #include <libfile.h>
+#include <block.h>
+#include <efi/partition.h>
+#include <bootsource.h>
 #else
 #define EXPORT_SYMBOL(x)
 #endif
@@ -57,9 +60,69 @@ void default_environment_path_set(const char *path)
 	default_environment_path = xstrdup(path);
 }
 
+static guid_t partition_barebox_env_guid = PARTITION_BAREBOX_ENVIRONMENT_GUID;
+
+/*
+ * default_environment_path_search - look for environment partition
+ *
+ * This searches for a barebox environment partition on block devices. barebox
+ * environment partitions are recognized by the guid
+ * 6c3737f2-07f8-45d1-ad45-15d260aab24d. The device barebox itself has booted
+ * from is preferred over other devices.
+ *
+ * @return: The cdev providing the environment of found, NULL otherwise
+ */
+static struct cdev *default_environment_path_search(void)
+{
+	struct cdev *part;
+	struct device_node *boot_node;
+	int max_score = 0;
+	struct cdev *env_cdev = NULL;
+	struct block_device *blk;
+
+	boot_node = bootsource_of_node_get(NULL);
+
+	if (boot_node) {
+		struct device *dev;
+
+		dev = of_find_device_by_node(boot_node);
+		if (dev)
+			device_detect(dev);
+	}
+
+	for_each_block_device(blk) {
+		int score = 0;
+
+		part = cdev_find_child_by_gpt_typeuuid(&blk->cdev,
+						       &partition_barebox_env_guid);
+		if (IS_ERR(part))
+			continue;
+
+		score++;
+
+		if (boot_node && boot_node == blk->cdev.device_node)
+			score++;
+
+		if (score > max_score) {
+			max_score = score;
+			env_cdev = part;
+		}
+	}
+
+	return env_cdev;
+}
+
 const char *default_environment_path_get(void)
 {
-	if (!default_environment_path)
+	struct cdev *cdev;
+
+	if (default_environment_path)
+		return default_environment_path;
+
+	cdev = default_environment_path_search();
+	if (cdev)
+		default_environment_path = basprintf("/dev/%s", cdev->name);
+	else
 		default_environment_path = xstrdup("/dev/env0");
 
 	return default_environment_path;
-- 
2.39.2



