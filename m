Delivery-date: Tue, 10 Jan 2023 09:51:24 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFALt-007ZxJ-6G
	for lore@lore.pengutronix.de; Tue, 10 Jan 2023 09:51:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFALq-0008E5-Oh
	for lore@pengutronix.de; Tue, 10 Jan 2023 09:51:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tEQ0SD6dr4v28SYZmOON2M3aIQysYKf8FhKOuf+8ilU=; b=QEAxDDdmYE42ssMVa/n0EGJmwN
	R0cggA5Wv81dcaN/vOnosF2ZPWdCRKwDv39lslvQ0b+Jz7VNlqRziIOSo99uq1c02i/cLNQ3b7YU6
	ftoXTEKxr8Dr2IxwoQwhN1Tb6j2ksw255CcJgfMly80DPg8O7vNl9W+x2AeO8fCePT+72WCRWyY5Y
	gaxs+IOAAnGtPi0K2wKikrCzwfghavivHZn4UcBvq5OcH7zhLyc+pwIXJOMfkT6g0jxL+BB3XWMfu
	7uXjZMbon5E+um0QQ7vm/xjEdBlSdsrzEN0jPhOuDapAC/eEJbNboORNb5kdKrqlf5IrxDbzhpwlT
	tsxU/S3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFAKN-005uO7-O0; Tue, 10 Jan 2023 08:49:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFAKF-005uIV-8z
	for barebox@lists.infradead.org; Tue, 10 Jan 2023 08:49:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pFAK8-0007Yp-TC; Tue, 10 Jan 2023 09:49:36 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFAK8-0052Ak-8H; Tue, 10 Jan 2023 09:49:36 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFAK7-00EQeu-3I; Tue, 10 Jan 2023 09:49:35 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 10 Jan 2023 09:49:29 +0100
Message-Id: <20230110084930.3439001-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230110084930.3439001-1-a.fatoum@pengutronix.de>
References: <20230110084930.3439001-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_004943_340337_D2A65596 
X-CRM114-Status: GOOD (  14.83  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,LOTS_OF_MONEY,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/4] vsprintf: implement %pJP for printing JSONPaths
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We use an array of strings to represnt a JSONPath. Add a new %pJP format
specifier that can be used to print them. This is useful for error
messages when the lookup fails.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 lib/vsprintf.c     | 44 ++++++++++++++++++++++++++++++++++++++++++++
 test/self/printf.c | 17 +++++++++++++++++
 2 files changed, 61 insertions(+)

diff --git a/lib/vsprintf.c b/lib/vsprintf.c
index 693f3c0cc0c8..cdb3906ea2ff 100644
--- a/lib/vsprintf.c
+++ b/lib/vsprintf.c
@@ -197,6 +197,27 @@ static char *string(char *buf, const char *end, const char *s, int field_width,
 	return trailing_spaces(buf, end, len, &field_width, flags);
 }
 
+static __maybe_unused char *string_array(char *buf, const char *end, char *const *s,
+					 int field_width, int precision, int flags,
+					 const char *separator)
+{
+	size_t i, len = strlen(separator);
+
+	while (*s) {
+		buf = string(buf, end, *s, field_width, precision, flags);
+		if (!*++s)
+			break;
+
+		for (i = 0; i < len; ++i) {
+			if (buf < end)
+				*buf = separator[i];
+			++buf;
+		}
+	}
+
+	return buf;
+}
+
 static char *wstring(char *buf, const char *end, const wchar_t *s, int field_width,
 		     int precision, int flags)
 {
@@ -368,6 +389,26 @@ char *hex_string(char *buf, const char *end, const u8 *addr, int field_width,
 	return buf;
 }
 
+static noinline_for_stack
+char *jsonpath_string(char *buf, const char *end, char *const *path, int field_width,
+		 int precision, int flags, const char *fmt)
+{
+	if ((unsigned long)path < PAGE_SIZE)
+		return string(buf, end, "<NULL>", field_width, precision, flags);
+
+	if (buf < end)
+		*buf = '$';
+	++buf;
+
+	if (*path) {
+		if (buf < end)
+			*buf = '.';
+		++buf;
+	}
+
+	return string_array(buf, end, path, field_width, precision, flags, ".");
+}
+
 static noinline_for_stack
 char *address_val(char *buf, const char *end, const void *addr,
 		  int field_width, int precision, int flags, const char *fmt)
@@ -458,6 +499,9 @@ static char *pointer(const char *fmt, char *buf, const char *end, const void *pt
 		if (IS_ENABLED(CONFIG_PRINTF_HEXSTR))
 			return hex_string(buf, end, ptr, field_width, precision, flags, fmt);
 		break;
+	case 'J':
+		if (fmt[1] == 'P' && IS_ENABLED(CONFIG_JSMN))
+			return jsonpath_string(buf, end, ptr, field_width, precision, flags, fmt);
 	}
 
 	return raw_pointer(buf, end, ptr, field_width, precision, flags);
diff --git a/test/self/printf.c b/test/self/printf.c
index 7a74660868c2..eae40ed242c1 100644
--- a/test/self/printf.c
+++ b/test/self/printf.c
@@ -305,6 +305,22 @@ test_pointer(void)
 	errptr();
 }
 
+static void __init
+test_jsonpath(void)
+{
+	if (!IS_ENABLED(CONFIG_JSMN)) {
+		pr_info("skipping jsonpath tests: CONFIG_JSMN disabled in config\n");
+		skipped_tests += 5;
+		return;
+	}
+
+	test("<NULL>", "%pJP",  NULL);
+	test("$", "%pJP",  &(char *[]){ NULL });
+	test("$.1", "%pJP",  &(char *[]){ "1", NULL });
+	test("$.1.23", "%pJP",  &(char *[]){ "1", "23", NULL });
+	test("$.1.23.456", "%pJP",  &(char *[]){ "1", "23", "456", NULL });
+}
+
 static void __init test_printf(void)
 {
 	alloced_buffer = malloc(BUF_SIZE + 2*PAD_SIZE);
@@ -317,6 +333,7 @@ static void __init test_printf(void)
 	test_string();
 	test_pointer();
 	test_hexstr();
+	test_jsonpath();
 
 	free(alloced_buffer);
 }
-- 
2.30.2



