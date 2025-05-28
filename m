Delivery-date: Wed, 28 May 2025 07:58:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uK9oN-0015lC-1H
	for lore@lore.pengutronix.de;
	Wed, 28 May 2025 07:58:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uK9oM-0004y7-JT
	for lore@pengutronix.de; Wed, 28 May 2025 07:58:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JpYIXI77JvrZ6ehiX4DHDo9NQw/IVAI8JEmDB8fwoEc=; b=ieivS7D8OyZiIRarprV6oOQmQr
	Pv6xnswq9NJ/W0VU0SVw30Kl4XUF96VcBzYXVbzKxJQLLFdQWKOxA49W93EE+7Pou1O78V4KbHlra
	jfBAT7m9JtTkmdS3EIqvBb4cZJZxYhBP4yXtiQTMBpwkJxwKknb8snCMUthUbC83ciFFd2Cd0LpKU
	BMT0UqLX8d6+A42IXisV/oHACNLpYl2WNcMtb19KF8ddDkVf50NZK4QBCw9wQE2/wFz9U+L2LytKU
	geSqV/T7GSMIHFPkWhSNQuyIdWkaBEsLrKxbeHMDEKIm2uaw7lkqcXbO+UmX7HheABapcXihQSRA0
	VM2V4a5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK9nv-0000000CFct-0Wls;
	Wed, 28 May 2025 05:58:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK9nt-0000000CFbu-14G0
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 05:58:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uK9nr-0004eM-RP; Wed, 28 May 2025 07:58:15 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uK9nr-000XLe-27;
	Wed, 28 May 2025 07:58:15 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uK9nr-005k7s-1p;
	Wed, 28 May 2025 07:58:15 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 28 May 2025 07:58:14 +0200
Message-Id: <20250528055814.1368888-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250528055814.1368888-1-a.fatoum@pengutronix.de>
References: <20250528055814.1368888-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_225817_292767_40898230 
X-CRM114-Status: GOOD (  10.81  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] test: self: string: add test cases for strsep_unescaped
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Just to make sure the function works as intended, add some unit tests.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/self/string.c | 138 ++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 136 insertions(+), 2 deletions(-)

diff --git a/test/self/string.c b/test/self/string.c
index d3d17cdc096f..f8da83c72a71 100644
--- a/test/self/string.c
+++ b/test/self/string.c
@@ -172,9 +172,9 @@ static void __expect_streq(const char *func, int line,
 			   char *is, const char *expect, bool free_is)
 {
 	total_tests++;
-	if (strcmp(is, expect)) {
+	if (!streq_ptr(is, expect)) {
 		failed_tests++;
-		printf("%s:%d: got %s, but %s expected\n", func, line, is, expect);
+		printf("%s:%d: got '%s', but '%s' expected\n", func, line, is, expect);
 	}
 
 	if (free_is)
@@ -183,6 +183,13 @@ static void __expect_streq(const char *func, int line,
 
 #define expect_dynstreq(args...) \
 	__expect_streq(__func__, __LINE__, args, true)
+#define expect_streq(args...) \
+	__expect_streq(__func__, __LINE__, args, false)
+#define expect_chreq(ch1, ch2) do { \
+	char s1[2] = { ch1, '\0' }; \
+	char s2[2] = { ch2, '\0' }; \
+	__expect_streq(__func__, __LINE__, s1, s2, false); \
+} while (0);
 
 static void test_strjoin(void)
 {
@@ -195,9 +202,136 @@ static void test_strjoin(void)
 	expect_dynstreq(strjoin(" ",   NULL, 0),                "");
 }
 
+static void test_strsep_unescaped_basic(void)
+{
+	char str[] = "ayy,bee,cee", *s = str, delim;
+
+	expect_streq(strsep_unescaped(&s, ",", NULL), "ayy");
+	expect_streq(strsep_unescaped(&s, ",", &delim), "bee");
+	expect_chreq(delim, ',');
+	expect_streq(strsep_unescaped(&s, ",", NULL), "cee");
+	delim = '!';
+	expect_streq(strsep_unescaped(&s, ",", &delim), NULL);
+	expect_chreq(delim, '!');
+}
+
+static void test_strsep_unescaped_with_escape(void)
+{
+	char str[] = "ayy\\,bee,cee", *s = str;
+
+	expect_streq(strsep_unescaped(&s, ",", NULL), "ayy,bee");
+	expect_streq(strsep_unescaped(&s, ",", NULL), "cee");
+	expect_streq(strsep_unescaped(&s, ",", NULL), NULL);
+}
+
+static void test_strsep_unescaped_double_backslash(void)
+{
+	char str[] = "ayy\\\\,bee", *s = str;
+
+	expect_streq(strsep_unescaped(&s, ",", NULL), "ayy\\");
+	expect_streq(strsep_unescaped(&s, ",", NULL), "bee");
+	expect_streq(strsep_unescaped(&s, ",", NULL), NULL);
+}
+
+static void test_strsep_unescaped_trailing_escape(void)
+{
+	char str[] = "ayy\\", *s = str;
+
+	expect_streq(strsep_unescaped(&s, ",", NULL), "ayy");
+	expect_streq(strsep_unescaped(&s, ",", NULL), NULL);
+}
+
+static void test_strsep_unescaped_multiple_escaped(void)
+{
+	char str[] = "ayy\\,\\,bee\\,cee,dee", *s = str;
+
+	expect_streq(strsep_unescaped(&s, ",", NULL), "ayy,,bee,cee");
+	expect_streq(strsep_unescaped(&s, ",", NULL), "dee");
+	expect_streq(strsep_unescaped(&s, ",", NULL), NULL);
+}
+
+static void test_strsep_unescaped_multiple_delims(void)
+{
+	char str[] = "ayy\\ \\:bee:cee dee", *s = str;
+
+	expect_streq(strsep_unescaped(&s, ": ", NULL), "ayy :bee");
+	expect_streq(strsep_unescaped(&s, ": ", NULL), "cee");
+	expect_streq(strsep_unescaped(&s, ": ", NULL), "dee");
+	expect_streq(strsep_unescaped(&s, ": ", NULL), NULL);
+}
+
+static void test_strsep_unescaped_multiple_delims_empty(void)
+{
+	char str[] = "ayy\\ \\:bee::cee  dee", *s = str, delim;
+
+	expect_streq(strsep_unescaped(&s, ": ", &delim), "ayy :bee");
+	expect_chreq(delim, ':');
+	expect_streq(strsep_unescaped(&s, ": ", &delim), "");
+	expect_chreq(delim, ':');
+	expect_streq(strsep_unescaped(&s, ": ", &delim), "cee");
+	expect_chreq(delim, ' ');
+	expect_streq(strsep_unescaped(&s, ": ", &delim), "");
+	expect_chreq(delim, ' ');
+	expect_streq(strsep_unescaped(&s, ": ", &delim), "dee");
+	expect_chreq(delim, '\0');
+	expect_streq(strsep_unescaped(&s, ": ", NULL), NULL);
+}
+
+static void test_strsep_unescaped_no_delim(void)
+{
+	char str[] = "abc", *s = str, delim;
+
+	expect_streq(strsep_unescaped(&s, ",", &delim), "abc");
+	expect_chreq(delim, '\0');
+	expect_streq(strsep_unescaped(&s, ",", NULL), NULL);
+}
+
+static void test_strsep_unescaped_null_string(void)
+{
+	char *s = NULL;
+
+	expect_streq(strsep_unescaped(&s, ",", NULL), NULL);
+}
+
+static void test_strsep_unescaped_empty_string(void)
+{
+	char str[] = "", *s = str, delim;
+
+	expect_streq(strsep_unescaped(&s, ",", &delim), "");
+	expect_chreq(delim, '\0');
+	expect_streq(strsep_unescaped(&s, ",", NULL), NULL);
+}
+
+static void test_strsep_unescaped_only_delimiters(void)
+{
+	char str[] = ",,,", *s = str;
+
+	expect_streq(strsep_unescaped(&s, ",", NULL), "");
+	expect_streq(strsep_unescaped(&s, ",", NULL), "");
+	expect_streq(strsep_unescaped(&s, ",", NULL), "");
+	expect_streq(strsep_unescaped(&s, ",", NULL), "");
+	expect_streq(strsep_unescaped(&s, ",", NULL), NULL);
+}
+
+static void test_strsep_unescaped(void)
+{
+	test_strsep_unescaped_basic();
+	test_strsep_unescaped_with_escape();
+	test_strsep_unescaped_double_backslash();
+	test_strsep_unescaped_trailing_escape();
+	test_strsep_unescaped_multiple_escaped();
+	test_strsep_unescaped_multiple_delims();
+	test_strsep_unescaped_multiple_delims_empty();
+	test_strsep_unescaped_no_delim();
+	test_strsep_unescaped_null_string();
+	test_strsep_unescaped_empty_string();
+	test_strsep_unescaped_only_delimiters();
+}
+
 static void test_string(void)
 {
 	test_strverscmp();
 	test_strjoin();
+	test_strsep_unescaped();
 }
 bselftest(parser, test_string);
-- 
2.39.5



