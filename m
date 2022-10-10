Delivery-date: Mon, 10 Oct 2022 08:16:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ohm57-0033nN-3s
	for lore@lore.pengutronix.de; Mon, 10 Oct 2022 08:16:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ohm55-00028N-1c
	for lore@pengutronix.de; Mon, 10 Oct 2022 08:16:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=T0vhRd8Gp/29eMqOFsYHwZjJSx1xjVLdFDZCnp+kUm8=; b=0OC9griMka4aUw/0bQFQch8WeM
	kigrkvF8h6lp8bvGZwXBEy8XEF0SzBA/G61TC4yuTEdXaUvn533wUHoFxRsCPMTa/Ql0S0OiHryvl
	8NpCincwM/thUf1gCQKrXpocQJmAyHwcpIBKp7vTHvXIrJdqxdArRseyEiJas3K9VDeveC+hqjOR0
	2LUUgo3ENHIkgm525Zj5ZQ6w254CzERjNKUIn913adSVbyEfO8QVLsvpcLNOaTaKIuC5fJih2Fn3A
	Jq9lGyg2lKUxNmKfqKhjvWVJtn/YkCWApx7JEHkMfiv2kMk5MpDS7YPbNsgD0FGAwSNJf2tNAyQOG
	mwwFRTPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohm3v-00HCay-Ds; Mon, 10 Oct 2022 06:14:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohm3l-00HCXI-7i
	for barebox@lists.infradead.org; Mon, 10 Oct 2022 06:14:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1ohm3k-0001i0-0v; Mon, 10 Oct 2022 08:14:40 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ohm3j-000dZY-8v; Mon, 10 Oct 2022 08:14:39 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ohm3i-008kWj-9T; Mon, 10 Oct 2022 08:14:38 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 10 Oct 2022 08:14:37 +0200
Message-Id: <20221010061437.2085412-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221010061437.2085412-1-a.fatoum@pengutronix.de>
References: <20221010061437.2085412-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221009_231441_314685_1B9EAACA 
X-CRM114-Status: GOOD (  15.68  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] fs: implement unreaddir
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

When iterating over a directory, it can be useful to put back the just
read directory entry, so it can be retried at a later time. This will be
needed for the EFI loader variable support.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/fs.c           | 15 +++++++++++++++
 include/dirent.h  |  1 +
 test/self/ramfs.c | 17 ++++++++++++++++-
 3 files changed, 32 insertions(+), 1 deletion(-)

diff --git a/fs/fs.c b/fs/fs.c
index 620cd6597a63..6583e0a6e9b3 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -890,6 +890,21 @@ static int fillonedir(struct dir_context *ctx, const char *name, int namlen,
 	return 0;
 }
 
+int unreaddir(DIR *dir, const struct dirent *d)
+{
+	struct readdir_entry *entry;
+
+	if (d != &dir->d)
+		return -EINVAL;
+
+	entry = xzalloc(sizeof(*entry));
+	entry->d = *d;
+	list_add_tail(&entry->list, &dir->entries);
+
+	return 0;
+}
+EXPORT_SYMBOL(unreaddir);
+
 struct dirent *readdir(DIR *dir)
 {
 	struct readdir_entry *entry;
diff --git a/include/dirent.h b/include/dirent.h
index 61a76c5b59b9..285074e9f7de 100644
--- a/include/dirent.h
+++ b/include/dirent.h
@@ -18,6 +18,7 @@ typedef struct dir {
 
 DIR *opendir(const char *pathname);
 struct dirent *readdir(DIR *dir);
+int unreaddir(DIR *dir, const struct dirent *d);
 int closedir(DIR *dir);
 
 #endif /* __DIRENT_H */
diff --git a/test/self/ramfs.c b/test/self/ramfs.c
index 927b035e1e8c..f8e1d60a61b5 100644
--- a/test/self/ramfs.c
+++ b/test/self/ramfs.c
@@ -44,6 +44,7 @@ static inline int get_file_count(int i)
 
 static void test_ramfs(void)
 {
+	int files[] = { 1, 3, 5, 7, 11, 13, 17 };
 	char fname[128];
 	char *content = NULL;
 	char *oldpwd = NULL;
@@ -127,6 +128,7 @@ static void test_ramfs(void)
 		goto out;
 
 	i = 1;
+	j = 0;
 
 	while ((d = readdir(dir))) {
 		size_t size = 0;
@@ -150,7 +152,20 @@ static void test_ramfs(void)
 
 		free(buf);
 
-		i++;
+		/*
+		 * For select files, we test unreaddir once and check if
+		 * we read back same element on repeated readdir
+		 */
+		for (j = 0; j < ARRAY_SIZE(files); j++) {
+			if (size == files[j]) {
+				ret = unreaddir(dir, d);
+				expect_success(ret, "unreaddir");
+				files[j] = -1;
+				break;
+			}
+		}
+		if (j == ARRAY_SIZE(files))
+			i++;
 	}
 
 	expect_success(i == 90 ? 0 : -EINVAL,
-- 
2.30.2



