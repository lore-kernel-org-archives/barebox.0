Delivery-date: Wed, 28 May 2025 07:58:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uK9oN-0015lX-2W
	for lore@lore.pengutronix.de;
	Wed, 28 May 2025 07:58:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uK9oN-0004yA-2g
	for lore@pengutronix.de; Wed, 28 May 2025 07:58:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=9PwYVckzlh3Ta+VFkBDAe3l20w/K1qt1Lq8LOv4E4WU=; b=vweMvWCvqzcW7vAcFecwplulTA
	jvvsK9cgOjdgB9Bc1udSe2NUh0uc3PFmG5Z3wravjsYDvCLC8Gg315VHqTprhLK/Jwi7AsL3USnoT
	nFCjAw5YdSmayt8b8m5c8RcRNL6/Lsho5GAW2rKs5TIls1/+ci4NMSJzq/hzdfgxwqXlfRyNI/BrN
	glipdW8vMYPwtGfLSlTP+V9fWWKVcUYruncN1h2O4fY8dYOzz33ka6U0+aCmzIYNXWS94l6whG8BS
	xONuq/bFuT/H0fb+DkEdZJ+VZsHDJoKX71d9IX5GMfusShlSN1rWUV+UUDxjFa6pJ2zc1PK2TjIAX
	XSgGm0kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK9nw-0000000CFdX-0k8P;
	Wed, 28 May 2025 05:58:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK9nt-0000000CFbv-14LK
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 05:58:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uK9nr-0004eL-Pw; Wed, 28 May 2025 07:58:15 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uK9nr-000XLd-1y;
	Wed, 28 May 2025 07:58:15 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uK9nr-005k7s-1g;
	Wed, 28 May 2025 07:58:15 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 28 May 2025 07:58:13 +0200
Message-Id: <20250528055814.1368888-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_225817_293292_022DAB01 
X-CRM114-Status: GOOD (  16.52  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] string: add delimiter output parameter to strsep_unescaped
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

strsep overwrites the found delimiter with '\0' making it cumbersome for
callers that match on multiple delimiters to find out, which delimiter
actually matched.

Parsers that split on multiple delimiters are likely to want support
escaping them too, so let's add an extra output parameter to
strsep_unescaped to make it possible to retrieve the delimiter that was
ultimately overwritten.

The intention behind this change is to allow retrofitting existing
space-separated strings with a colon separator that has special
semantics for zero-size strings:

  "ayy  cee" -> old behavior: multiple spaces are concatenated
  "ayy::cee" -> empty string expands to some default value

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/os/common.c | 10 +++++-----
 drivers/of/overlay.c     |  6 +++---
 include/string.h         |  2 +-
 lib/string.c             | 11 ++++++++++-
 test/self/string.c       |  2 +-
 5 files changed, 20 insertions(+), 11 deletions(-)

diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
index c5043160b1f9..ef39f5336d60 100644
--- a/arch/sandbox/os/common.c
+++ b/arch/sandbox/os/common.c
@@ -305,7 +305,7 @@ int linux_watchdog_set_timeout(unsigned int timeout)
 extern void start_barebox(void);
 extern void mem_malloc_init(void *start, void *end);
 
-extern char * strsep_unescaped(char **s, const char *ct);
+extern char * strsep_unescaped(char **s, const char *ct, char *delim);
 
 static int add_image(const char *_str, char *devname_template, int *devname_number)
 {
@@ -320,8 +320,8 @@ static int add_image(const char *_str, char *devname_template, int *devname_numb
 
 	str = strdup(_str);
 
-	filename = strsep_unescaped(&str, ",");
-	while ((opt = strsep_unescaped(&str, ","))) {
+	filename = strsep_unescaped(&str, ",", NULL);
+	while ((opt = strsep_unescaped(&str, ",", NULL))) {
 		if (!strcmp(opt, "ro"))
 			hf->is_readonly = 1;
 		if (!strcmp(opt, "cdev"))
@@ -331,8 +331,8 @@ static int add_image(const char *_str, char *devname_template, int *devname_numb
 	}
 
 	/* parses: "devname=filename" */
-	devname = strsep_unescaped(&filename, "=");
-	filename = strsep_unescaped(&filename, "=");
+	devname = strsep_unescaped(&filename, "=", NULL);
+	filename = strsep_unescaped(&filename, "=", NULL);
 	if (!filename) {
 		filename = devname;
 		snprintf(tmp, sizeof(tmp),
diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
index 7b3936bd1c4a..6944dd4a744d 100644
--- a/drivers/of/overlay.c
+++ b/drivers/of/overlay.c
@@ -242,7 +242,7 @@ static bool of_overlay_matches_filter(const char *filename, struct device_node *
 
 	p = path = strdup(of_overlay_filter);
 
-	while ((n = strsep_unescaped(&p, " "))) {
+	while ((n = strsep_unescaped(&p, " ", NULL))) {
 		int score = 0;
 
 		if (!*n)
@@ -524,7 +524,7 @@ static bool of_overlay_filter_filename(struct of_overlay_filter *f,
 
 	p = path = strdup(of_overlay_filepattern);
 
-	while ((n = strsep_unescaped(&p, " "))) {
+	while ((n = strsep_unescaped(&p, " ", NULL))) {
 		if (!*n)
 			continue;
 
@@ -575,7 +575,7 @@ static bool of_overlay_filter_compatible(struct of_overlay_filter *f,
 
 	p = compatibles = xstrdup(of_overlay_compatible);
 
-	while ((n = strsep_unescaped(&p, " "))) {
+	while ((n = strsep_unescaped(&p, " ", NULL))) {
 		if (!*n)
 			continue;
 
diff --git a/include/string.h b/include/string.h
index 986ccd83dd73..db9e3406bfa5 100644
--- a/include/string.h
+++ b/include/string.h
@@ -7,7 +7,7 @@
 
 void *mempcpy(void *dest, const void *src, size_t count);
 int strtobool(const char *str, int *val);
-char *strsep_unescaped(char **, const char *);
+char *strsep_unescaped(char **, const char *, char *);
 char *stpcpy(char *dest, const char *src);
 bool strends(const char *str, const char *postfix);
 
diff --git a/lib/string.c b/lib/string.c
index f2272be37e76..03ee7917f40e 100644
--- a/lib/string.c
+++ b/lib/string.c
@@ -541,12 +541,17 @@ EXPORT_SYMBOL(strsep);
  * strsep_unescaped - Split a string into tokens, while ignoring escaped delimiters
  * @s: The string to be searched
  * @ct: The delimiter characters to search for
+ * @delim: optional pointer to store found delimiter into
  *
  * strsep_unescaped() behaves like strsep unless it meets an escaped delimiter.
  * In that case, it shifts the string back in memory to overwrite the escape's
  * backslash then continues the search until an unescaped delimiter is found.
+ *
+ * On end of string, this function returns NULL. As long as a non-NULL
+ * value is returned and @delim is not NULL, the found delimiter will
+ * be stored into *@delim.
  */
-char *strsep_unescaped(char **s, const char *ct)
+char *strsep_unescaped(char **s, const char *ct, char *delim)
 {
         char *sbegin = *s, *hay;
         const char *needle;
@@ -571,9 +576,13 @@ char *strsep_unescaped(char **s, const char *ct)
         }
 
         *s = NULL;
+	if (delim)
+		*delim = '\0';
         return sbegin;
 
 match:
+	if (delim)
+		*delim = *hay;
         *hay = '\0';
         *s = &hay[shift + 1];
 
diff --git a/test/self/string.c b/test/self/string.c
index 542277a09797..d3d17cdc096f 100644
--- a/test/self/string.c
+++ b/test/self/string.c
@@ -41,7 +41,7 @@ static int __strverscmp_assert(char *expr)
 	int expect = -42;
 	int i = 0;
 
-	while ((token = strsep_unescaped(&expr, " "))) {
+	while ((token = strsep_unescaped(&expr, " ", NULL))) {
 		if (i == 3) {
 			pr_err("invalid expression\n");
 			return -EILSEQ;
-- 
2.39.5



