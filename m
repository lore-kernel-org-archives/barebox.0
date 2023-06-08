Delivery-date: Thu, 08 Jun 2023 09:25:33 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7A1W-00FRsO-VI
	for lore@lore.pengutronix.de; Thu, 08 Jun 2023 09:25:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7A1T-0002A6-KN
	for lore@pengutronix.de; Thu, 08 Jun 2023 09:25:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=iHediWZTYtMjvNdFjwB9w424cMBE6Vcat0LwWox3NRY=; b=Er/OyMILoa4IxxjCrvrX8J4IDK
	OrYiEKKXdKbM0e9SBkSs6cyKJEJwW6q8q15vpm18CRxee2wh1lnC+guRUV2CCWlNv+PEAsxfbrzs0
	0DT1EpkunyrpaBiiLLJBv6d2GX2O8upzAa0EbOcBrR1l0Re1RpaNRDan0qvUY3hUCUM86TYByOlST
	j4QHqVIZJmnRcfX4gvV88xhhhh+70Q6IpcWzKGkRntBBwfcDOZDBZQcq8H2xivOk0Ob36bPHk7/Y9
	K7czB1FNbIdMLis7Xmv5Eid4J+HlYWVWxK9HD68pSyca5HBHlKkTg/ZnRt9MuW+6M3OxQBGukJJ1w
	ZeWCDN2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7A0P-008OA7-2A;
	Thu, 08 Jun 2023 07:24:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7A0M-008O9A-2v
	for barebox@lists.infradead.org;
	Thu, 08 Jun 2023 07:24:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q7A0L-0001kB-5p; Thu, 08 Jun 2023 09:24:21 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q7A0K-005v8M-I1; Thu, 08 Jun 2023 09:24:20 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q7A0J-00Dk9q-U1; Thu, 08 Jun 2023 09:24:19 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  8 Jun 2023 09:24:17 +0200
Message-Id: <20230608072418.3275633-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230608_002422_946403_2E917BAE 
X-CRM114-Status: GOOD (  11.07  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] file_list: implement file_list_add_cdev_entry
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Follow-up commit will add the two users that want to add a cdev,
so let's provide a common file_list_add_cdev_entry they can call.
The benefit of doing that in common/file-list.c is that we can avoid
an extra allocation for prefixing /dev.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/file-list.c  | 21 +++++++++++++++++----
 include/file-list.h |  5 +++++
 2 files changed, 22 insertions(+), 4 deletions(-)

diff --git a/common/file-list.c b/common/file-list.c
index 1dc7cd8266b1..5c7020111145 100644
--- a/common/file-list.c
+++ b/common/file-list.c
@@ -26,8 +26,8 @@ struct file_list_entry *file_list_entry_by_name(struct file_list *files, const c
 	return NULL;
 }
 
-int file_list_add_entry(struct file_list *files, const char *name, const char *filename,
-			unsigned long flags)
+static int __file_list_add_entry(struct file_list *files, char *name, char *filename,
+				 unsigned long flags)
 {
 	struct file_list_entry *entry;
 
@@ -37,8 +37,8 @@ int file_list_add_entry(struct file_list *files, const char *name, const char *f
 
 	entry = xzalloc(sizeof(*entry));
 
-	entry->name = xstrdup(name);
-	entry->filename = xstrdup(filename);
+	entry->name = name;
+	entry->filename = filename;
 	entry->flags = flags;
 
 	list_add_tail(&entry->list, &files->list);
@@ -46,6 +46,19 @@ int file_list_add_entry(struct file_list *files, const char *name, const char *f
 	return 0;
 }
 
+int file_list_add_entry(struct file_list *files, const char *name, const char *filename,
+			unsigned long flags)
+{
+	return __file_list_add_entry(files, xstrdup(name), xstrdup(filename), flags);
+}
+
+int file_list_add_cdev_entry(struct file_list *files, struct cdev *cdev,
+			     unsigned long flags)
+{
+	return __file_list_add_entry(files, xstrdup(cdev->name),
+				     xasprintf("/dev/%s", cdev->name), flags);
+}
+
 static int file_list_parse_one(struct file_list *files, const char *partstr, const char **endstr)
 {
 	int i = 0, state = PARSE_DEVICE;
diff --git a/include/file-list.h b/include/file-list.h
index 2b2003971f32..79190b0f191d 100644
--- a/include/file-list.h
+++ b/include/file-list.h
@@ -4,6 +4,8 @@
 
 #include <linux/list.h>
 
+struct cdev;
+
 #define FILE_LIST_FLAG_SAFE	(1 << 0)
 #define FILE_LIST_FLAG_READBACK	(1 << 1)
 #define FILE_LIST_FLAG_CREATE	(1 << 2)
@@ -30,6 +32,9 @@ void file_list_free(struct file_list *);
 int file_list_add_entry(struct file_list *files, const char *name, const char *filename,
 			unsigned long flags);
 
+int file_list_add_cdev_entry(struct file_list *files, struct cdev *cdev,
+			     unsigned long flags);
+
 struct file_list *file_list_new(void);
 struct file_list *file_list_dup(struct file_list *old);
 
-- 
2.39.2



