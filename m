Delivery-date: Wed, 23 Jun 2021 07:18:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvvHQ-0005G0-GV
	for lore@lore.pengutronix.de; Wed, 23 Jun 2021 07:18:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvvHO-0007Sy-Vy
	for lore@pengutronix.de; Wed, 23 Jun 2021 07:18:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SWviBRPvmOtsY/k+wj9OUdpU8W4WkP53oAyGZ2v3h3A=; b=0vaRhLc58tAizX
	4LfiOtVMZQW0zoIW2i9QLGmJAiEHNMmrOkvSB1b/GppvKDNOJbVJ/XrWBGaj29wpUwn/wmMmB1/7b
	pEw+LK2A6nKan9CuQkUIEBWHFEhJOWKiRhH72lUxC6mUZOGkX9P9HDVzDpHROfGbDK9t84Q6N3Fg0
	KD9UmhbqTwy/ezDtcSXMFD/F8g6nieoAGsf/nQL7zVvhOjlekrSwK86QCU4CGlMh9SKIlpoZPS0nY
	RNoDkaih4BiH/hVsyvNbjWhabp1wj2dqKyUOOEc+N2DZybrIspJdWSfguZm5CBRrZeGZwuIZImASR
	iq03O7xbLR7qRdmMYISw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvvGC-009Mhw-KN; Wed, 23 Jun 2021 05:17:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvvFd-009MQ6-E5
 for barebox@lists.infradead.org; Wed, 23 Jun 2021 05:16:42 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvvFb-0006rE-RR; Wed, 23 Jun 2021 07:16:35 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvvFa-0000Pq-Qo; Wed, 23 Jun 2021 07:16:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 23 Jun 2021 07:16:18 +0200
Message-Id: <20210623051632.30253-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210623051632.30253-1-s.hauer@pengutronix.de>
References: <20210623051632.30253-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210622_221637_660454_8019C00E 
X-CRM114-Status: GOOD (  15.79  )
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
Subject: [PATCH 03/17] libbb: Add find_path function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

libbb contains a find_execable() function to find an executable in a
colon separated path. The code can be reused by making the environment
variable name and the is-executable test parameters. Do this and add
a find_path()

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/libbb.h |  4 +++-
 lib/libbb.c     | 58 ++++++++++++++++++++++++++++++++-----------------
 2 files changed, 41 insertions(+), 21 deletions(-)

diff --git a/include/libbb.h b/include/libbb.h
index a3a13b41ce..e191874052 100644
--- a/include/libbb.h
+++ b/include/libbb.h
@@ -8,8 +8,10 @@
 
 char *concat_path_file(const char *path, const char *filename);
 char *concat_subpath_file(const char *path, const char *f);
-int execable_file(const char *name);
+bool execable_file(const char *name);
 char *find_execable(const char *filename);
+char *find_path(const char *path, const char *filename,
+				bool (*filter)(const char *));
 char* last_char_is(const char *s, int c);
 
 enum {
diff --git a/lib/libbb.c b/lib/libbb.c
index d0c9bf4d80..642e54d78f 100644
--- a/lib/libbb.c
+++ b/lib/libbb.c
@@ -49,11 +49,47 @@ char *concat_subpath_file(const char *path, const char *f)
 }
 EXPORT_SYMBOL(concat_subpath_file);
 
+/**
+ * find_path - find a file in a colon separated path
+ * @path: The search path, colon separated
+ * @filename: The filename to search for
+ * @filter: filter function
+ *
+ * searches for @filename in a colon separated list of directories given in
+ * @path. @filter should return true when the current file matches the expectations,
+ * false otherwise. @filter should check for existence of the file, but could also
+ * check for additional flags.
+ */
+char *find_path(const char *path, const char *filename,
+		bool (*filter)(const char *))
+{
+	char *p, *n, *freep;
+
+	freep = p = strdup(path);
+	while (p) {
+		n = strchr(p, ':');
+		if (n)
+			*n++ = '\0';
+		if (*p != '\0') { /* it's not a PATH="foo::bar" situation */
+			p = concat_path_file(p, filename);
+			if (filter(p)) {
+				free(freep);
+				return p;
+			}
+			free(p);
+		}
+		p = n;
+	}
+	free(freep);
+	return NULL;
+}
+EXPORT_SYMBOL(find_path);
+
 /* check if path points to an executable file;
  * return 1 if found;
  * return 0 otherwise;
  */
-int execable_file(const char *name)
+bool execable_file(const char *name)
 {
 	struct stat s;
 	return (!stat(name, &s) && S_ISREG(s.st_mode));
@@ -67,25 +103,7 @@ EXPORT_SYMBOL(execable_file);
  */
 char *find_execable(const char *filename)
 {
-	char *path, *p, *n;
-
-	p = path = strdup(getenv("PATH"));
-	while (p) {
-		n = strchr(p, ':');
-		if (n)
-			*n++ = '\0';
-		if (*p != '\0') { /* it's not a PATH="foo::bar" situation */
-			p = concat_path_file(p, filename);
-			if (execable_file(p)) {
-				free(path);
-				return p;
-			}
-			free(p);
-		}
-		p = n;
-	}
-	free(path);
-	return NULL;
+	return find_path(getenv("PATH"), filename, execable_file);
 }
 EXPORT_SYMBOL(find_execable);
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

