Delivery-date: Wed, 10 Mar 2021 14:30:03 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJyuZ-0001ST-Lq
	for lore@lore.pengutronix.de; Wed, 10 Mar 2021 14:30:03 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJyuX-0004FZ-Bc
	for lore@pengutronix.de; Wed, 10 Mar 2021 14:30:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QjsqMr5wlIQiFRWfnTH8QNZfqGT3Em8RBGuZ7DA6CT8=; b=VaTEo9kSiTqF5nRvUD1uIo7Wv
	H809Ndsj0yebXExsSIptmxklpAQkaCVCVx83QcQ7u7GQ4w6CpEhREvwct/uRCDNywa498KsMjp+fF
	7rXQd0Pd+UJ3fbPr0cyR5L6qjiXIKo/+vVEEwvmCyaBvaMD14EzitH8li5VHEtoK1gL0d9YG89E0z
	MkYg/Ftm9KyTWb7XfjOjgXG8MCjDv+tBUZXfCpm+CwpSrnHByovR8CERxNISo4ZOncfaPsNKSpaYI
	NEQeSub4bwv+RlcaxE7weQRXFN6NtaPAO1pPF4Loem0OGplB9D62sDzYphoTHraKBP4OlUWbKsbuI
	DTRbsZY4Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJytc-006v0C-N3; Wed, 10 Mar 2021 13:29:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJyt9-006unS-J5
 for barebox@lists.infradead.org; Wed, 10 Mar 2021 13:28:40 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lJyt7-0003fm-Qf; Wed, 10 Mar 2021 14:28:33 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lJyt6-0006bz-JZ; Wed, 10 Mar 2021 14:28:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 10 Mar 2021 14:28:17 +0100
Message-Id: <20210310132829.7662-6-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210310132829.7662-1-s.hauer@pengutronix.de>
References: <20210310132829.7662-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210310_132835_786934_0039D5DB 
X-CRM114-Status: GOOD (  14.55  )
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
Subject: [PATCH 05/17] firmware: Add search path
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
index d2d6d6f97c..008fb7720e 100644
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
@@ -206,17 +208,56 @@ out:
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
 int firmwaremgr_load_file(struct firmware_mgr *mgr, const char *firmware)
 {
 	int ret;
+	char *fw = NULL;
 	char *name = basprintf("/dev/%s", mgr->handler->id);
 
+	if (*firmware != '/') {
+		fw = find_path(firmware_path, firmware, file_exists);
+		if (fw)
+			firmware = fw;
+	}
+
 	ret = copy_file(firmware, name, 0);
 
 	free(name);
+	free(fw);
 
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
index f09a64e7ed..348fa4ee2d 100644
--- a/include/firmware.h
+++ b/include/firmware.h
@@ -29,6 +29,8 @@ struct firmware_mgr *firmwaremgr_find(const char *);
 #ifdef CONFIG_FIRMWARE
 struct firmware_mgr *firmwaremgr_find_by_node(struct device_node *np);
 int firmwaremgr_load_file(struct firmware_mgr *, const char *path);
+const char *firmware_get_searchpath(void);
+void firmware_set_searchpath(const char *path);
 #else
 static inline struct firmware_mgr *firmwaremgr_find_by_node(struct device_node *np)
 {
@@ -39,6 +41,16 @@ static inline int firmwaremgr_load_file(struct firmware_mgr *mgr, const char *pa
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

