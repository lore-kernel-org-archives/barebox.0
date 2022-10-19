Delivery-date: Wed, 19 Oct 2022 14:40:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ol8NY-000gbK-9q
	for lore@lore.pengutronix.de; Wed, 19 Oct 2022 14:40:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ol8NV-0000Yz-HN
	for lore@pengutronix.de; Wed, 19 Oct 2022 14:40:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vMzFMPW+Wsa7FCGfhzVQGYScoGICmPNohAdH1n5XLjs=; b=lgmFB/m2N43GW5rRv85xsrJVCd
	M9Y/wAdoVKxxnRrgsVPIrSjnq+0eH4ZaCb1STXiLV0iQHvB8654AsMVxL3QdHtatyPjVkfQdHVciS
	ixEV3QNxCGCPdwMJI7WPo6GPhllyAOmSUId+Bff5XRL5YsmydJgzOn/cZE+4UGavqVRGkfNfd+0iC
	v9VDk/nR7kf+ZY5kO0l2SiwlE+9kSPWmM7R+2erb27zvVf2PRCQUtLaIzzjWf9seWoCQgshTs44+u
	syXu8u1l8xcwRbZh7XDdv7TW0RenYyKMNIRbUHZL8N1uABLbDFYOCgYXJpO1ddNT6on6s8FNT/J9T
	b7/yEyZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol8M3-001YAs-PE; Wed, 19 Oct 2022 12:39:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol8Lv-001Y5o-51
	for barebox@lists.infradead.org; Wed, 19 Oct 2022 12:39:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1ol8Lo-0000FD-Rx; Wed, 19 Oct 2022 14:39:12 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ol8Lo-0007ii-5g; Wed, 19 Oct 2022 14:39:12 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ol8Ln-007EmV-Bm; Wed, 19 Oct 2022 14:39:11 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 19 Oct 2022 14:38:17 +0200
Message-Id: <20221019123817.1659468-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221019123817.1659468-1-a.fatoum@pengutronix.de>
References: <20221019123817.1659468-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221019_053919_207358_765DCB2D 
X-CRM114-Status: GOOD (  11.86  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] pbl: decomp: print mismatched hashes on one line each
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With DEBUG_LL enabled, hashes are printed to show mismatches, but each
byte is padded with 6 or 14 zeroes and has a line just for itself.
Rework this, so it now looks a lot cleaner:

  CH 40e941dfcf53087b86e549fbc279cbc1d4fd87c64febb42af6324c5b3ec64e03
  IH 3aa627d34b97f4a6af6a4ebf022236dc4b025c5902296b694a65eb6b92f8d66d

While at it, print a hexdump of the first 64 bytes of the buffer
that could not be verified. This is only printed when DEBUG is
enabled and serves as a first aid to debugging as verification failure
is not an expected occurrence with firmware baked into barebox PBL.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 pbl/decomp.c | 26 +++++++++++++-------------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/pbl/decomp.c b/pbl/decomp.c
index 553895bac5e8..ebdf81ddfbe5 100644
--- a/pbl/decomp.c
+++ b/pbl/decomp.c
@@ -70,20 +70,20 @@ int pbl_barebox_verify(const void *compressed_start, unsigned int len,
 	sha256_update(&d, compressed_start, len);
 	sha256_final(&d, computed_hash);
 	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
-		putc_ll('C');
-		putc_ll('H');
-		putc_ll('\n');
-		for (i = 0; i < SHA256_DIGEST_SIZE; i++) {
-			puthex_ll(computed_hash[i]);
-			putc_ll('\n');
-		}
-		putc_ll('I');
-		putc_ll('H');
+		puts_ll("CH ");
+
+		for (i = 0; i < SHA256_DIGEST_SIZE; i++)
+			puthexc_ll(computed_hash[i]);
+
+		puts_ll("\nIH ");
+
+		for (i = 0; i < SHA256_DIGEST_SIZE; i++)
+			puthexc_ll(char_hash[i]);
+
 		putc_ll('\n');
-		for (i = 0; i < SHA256_DIGEST_SIZE; i++) {
-			puthex_ll(char_hash[i]);
-			putc_ll('\n');
-		}
+
+		pr_debug("Hexdump of first 64 bytes of %u\n", len);
+		print_hex_dump_bytes("", DUMP_PREFIX_ADDRESS, compressed_start, 64);
 	}
 
 	return memcmp(hash, computed_hash, SHA256_DIGEST_SIZE);
-- 
2.30.2



