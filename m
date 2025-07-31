Delivery-date: Thu, 31 Jul 2025 12:54:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uhQvb-005Ztf-0i
	for lore@lore.pengutronix.de;
	Thu, 31 Jul 2025 12:54:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uhQva-0000xI-K5
	for lore@pengutronix.de; Thu, 31 Jul 2025 12:54:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3/h2jpg0L0afgry+nWZN6iYAyVBqLfuVqjvZPMaizm8=; b=49Be2gm6m/2x6Ait9NvSJoAlqn
	Iiynybvcw4OchSePNOEd7B2l/dMFmNzEdzaH8ALHhV68bj+CLysO70RFREMKHwkBQJpqJ1qvApmU5
	m8SjzEVOdyM0+oSY7DDu4jWsUV5K7vLidSQp9g7FTGbvLXbHhL/d7HvFnoHA7LYhfBwMG19JBxS8l
	ycMvJcKbozdpn3aeSo8unHcq9I/KURXxkHUpiYQRt/EDNNygmkUaEetOHEmi11z7N40+Qm/T5jVL7
	FHep40hvwTWCIKDBWAhNFes+TTHY77WPqSjDvYIq12pFLAgSvTY3r0QZ4VDprdC0E2dahqKjmoOEP
	f/6IU1Hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhQv4-00000003PqT-11as;
	Thu, 31 Jul 2025 10:53:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhQqH-00000003PIq-0v4v
	for barebox@lists.infradead.org;
	Thu, 31 Jul 2025 10:48:58 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1uhQqE-0008Vg-Oe; Thu, 31 Jul 2025 12:48:54 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu, 31 Jul 2025 12:48:24 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250731-rkimage-cleanup-v1-4-967037e5d67a@pengutronix.de>
References: <20250731-rkimage-cleanup-v1-0-967037e5d67a@pengutronix.de>
In-Reply-To: <20250731-rkimage-cleanup-v1-0-967037e5d67a@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250731_034857_270231_8199CA31 
X-CRM114-Status: GOOD (  11.47  )
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
Subject: [PATCH 4/5] scripts: rockchip: rename NEWIDB_MAGIC to
 NEWIDB_MAGIC_RKNS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

There are different magic values for different image types. Include the
type of magic in the name of the magic.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 scripts/rk-usb-loader.c | 4 ++--
 scripts/rkimage.c       | 2 +-
 scripts/rockchip.h      | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/scripts/rk-usb-loader.c b/scripts/rk-usb-loader.c
index 2e0d5488deb9853dce8fea929a63d97e5aac9828..87b5e3e3060579bc0473a15a9ef1f86c0ee2b720 100644
--- a/scripts/rk-usb-loader.c
+++ b/scripts/rk-usb-loader.c
@@ -222,9 +222,9 @@ static int upload_image(const char *filename)
 
 	hdr = buf;
 
-	if (hdr->magic != NEWIDB_MAGIC) {
+	if (hdr->magic != NEWIDB_MAGIC_RKNS) {
 		log_error("%s has invalid magic 0x%08x ( != 0x%08x )\n", filename,
-			  hdr->magic, NEWIDB_MAGIC);
+			  hdr->magic, NEWIDB_MAGIC_RKNS);
 		exit(1);
 	}
 
diff --git a/scripts/rkimage.c b/scripts/rkimage.c
index 39f9e44cceba2a9d961b014a6b1d24365f9327f9..4de6a380ee0565a896ed64eb5b2344db03657e05 100644
--- a/scripts/rkimage.c
+++ b/scripts/rkimage.c
@@ -74,7 +74,7 @@ static int create_newidb(struct newidb *idb)
 	int image_offset;
 	int i;
 
-	idb->magic = NEWIDB_MAGIC;
+	idb->magic = NEWIDB_MAGIC_RKNS;
 	idb->n_files = (n_code << 16) | (1 << 7) | (1 << 8);
 	idb->flags = 0;
 
diff --git a/scripts/rockchip.h b/scripts/rockchip.h
index 8033878b34d369c7e291f38fd2a4beaaf395556b..c4cedfa5669e59506b7c2c32d53bbdafec0e0dac 100644
--- a/scripts/rockchip.h
+++ b/scripts/rockchip.h
@@ -1,7 +1,7 @@
 #ifndef __ROCKCHIP_H
 #define __ROCKCHIP_H
 
-#define NEWIDB_MAGIC 0x534e4b52 /* 'RKNS' */
+#define NEWIDB_MAGIC_RKNS 0x534e4b52
 
 #define NEWIDB_FLAGS_SHA256	(1U << 0)
 #define NEWIDB_FLAGS_SHA512	(1U << 1)

-- 
2.39.5



