Delivery-date: Thu, 18 Dec 2025 12:38:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCKZ-00CoJe-13
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 12:38:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCKF-0000Ut-DX
	for lore@pengutronix.de; Thu, 18 Dec 2025 12:38:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=i4BT7mTOU6Q2GC0h5PMmOScl15HdSxlJFcRUmpn5wzo=; b=0Cx6kOpP0OkIyF0iVC3/kwITqZ
	AapGsjd1/xjXNofnG5E9XD5jD4Mw3HlRBppbvqLB71Jp6Ap4nIx2y0NKHq+g/JgRfGnh8L7Edx1q6
	K04EVngMw1O7/CWRWwxkZRmWj/H3GXbZorEyw9zwZg5rFQYTP2EDuxaKTfnKVjBUxLcKRzUYXI7EM
	5tV3cmV2ismumL6LIXcoiO9UICCpPqdDZAMIzAP2oaen2/jQ7iRZw/df4/ydqLxPB4ZhMDjXeTf9g
	2TxmZvz3pdCYPuy8upXTnY9f+tE2A6A2vCt4qobLaRO30D0pkOKNvB2y/JouCvmUBUzqWuIHqH3L6
	YsDCKxzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCJP-00000008KFt-3E6I;
	Thu, 18 Dec 2025 11:36:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCJN-00000008KB5-0zAH
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 11:36:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJL-00087S-D6; Thu, 18 Dec 2025 12:36:47 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJL-006GuD-0h;
	Thu, 18 Dec 2025 12:36:47 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw3-0000000AVre-2BB9;
	Thu, 18 Dec 2025 12:12:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Dec 2025 11:37:31 +0100
Message-ID: <20251218111242.1527495-12-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
References: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_033649_274754_27EFEF29 
X-CRM114-Status: GOOD (  12.42  )
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
Subject: [PATCH v1 11/54] crypto: crc32: implement position independent CRC32
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For use in the barebox EFI runtime, implement a self-contained CRC32
that will be placed into the .efi_runtime section.

The code is in the public domain.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 crypto/crc32.c | 24 ++++++++++++++++++++++++
 include/crc.h  |  2 ++
 2 files changed, 26 insertions(+)

diff --git a/crypto/crc32.c b/crypto/crc32.c
index 5013556c0bea..bcfc8e99ee39 100644
--- a/crypto/crc32.c
+++ b/crypto/crc32.c
@@ -17,9 +17,11 @@
 #include <malloc.h>
 #include <linux/ctype.h>
 #include <errno.h>
+#include <efi/attributes.h>
 #define STATIC
 #else
 #define STATIC static inline
+#define __efi_runtime
 #endif
 
 static uint32_t crc_table[sizeof(uint32_t) * 256];
@@ -107,6 +109,28 @@ STATIC uint32_t crc32(uint32_t crc, const void *buf, unsigned int len)
 EXPORT_SYMBOL(crc32);
 #endif
 
+/* Taken from Hacker's Delight 2nd Edition by Henry S. Warren */
+STATIC __efi_runtime  uint32_t __pi_crc32(uint32_t crc, const void *_buf, unsigned int len)
+{
+	const unsigned char *buf = _buf;
+	uint32_t mask;
+
+	crc = ~crc;
+	for (int i = 0; i < len; i++) {
+		crc = crc ^ buf[i];
+		for (int j = 7; j >= 0; j--) {
+			mask = -(crc & 1);
+			crc = (crc >> 1) ^ (0xEDB88320 & mask);
+		}
+	}
+
+	return ~crc;
+}
+
+#ifdef __BAREBOX__
+EXPORT_SYMBOL(__pi_crc32);
+#endif
+
 STATIC uint32_t crc32_be(uint32_t crc, const void *_buf, unsigned int len)
 {
 	const unsigned char *buf = _buf;
diff --git a/include/crc.h b/include/crc.h
index 3eba635dbaa4..c7d52f7cd078 100644
--- a/include/crc.h
+++ b/include/crc.h
@@ -18,4 +18,6 @@ uint32_t crc32_no_comp(uint32_t, const void *, unsigned int);
 int file_crc(char *filename, unsigned long start, unsigned long size,
 	     unsigned long *crc, unsigned long *total);
 
+uint32_t __pi_crc32(uint32_t, const void *, unsigned int);
+
 #endif /* __INCLUDE_CRC_H */
-- 
2.47.3



