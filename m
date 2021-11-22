Delivery-date: Mon, 22 Nov 2021 09:50:07 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp51b-0003Qy-2Z
	for lore@lore.pengutronix.de; Mon, 22 Nov 2021 09:50:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp51Y-0000MR-70
	for lore@pengutronix.de; Mon, 22 Nov 2021 09:50:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Xam+JNVD0njwLQ7mC06ydNVAlYROqT+VE3UqO22X0Y=; b=yrjAJpIk5mDpKV
	HbVMcowjyuNdm/DLLw91zu8mXimzs/Me6gtTfS7cwZID2m4dNwY40xCnVx5PsWqMLtLOT1TFC7Am4
	g/z3Agh482gpWvkVQrdzmQhdG3jc+XjkvHC/iTo8UvVqLLtYWQQ2P6czsjnMkhk7r0UFMKVxd1lKQ
	/eNpH/nB0p+MQOetN4bB8NcRGMPpKP5yxkdeHz6SG03VQwbEwKoJKSVstkLpm1jNQj6ot4VuEqN0C
	2ydoP29UkHObgYGfD23EalJzvbqoeSJ9YwcpWBhry8ASuCGd/sJgLxFUcStQDvw/UOpJLjq8DLUlb
	UbIsgtuEQOEREmnsM+Jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mp50D-00FLVS-HI; Mon, 22 Nov 2021 08:48:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mp4zE-00FKz9-Cg
 for barebox@lists.infradead.org; Mon, 22 Nov 2021 08:47:44 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mp4zB-0007wW-9U; Mon, 22 Nov 2021 09:47:37 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mp4z9-00AtfN-NY; Mon, 22 Nov 2021 09:47:35 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 22 Nov 2021 09:47:21 +0100
Message-Id: <20211122084732.2597109-20-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211122084732.2597109-1-a.fatoum@pengutronix.de>
References: <20211122084732.2597109-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_004740_455562_69B657CF 
X-CRM114-Status: GOOD (  16.42  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 19/30] vsprintf: add optional support for %ls format modifier
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Incoming EFI loader support will deal a lot with wide strings, so it
makes sense to have printf directly support printing it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/efi/Kconfig |  1 +
 lib/Kconfig        |  3 +++
 lib/vsprintf.c     | 67 +++++++++++++++++++++++++++++++++++++---------
 3 files changed, 59 insertions(+), 12 deletions(-)

diff --git a/common/efi/Kconfig b/common/efi/Kconfig
index 55939b43d684..b4d94f739ce4 100644
--- a/common/efi/Kconfig
+++ b/common/efi/Kconfig
@@ -8,6 +8,7 @@ config EFI_BOOTUP
 	select EFI_GUID
 	select EFI_DEVICEPATH
 	select PRINTF_UUID
+	select PRINTF_WCHAR
 	select BLOCK
 	select PARTITION_DISK
 	select HW_HAS_PCI
diff --git a/lib/Kconfig b/lib/Kconfig
index ea6de76a22f9..718033e56e64 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -163,6 +163,9 @@ config PROGRESS_NOTIFIER
 config PRINTF_UUID
 	bool
 
+config PRINTF_WCHAR
+	bool
+
 config GENERIC_LIB_ASHLDI3
 	bool
 
diff --git a/lib/vsprintf.c b/lib/vsprintf.c
index 237aab0c02a1..85147e8d2e25 100644
--- a/lib/vsprintf.c
+++ b/lib/vsprintf.c
@@ -16,8 +16,10 @@
 #include <linux/math64.h>
 #include <malloc.h>
 #include <kallsyms.h>
+#include <wchar.h>
 
 #include <common.h>
+#include <pbl.h>
 
 /* we use this so that we can do without the ctype library */
 #define is_digit(c)	((c) >= '0' && (c) <= '9')
@@ -147,6 +149,32 @@ static char *number(char *buf, const char *end, unsigned long long num, int base
 #define PAGE_SIZE 4096
 #endif
 
+static char *leading_spaces(char *buf, const char *end,
+			    int len, int *field_width, int flags)
+{
+	if (!(flags & LEFT)) {
+		while (len < *field_width--) {
+			if (buf < end)
+				*buf = ' ';
+			++buf;
+		}
+	}
+
+	return buf;
+}
+
+static char *trailing_spaces(char *buf, const char *end,
+			     int len, int *field_width, int flags)
+{
+	while (len < *field_width--) {
+		if (buf < end)
+			*buf = ' ';
+		++buf;
+	}
+
+	return buf;
+}
+
 static char *string(char *buf, const char *end, const char *s, int field_width,
 		    int precision, int flags)
 {
@@ -156,25 +184,35 @@ static char *string(char *buf, const char *end, const char *s, int field_width,
 		s = "<NULL>";
 
 	len = strnlen(s, precision);
+	buf = leading_spaces(buf, end, len, &field_width, flags);
 
-	if (!(flags & LEFT)) {
-		while (len < field_width--) {
-			if (buf < end)
-				*buf = ' ';
-			++buf;
-		}
-	}
 	for (i = 0; i < len; ++i) {
 		if (buf < end)
 			*buf = *s;
 		++buf; ++s;
 	}
-	while (len < field_width--) {
+
+	return trailing_spaces(buf, end, len, &field_width, flags);
+}
+
+static char *wstring(char *buf, const char *end, const wchar_t *s, int field_width,
+		     int precision, int flags)
+{
+	int len, i;
+
+	if ((unsigned long)s < PAGE_SIZE)
+		s = L"<NULL>";
+
+	len = wcsnlen(s, precision);
+	leading_spaces(buf, end, len, &field_width, flags);
+
+	for (i = 0; i < len; ++i) {
 		if (buf < end)
-			*buf = ' ';
-		++buf;
+			wctomb(buf, *s);
+		++buf; ++s;
 	}
-	return buf;
+
+	return trailing_spaces(buf, end, len, &field_width, flags);
 }
 
 static char *raw_pointer(char *buf, const char *end, const void *ptr, int field_width,
@@ -528,7 +566,12 @@ int vsnprintf(char *buf, size_t size, const char *fmt, va_list args)
 				continue;
 
 			case 's':
-				str = string(str, end, va_arg(args, char *), field_width, precision, flags);
+				if (IS_ENABLED(CONFIG_PRINTF_WCHAR) && !IN_PBL && qualifier == 'l')
+					str = wstring(str, end, va_arg(args, wchar_t *),
+						      field_width, precision, flags);
+				else
+					str = string(str, end, va_arg(args, char *),
+						     field_width, precision, flags);
 				continue;
 
 			case 'p':
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

