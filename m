Delivery-date: Thu, 11 Dec 2025 21:46:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnYS-00AQXP-1W
	for lore@lore.pengutronix.de;
	Thu, 11 Dec 2025 21:46:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnYR-0001XB-Gd
	for lore@pengutronix.de; Thu, 11 Dec 2025 21:46:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=X0C9D4ZFGpXsZZqg0F1y7ayCrmh69re5o4T3Bk/2Vro=; b=1QHkh4lAtga41YXlKbsErDmn3T
	s5TjAIgkD8Lu7C2K9sv+PspOhJYe5ryq0/fmpDvYud6a5nU2TX3lMnlNGaoZOBfEAymBJ+XNagOrS
	FJ8BqSH5wUhnbEO+kfTE8oELPSNW0BUvhdXcOOMVWQzrZjPvS5ABqyWWgxxKwliXX9gdNKkAzZhlf
	vRExbNaX3YuKEm/OEntERUy+hM6fBvtXEq+t+/CbTEDUhz86acJnAdWEtO6wI6GUyZUiNmI8RqxMP
	MYBzp8qDVDVClFSICk5qbQb87EghzM6yJWGZSf6GiDalZFnxkg3EMeUk2sJoVvl1g/HJQrw2ZD5VD
	rha2tFhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnY1-0000000HHTF-1krL;
	Thu, 11 Dec 2025 20:46:01 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnXz-0000000HHSw-2SuZ
	for barebox@bombadil.infradead.org;
	Thu, 11 Dec 2025 20:45:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=X0C9D4ZFGpXsZZqg0F1y7ayCrmh69re5o4T3Bk/2Vro=; b=Ko2LKMfspccZc7wO8vmu42SG/b
	GQMTj3E4IayX6bpbjqGt28DLUtAq7Ox6nOKCTy3uiNk1fZsJuZFRQd/IWAznotjiAml30to6q+88f
	J9CWfZ4AzX2+lJ2rI03MLnRqzpxhYnVBBKz1MtQoSTOG6E1qyrjentjaUktqTjWZC9pBfu91rns3C
	pECM9Hb68LZ60CG6YOiEtL4+zWNI6rbugX1e1mkcSq7INodWQjGLUS6ZkZuViE9Wf2KYQ1vMEbd/P
	TuSFxC0HtrNajoFFCbDwJT8u1hvpARDQnsXwJAb8la03gkAG+BRelCs0CIaRhMOLmBH0jEjp/SyZb
	4BMn5D4w==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTmgR-0000000FaEw-2sbY
	for barebox@lists.infradead.org;
	Thu, 11 Dec 2025 19:50:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnXw-0001Pc-9G; Thu, 11 Dec 2025 21:45:56 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnXw-005BXw-0J;
	Thu, 11 Dec 2025 21:45:56 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnXw-0000000BJGZ-013M;
	Thu, 11 Dec 2025 21:45:56 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 11 Dec 2025 21:45:51 +0100
Message-ID: <20251211204555.2694174-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_195039_871573_5E1EB42F 
X-CRM114-Status: GOOD (  24.13  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] lib: import Linux UCS2 library functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Our wide character functions are not actually capable of dealing with an
extended character set. Import the UCS2 (basically UTF-16 without
surrogate pairs) support from Linux for this purpose.

This will be used later for the EFI support.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/ucs2_string.h |  22 +++++
 lib/Makefile                |   2 +-
 lib/ucs2_string.c           | 181 ++++++++++++++++++++++++++++++++++++
 3 files changed, 204 insertions(+), 1 deletion(-)
 create mode 100644 include/linux/ucs2_string.h
 create mode 100644 lib/ucs2_string.c

diff --git a/include/linux/ucs2_string.h b/include/linux/ucs2_string.h
new file mode 100644
index 000000000000..5bce9d697fa2
--- /dev/null
+++ b/include/linux/ucs2_string.h
@@ -0,0 +1,22 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* SPDX-Comment: Origin-URL: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/include/linux/ucs2_string.h?id=e4c89f9380017b6b2e63836e2de1af8eb4535384 */
+#ifndef _LINUX_UCS2_STRING_H_
+#define _LINUX_UCS2_STRING_H_
+
+#include <linux/types.h>	/* for size_t */
+#include <linux/stddef.h>	/* for NULL */
+
+typedef u16 ucs2_char_t;
+
+unsigned long ucs2_strnlen(const ucs2_char_t *s, size_t maxlength);
+unsigned long ucs2_strlen(const ucs2_char_t *s);
+unsigned long ucs2_strsize(const ucs2_char_t *data, unsigned long maxlength);
+ssize_t ucs2_strscpy(ucs2_char_t *dst, const ucs2_char_t *src, size_t count);
+int ucs2_strncmp(const ucs2_char_t *a, const ucs2_char_t *b, size_t len);
+int ucs2_strcmp(const ucs2_char_t *a, const ucs2_char_t *b);
+
+unsigned long ucs2_utf8size(const ucs2_char_t *src);
+unsigned long ucs2_as_utf8(u8 *dest, const ucs2_char_t *src,
+			   unsigned long maxlength);
+
+#endif /* _LINUX_UCS2_STRING_H_ */
diff --git a/lib/Makefile b/lib/Makefile
index 9ab4cad0359c..38343fdbafcc 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -68,7 +68,7 @@ obj-y			+= gui/
 obj-$(CONFIG_XYMODEM)	+= xymodem.o
 obj-y			+= unlink-recursive.o
 obj-$(CONFIG_STMP_DEVICE) += stmp-device.o
-obj-y			+= wchar.o
+obj-y			+= ucs2_string.o wchar.o
 obj-$(CONFIG_FUZZ)	+= fuzz.o
 obj-y			+= libfile.o
 obj-y			+= bitmap.o
diff --git a/lib/ucs2_string.c b/lib/ucs2_string.c
new file mode 100644
index 000000000000..db3f34f6b70c
--- /dev/null
+++ b/lib/ucs2_string.c
@@ -0,0 +1,181 @@
+// SPDX-License-Identifier: GPL-2.0
+// SPDX-Comment: Origin-URL: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/lib/ucs2_string.c?id=91640531b92ec63e260b9d5c681d387676ec462c
+
+#include <linux/ucs2_string.h>
+#include <linux/module.h>
+#include <linux/bug.h>
+#include <linux/errno.h>
+#include <linux/limits.h>
+
+/* Return the number of unicode characters in data */
+unsigned long
+ucs2_strnlen(const ucs2_char_t *s, size_t maxlength)
+{
+        unsigned long length = 0;
+
+        while (*s++ != 0 && length < maxlength)
+                length++;
+        return length;
+}
+EXPORT_SYMBOL(ucs2_strnlen);
+
+unsigned long
+ucs2_strlen(const ucs2_char_t *s)
+{
+        return ucs2_strnlen(s, ~0UL);
+}
+EXPORT_SYMBOL(ucs2_strlen);
+
+/*
+ * Return the number of bytes is the length of this string
+ * Note: this is NOT the same as the number of unicode characters
+ */
+unsigned long
+ucs2_strsize(const ucs2_char_t *data, unsigned long maxlength)
+{
+        return ucs2_strnlen(data, maxlength/sizeof(ucs2_char_t)) * sizeof(ucs2_char_t);
+}
+EXPORT_SYMBOL(ucs2_strsize);
+
+/**
+ * ucs2_strscpy() - Copy a UCS2 string into a sized buffer.
+ *
+ * @dst: Pointer to the destination buffer where to copy the string to.
+ * @src: Pointer to the source buffer where to copy the string from.
+ * @count: Size of the destination buffer, in UCS2 (16-bit) characters.
+ *
+ * Like strscpy(), only for UCS2 strings.
+ *
+ * Copy the source string @src, or as much of it as fits, into the destination
+ * buffer @dst. The behavior is undefined if the string buffers overlap. The
+ * destination buffer @dst is always NUL-terminated, unless it's zero-sized.
+ *
+ * Return: The number of characters copied into @dst (excluding the trailing
+ * %NUL terminator) or -E2BIG if @count is 0 or @src was truncated due to the
+ * destination buffer being too small.
+ */
+ssize_t ucs2_strscpy(ucs2_char_t *dst, const ucs2_char_t *src, size_t count)
+{
+	long res;
+
+	/*
+	 * Ensure that we have a valid amount of space. We need to store at
+	 * least one NUL-character.
+	 */
+	if (count == 0 || WARN_ON_ONCE(count > INT_MAX / sizeof(*dst)))
+		return -E2BIG;
+
+	/*
+	 * Copy at most 'count' characters, return early if we find a
+	 * NUL-terminator.
+	 */
+	for (res = 0; res < count; res++) {
+		ucs2_char_t c;
+
+		c = src[res];
+		dst[res] = c;
+
+		if (!c)
+			return res;
+	}
+
+	/*
+	 * The loop above terminated without finding a NUL-terminator,
+	 * exceeding the 'count': Enforce proper NUL-termination and return
+	 * error.
+	 */
+	dst[count - 1] = 0;
+	return -E2BIG;
+}
+EXPORT_SYMBOL(ucs2_strscpy);
+
+int
+ucs2_strncmp(const ucs2_char_t *a, const ucs2_char_t *b, size_t len)
+{
+        while (1) {
+                if (len == 0)
+                        return 0;
+                if (*a < *b)
+                        return -1;
+                if (*a > *b)
+                        return 1;
+                if (*a == 0) /* implies *b == 0 */
+                        return 0;
+                a++;
+                b++;
+                len--;
+        }
+}
+EXPORT_SYMBOL(ucs2_strncmp);
+
+int
+ucs2_strcmp(const ucs2_char_t *a, const ucs2_char_t *b)
+{
+	return ucs2_strncmp(a, b, ~0UL);
+}
+EXPORT_SYMBOL(ucs2_strncmp);
+
+unsigned long
+ucs2_utf8size(const ucs2_char_t *src)
+{
+	unsigned long i;
+	unsigned long j = 0;
+
+	for (i = 0; src[i]; i++) {
+		u16 c = src[i];
+
+		if (c >= 0x800)
+			j += 3;
+		else if (c >= 0x80)
+			j += 2;
+		else
+			j += 1;
+	}
+
+	return j;
+}
+EXPORT_SYMBOL(ucs2_utf8size);
+
+/*
+ * copy at most maxlength bytes of whole utf8 characters to dest from the
+ * ucs2 string src.
+ *
+ * The return value is the number of characters copied, not including the
+ * final NUL character.
+ */
+unsigned long
+ucs2_as_utf8(u8 *dest, const ucs2_char_t *src, unsigned long maxlength)
+{
+	unsigned int i;
+	unsigned long j = 0;
+	unsigned long limit = ucs2_strnlen(src, maxlength);
+
+	for (i = 0; maxlength && i < limit; i++) {
+		u16 c = src[i];
+
+		if (c >= 0x800) {
+			if (maxlength < 3)
+				break;
+			maxlength -= 3;
+			dest[j++] = 0xe0 | (c & 0xf000) >> 12;
+			dest[j++] = 0x80 | (c & 0x0fc0) >> 6;
+			dest[j++] = 0x80 | (c & 0x003f);
+		} else if (c >= 0x80) {
+			if (maxlength < 2)
+				break;
+			maxlength -= 2;
+			dest[j++] = 0xc0 | (c & 0x7c0) >> 6;
+			dest[j++] = 0x80 | (c & 0x03f);
+		} else {
+			maxlength -= 1;
+			dest[j++] = c & 0x7f;
+		}
+	}
+	if (maxlength)
+		dest[j] = '\0';
+	return j;
+}
+EXPORT_SYMBOL(ucs2_as_utf8);
+
+MODULE_DESCRIPTION("UCS2 string handling");
+MODULE_LICENSE("GPL v2");
-- 
2.47.3



