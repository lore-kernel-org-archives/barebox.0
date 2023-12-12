Delivery-date: Tue, 12 Dec 2023 09:17:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rCxxT-0016bV-0P
	for lore@lore.pengutronix.de;
	Tue, 12 Dec 2023 09:17:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rCxxT-0002Rk-Cg
	for lore@pengutronix.de; Tue, 12 Dec 2023 09:17:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hDKmCEZV9NfKFOcL29EonHy3CXbXE9epQR/j9i5oTJ8=; b=DetERFCWFcGZqt8+djoQRWHWDl
	d64RKxR693pOCa2Oy+QE058l0IA6SyKmwipX+z3XdrGAsuE5LY7NmEILnRIH7CGagajixHDtuccZS
	tF9GC3SEYIdxPRx2AZnpqurXpnH1IfV41JHasYk49Ex+srjW5+Tz3iKMJBY9SA98vmrET583OUQLv
	WPe0ii0DLn3mECWYP+M91rvOXor4Mq1j0sBodnH7clZeas0nX020gfnypFlexxlZ09fP6ia5pSud/
	hcX+xuKF0hF+902BTzaSFlue3/h91ZdDl0PV55IVXV1vB0aR2/Wi0EDMU6PA980+XoNLc/2ZkP24j
	T7ysGYfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rCxwN-00B1NM-1Z;
	Tue, 12 Dec 2023 08:16:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rCxwI-00B1LL-2I
	for barebox@lists.infradead.org;
	Tue, 12 Dec 2023 08:16:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rCxwH-0002C1-Bo; Tue, 12 Dec 2023 09:16:25 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rCxwG-00FI77-VS; Tue, 12 Dec 2023 09:16:24 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rCxwG-006Ux9-2y;
	Tue, 12 Dec 2023 09:16:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 12 Dec 2023 09:16:22 +0100
Message-Id: <20231212081623.1548734-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231212081623.1548734-1-s.hauer@pengutronix.de>
References: <20231212081623.1548734-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231212_001626_774442_54F428FC 
X-CRM114-Status: GOOD (  12.15  )
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
Subject: [PATCH 2/3] scripts: mxsimage: re-use crc32 implementation from crypto/crc32.c
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We already have crc32_be in the tree, so re-use that.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/mxsimage.c | 49 +++++-----------------------------------------
 1 file changed, 5 insertions(+), 44 deletions(-)

diff --git a/scripts/mxsimage.c b/scripts/mxsimage.c
index d33c4c8a0a..cebbab25ad 100644
--- a/scripts/mxsimage.c
+++ b/scripts/mxsimage.c
@@ -15,6 +15,10 @@
 #include <arpa/inet.h>
 #include <linux/kernel.h>
 
+#include "common.h"
+#include "common.c"
+#include "../crypto/crc32.c"
+
 #define SB_BLOCK_SIZE		16
 
 static char *prepfile;
@@ -376,38 +380,6 @@ struct sb_image_ctx {
  *                         JTAG/SPI2_EEPROM/SD_SSP0/SD_SSP1
  */
 
-static uint32_t crc_table[256];
-static int crc_table_valid;
-
-static void make_crc_table(void)
-{
-	uint32_t mask;
-	int i, j;
-	uint32_t poly; /* polynomial exclusive-or pattern */
-
-	if (crc_table_valid)
-		return;
-
-	/*
-	 * the polynomial used by PBL is 1 + x1 + x2 + x4 + x5 + x7 + x8 + x10
-	 * + x11 + x12 + x16 + x22 + x23 + x26 + x32.
-	 */
-	poly = 0x04c11db7;
-
-	for (i = 0; i < 256; i++) {
-		mask = i << 24;
-		for (j = 0; j < 8; j++) {
-			if (mask & 0x80000000)
-				mask = (mask << 1) ^ poly;
-			else
-				mask <<= 1;
-		}
-		crc_table[i] = mask;
-	}
-
-	crc_table_valid = 1;
-}
-
 /*
  * OpenSSL 1.1.0 and newer compatibility functions:
  * https://wiki.openssl.org/index.php/1.1_API_Changes
@@ -441,18 +413,7 @@ int EVP_CIPHER_CTX_reset(EVP_CIPHER_CTX *ctx)
 
 static uint32_t pbl_crc32(uint32_t in_crc, const char *buf, uint32_t len)
 {
-	uint32_t crc32_val;
-	int i;
-
-	make_crc_table();
-
-	crc32_val = ~in_crc;
-
-	for (i = 0; i < len; i++)
-		crc32_val = (crc32_val << 8) ^
-			crc_table[(crc32_val >> 24) ^ (*buf++ & 0xff)];
-
-	return crc32_val;
+	return crc32_be(~in_crc, buf, len);
 }
 /*
  * AES libcrypto
-- 
2.39.2



