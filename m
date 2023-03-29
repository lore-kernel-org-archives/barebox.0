Delivery-date: Wed, 29 Mar 2023 12:58:26 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1phTVa-001CKX-21
	for lore@lore.pengutronix.de; Wed, 29 Mar 2023 12:58:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1phTVZ-0002HD-PI
	for lore@pengutronix.de; Wed, 29 Mar 2023 12:58:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=OX+Kmc7zRWVHOELhRnMv71+5b57WPa0sDG8VBgDM4OE=; b=ZnCyZUQn4FskWi3oaCIn0A0ziu
	1yu36vcH9n4f+LCoBjcaTVmEMkbM27j3VM6OJqXzLicI/5mEj+scNtRNQH7lF8X6mOM/JQRMiJvTR
	Lon+2IrDPBPeN93nKG+7NgRjwZ7KlXvaIPoB7e1q1Iyy5mvJm4omnCeQK4btrmLCKVOulv1fDbvCD
	v9q25SpRSdpixK4qND17faBju95jUQ8w3ibAlj1B4vQJzBjCXEC9nUWH7E5yobrS63D0zal50xZHK
	07M8A4q+vRu2UpxdQT48/y0B1dz7bH9Cv9M2RL63cFfM3jrMyk845GJ5n6c2b6q3wkB5ph2MwUJ3u
	DHEz5Dzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1phTUH-00HX3b-0z;
	Wed, 29 Mar 2023 10:57:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1phTUC-00HWzf-2i
	for barebox@lists.infradead.org;
	Wed, 29 Mar 2023 10:57:02 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1phTU3-0001sl-Nt; Wed, 29 Mar 2023 12:56:51 +0200
From: Philipp Zabel <p.zabel@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 29 Mar 2023 12:56:35 +0200
Message-Id: <20230329105638.1258096-1-p.zabel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230329_035700_880670_B7536474 
X-CRM114-Status: GOOD (  15.26  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/4] firmware: Add request/release_firmware() calls
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add request_firmware() and release_firmware() calls that allow drivers
to load a firmware file. Also move the struct firmware definition from
remoteproc.h into firmware.h.

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 common/firmware.c          | 33 +++++++++++++++++++++++++++++++++
 include/firmware.h         | 16 ++++++++++++++++
 include/linux/remoteproc.h |  5 -----
 3 files changed, 49 insertions(+), 5 deletions(-)

diff --git a/common/firmware.c b/common/firmware.c
index e4ad6ac867b0..c6668fd528b6 100644
--- a/common/firmware.c
+++ b/common/firmware.c
@@ -17,6 +17,7 @@
 #include <linux/stat.h>
 #include <linux/err.h>
 #include <uncompress.h>
+#include <unistd.h>
 #include <filetype.h>
 
 #define BUFSIZ 4096
@@ -304,6 +305,38 @@ out:
 	return ret;
 }
 
+/*
+ * request_firmware - load a firmware to a device
+ */
+int request_firmware(const struct firmware **out, const char *fw_name, struct device *dev)
+{
+	char fw_path[PATH_MAX + 1];
+	struct firmware *fw;
+	int ret;
+
+	fw = kzalloc(sizeof(struct firmware), GFP_KERNEL);
+	if (!fw)
+		return -ENOMEM;
+
+	snprintf(fw_path, sizeof(fw_path), "%s/%s", firmware_path, fw_name);
+
+	ret = read_file_2(fw_path, &fw->size, (void *)&fw->data, FILESIZE_MAX);
+	if (ret) {
+		kfree(fw);
+		return ret;
+	}
+
+	*out = fw;
+
+	return 0;
+}
+
+void release_firmware(const struct firmware *fw)
+{
+	kfree_const(fw->data);
+	kfree_const(fw);
+}
+
 static int firmware_init(void)
 {
 	firmware_path = strdup("/env/firmware");
diff --git a/include/firmware.h b/include/firmware.h
index 05433f2f7858..b4fa40a3ab44 100644
--- a/include/firmware.h
+++ b/include/firmware.h
@@ -13,6 +13,11 @@
 #include <debug_ll.h>
 #include <linux/kernel.h>
 
+struct firmware {
+	size_t size;
+	const u8 *data;
+};
+
 struct firmware_handler {
 	char *id; /* unique identifier for this firmware device */
 	char *model; /* description for this device */
@@ -37,6 +42,8 @@ struct firmware_mgr *firmwaremgr_find_by_node(struct device_node *np);
 int firmwaremgr_load_file(struct firmware_mgr *, const char *path);
 char *firmware_get_searchpath(void);
 void firmware_set_searchpath(const char *path);
+int request_firmware(const struct firmware **fw, const char *fw_name, struct device *dev);
+void release_firmware(const struct firmware *fw);
 #else
 static inline struct firmware_mgr *firmwaremgr_find_by_node(struct device_node *np)
 {
@@ -57,6 +64,15 @@ static inline void firmware_set_searchpath(const char *path)
 {
 }
 
+static inline int request_firmware(const struct firmware **fw, const char *fw_name,
+				   struct device *dev)
+{
+	return -EOPNOTSUPP;
+}
+
+static inline void release_firmware(const struct firmware *fw)
+{
+}
 #endif
 
 void firmwaremgr_list_handlers(void);
diff --git a/include/linux/remoteproc.h b/include/linux/remoteproc.h
index 170fff7987fb..33fe2f81b748 100644
--- a/include/linux/remoteproc.h
+++ b/include/linux/remoteproc.h
@@ -18,11 +18,6 @@ struct resource_table {
 	u32 offset[0];
 } __packed;
 
-struct firmware {
-	size_t size;
-	const u8 *data;
-};
-
 struct rproc;
 
 struct rproc_ops {
-- 
2.39.2



