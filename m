Delivery-date: Thu, 31 Jul 2025 12:54:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uhQvc-005ZuN-18
	for lore@lore.pengutronix.de;
	Thu, 31 Jul 2025 12:54:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uhQvb-0000yh-MN
	for lore@pengutronix.de; Thu, 31 Jul 2025 12:54:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3Wm4IWilTmInc9UGObImlPdA3KZ5z/fIE1c65iB2MjA=; b=mO88Di2oti+0EfLIF0Ztl0RwlD
	Izz5HXx6FyHmzKmIHQW3ts5BoRoQhkyG+coHl22PuOqrRv2UTMT0B9228RwsrCasiV0NIEarMzvfI
	ANGySaeoNMtuZJX6AscGiFFFN/O6sVmi8T1/k9zdfELYoWva3HanqD/kac75nbop89rlcYxbksHv2
	xAJdqtDHJi9uZdeTCapz3i104H7U+ogcuHFwF6nbXaJLVc+y2FPmcjUEiZZTk2Zr6tUlhMy7AjNhU
	0qcK+XcmZ+D2V3rHxOvTDCDZws+XKFNYLXXteLaKkDZmT5hq5us+EXf+2caknbdM11+YtFTUhNMJ+
	ZwYS/wDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhQv7-00000003PsT-0URk;
	Thu, 31 Jul 2025 10:53:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhQqH-00000003PIp-1CQ3
	for barebox@lists.infradead.org;
	Thu, 31 Jul 2025 10:49:00 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1uhQqE-0008Vg-NZ; Thu, 31 Jul 2025 12:48:54 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu, 31 Jul 2025 12:48:23 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250731-rkimage-cleanup-v1-3-967037e5d67a@pengutronix.de>
References: <20250731-rkimage-cleanup-v1-0-967037e5d67a@pengutronix.de>
In-Reply-To: <20250731-rkimage-cleanup-v1-0-967037e5d67a@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250731_034857_374850_53D2165C 
X-CRM114-Status: GOOD (  10.92  )
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
Subject: [PATCH 3/5] scripts: rockchip: rename hashtype to flags
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The hashtype is actually a bitfield that contains flags for the
different hash types and other information. Rename the field to flags
and add constants for the flags in this field.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 scripts/rkimage.c  | 5 +++--
 scripts/rockchip.h | 5 ++++-
 2 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/scripts/rkimage.c b/scripts/rkimage.c
index fd97bd1dd9f5967762d0a8bf9d186594a05a2a9f..39f9e44cceba2a9d961b014a6b1d24365f9327f9 100644
--- a/scripts/rkimage.c
+++ b/scripts/rkimage.c
@@ -76,11 +76,12 @@ static int create_newidb(struct newidb *idb)
 
 	idb->magic = NEWIDB_MAGIC;
 	idb->n_files = (n_code << 16) | (1 << 7) | (1 << 8);
+	idb->flags = 0;
 
 	if (hash_type == HASH_TYPE_SHA256)
-		idb->hashtype = (1 << 0);
+		idb->flags |= NEWIDB_FLAGS_SHA256;
 	else if (hash_type == HASH_TYPE_SHA512)
-		idb->hashtype = (1 << 1);
+		idb->flags |= NEWIDB_FLAGS_SHA512;
 
 	if (!keep_cert)
 		image_offset = 4;
diff --git a/scripts/rockchip.h b/scripts/rockchip.h
index 2d060fdefe909118d157a7aafef3284a35679fe3..8033878b34d369c7e291f38fd2a4beaaf395556b 100644
--- a/scripts/rockchip.h
+++ b/scripts/rockchip.h
@@ -3,6 +3,9 @@
 
 #define NEWIDB_MAGIC 0x534e4b52 /* 'RKNS' */
 
+#define NEWIDB_FLAGS_SHA256	(1U << 0)
+#define NEWIDB_FLAGS_SHA512	(1U << 1)
+
 struct newidb_entry {
 	uint32_t sector;
 	uint32_t unknown_ffffffff;
@@ -16,7 +19,7 @@ struct newidb {
 	uint32_t magic;
 	unsigned char unknown1[4];
 	uint32_t n_files;
-	uint32_t hashtype;
+	uint32_t flags;
 	unsigned char unknown2[8];
 	unsigned char unknown3[8];
 	unsigned char unknown4[88];

-- 
2.39.5



