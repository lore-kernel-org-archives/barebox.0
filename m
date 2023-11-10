Delivery-date: Fri, 10 Nov 2023 22:45:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1ZK9-006U16-2B
	for lore@lore.pengutronix.de;
	Fri, 10 Nov 2023 22:45:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1ZK9-0004rf-Jw
	for lore@pengutronix.de; Fri, 10 Nov 2023 22:45:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/Uz9EsCyWBgZbyHatfKguELaOu8cQPWHwXLl8Qpf8fQ=; b=zQbhNcNv7gtaUpfY/HkOzmRZ99
	KCnKfMMQlgaj/4veBYQDD2SFIL7D6wDAWeDcghzCnGeBBn/CjlhV4A767m1YF3duLTV8DKag04S3f
	Qk+hCRfQvtozfc7G5gTDFnr0H6s2DogmBwxQ/HIBrP3ht4QUU4+VpEW+3y+7nqugB/IMfdwblXpQ9
	BdAwqMENxOlIP4tpso4v3o+z9oCsa2CotnjnIaKAaEt19pFKWFneHTLVR4wiuwLLKEQg98bmQ5edq
	Sb/5+QaU/IJd2bENbRwONRRMLKlKMFPE6RZuk8WEX/3bkygLSk/hvdORugNuGhR3+IqqTpQR7uIaS
	6/GOjUDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1ZIt-009UGL-0T;
	Fri, 10 Nov 2023 21:44:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1ZIl-009UCE-0a
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 21:44:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r1ZIe-0004E4-VZ; Fri, 10 Nov 2023 22:44:24 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r1ZIe-0086yY-IB; Fri, 10 Nov 2023 22:44:24 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r1ZIe-00BRGz-1W;
	Fri, 10 Nov 2023 22:44:24 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 10 Nov 2023 22:44:12 +0100
Message-Id: <20231110214421.2726093-10-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231110214421.2726093-1-a.fatoum@pengutronix.de>
References: <20231110214421.2726093-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_134431_247645_5988BB95 
X-CRM114-Status: GOOD (  16.75  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 09/18] string: implement strscpy
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

strscpy is meant to be a safer alternative to strscpy, which always
terminates the destination string and returns an error code if
truncation happens. To enable porting kernel code using it, import the
definition.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/string.h |  3 ++
 lib/string.c           | 71 ++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 74 insertions(+)

diff --git a/include/linux/string.h b/include/linux/string.h
index 75c8cf818b39..32ce56939699 100644
--- a/include/linux/string.h
+++ b/include/linux/string.h
@@ -46,6 +46,9 @@ extern char * strncpy(char *,const char *, __kernel_size_t);
 #ifndef __HAVE_ARCH_STRLCPY
 size_t strlcpy(char *, const char *, size_t);
 #endif
+#ifndef __HAVE_ARCH_STRSCPY
+ssize_t strscpy(char *, const char *, size_t);
+#endif
 #ifndef __HAVE_ARCH_STRCAT
 extern char * strcat(char *, const char *);
 #endif
diff --git a/lib/string.c b/lib/string.c
index 166ef190d6aa..bf0f0455ab3f 100644
--- a/lib/string.c
+++ b/lib/string.c
@@ -22,6 +22,7 @@
 #include <linux/types.h>
 #include <string.h>
 #include <linux/ctype.h>
+#include <asm/word-at-a-time.h>
 #include <malloc.h>
 
 #ifndef __HAVE_ARCH_STRCASECMP
@@ -87,6 +88,76 @@ char * strcpy(char * dest,const char *src)
 #endif
 EXPORT_SYMBOL(strcpy);
 
+#ifndef __HAVE_ARCH_STRSCPY
+ssize_t strscpy(char *dest, const char *src, size_t count)
+{
+	const struct word_at_a_time constants = WORD_AT_A_TIME_CONSTANTS;
+	size_t max = count;
+	long res = 0;
+
+	if (count == 0 || WARN_ON_ONCE(count > INT_MAX))
+		return -E2BIG;
+
+#ifdef CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS
+	/*
+	 * If src is unaligned, don't cross a page boundary,
+	 * since we don't know if the next page is mapped.
+	 */
+	if ((long)src & (sizeof(long) - 1)) {
+		size_t limit = PAGE_SIZE - ((long)src & (PAGE_SIZE - 1));
+		if (limit < max)
+			max = limit;
+	}
+#else
+	/* If src or dest is unaligned, don't do word-at-a-time. */
+	if (((long) dest | (long) src) & (sizeof(long) - 1))
+		max = 0;
+#endif
+
+	/*
+	 * read_word_at_a_time() below may read uninitialized bytes after the
+	 * trailing zero and use them in comparisons. Disable this optimization
+	 * under KMSAN to prevent false positive reports.
+	 */
+	if (IS_ENABLED(CONFIG_KMSAN))
+		max = 0;
+
+	while (max >= sizeof(unsigned long)) {
+		unsigned long c, data;
+
+		c = read_word_at_a_time(src+res);
+		if (has_zero(c, &data, &constants)) {
+			data = prep_zero_mask(c, data, &constants);
+			data = create_zero_mask(data);
+			*(unsigned long *)(dest+res) = c & zero_bytemask(data);
+			return res + find_zero(data);
+		}
+		*(unsigned long *)(dest+res) = c;
+		res += sizeof(unsigned long);
+		count -= sizeof(unsigned long);
+		max -= sizeof(unsigned long);
+	}
+
+	while (count) {
+		char c;
+
+		c = src[res];
+		dest[res] = c;
+		if (!c)
+			return res;
+		res++;
+		count--;
+	}
+
+	/* Hit buffer length without finding a NUL; force NUL-termination. */
+	if (res)
+		dest[res-1] = '\0';
+
+	return -E2BIG;
+}
+EXPORT_SYMBOL(strscpy);
+#endif
+
 /**
  * stpcpy - Copy a %NUL terminated string, but return pointer to %NUL
  * @dest: Where to copy the string to
-- 
2.39.2



