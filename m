Delivery-date: Mon, 04 Sep 2023 10:20:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qd4od-003Svi-3F
	for lore@lore.pengutronix.de; Mon, 04 Sep 2023 10:20:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qd4ob-0004rT-3s
	for lore@pengutronix.de; Mon, 04 Sep 2023 10:20:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MEN55//hsy+BoHNCLsfzuAjn8VQrT80Kfk9VvJ0Pq+w=; b=lOFifHscv3z4jA
	+urHAyDZYJdjMvVOWcpa/YXEKS9H4bYCd0rFgNhUU75xBi/jDV6mrLSUHCjfU1sJR9aY9orhV2kMS
	89yvVSxBzx6rMYxL6bxVv1XtFtUajcSPOl6n84pvQ62YKf0ISaGzlyT1Me66UjthdL+ylkRbrKPhg
	6l4DU+AUz3CVRqmbYN6I73k1DfNrwMP5ouEK56IpxikwioSiJRlLphVcBcln3jGa6RSzOR9i9xVic
	i+n8D7dd+xQDkhA1ZX6TuYfw/Znv0uDmo73rT63HsWlwBR0p5CQ324NzeRw29EKUgg4opyMJgmIpQ
	Be6vDjnZNdxj7A44EDVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qd4nH-003Ydk-1X;
	Mon, 04 Sep 2023 08:18:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qd4nD-003YcL-1C
	for barebox@lists.infradead.org;
	Mon, 04 Sep 2023 08:18:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qd4nA-00031C-ES; Mon, 04 Sep 2023 10:18:40 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qd4n9-003pk8-RM; Mon, 04 Sep 2023 10:18:39 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qd4n8-008NlD-Fd; Mon, 04 Sep 2023 10:18:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon,  4 Sep 2023 10:18:24 +0200
Message-Id: <20230904081825.1997618-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230904081825.1997618-1-s.hauer@pengutronix.de>
References: <20230904081825.1997618-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230904_011843_440611_06F2982D 
X-CRM114-Status: GOOD (  11.40  )
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
Subject: [PATCH 3/4] crypto: crc32: allocate crc_table statically
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Allocate crc_table statically. This makes the crc32 implementation
usable in PBL where we have no memory allocation function.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 crypto/crc32.c | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/crypto/crc32.c b/crypto/crc32.c
index 39572ff225..7cfc779078 100644
--- a/crypto/crc32.c
+++ b/crypto/crc32.c
@@ -22,7 +22,7 @@
 #define STATIC static inline
 #endif
 
-static uint32_t *crc_table;
+static uint32_t crc_table[sizeof(uint32_t) * 256];
 
 /*
   Generate a table for a byte-wise 32-bit CRC calculation on the polynomial:
@@ -56,13 +56,14 @@ static void make_crc_table(void)
 	/* terms of polynomial defining this crc (except x^32): */
 	static const char p[] = { 0, 1, 2, 4, 5, 7, 8, 10, 11, 12, 16, 22, 23, 26 };
 
+	if (crc_table[0])
+		return;
+
 	/* make exclusive-or pattern from polynomial (0xedb88320L) */
 	poly = 0;
 	for (n = 0; n < sizeof(p) / sizeof(char); n++)
 		poly |= 1U << (31 - p[n]);
 
-	crc_table = xmalloc(sizeof(uint32_t) * 256);
-
 	for (n = 0; n < 256; n++) {
 		c = (uint32_t) n;
 		for (k = 0; k < 8; k++)
@@ -80,8 +81,8 @@ STATIC uint32_t crc32(uint32_t crc, const void *_buf, unsigned int len)
 {
 	const unsigned char *buf = _buf;
 
-	if (!crc_table)
-		make_crc_table();
+	make_crc_table();
+
 	crc = crc ^ 0xffffffffL;
 	while (len >= 8) {
 		DO8(buf);
@@ -105,8 +106,8 @@ STATIC uint32_t crc32_no_comp(uint32_t crc, const void *_buf, unsigned int len)
 {
 	const unsigned char *buf = _buf;
 
-	if (!crc_table)
-		make_crc_table();
+	make_crc_table();
+
 	while (len >= 8) {
 		DO8(buf);
 		len -= 8;
-- 
2.39.2



