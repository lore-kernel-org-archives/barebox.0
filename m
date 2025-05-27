Delivery-date: Tue, 27 May 2025 22:14:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uK0h2-000xLc-1K
	for lore@lore.pengutronix.de;
	Tue, 27 May 2025 22:14:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uK0h1-0002xy-Ns
	for lore@pengutronix.de; Tue, 27 May 2025 22:14:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CvdEZuc2LLofpxzU1lJbO5dFmXQfLRzGiXAC5MKjsKY=; b=HHMxAOAfq8Rqlg6MvKkHC5ZBgA
	0AO8c4jXvqGx+ZmaRzLJNaeYeKvUyi5NFlmxI34tRhcQxOCVrgHb9WeZFb7WoaBCackilYexYYmmA
	rUI/lUO1P5szpLoxys/xps5yCS9eYVvAzhoUYxdAPLaqh7dqkp8EMsW93/XQ5hUTihzfHIaVQhYPV
	9s2Tav/nqMCFl2bn/RsAVyCu60Enbk8AKjPLttrUmEIesgnUGvxNDzAdvluDc6QD/4qlNDjjKTe/G
	BqzG4N5mlZEFsPcaCI5xbgXysLqeqTdxU56ZtQRruOAtQq50EHgqQ93if3o6je88gJiui0Zgig87Z
	8OgTKTvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK0ga-0000000BUTH-40h1;
	Tue, 27 May 2025 20:14:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK0gU-0000000BUMr-04OC
	for barebox@lists.infradead.org;
	Tue, 27 May 2025 20:14:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uK0gS-0002IM-RU; Tue, 27 May 2025 22:14:00 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uK0gS-000TVc-1t;
	Tue, 27 May 2025 22:14:00 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uK0gS-003jQO-1a;
	Tue, 27 May 2025 22:14:00 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 27 May 2025 22:13:58 +0200
Message-Id: <20250527201359.889550-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250527201359.889550-1-a.fatoum@pengutronix.de>
References: <20250527201359.889550-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_131402_060371_76FCEACE 
X-CRM114-Status: GOOD (  14.33  )
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
Subject: [PATCH 8/9] vsprintf: add %ps format specifier for symbols without offset
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

%pS always prints an offset, which can look confusing outside of debug
output. Add a %ps variant like Linux also has.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/kallsyms.c |  2 +-
 common/kallsyms.c   |  6 +++++-
 include/kallsyms.h  |  4 +++-
 lib/vsprintf.c      | 14 ++++++++++----
 4 files changed, 19 insertions(+), 7 deletions(-)

diff --git a/commands/kallsyms.c b/commands/kallsyms.c
index 163cd99c1079..121d245500f9 100644
--- a/commands/kallsyms.c
+++ b/commands/kallsyms.c
@@ -22,7 +22,7 @@ static int do_kallsyms(int argc, char *argv[])
 	if (kstrtoul(argv[1], 16, &addr) == 0) {
 		char sym[KSYM_SYMBOL_LEN];
 
-		sprint_symbol(sym, addr);
+		sprint_symbol(sym, addr, true);
 
 		printf("%s\n", sym);
 		return 0;
diff --git a/common/kallsyms.c b/common/kallsyms.c
index 3c5904f8a833..61eae2794537 100644
--- a/common/kallsyms.c
+++ b/common/kallsyms.c
@@ -189,7 +189,7 @@ const char *kallsyms_lookup(unsigned long addr,
 }
 
 /* Look up a kernel symbol and return it in a text buffer. */
-int sprint_symbol(char *buffer, unsigned long address)
+int sprint_symbol(char *buffer, unsigned long address, bool with_offset)
 {
 	char *modname;
 	const char *name;
@@ -205,12 +205,16 @@ int sprint_symbol(char *buffer, unsigned long address)
 	len = strlen(buffer);
 	buffer += len;
 
+	if (!with_offset)
+		goto out;
+
 	if (modname)
 		len += sprintf(buffer, "+%#lx/%#lx [%s]",
 						offset, size, modname);
 	else
 		len += sprintf(buffer, "+%#lx/%#lx", offset, size);
 
+out:
 	return len;
 }
 EXPORT_SYMBOL_GPL(sprint_symbol);
diff --git a/include/kallsyms.h b/include/kallsyms.h
index f61efc9e0c42..c93287302bde 100644
--- a/include/kallsyms.h
+++ b/include/kallsyms.h
@@ -2,6 +2,8 @@
 #ifndef __KALLSYMS_H
 #define __KALLSYMS_H
 
+#include <linux/types.h>
+
 #define KSYM_NAME_LEN 128
 #define KSYM_SYMBOL_LEN (sizeof("%s+%#lx/%#lx [%s]") + (KSYM_NAME_LEN - 1) + \
 		2*(BITS_PER_LONG*3/10) + (MODULE_NAME_LEN - 1) + 1)
@@ -12,6 +14,6 @@ const char *kallsyms_lookup(unsigned long addr,
 			    char **modname, char *namebuf);
 
 /* Look up a kernel symbol and return it in a text buffer. */
-int sprint_symbol(char *buffer, unsigned long address);
+int sprint_symbol(char *buffer, unsigned long address, bool with_offset);
 
 #endif /* __KALLSYMS_H */
diff --git a/lib/vsprintf.c b/lib/vsprintf.c
index 32429dd76c23..ba87f6c210d2 100644
--- a/lib/vsprintf.c
+++ b/lib/vsprintf.c
@@ -254,12 +254,12 @@ static char *raw_pointer(char *buf, const char *end, const void *ptr, int field_
 
 #if IN_PROPER
 static char *symbol_string(char *buf, const char *end, const void *ptr, int field_width,
-			   int precision, int flags)
+			   int precision, int flags, bool with_offset)
 {
 	unsigned long value = (unsigned long) ptr;
 #ifdef CONFIG_KALLSYMS
 	char sym[KSYM_SYMBOL_LEN];
-	sprint_symbol(sym, value);
+	sprint_symbol(sym, value, with_offset);
 	return string(buf, end, sym, field_width, precision, flags);
 #else
 	field_width = 2*sizeof(void *);
@@ -484,7 +484,8 @@ char *device_node_string(char *buf, const char *end, const struct device_node *n
  *
  * Right now we handle following Linux-compatible format specifiers:
  *
- * - 'S' For symbolic direct pointers
+ * - 'S' For symbolic direct pointers (or function descriptors) with offset
+ * - 's' For symbolic direct pointers (or function descriptors) without offset
  * - 'U' For a 16 byte UUID/GUID, it prints the UUID/GUID in the form
  *       "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
  *       Options for %pU are:
@@ -523,9 +524,14 @@ char *device_node_string(char *buf, const char *end, const struct device_node *n
 static char *pointer(const char *fmt, char *buf, const char *end, const void *ptr,
 		     int field_width, int precision, int flags)
 {
+	bool with_offset = false;
+
 	switch (*fmt) {
 	case 'S':
-		return symbol_string(buf, end, ptr, field_width, precision, flags);
+		with_offset = true;
+		fallthrough;
+	case 's':
+		return symbol_string(buf, end, ptr, field_width, precision, flags, with_offset);
 	case 'U':
 		if (IS_ENABLED(CONFIG_PRINTF_UUID))
 			return uuid_string(buf, end, ptr, field_width, precision, flags, fmt);
-- 
2.39.5



