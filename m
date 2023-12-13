Delivery-date: Wed, 13 Dec 2023 15:01:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rDPnh-002E82-2O
	for lore@lore.pengutronix.de;
	Wed, 13 Dec 2023 15:01:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rDPni-0003B1-0l
	for lore@pengutronix.de; Wed, 13 Dec 2023 15:01:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=gh3man74T9oQRfISlY6ofr+lka4uFSei2fdDxIwqggo=; b=Mafq7IMpqhYeCc2Pe/SjtYgIQ2
	3V/sDTpu0rG9FF+YIWtI8+19+FG0kZ8HvDdKcO+aptPCcxcP01u/kLscY8w6/KZVYEw9ao+k/Ya/2
	rkKvKao9lW3o8kRVLGn0McQIrFXsbYGvkFhJWotVnhruyqMfbI/taT72gHMgGvebcCCJdrqUcXff8
	CuPhcIiRVc4Em1HpwI+ZpaXW+i/5D09G45y3TFx9RvSaVjMdnSnRlt9Wd09nt76JTWNdlkjynRQKA
	2QsAWFFsz6QFea9eza1gq3SVRZlOQ7+ENVVKcQLLq/fOEW5m9BePI2H8wvbGnQgY2p7ehzpyiRNTB
	4fQxw9SQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDPmU-00Evic-2b;
	Wed, 13 Dec 2023 14:00:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDPmS-00Evhf-0i
	for barebox@lists.infradead.org;
	Wed, 13 Dec 2023 14:00:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rDPmQ-0001kx-Ru; Wed, 13 Dec 2023 15:00:06 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rDPmQ-00FaGn-Fa; Wed, 13 Dec 2023 15:00:06 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rDPmQ-003loO-1M;
	Wed, 13 Dec 2023 15:00:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 13 Dec 2023 15:00:04 +0100
Message-Id: <20231213140004.898488-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231213_060008_262374_8D3113CA 
X-CRM114-Status: UNSURE (   8.49  )
X-CRM114-Notice: Please train this message.
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
Subject: [PATCH] crypto: crc32: implement crc32() with crc32_no_comp()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 crypto/crc32.c | 31 +++++++++----------------------
 1 file changed, 9 insertions(+), 22 deletions(-)

diff --git a/crypto/crc32.c b/crypto/crc32.c
index 287dfa3303..7e969cd18e 100644
--- a/crypto/crc32.c
+++ b/crypto/crc32.c
@@ -77,28 +77,6 @@ static void make_crc_table(void)
 #define DO4(buf)  DO2(buf); DO2(buf);
 #define DO8(buf)  DO4(buf); DO4(buf);
 
-STATIC uint32_t crc32(uint32_t crc, const void *_buf, unsigned int len)
-{
-	const unsigned char *buf = _buf;
-
-	make_crc_table();
-
-	crc = crc ^ 0xffffffffL;
-	while (len >= 8) {
-		DO8(buf);
-		len -= 8;
-	}
-	if (len)
-		do {
-			DO1(buf);
-		} while (--len);
-	return crc ^ 0xffffffffL;
-}
-
-#ifdef __BAREBOX__
-EXPORT_SYMBOL(crc32);
-#endif
-
 /* No ones complement version. JFFS2 (and other things ?)
  * don't use ones compliment in their CRC calculations.
  */
@@ -120,6 +98,15 @@ STATIC uint32_t crc32_no_comp(uint32_t crc, const void *_buf, unsigned int len)
 	return crc;
 }
 
+STATIC uint32_t crc32(uint32_t crc, const void *buf, unsigned int len)
+{
+	return ~crc32_no_comp(~crc, buf, len);
+}
+
+#ifdef __BAREBOX__
+EXPORT_SYMBOL(crc32);
+#endif
+
 STATIC uint32_t crc32_be(uint32_t crc, const void *_buf, unsigned int len)
 {
 	const unsigned char *buf = _buf;
-- 
2.39.2



