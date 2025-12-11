Delivery-date: Thu, 11 Dec 2025 21:46:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnYT-00AQXk-05
	for lore@lore.pengutronix.de;
	Thu, 11 Dec 2025 21:46:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnYS-0001XD-DD
	for lore@pengutronix.de; Thu, 11 Dec 2025 21:46:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Og7/+oxevnV6YXRTdDhIZ0vzzeYDbmCPIkke8OAYKb8=; b=IHCC6PDUkSdgezvUnQFK8tJyoL
	sGmpA2TJouta64x0DndRQUamOAGbi8gbnfAEtDfn2KwiKiwLkgrho+iZX65D77GQ1V8hwHjSSmXlC
	fOrTbDXh0FJlCEtN48ENw7PXhMopYpnmOJb2zoHzyDKzTsRx5+F6DOmP2gyxDZKqIzdKl3P7S3Lq1
	qYVqe2iZZFKV7CqzSwm8z+BnuN52bjsEa0NG7pYyayQKFWZhmeWautBQJiuUvF4hAU3oIr6/9bJxa
	T/jQnqdQQSeLkcYxIs9NnGQMMi9E1a46aCzNCEdYm+hO9nrMBk070Q8mhLAaMwkv3kML5ZMR+95w0
	gTTth+gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnY1-0000000HHT9-0a1J;
	Thu, 11 Dec 2025 20:46:01 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnXz-0000000HHSv-2Aa6
	for barebox@bombadil.infradead.org;
	Thu, 11 Dec 2025 20:45:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Og7/+oxevnV6YXRTdDhIZ0vzzeYDbmCPIkke8OAYKb8=; b=fJN8E33Dj4wy8ysQHJe2Yx8RyV
	7GyMbBwLZ24e/Ehfb+sEmfF3gvrXjAf77dQy1gN3DtXoT1nVvFdBLxd28+dJ4PFKFS7b2E66I1m9G
	d3sUqv8Xk7i21UZ3dmrkSpdTqg0y7eqR7MqnMINJEIpAL1oWlAkIHHFo8YS+JRnbpyQGLc7TfVH0h
	IuS7cTi+v3KYAggp1fyYEMWdnEa0pLyz6ZeUpwCrQJtBa9DiC+ZVV56U7TpPbIwHMOk9nWJHc5+9y
	3BoCv/2bLkM8EpsMETK9RkR4++lXSN1QZRwd0wHMQ6hFvZB59QGKuL3/7Af7fRnq5IGkSzl/XIuAa
	YbueZFZg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTmgR-0000000FaEx-2seF
	for barebox@lists.infradead.org;
	Thu, 11 Dec 2025 19:50:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnXw-0001Pd-Aa; Thu, 11 Dec 2025 21:45:56 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnXw-005BXx-0S;
	Thu, 11 Dec 2025 21:45:56 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnXw-0000000BJGZ-0ChD;
	Thu, 11 Dec 2025 21:45:56 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 11 Dec 2025 21:45:52 +0100
Message-ID: <20251211204555.2694174-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251211204555.2694174-1-a.fatoum@pengutronix.de>
References: <20251211204555.2694174-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_195039_889988_14C17B5F 
X-CRM114-Status: GOOD (  13.73  )
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
Subject: [PATCH 2/2] lib: wchar: reimplement in terms of Linux UCS2 helpers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Let's make use of the Linux functions for those that have direct
counterparts.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/wchar.h | 11 ++++-----
 lib/wchar.c     | 62 ++-----------------------------------------------
 2 files changed, 7 insertions(+), 66 deletions(-)

diff --git a/include/wchar.h b/include/wchar.h
index 02818815e183..5377aa27c08a 100644
--- a/include/wchar.h
+++ b/include/wchar.h
@@ -4,6 +4,7 @@
 
 #include <linux/types.h>
 #include <linux/stddef.h>
+#include <linux/ucs2_string.h>
 
 wchar_t *strdup_wchar(const wchar_t *src);
 
@@ -15,16 +16,14 @@ wchar_t *strdup_char_to_wchar(const char *src);
 
 char *strdup_wchar_to_char(const wchar_t *src);
 
-size_t wcslen(const wchar_t *s);
-
-size_t wcsnlen(const wchar_t *s, size_t maxlen);
+#define wcsnlen		ucs2_strnlen
+#define wcslen		ucs2_strlen
+#define wcsncmp		ucs2_strncmp
+#define wcscmp(s1, s2)	wcsncmp((s1), (s2), ~0UL)
 
 #define MB_CUR_MAX 4
 
 int mbtowc(wchar_t *pwc, const char *s, size_t n);
 int wctomb(char *s, wchar_t wc);
 
-int wcscmp (const wchar_t *s1, const wchar_t *s2);
-int wcsncmp (const wchar_t *s1, const wchar_t *s2, size_t n);
-
 #endif /* __WCHAR_H */
diff --git a/lib/wchar.c b/lib/wchar.c
index 96db8116286a..05961ce1bd52 100644
--- a/lib/wchar.c
+++ b/lib/wchar.c
@@ -1,42 +1,10 @@
-/*
- * wchar.c - wide character support
- *
- * Copyright (c) 2014 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2
- * as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
+// SPDX-License-Identifier: GPL-2.0
+// SPDX-FileCopyrightText: 2014 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
 
 #include <wchar.h>
 #include <malloc.h>
 #include <string.h>
 
-size_t wcslen(const wchar_t *s)
-{
-	size_t len = 0;
-
-	while (*s++)
-		len++;
-
-	return len;
-}
-
-size_t wcsnlen(const wchar_t * s, size_t count)
-{
-	const wchar_t *sc;
-
-	for (sc = s; count-- && *sc != L'\0'; ++sc)
-		/* nothing */;
-	return sc - s;
-}
-
 wchar_t *strdup_wchar(const wchar_t *src)
 {
 	int len;
@@ -124,29 +92,3 @@ char *strdup_wchar_to_char(const wchar_t *src)
 
 	return dst;
 }
-
-int wcscmp(const wchar_t *s1, const wchar_t *s2)
-{
-	while (*s1 == *s2++) {
-		if (*s1++ == 0)
-			return 0;
-	}
-
-	return *s1 - *--s2;
-}
-
-int wcsncmp (const wchar_t *s1, const wchar_t *s2, size_t n)
-{
-	if (n == 0)
-		return 0;
-
-	do {
-		if (*s1 != *s2++)
-			return *s1 - *--s2;
-
-		if (*s1++ == 0)
-			break;
-	} while (--n != 0);
-
-	return 0;
-}
-- 
2.47.3



