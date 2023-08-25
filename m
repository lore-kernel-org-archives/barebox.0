Delivery-date: Fri, 25 Aug 2023 20:19:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qZbOr-008jLb-Mq
	for lore@lore.pengutronix.de; Fri, 25 Aug 2023 20:19:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qZbOp-0002oK-Hg
	for lore@pengutronix.de; Fri, 25 Aug 2023 20:19:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=8ulWvc7mnd9VMq3/JwLGXPRWHL1VkJFfUmfdW9fyt6o=; b=4qKv6FDWqT6e8rlkZa+vNHmArS
	Fkx0RVRsWyH116ngRTNA5bn5FPvOv8+c9hNDANcTZVNo7D5QkdveQhFSFYnWhvBZ9PXHT+vqwXumG
	ema1C9rgZ1wkv+4TAcowrYTJ4OR3DTw41c3sIXbeYCMPlLb6ZDH/vElOUaCz9HKU6hOgTqK8m/6xy
	nC3iawXA6yzswwnNUmRiGejxubOWQqI6J/oIz+rESO0ySTNtdDaR8F3DqfbKRxwF0nt6dqTxk35U+
	eQqg8zluTUpH8iFZFCa5UF8Q1moRH1siqqluxTFKwvrIokM53pFg2eci0emjUNn3gIFtitq5QP0L7
	s7a9bppw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZbNc-005qsi-2f;
	Fri, 25 Aug 2023 18:17:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZbNZ-005qrs-1F
	for barebox@lists.infradead.org;
	Fri, 25 Aug 2023 18:17:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qZbNX-0002jY-VP; Fri, 25 Aug 2023 20:17:52 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qZbNX-001ZQt-AQ; Fri, 25 Aug 2023 20:17:51 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qZbNW-00C0TI-1r;
	Fri, 25 Aug 2023 20:17:50 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 25 Aug 2023 20:17:49 +0200
Message-Id: <20230825181749.2861735-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230825_111753_424616_87E122C2 
X-CRM114-Status: GOOD (  12.07  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] crypto: crc32: use uint32_t instead of ulong
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Using ulong just wastes space on 64-bit platforms, so use fixed size
32-bit integers instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 crypto/crc32.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/crypto/crc32.c b/crypto/crc32.c
index 998cbc9de297..95cb2212db2b 100644
--- a/crypto/crc32.c
+++ b/crypto/crc32.c
@@ -24,7 +24,7 @@
 
 #ifdef CONFIG_DYNAMIC_CRC_TABLE
 
-static ulong *crc_table;
+static uint32_t *crc_table;
 
 /*
   Generate a table for a byte-wise 32-bit CRC calculation on the polynomial:
@@ -52,22 +52,22 @@ static ulong *crc_table;
 */
 static void make_crc_table(void)
 {
-  ulong c;
+  uint32_t c;
   int n, k;
-  ulong poly;            /* polynomial exclusive-or pattern */
+  uint32_t poly;            /* polynomial exclusive-or pattern */
   /* terms of polynomial defining this crc (except x^32): */
   static const char p[] = {0,1,2,4,5,7,8,10,11,12,16,22,23,26};
 
   /* make exclusive-or pattern from polynomial (0xedb88320L) */
-  poly = 0L;
+  poly = 0;
   for (n = 0; n < sizeof(p)/sizeof(char); n++)
-    poly |= 1L << (31 - p[n]);
+    poly |= 1U << (31 - p[n]);
 
-  crc_table = xmalloc(sizeof(ulong) * 256);
+  crc_table = xmalloc(sizeof(uint32_t) * 256);
 
   for (n = 0; n < 256; n++)
   {
-    c = (ulong)n;
+    c = (uint32_t)n;
     for (k = 0; k < 8; k++)
       c = c & 1 ? poly ^ (c >> 1) : c >> 1;
     crc_table[n] = c;
@@ -77,7 +77,7 @@ static void make_crc_table(void)
 /* ========================================================================
  * Table of CRC-32's of all single-byte values (made by make_crc_table)
  */
-static const ulong crc_table[256] = {
+static const uint32_t crc_table[256] = {
   0x00000000L, 0x77073096L, 0xee0e612cL, 0x990951baL, 0x076dc419L,
   0x706af48fL, 0xe963a535L, 0x9e6495a3L, 0x0edb8832L, 0x79dcb8a4L,
   0xe0d5e91eL, 0x97d2d988L, 0x09b64c2bL, 0x7eb17cbdL, 0xe7b82d07L,
-- 
2.39.2



