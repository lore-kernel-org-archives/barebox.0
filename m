Delivery-date: Tue, 05 Aug 2025 09:34:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujCBl-007DXN-2l
	for lore@lore.pengutronix.de;
	Tue, 05 Aug 2025 09:34:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujCBl-0005SX-9v
	for lore@pengutronix.de; Tue, 05 Aug 2025 09:34:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=X7+ETGgWt0mHL13ZZ4+5Sy//aUSJxsF3vWIoi0Pn12M=; b=I0QhAWIdCaDeWM6E1tb8Zdriyv
	RGYkyYbEbnSuWtviBlWyCTKzYOP4KDhyIuN8YJLPJOvuTghoAH7O1xOGrlDHrICdGLWyiSsXYA9hj
	OdAG/ZyuZ1pq15RP4no2JHbt053Abii20dE+Nsg23dqFG3XiUOytBjSo7GPoXE/ZjdpXMXnZT8A39
	tfo+luS91sPO0Gx0waoEj9lENzFS1Uz+c0+UqJISgjn6wWF95Y/9v4wCXiMbtqi9RatN0ce9dD41t
	84RJgRDBTPFChdji9JOKdlyOOCFqVzl1VFhems7AzVT3r/bA4hkcMkIQWXkf7NyLFh+6ILeBzWWRt
	saq7aphA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujCBI-0000000C1za-1fXl;
	Tue, 05 Aug 2025 07:33:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujCBD-0000000C1wT-0ViP
	for barebox@lists.infradead.org;
	Tue, 05 Aug 2025 07:33:54 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1ujCBA-00058R-C6; Tue, 05 Aug 2025 09:33:48 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Tue, 05 Aug 2025 09:33:47 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250805-rkimage-cleanup-v2-2-5d015f6c9059@pengutronix.de>
References: <20250805-rkimage-cleanup-v2-0-5d015f6c9059@pengutronix.de>
In-Reply-To: <20250805-rkimage-cleanup-v2-0-5d015f6c9059@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_003351_233240_42420323 
X-CRM114-Status: GOOD (  11.71  )
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
Subject: [PATCH v2 2/5] scripts: rockchip: rename hashtype to flags
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The hashtype is actually a bitfield that contains flags for the
different hash types and other information. Rename the field to flags
and add constants for the flags in this field.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Changes in v2:
- none
---
 scripts/rkimage.c  | 5 +++--
 scripts/rockchip.h | 5 ++++-
 2 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/scripts/rkimage.c b/scripts/rkimage.c
index ba89f32d9376d0153692baa3ddde1c793c1e4cc2..4c972746cdabbc831b0b5c0024e840c81b1c1120 100644
--- a/scripts/rkimage.c
+++ b/scripts/rkimage.c
@@ -66,11 +66,12 @@ static int create_newidb(struct newidb *idb)
 
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



