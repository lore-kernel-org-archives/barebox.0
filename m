Delivery-date: Tue, 12 Dec 2023 09:17:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rCxxa-0016br-0x
	for lore@lore.pengutronix.de;
	Tue, 12 Dec 2023 09:17:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rCxxa-0002T5-IO
	for lore@pengutronix.de; Tue, 12 Dec 2023 09:17:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0Kk/jF9Au+KNdYEHrQ3Fq3tc6F17LlJsnNcj2DYdT38=; b=oWQu7aQ/FM4AGL4iVYAd/VTGo4
	ZvXQ0+UY1b2GzRV80i+QbB/HqZCYZSkywqFBwA93KvXHgbKMuvuHCxItpx3aRi+tW0qtt2pr8qrQQ
	df+g7Yyj6BFbp0PmdLpdBImZ/p9mn9y46u8gKALvmEuwtL0h+lllbrFLgXsXtoKGL0IbMPSGBg5Im
	DG2QMPTY+yxq50B8r9YQ/JUN3t7b9ZUypU+rj2UYlQg4nNUfGjM81LDPrvb2JO0ZtGdAEAeQAJRm9
	985LTwZiZm3jq3hgLriP7Amtvv/wCjZtJfei+2hRoD1Bc7H1dPVLQngnqn4M6GYnUreTZVB1KX00p
	mV3c/Q0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rCxwL-00B1Mr-3A;
	Tue, 12 Dec 2023 08:16:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rCxwI-00B1LI-2I
	for barebox@lists.infradead.org;
	Tue, 12 Dec 2023 08:16:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rCxwH-0002C0-BS; Tue, 12 Dec 2023 09:16:25 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rCxwG-00FI76-Ut; Tue, 12 Dec 2023 09:16:24 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rCxwG-006Ux5-2u;
	Tue, 12 Dec 2023 09:16:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 12 Dec 2023 09:16:21 +0100
Message-Id: <20231212081623.1548734-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231212081623.1548734-1-s.hauer@pengutronix.de>
References: <20231212081623.1548734-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231212_001626_772694_EE420C28 
X-CRM114-Status: GOOD (  11.80  )
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
Subject: [PATCH 1/3] scripts: pblimage: re-use crc32 implementation from crypto/crc32.c
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We already have crc32_be in the tree, so re-use that.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/pblimage.c | 49 +++++-----------------------------------------
 1 file changed, 5 insertions(+), 44 deletions(-)

diff --git a/scripts/pblimage.c b/scripts/pblimage.c
index 3c3625cdd5..df5d7aef69 100644
--- a/scripts/pblimage.c
+++ b/scripts/pblimage.c
@@ -15,6 +15,10 @@
 #include <endian.h>
 #include <byteswap.h>
 
+#include "common.h"
+#include "common.c"
+#include "../crypto/crc32.c"
+
 #define roundup(x, y)		((((x) + ((y) - 1)) / (y)) * (y))
 #define PBL_ACS_CONT_CMD	0x81000000
 #define PBL_ADDR_24BIT_MASK	0x00ffffff
@@ -68,52 +72,9 @@ static char *outfile;
 static unsigned long loadaddr = 0x10000000;
 static char *infile;
 
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
-- 
2.39.2



