Delivery-date: Mon, 02 Jun 2025 12:05:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM231-002uz2-2z
	for lore@lore.pengutronix.de;
	Mon, 02 Jun 2025 12:05:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM231-0007Hu-B9
	for lore@pengutronix.de; Mon, 02 Jun 2025 12:05:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bTjHh5BmECxzxQ6kDlaOQHJPJKaeX0nqIIBsV514jkk=; b=u7ZT5GjzHXcwlDvQ6aau0nSsqn
	XjuLvq546GbNgeM7ViY5Urt4zE8vnJeGe5agCMZD+t0pZnuJXN7tmk9ofUYGFOQcttm73ohHxgTuB
	C0ADj0+t9sxE5Cl3rrlf1s8r9G5Rc/ClWPMMLFAvtzLCzRVF11vIqcbZ7l1ylZBj0qyNl61DO0uq1
	YhFWni4+ASLXXnj9TD+er0hd4ag9sKY4rPReTwIZOTY8/8kxylEwNsSfabgC4ZJNVyBTVFpaJhB6r
	SyVK1kk1vEH3Zua9xSOv2kf/dWLIMO33uEFSEhBKbp77K2Ku4LG4GOuRsGTIsZL8P+CPOQOSX8XTT
	PCtjn+bA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM22Y-0000000793W-0qwX;
	Mon, 02 Jun 2025 10:05:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM22V-0000000791n-1rXG
	for barebox@lists.infradead.org;
	Mon, 02 Jun 2025 10:05:08 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uM22U-00071G-3U; Mon, 02 Jun 2025 12:05:06 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  2 Jun 2025 12:05:04 +0200
Message-Id: <20250602100505.830492-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250602100505.830492-1-a.fatoum@barebox.org>
References: <20250602100505.830492-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250602_030507_482762_0BCC799D 
X-CRM114-Status: GOOD (  11.12  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] libfile: pass copy_file flags through copy_recursive
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

copy_recursive calls copy_file internally, so it makes sense that it
should take the same flags that copy_file already takes.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 commands/cp.c         |  2 +-
 commands/defaultenv.c |  2 +-
 include/libfile.h     |  2 +-
 lib/libfile.c         | 14 ++++++++++++--
 4 files changed, 15 insertions(+), 5 deletions(-)

diff --git a/commands/cp.c b/commands/cp.c
index e2f91123ca92..5b8d976c3cfe 100644
--- a/commands/cp.c
+++ b/commands/cp.c
@@ -66,7 +66,7 @@ static int do_cp(int argc, char *argv[])
 		dst = concat_path_file(argv[argc - 1], posix_basename(argv[i]));
 
 		if (recursive)
-			ret = copy_recursive(argv[i], dst);
+			ret = copy_recursive(argv[i], dst, flags);
 		else if (last_is_dir)
 			ret = copy_file(argv[i], dst, flags);
 		else
diff --git a/commands/defaultenv.c b/commands/defaultenv.c
index c13d9aaac7c0..3d118f20a650 100644
--- a/commands/defaultenv.c
+++ b/commands/defaultenv.c
@@ -54,7 +54,7 @@ static int do_defaultenv(int argc, char *argv[])
 	if (scrub)
 		unlink_recursive(to, NULL);
 
-	ret = copy_recursive(from, to);
+	ret = copy_recursive(from, to, 0);
 	free(from);
 	free(to);
 
diff --git a/include/libfile.h b/include/libfile.h
index b3f6f18b3e46..4cb6e11110f5 100644
--- a/include/libfile.h
+++ b/include/libfile.h
@@ -32,7 +32,7 @@ int write_file_flash(const char *filename, const void *buf, size_t size);
 
 int copy_file(const char *src, const char *dst, unsigned flags);
 
-int copy_recursive(const char *src, const char *dst);
+int copy_recursive(const char *src, const char *dst, unsigned flags);
 
 int compare_file(const char *f1, const char *f2);
 
diff --git a/lib/libfile.c b/lib/libfile.c
index 76a091878ebb..aaade34a4c34 100644
--- a/lib/libfile.c
+++ b/lib/libfile.c
@@ -534,7 +534,17 @@ int copy_file(const char *src, const char *dst, unsigned flags)
 }
 EXPORT_SYMBOL(copy_file);
 
-int copy_recursive(const char *src, const char *dst)
+/**
+ * copy_recursive - Copy files recursively
+ * @src:	The source filename or directory
+ * @dst:	The destination filename or directory
+ * @flags:	A bitmask of COPY_FILE_* flags. Possible values:
+ *
+ *                COPY_FILE_VERBOSE: show a progression bar
+ *
+ * Return: 0 for success or negative error code
+ */
+int copy_recursive(const char *src, const char *dst, unsigned flags)
 {
 	struct stat s;
 	DIR *dir;
@@ -563,7 +573,7 @@ int copy_recursive(const char *src, const char *dst)
 
 		from = basprintf("%s/%s", src, d->d_name);
 		to = basprintf("%s/%s", dst, d->d_name);
-		ret = copy_recursive(from, to);
+		ret = copy_recursive(from, to, flags);
 		if (ret)
 			break;
 		free(from);
-- 
2.39.5



