Delivery-date: Thu, 24 Jun 2021 10:54:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwL7j-0007Ep-3Y
	for lore@lore.pengutronix.de; Thu, 24 Jun 2021 10:54:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwL7h-0001U0-NI
	for lore@pengutronix.de; Thu, 24 Jun 2021 10:54:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SWviBRPvmOtsY/k+wj9OUdpU8W4WkP53oAyGZ2v3h3A=; b=vle2OP+3ryD67V
	CD/blYkywWHqOW5MqijpsIgvCbosYdZXS1moiEBAsyRsx4N/SSpr7BnXwCTuFG677CfTMSLg0Ks7n
	wWUum5vWE1kP0U+JL5N5QcNoHcw7y6nlV/qybbyB2CuUciJ/OKtuakVEBPUjXOG2gH7vPVPTezdyN
	9Kf2jMqocF91ngHn3mL2LWIt4V8MrOde6MfKsTjmKPRpTudXVCB0fSvSx9i8utbbYd0aJdG9kee68
	wOnsHYMpQCbS7LKwQt/CnpqNf36yrnrxUmtg+584eEY642UzTCBq5IiYoLcqa3Zd9NAUeK5FA04C5
	UvAHUAcxzlvK03fiq9vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwL6V-00DXUs-34; Thu, 24 Jun 2021 08:52:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwL63-00DXFH-8U
 for barebox@lists.infradead.org; Thu, 24 Jun 2021 08:52:29 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwL61-0000sJ-5p; Thu, 24 Jun 2021 10:52:25 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwL60-0000b9-8q; Thu, 24 Jun 2021 10:52:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 24 Jun 2021 10:52:10 +0200
Message-Id: <20210624085223.14616-6-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210624085223.14616-1-s.hauer@pengutronix.de>
References: <20210624085223.14616-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210624_015227_448464_FE2BD2A9 
X-CRM114-Status: GOOD (  15.46  )
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
Subject: [PATCH 05/18] libbb: Add find_path function
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

