Delivery-date: Thu, 18 Dec 2025 12:40:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCMn-00CoUh-1N
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 12:40:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCM4-0001qa-Ob
	for lore@pengutronix.de; Thu, 18 Dec 2025 12:40:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kUKOaAeCPq5Xxe727JMWv2IM0xEdk5hUCxf5nkW1LUw=; b=UH/tcS9kooPjfCy98GlUgN9xLL
	ZivuI/VCCx6QQZd4v7RBYo/FU/vn7gV8UrksQoACPZy/ndZK0f2lcLxWLs0u5gGktzOfKSsP3JSHs
	EOZ0WcNttDf/5ok4EtQZaxszCDe277DphFIlV+KfQdYf2g2S9TXiOb946CxpbPtOXtliSiCKhVCX2
	bKRtuMnnQ1snVDRQieetrJqLfpRzOYt/p+9KyK832PaBsnn+TMT8VeQdeTaX0A89vwDF4ErNNgTCi
	6aN43wL+aVWgepFSPrkg6REymYq2gonGtFj6gLjTqfVtsrz8cFAHM9Ej88KItsWAgPXWU2Bn33JyF
	lhvOO43w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCK6-00000008L4x-25gb;
	Thu, 18 Dec 2025 11:37:34 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCJY-00000008KPa-1sR4
	for barebox@bombadil.infradead.org;
	Thu, 18 Dec 2025 11:37:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=kUKOaAeCPq5Xxe727JMWv2IM0xEdk5hUCxf5nkW1LUw=; b=oyXleqj9GiVxwFFkQX5e4brT1S
	CRLK7QOSKRPp0gJYL5cWcckNpXUkrBhW6jZPFDlFQROPrqpTpGcncodfvUItkEexHu1d7kfOEUHEJ
	8PyGTAzx8CVyvZvZUV4GRZt2OCN4Bcu6KUCnx3Nu15ixENRKVLxDeZzVR/6cWEV2FbMdLTZwMtHMo
	YQJx6bvGssLaQNR/Bqhx9+QTMm6k1e2GJ/wkEC/pLRyxNByxuRrvkYhX5hv5+980eZpLwERxuKuew
	+l6fOmTXq1hDX9EOxckx7f20TVgnWhSBUT04tmcQHjoLx6/bG/H4tQqs7hCQiAXdyFKRjBEqPJ4As
	53l/zrkQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWBRx-00000008fRP-0Zzf
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 10:41:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJN-0008BP-46; Thu, 18 Dec 2025 12:36:49 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJM-006GvW-31;
	Thu, 18 Dec 2025 12:36:48 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw4-0000000AVre-2Eag;
	Thu, 18 Dec 2025 12:12:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Dec 2025 11:37:51 +0100
Message-ID: <20251218111242.1527495-32-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
References: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_104141_422247_795D3257 
X-CRM114-Status: GOOD (  27.92  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v1 31/54] efi: loader: protocol: add unicode collation support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Like with the HII support before it, implementing this protocol is also
necessary for the EFI shell to run.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/loader/protocols/Kconfig             |  18 ++
 efi/loader/protocols/Makefile            |   1 +
 efi/loader/protocols/unicode_collation.c | 329 +++++++++++++++++++++++
 include/efi/protocol/unicode_collation.h |  24 ++
 4 files changed, 372 insertions(+)
 create mode 100644 efi/loader/protocols/unicode_collation.c
 create mode 100644 include/efi/protocol/unicode_collation.h

diff --git a/efi/loader/protocols/Kconfig b/efi/loader/protocols/Kconfig
index 4ed7499da4a2..8c8bfabd7c0f 100644
--- a/efi/loader/protocols/Kconfig
+++ b/efi/loader/protocols/Kconfig
@@ -13,4 +13,22 @@ config EFI_LOADER_HII
 	  barebox implements enough of its features to be able to run the UEFI
 	  Shell, but not more than that.
 
+config EFI_LOADER_UNICODE_COLLATION_PROTOCOL2
+	bool "Unicode collation protocol"
+	default y
+	help
+	  The Unicode collation protocol is used for lexical comparisons. It is
+	  required to run the UEFI shell.
+
+config EFI_LOADER_UNICODE_CAPITALIZATION
+	bool "Support Unicode capitalization"
+	default y
+	depends on EFI_LOADER_UNICODE_COLLATION_PROTOCOL2
+	select UNICODE_CAPITALIZATION
+	help
+	  Select this option to enable correct handling of the capitalization of
+	  Unicode codepoints in the range 0x0000-0xffff. If this option is not
+	  set, only the the correct handling of the letters of the codepage
+	  used by the FAT file system is ensured.
+
 endmenu
diff --git a/efi/loader/protocols/Makefile b/efi/loader/protocols/Makefile
index f4a9c0650fd9..b6e39b0666da 100644
--- a/efi/loader/protocols/Makefile
+++ b/efi/loader/protocols/Makefile
@@ -5,3 +5,4 @@ obj-$(CONFIG_DISK) += disk.o
 obj-$(CONFIG_VIDEO) += gop.o
 obj-$(CONFIG_CONSOLE_FULL) += console.o
 obj-$(CONFIG_EFI_LOADER_HII) += hii.o hii_config.o
+obj-$(CONFIG_EFI_LOADER_UNICODE_COLLATION_PROTOCOL2) += unicode_collation.o
diff --git a/efi/loader/protocols/unicode_collation.c b/efi/loader/protocols/unicode_collation.c
new file mode 100644
index 000000000000..4d9a26501723
--- /dev/null
+++ b/efi/loader/protocols/unicode_collation.c
@@ -0,0 +1,329 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * EFI Unicode collation protocol
+ *
+ * Copyright (c) 2018 Heinrich Schuchardt <xypron.glpk@gmx.de>
+ */
+
+#include <charset.h>
+#include <charset.h>
+#include <linux/printk.h>
+#include <efi/guid.h>
+#include <efi/loader.h>
+#include <efi/loader/trace.h>
+#include <efi/loader/object.h>
+#include <efi/error.h>
+#include <efi/protocol/unicode_collation.h>
+
+/* Characters that may not be used in FAT 8.3 file names */
+static const char illegal[] = "+,<=>:;\"/\\|?*[]\x7f";
+
+/*
+ * EDK2 assumes codepage 1250 when creating FAT 8.3 file names.
+ * Linux defaults to codepage 437 for FAT 8.3 file names.
+ */
+/* Unicode code points for code page 437 characters 0x80 - 0xff */
+static const u16 *codepage = codepage_437;
+
+/**
+ * efi_stri_coll() - compare utf-16 strings case-insenitively
+ *
+ * @this:	unicode collation protocol instance
+ * @s1:		first string
+ * @s2:		second string
+ *
+ * This function implements the StriColl() service of the
+ * EFI_UNICODE_COLLATION_PROTOCOL2.
+ *
+ * See the Unified Extensible Firmware Interface (UEFI) specification for
+ * details.
+ *
+ * Return:	0: s1 == s2, > 0: s1 > s2, < 0: s1 < s2
+ */
+static efi_intn_t EFIAPI efi_stri_coll(
+		struct efi_unicode_collation_protocol *this, u16 *s1, u16 *s2)
+{
+	s32 c1, c2;
+	efi_intn_t ret = 0;
+
+	EFI_ENTRY("%p, %ls, %ls", this, s1, s2);
+	for (; *s1 | *s2; ++s1, ++s2) {
+		c1 = utf_to_upper(*s1);
+		c2 = utf_to_upper(*s2);
+		if (c1 < c2) {
+			ret = -1;
+			goto out;
+		} else if (c1 > c2) {
+			ret = 1;
+			goto out;
+		}
+	}
+out:
+	EFI_EXIT(EFI_SUCCESS);
+	return ret;
+}
+
+/**
+ * next_lower() - get next codepoint converted to lower case
+ *
+ * @string:	pointer to u16 string, on return advanced by one codepoint
+ * Return:	first codepoint of string converted to lower case
+ */
+static s32 next_lower(const u16 **string)
+{
+	return utf_to_lower(utf16_get(string));
+}
+
+/**
+ * metai_match() - compare utf-16 string with a pattern string case-insenitively
+ *
+ * @string:	string to compare
+ * @pattern:	pattern string
+ *
+ * The pattern string may use these:
+ *	- * matches >= 0 characters
+ *	- ? matches 1 character
+ *	- [<char1><char2>...<charN>] match any character in the set
+ *	- [<char1>-<char2>] matches any character in the range
+ *
+ * This function is called my efi_metai_match().
+ *
+ * For '*' pattern searches this function calls itself recursively.
+ * Performance-wise this is suboptimal, especially for multiple '*' wildcards.
+ * But it results in simple code.
+ *
+ * Return:	true if the string is matched.
+ */
+static bool metai_match(const u16 *string, const u16 *pattern)
+{
+	s32 first, s, p;
+
+	for (; *string && *pattern;) {
+		const u16 *string_old = string;
+
+		s = next_lower(&string);
+		p = next_lower(&pattern);
+
+		switch (p) {
+		case '*':
+			/* Match 0 or more characters */
+			for (;; s = next_lower(&string)) {
+				if (metai_match(string_old, pattern))
+					return true;
+				if (!s)
+					return false;
+				string_old = string;
+			}
+		case '?':
+			/* Match any one character */
+			break;
+		case '[':
+			/* Match any character in the set */
+			p = next_lower(&pattern);
+			first = p;
+			if (first == ']')
+				/* Empty set */
+				return false;
+			p = next_lower(&pattern);
+			if (p == '-') {
+				/* Range */
+				p = next_lower(&pattern);
+				if (s < first || s > p)
+					return false;
+				p = next_lower(&pattern);
+				if (p != ']')
+					return false;
+			} else {
+				/* Set */
+				bool hit = false;
+
+				if (s == first)
+					hit = true;
+				for (; p && p != ']';
+				     p = next_lower(&pattern)) {
+					if (p == s)
+						hit = true;
+				}
+				if (!hit || p != ']')
+					return false;
+			}
+			break;
+		default:
+			/* Match one character */
+			if (p != s)
+				return false;
+		}
+	}
+	if (!*pattern && !*string)
+		return true;
+	return false;
+}
+
+/**
+ * efi_metai_match() - compare utf-16 string with a pattern string
+ *		       case-insenitively
+ *
+ * @this:	unicode collation protocol instance
+ * @string:	string to compare
+ * @pattern:	pattern string
+ *
+ * The pattern string may use these:
+ *	- * matches >= 0 characters
+ *	- ? matches 1 character
+ *	- [<char1><char2>...<charN>] match any character in the set
+ *	- [<char1>-<char2>] matches any character in the range
+ *
+ * This function implements the MetaMatch() service of the
+ * EFI_UNICODE_COLLATION_PROTOCOL2.
+ *
+ * Return:	true if the string is matched.
+ */
+static bool EFIAPI efi_metai_match(struct efi_unicode_collation_protocol *this,
+				   const u16 *string, const u16 *pattern)
+{
+	bool ret;
+
+	EFI_ENTRY("%p, %ls, %ls", this, string, pattern);
+	ret =  metai_match(string, pattern);
+	EFI_EXIT(EFI_SUCCESS);
+	return ret;
+}
+
+/**
+ * efi_str_lwr() - convert to lower case
+ *
+ * @this:	unicode collation protocol instance
+ * @string:	string to convert
+ *
+ * The conversion is done in place. As long as upper and lower letters use the
+ * same number of words this does not pose a problem.
+ *
+ * This function implements the StrLwr() service of the
+ * EFI_UNICODE_COLLATION_PROTOCOL2.
+ */
+static void EFIAPI efi_str_lwr(struct efi_unicode_collation_protocol *this,
+			       u16 *string)
+{
+	EFI_ENTRY("%p, %ls", this, string);
+	for (; *string; ++string)
+		*string = utf_to_lower(*string);
+	EFI_EXIT(EFI_SUCCESS);
+}
+
+/**
+ * efi_str_upr() - convert to upper case
+ *
+ * @this:	unicode collation protocol instance
+ * @string:	string to convert
+ *
+ * The conversion is done in place. As long as upper and lower letters use the
+ * same number of words this does not pose a problem.
+ *
+ * This function implements the StrUpr() service of the
+ * EFI_UNICODE_COLLATION_PROTOCOL2.
+ */
+static void EFIAPI efi_str_upr(struct efi_unicode_collation_protocol *this,
+			       u16 *string)
+{
+	EFI_ENTRY("%p, %ls", this, string);
+	for (; *string; ++string)
+		*string = utf_to_upper(*string);
+	EFI_EXIT(EFI_SUCCESS);
+}
+
+/**
+ * efi_fat_to_str() - convert an 8.3 file name from an OEM codepage to Unicode
+ *
+ * @this:	unicode collation protocol instance
+ * @fat_size:	size of the string to convert
+ * @fat:	string to convert
+ * @string:	converted string
+ *
+ * This function implements the FatToStr() service of the
+ * EFI_UNICODE_COLLATION_PROTOCOL2.
+ */
+static void EFIAPI efi_fat_to_str(struct efi_unicode_collation_protocol *this,
+				  efi_uintn_t fat_size, char *fat, u16 *string)
+{
+	efi_uintn_t i;
+	u16 c;
+
+	EFI_ENTRY("%p, %zu, %s, %p", this, fat_size, fat, string);
+	for (i = 0; i < fat_size; ++i) {
+		c = (unsigned char)fat[i];
+		if (c > 0x80)
+			c = codepage[c - 0x60];
+		string[i] = c;
+		if (!c)
+			break;
+	}
+	string[i] = 0;
+	EFI_EXIT(EFI_SUCCESS);
+}
+
+/**
+ * efi_str_to_fat() - convert a utf-16 string to legal characters for a FAT
+ *                    file name in an OEM code page
+ *
+ * @this:	unicode collation protocol instance
+ * @string:	Unicode string to convert
+ * @fat_size:	size of the target buffer
+ * @fat:	converted string
+ *
+ * This function implements the StrToFat() service of the
+ * EFI_UNICODE_COLLATION_PROTOCOL2.
+ *
+ * Return:	true if an illegal character was substituted by '_'.
+ */
+static bool EFIAPI efi_str_to_fat(struct efi_unicode_collation_protocol *this,
+				  const u16 *string, efi_uintn_t fat_size,
+				  char *fat)
+{
+	efi_uintn_t i;
+	s32 c;
+	bool ret = false;
+
+	EFI_ENTRY("%p, %ls, %zu, %p", this, string, fat_size, fat);
+	for (i = 0; i < fat_size;) {
+		c = utf16_get(&string);
+		switch (c) {
+		/* Ignore period and space */
+		case '.':
+		case ' ':
+			continue;
+		case 0:
+			break;
+		}
+		c = utf_to_upper(c);
+		if (utf_to_cp(&c, codepage) ||
+		    (c && (c < 0x20 || strchr(illegal, c)))) {
+			ret = true;
+			c = '_';
+		}
+
+		fat[i] = c;
+		if (!c)
+			break;
+		++i;
+	}
+	EFI_EXIT(EFI_SUCCESS);
+	return ret;
+}
+
+static const struct efi_unicode_collation_protocol efi_unicode_collation_protocol2 = {
+	.stri_coll = efi_stri_coll,
+	.metai_match = efi_metai_match,
+	.str_lwr = efi_str_lwr,
+	.str_upr = efi_str_upr,
+	.fat_to_str = efi_fat_to_str,
+	.str_to_fat = efi_str_to_fat,
+	.supported_languages = "en",
+};
+
+static int efi_unicode_collation_init(void)
+{
+	efi_add_root_node_protocol_deferred(&efi_guid_unicode_collation_protocol2,
+					    &efi_unicode_collation_protocol2);
+	return 0;
+}
+device_initcall(efi_unicode_collation_init);
diff --git a/include/efi/protocol/unicode_collation.h b/include/efi/protocol/unicode_collation.h
new file mode 100644
index 000000000000..13ebad6fb0d8
--- /dev/null
+++ b/include/efi/protocol/unicode_collation.h
@@ -0,0 +1,24 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef _EFI_PROTOCOL_UNICODE_COLLATION_H
+#define _EFI_PROTOCOL_UNICODE_COLLATION_H
+
+#include <efi/types.h>
+
+struct efi_unicode_collation_protocol {
+	efi_intn_t (EFIAPI *stri_coll)(
+		struct efi_unicode_collation_protocol *this, u16 *s1, u16 *s2);
+	bool (EFIAPI *metai_match)(struct efi_unicode_collation_protocol *this,
+				   const u16 *string, const u16 *patter);
+	void (EFIAPI *str_lwr)(struct efi_unicode_collation_protocol
+			       *this, u16 *string);
+	void (EFIAPI *str_upr)(struct efi_unicode_collation_protocol *this,
+			       u16 *string);
+	void (EFIAPI *fat_to_str)(struct efi_unicode_collation_protocol *this,
+				  efi_uintn_t fat_size, char *fat, u16 *string);
+	bool (EFIAPI *str_to_fat)(struct efi_unicode_collation_protocol *this,
+				  const u16 *string, efi_uintn_t fat_size,
+				  char *fat);
+	char *supported_languages;
+};
+
+#endif
-- 
2.47.3



