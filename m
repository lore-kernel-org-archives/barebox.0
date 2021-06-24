Delivery-date: Thu, 24 Jun 2021 10:55:26 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwL8w-0007J0-Tg
	for lore@lore.pengutronix.de; Thu, 24 Jun 2021 10:55:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwL8v-00028V-IV
	for lore@pengutronix.de; Thu, 24 Jun 2021 10:55:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QQR+Crmtn4nRj26OqaHJ5gyJn6JPvhOmoICyJlub+DY=; b=NkF0qiE10cF/ES
	9kOPRCigbt946DiaIR9ccIYq4Q19myIDu5OvhVbeNoXsDTdZuPto/0CLdzpwtaApGTzIGDBX2U6wg
	6xk6ciJia+Qs7FWnhNETBLCxyjPt8H5XFddSLYvK4UWIyKrG0mAWbfXLQS24WRTuLxeVL+/Yl18Qm
	XYycvZbFo6DXz96V7s59suzJgBkHO97polKmbz7BdJXMUSSoL9xqlUjMwUYmRxnOmgVlo1LcPrEt7
	2DpG84L4TsL6fdutf/Rtgv8SohXCrAA55Y66EwzjOFsAbkjq6SQlfQnUOY2rffFn8MuqldodZ+54k
	GwLq0DwAYkeAXoonbzxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwL7T-00DYBf-L6; Thu, 24 Jun 2021 08:53:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwL6A-00DXLq-MD
 for barebox@lists.infradead.org; Thu, 24 Jun 2021 08:52:36 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwL61-0000sL-Ba; Thu, 24 Jun 2021 10:52:25 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwL60-0000bK-9c; Thu, 24 Jun 2021 10:52:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 24 Jun 2021 10:52:12 +0200
Message-Id: <20210624085223.14616-8-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210624085223.14616-1-s.hauer@pengutronix.de>
References: <20210624085223.14616-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210624_015234_828677_320A5A45 
X-CRM114-Status: GOOD (  15.16  )
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
Subject: [PATCH 07/18] firmware: Add search path
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This adds a colon separated search path for firmware files. When the
firmware we are searching is not an absolute path then look in the
search path first. This will be useful later when the bootloader spec
implementation shall look for firmware files relative to the provided
root.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/firmware.c  | 41 +++++++++++++++++++++++++++++++++++++++++
 include/firmware.h | 12 ++++++++++++
 2 files changed, 53 insertions(+)

diff --git a/common/firmware.c b/common/firmware.c
index fa4f585693..477dc1f13a 100644
--- a/common/firmware.c
+++ b/common/firmware.c
@@ -11,6 +11,8 @@
 #include <libbb.h>
 #include <libfile.h>
 #include <fs.h>
+#include <globalvar.h>
+#include <magicvar.h>
 #include <linux/list.h>
 #include <linux/stat.h>
 #include <linux/err.h>
@@ -208,6 +210,26 @@ out:
 	return ret;
 }
 
+static char *firmware_path;
+
+const char *firmware_get_searchpath(void)
+{
+	return firmware_path;
+}
+
+void firmware_set_searchpath(const char *path)
+{
+	free(firmware_path);
+	firmware_path = strdup(path);
+}
+
+static bool file_exists(const char *filename)
+{
+	struct stat s;
+
+	return !stat(filename, &s);
+}
+
 /*
  * firmware_load_file - load a firmware to a device
  */
@@ -216,6 +238,7 @@ int firmwaremgr_load_file(struct firmware_mgr *mgr, const char *firmware)
 	char *dst;
 	enum filetype type;
 	int ret = 0;
+	char *fw = NULL;
 	int firmwarefd = 0;
 	int devicefd = 0;
 
@@ -229,6 +252,12 @@ int firmwaremgr_load_file(struct firmware_mgr *mgr, const char *firmware)
 
 	dst = basprintf("/dev/%s", mgr->handler->id);
 
+	if (*firmware != '/') {
+		fw = find_path(firmware_path, firmware, file_exists);
+		if (fw)
+			firmware = fw;
+	}
+
 	firmwarefd = open(firmware, O_RDONLY);
 	if (firmwarefd < 0) {
 		printf("could not open %s: %s\n", firmware,
@@ -254,6 +283,7 @@ int firmwaremgr_load_file(struct firmware_mgr *mgr, const char *firmware)
 
 out:
 	free(dst);
+	free(fw);
 
 	if (firmwarefd > 0)
 		close(firmwarefd);
@@ -262,3 +292,14 @@ out:
 
 	return ret;
 }
+
+static int firmware_init(void)
+{
+	firmware_path = strdup("/env/firmware");
+	globalvar_add_simple_string("firmware.path", &firmware_path);
+
+	return 0;
+}
+device_initcall(firmware_init);
+
+BAREBOX_MAGICVAR(global.firmware.path, "Firmware search path");
diff --git a/include/firmware.h b/include/firmware.h
index 39e84b9ac7..515bdcaf40 100644
--- a/include/firmware.h
+++ b/include/firmware.h
@@ -30,6 +30,8 @@ struct firmware_mgr *firmwaremgr_find(const char *);
 #ifdef CONFIG_FIRMWARE
 struct firmware_mgr *firmwaremgr_find_by_node(struct device_node *np);
 int firmwaremgr_load_file(struct firmware_mgr *, const char *path);
+const char *firmware_get_searchpath(void);
+void firmware_set_searchpath(const char *path);
 #else
 static inline struct firmware_mgr *firmwaremgr_find_by_node(struct device_node *np)
 {
@@ -40,6 +42,16 @@ static inline int firmwaremgr_load_file(struct firmware_mgr *mgr, const char *pa
 {
 	return -ENOSYS;
 }
+
+static inline const char *firmware_get_searchpath(void)
+{
+	return NULL;
+}
+
+static inline void firmware_set_searchpath(const char *path)
+{
+}
+
 #endif
 
 void firmwaremgr_list_handlers(void);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

