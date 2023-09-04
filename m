Delivery-date: Mon, 04 Sep 2023 10:20:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qd4oc-003SvJ-EW
	for lore@lore.pengutronix.de; Mon, 04 Sep 2023 10:20:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qd4oa-0004r0-H7
	for lore@pengutronix.de; Mon, 04 Sep 2023 10:20:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G3c71WeG/sbREDYCdKUZwy5KisK0AaJ/joN1g4O3ZKI=; b=tu8+uW3+jr32eS
	hiB4hbJFe0wfwigus0fkqZEKkJkkZUzurYZVfdBbXbdcvHb6pKLq/sEPzHTn2jofVSWyfju8MrzOc
	Z5scjPxekEoZays1v5MdjVXphintaOt3DOH/4sV7zLlvMur1dC82YAfgASYo6ejkk3WhOCYcjzKkY
	KEOAFtoPTl7nsR/McsygaK5Xdle+hDwVWoULOmlBJKz+C6AmrdljoMLFLD8bZKxnNeT5h5ZyPV4pK
	x6Q/iTxSJQLjnuAPe11im9igBxYu/ccey8YwqYSY/JkQlCgTbMAchtxBFQ8TlSxRq+zotsHC8moyk
	FX2jvjohYiBTN2fBUA4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qd4nI-003Ye5-2F;
	Mon, 04 Sep 2023 08:18:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qd4nD-003YcI-1C
	for barebox@lists.infradead.org;
	Mon, 04 Sep 2023 08:18:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qd4n9-0002zo-Rb; Mon, 04 Sep 2023 10:18:39 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qd4n9-003pjz-8i; Mon, 04 Sep 2023 10:18:39 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qd4n8-008Nl6-F5; Mon, 04 Sep 2023 10:18:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon,  4 Sep 2023 10:18:23 +0200
Message-Id: <20230904081825.1997618-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230904081825.1997618-1-s.hauer@pengutronix.de>
References: <20230904081825.1997618-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230904_011843_435935_FE6F8974 
X-CRM114-Status: GOOD (  17.49  )
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
Cc: Johannes Zink <j.zink@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/4] crypto: crc32: Lindent
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Make the code a bit more readable.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 crypto/crc32.c | 101 +++++++++++++++++++++++++------------------------
 1 file changed, 51 insertions(+), 50 deletions(-)

diff --git a/crypto/crc32.c b/crypto/crc32.c
index ff5c429ad1..39572ff225 100644
--- a/crypto/crc32.c
+++ b/crypto/crc32.c
@@ -8,7 +8,7 @@
  * For conditions of distribution and use, see copyright notice in zlib.h
  */
 
-#ifdef __BAREBOX__	/* Shut down "ANSI does not permit..." warnings */
+#ifdef __BAREBOX__		/* Shut down "ANSI does not permit..." warnings */
 #include <common.h>
 #include <xfuncs.h>
 #include <fs.h>
@@ -50,52 +50,50 @@ static uint32_t *crc_table;
 */
 static void make_crc_table(void)
 {
-  uint32_t c;
-  int n, k;
-  uint32_t poly;            /* polynomial exclusive-or pattern */
-  /* terms of polynomial defining this crc (except x^32): */
-  static const char p[] = {0,1,2,4,5,7,8,10,11,12,16,22,23,26};
-
-  /* make exclusive-or pattern from polynomial (0xedb88320L) */
-  poly = 0;
-  for (n = 0; n < sizeof(p)/sizeof(char); n++)
-    poly |= 1U << (31 - p[n]);
-
-  crc_table = xmalloc(sizeof(uint32_t) * 256);
-
-  for (n = 0; n < 256; n++)
-  {
-    c = (uint32_t)n;
-    for (k = 0; k < 8; k++)
-      c = c & 1 ? poly ^ (c >> 1) : c >> 1;
-    crc_table[n] = c;
-  }
+	uint32_t c;
+	int n, k;
+	uint32_t poly; /* polynomial exclusive-or pattern */
+	/* terms of polynomial defining this crc (except x^32): */
+	static const char p[] = { 0, 1, 2, 4, 5, 7, 8, 10, 11, 12, 16, 22, 23, 26 };
+
+	/* make exclusive-or pattern from polynomial (0xedb88320L) */
+	poly = 0;
+	for (n = 0; n < sizeof(p) / sizeof(char); n++)
+		poly |= 1U << (31 - p[n]);
+
+	crc_table = xmalloc(sizeof(uint32_t) * 256);
+
+	for (n = 0; n < 256; n++) {
+		c = (uint32_t) n;
+		for (k = 0; k < 8; k++)
+			c = c & 1 ? poly ^ (c >> 1) : c >> 1;
+		crc_table[n] = c;
+	}
 }
 
-/* ========================================================================= */
 #define DO1(buf) crc = crc_table[((int)crc ^ (*buf++)) & 0xff] ^ (crc >> 8);
 #define DO2(buf)  DO1(buf); DO1(buf);
 #define DO4(buf)  DO2(buf); DO2(buf);
 #define DO8(buf)  DO4(buf); DO4(buf);
 
-/* ========================================================================= */
 STATIC uint32_t crc32(uint32_t crc, const void *_buf, unsigned int len)
 {
-    const unsigned char *buf = _buf;
+	const unsigned char *buf = _buf;
 
 	if (!crc_table)
 		make_crc_table();
-    crc = crc ^ 0xffffffffL;
-    while (len >= 8)
-    {
-      DO8(buf);
-      len -= 8;
-    }
-    if (len) do {
-      DO1(buf);
-    } while (--len);
-    return crc ^ 0xffffffffL;
+	crc = crc ^ 0xffffffffL;
+	while (len >= 8) {
+		DO8(buf);
+		len -= 8;
+	}
+	if (len)
+		do {
+			DO1(buf);
+		} while (--len);
+	return crc ^ 0xffffffffL;
 }
+
 #ifdef __BAREBOX__
 EXPORT_SYMBOL(crc32);
 #endif
@@ -105,36 +103,38 @@ EXPORT_SYMBOL(crc32);
  */
 STATIC uint32_t crc32_no_comp(uint32_t crc, const void *_buf, unsigned int len)
 {
-   const unsigned char *buf = _buf;
+	const unsigned char *buf = _buf;
 
 	if (!crc_table)
 		make_crc_table();
-    while (len >= 8)
-    {
-      DO8(buf);
-      len -= 8;
-    }
-    if (len) do {
-      DO1(buf);
-    } while (--len);
-
-    return crc;
+	while (len >= 8) {
+		DO8(buf);
+		len -= 8;
+	}
+	if (len)
+		do {
+			DO1(buf);
+		} while (--len);
+
+	return crc;
 }
 
 STATIC uint32_t crc32_be(uint32_t crc, const void *_buf, unsigned int len)
 {
 	const unsigned char *buf = _buf;
 	int i;
+
 	while (len--) {
 		crc ^= *buf++ << 24;
 		for (i = 0; i < 8; i++)
-			crc = (crc << 1) ^ ((crc & 0x80000000) ? 0x04c11db7 : 0);
+			crc =
+			    (crc << 1) ^ ((crc & 0x80000000) ? 0x04c11db7 : 0);
 	}
 	return crc;
 }
 
-STATIC int file_crc(char *filename, ulong start, ulong size, ulong *crc,
-		    ulong *total)
+STATIC int file_crc(char *filename, ulong start, ulong size, ulong * crc,
+		    ulong * total)
 {
 	int fd, now;
 	int ret = 0;
@@ -153,7 +153,7 @@ STATIC int file_crc(char *filename, ulong start, ulong size, ulong *crc,
 		off_t lseek_ret;
 		errno = 0;
 		lseek_ret = lseek(fd, start, SEEK_SET);
-		if (lseek_ret == (off_t)-1 && errno) {
+		if (lseek_ret == (off_t) - 1 && errno) {
 			perror("lseek");
 			ret = -1;
 			goto out;
@@ -163,7 +163,7 @@ STATIC int file_crc(char *filename, ulong start, ulong size, ulong *crc,
 	buf = xmalloc(4096);
 
 	while (size) {
-		now = min((ulong)4096, size);
+		now = min((ulong) 4096, size);
 		now = read(fd, buf, now);
 		if (now < 0) {
 			ret = now;
@@ -184,6 +184,7 @@ STATIC int file_crc(char *filename, ulong start, ulong size, ulong *crc,
 
 	return ret;
 }
+
 #ifdef __BAREBOX__
 EXPORT_SYMBOL(file_crc);
 #endif
-- 
2.39.2



