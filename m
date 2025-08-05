Delivery-date: Tue, 05 Aug 2025 09:34:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujCBk-007DWr-1D
	for lore@lore.pengutronix.de;
	Tue, 05 Aug 2025 09:34:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujCBj-0005SC-R0
	for lore@pengutronix.de; Tue, 05 Aug 2025 09:34:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VOpjOahdEWvJBmxgt3tfD/rFB1zdFUP4DuSkE8rs/L0=; b=YWIdONA7hjY9gJ9MU2UlVL+7JG
	jTqDCePwCwY/9HQf7sn9M/jm5rhdgarfYIvkoF7W6l0THSwSHGOOLw8H3UyWdCgTz+LeDqqqJ9TI8
	DZ+YC/kv/5zJGMbHsT4PhYD7z7++fGVg206qMpVPOxby1tAm6FSnVyB49/7ydT7bcnbKcsdom2xSO
	Nsv/9rszPSLx0Mu9F9XteFVHrJMiwEgLC27o/uKtJtRuHD+WagiHN1CIAuEO/jEV4qBvIHpUNv+9l
	8KX04l8LUyHwPWQcvAH8BYImfc6/xFfoD9+6NgE0Ym7XEpfcN8jqbZwX5d5yxua67CJqvntNMBF6y
	7lL1kiCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujCBG-0000000C1yI-0vZj;
	Tue, 05 Aug 2025 07:33:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujCBD-0000000C1wW-0YVv
	for barebox@lists.infradead.org;
	Tue, 05 Aug 2025 07:33:52 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1ujCBA-00058R-DE; Tue, 05 Aug 2025 09:33:48 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Tue, 05 Aug 2025 09:33:48 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250805-rkimage-cleanup-v2-3-5d015f6c9059@pengutronix.de>
References: <20250805-rkimage-cleanup-v2-0-5d015f6c9059@pengutronix.de>
In-Reply-To: <20250805-rkimage-cleanup-v2-0-5d015f6c9059@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_003351_224718_E0465D01 
X-CRM114-Status: GOOD (  12.36  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 3/5] scripts: rockchip: add helper for updating hash
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The idb contains a flag for the used hash type. Use the flag to
determine the used hash function and update the hash accordingly.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Changes in v2:
- Drop double negation in flag check
---
 scripts/rkimage.c | 17 ++++++++++++-----
 1 file changed, 12 insertions(+), 5 deletions(-)

diff --git a/scripts/rkimage.c b/scripts/rkimage.c
index 4c972746cdabbc831b0b5c0024e840c81b1c1120..be2267aa38b505312c131638d743b42faaf8978c 100644
--- a/scripts/rkimage.c
+++ b/scripts/rkimage.c
@@ -42,6 +42,17 @@ static void sha512(const void *buf, int len, void *out)
 	EVP_MD_CTX_free(md_ctx);
 }
 
+static void idb_hash(struct newidb *idb)
+{
+	unsigned char *idbu8 = (void *)idb;
+	size_t size = 1536;
+
+	if (idb->flags & NEWIDB_FLAGS_SHA256)
+		sha256(idbu8, size, idbu8 + size);
+	else if (idb->flags & NEWIDB_FLAGS_SHA512)
+		sha512(idbu8, size, idbu8 + size);
+}
+
 typedef enum {
 	HASH_TYPE_SHA256 = 1,
 	HASH_TYPE_SHA512 = 2,
@@ -62,7 +73,6 @@ static int create_newidb(struct newidb *idb)
 	bool keep_cert = false;
 	int image_offset;
 	int i;
-	unsigned char *idbu8 = (void *)idb;
 
 	idb->magic = NEWIDB_MAGIC;
 	idb->n_files = (n_code << 16) | (1 << 7) | (1 << 8);
@@ -98,10 +108,7 @@ static int create_newidb(struct newidb *idb)
 
 	}
 
-	if (hash_type == HASH_TYPE_SHA256)
-		sha256(idbu8, 1536, idbu8 + 1536);
-	else if (hash_type == HASH_TYPE_SHA512)
-		sha512(idbu8, 1536, idbu8 + 1536);
+	idb_hash(idb);
 
 	return 0;
 }

-- 
2.39.5



