Delivery-date: Thu, 13 Mar 2025 11:18:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsfdu-00DWgk-2m
	for lore@lore.pengutronix.de;
	Thu, 13 Mar 2025 11:18:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsfds-0006rb-QD
	for lore@pengutronix.de; Thu, 13 Mar 2025 11:18:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7nCTPAWt4fuLckxXv+DRvMAbA9z1c/ozfte3oLQfXz4=; b=xrNBthdNbmker+V97WnaQCPTNL
	NMSeDq6tBisTOhwIxfTMHJ6JpID63exOzQsq81aRjLUT0uQ4D0es1V5hp45+dpMBOy3620syo/8KS
	AMgVgm4Ofd6D7sy68s3WINmvsM3AqbS+UiI8w9el9wQBZF9eVGtPPw7FwybxVQ+BHU1W+XehbXNPg
	/YGlK4ypapjjoAuarqocf70f2rFerQXfYyK3yiNXgSHnAMlFD6CrOJySmBux82qFj+Vbs+lecS0Tm
	ii2nfokHVAf7UMKMmPWcu59AKTbutqDBGePSRqm1ezwGjrT3sHQlBhNGSzNM/kNBooUkf7hlNlc2K
	NOLs9I2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsfdQ-0000000ApxH-1PDH;
	Thu, 13 Mar 2025 10:17:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsfdM-0000000Aptq-1ckF
	for barebox@lists.infradead.org;
	Thu, 13 Mar 2025 10:17:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsfd5-0006G7-2n; Thu, 13 Mar 2025 11:17:31 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsfd4-005WBt-13;
	Thu, 13 Mar 2025 11:17:30 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsfd4-00Gch5-0g;
	Thu, 13 Mar 2025 11:17:30 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Adrian Negreanu <adrian.negreanu@nxp.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 13 Mar 2025 11:17:26 +0100
Message-Id: <20250313101728.3546902-10-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250313101728.3546902-1-a.fatoum@pengutronix.de>
References: <20250313101728.3546902-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250313_031748_426057_A45D55A8 
X-CRM114-Status: GOOD (  10.64  )
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
Subject: [PATCH 09/11] libfile: pass copy_file flags through copy_recursive
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

copy_recursive calls copy_file internally, so it makes sense that it
should take the same flags that copy_file already takes.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
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
index a9bef5065d08..00a7f86a1477 100644
--- a/include/libfile.h
+++ b/include/libfile.h
@@ -31,7 +31,7 @@ int write_file_flash(const char *filename, const void *buf, size_t size);
 
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



