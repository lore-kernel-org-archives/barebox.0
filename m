Delivery-date: Tue, 05 Aug 2025 09:34:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujCBj-007DWL-36
	for lore@lore.pengutronix.de;
	Tue, 05 Aug 2025 09:34:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujCBj-0005Rd-Cw
	for lore@pengutronix.de; Tue, 05 Aug 2025 09:34:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qAa3Gg9qZK6rbtWHWrshB57Ccy1p6q0EZXevnHrw+Q8=; b=Z4OP6J0NiTk/iZx2uLnc4dHwQ3
	6kZWfitVH6ne7q8dHzrmxtoYssZkuHbfuoubVTuN3wonJpT5hJmKd7YfSETZAw9ei1SZG8EuGa+W+
	8lwcTDRM0H6MhMDtz8DNEZ5bEUWQSPJl9fikUgbJIUFg3liK8znL5vxIdadAeC+sa58YU3v8cQmN6
	jmhvpn8B4k2JUDBf3Weu5tFhQaMnihX30j/5/uBhMeQgtoN/A4ho/2QwvLh139f/VP7DBOGnCkSoA
	MKXlFi7fDqS9YUbzDMZftyUTpIJGWToiyIl2fmubjj2CQD+SwcC0rOyZBjqKwDBl86neezjd2TNPu
	gmkjXbhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujCBK-0000000C214-29ri;
	Tue, 05 Aug 2025 07:33:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujCBD-0000000C1wX-0Iob
	for barebox@lists.infradead.org;
	Tue, 05 Aug 2025 07:33:54 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1ujCBA-00058R-ER; Tue, 05 Aug 2025 09:33:48 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Tue, 05 Aug 2025 09:33:49 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250805-rkimage-cleanup-v2-4-5d015f6c9059@pengutronix.de>
References: <20250805-rkimage-cleanup-v2-0-5d015f6c9059@pengutronix.de>
In-Reply-To: <20250805-rkimage-cleanup-v2-0-5d015f6c9059@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_003351_219977_0ED6215A 
X-CRM114-Status: GOOD (  12.27  )
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
Subject: [PATCH v2 4/5] scripts: rockchip: rename NEWIDB_MAGIC to
 NEWIDB_MAGIC_RKNS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

There are different magic values for different image types. Include the
type of magic in the name of the magic.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Changes in v2:
- none
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
index be2267aa38b505312c131638d743b42faaf8978c..d1a9f709c16ae5fb6277b4e02498209966594213 100644
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



