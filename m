Delivery-date: Wed, 10 Mar 2021 14:29:59 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJyuV-0001R4-LO
	for lore@lore.pengutronix.de; Wed, 10 Mar 2021 14:29:59 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJyuS-0004D1-LW
	for lore@pengutronix.de; Wed, 10 Mar 2021 14:29:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SWviBRPvmOtsY/k+wj9OUdpU8W4WkP53oAyGZ2v3h3A=; b=A8mQs/rbQoKKLkdTVTfiljdK8
	ie4TVXRz89mimBV40Dzv0cl5z/XkxeS0ypbBh5Zq2fk1xrGP99WpjlALHcNJM9InwxJ7dRH/WI864
	8M/P20yPxS9CsUwN/LjMvnfUcCDs40g/jJ22WL9BtMm9T9nXR8QOVA5HPfP0BVdMBzwPYxGDb5Q/A
	nENif9MS32pPhsxt27vLGaFgdQCXJeAnCzw0x1aGFXjpAM5ZVPy8gYmOLQ0m3Gpwe6SMCeR1Qp3RQ
	1gwYnH5qnJbm8Y3uUk24IDlXOT5xC/XVCKJbbFJU1dI3+f8t8lVlSvBibWOY5dSI9Q9/LZETOr9nI
	h3lajq3Jw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJytU-006uvx-73; Wed, 10 Mar 2021 13:28:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJyt9-006unP-Ld
 for barebox@lists.infradead.org; Wed, 10 Mar 2021 13:28:40 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lJyt7-0003fk-PG; Wed, 10 Mar 2021 14:28:33 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lJyt6-0006bt-Io; Wed, 10 Mar 2021 14:28:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 10 Mar 2021 14:28:15 +0100
Message-Id: <20210310132829.7662-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210310132829.7662-1-s.hauer@pengutronix.de>
References: <20210310132829.7662-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210310_132835_909228_CEBC9B5D 
X-CRM114-Status: GOOD (  15.88  )
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

