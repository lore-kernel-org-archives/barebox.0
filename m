Delivery-date: Thu, 05 Jun 2025 13:37:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN8uB-003zg7-2L
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 13:37:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN8u9-0000Qx-IC
	for lore@pengutronix.de; Thu, 05 Jun 2025 13:37:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=b6VDcBI4UgtjjHFguXGaSKe+99WJ6I6yGuDTsZ2xEv4=; b=zg7UyLLaqWtLvz/auNwhbwPPnc
	AylytyMyXkpd/Y6otCCNxiVmTCoJkXkesA5k5X4aY/X9ypyE0bLHRyv7uIe9pkYe/0ytsnG650ByK
	estSX4vQCqo7138P8C07AN2wzALY8r5OnnVXdBly7UYvM7l+xEqNKPdncwqNyVHwQhBFvHaVWrW/9
	utxlqjm+MsUQwyUDAEcBu7CXMDYC/f1re7aFJF/ETgp8UxcRIDLWemXFGkLS5bH/Zq0o36CdH68Bg
	vvJDWW6gFqSD0vDSNd820L6HGU7LMal99HdUzoaDzyHB1Zm3fJWhhIBgetACsqeyEmIZGp6prqERZ
	h+vZ2cYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN8tS-0000000FNDy-22wr;
	Thu, 05 Jun 2025 11:36:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN8iu-0000000FMAl-36jH
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 11:25:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8ir-000182-AY; Thu, 05 Jun 2025 13:25:25 +0200
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8ir-001wtm-0R;
	Thu, 05 Jun 2025 13:25:25 +0200
Received: from localhost ([::1] helo=dude06.red.stw.pengutronix.de)
	by dude06.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8ir-008DaT-2I;
	Thu, 05 Jun 2025 13:25:25 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  5 Jun 2025 13:25:23 +0200
Message-Id: <20250605112524.1958636-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_042528_781048_5A004E57 
X-CRM114-Status: GOOD (  11.59  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] scripts: rockchip: rename SECTOR_SIZE/PAGE_SIZE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

musl was found to define PAGE_SIZE on its own, which conflicts with the
definition we use in the host tool. Add a RK_ prefix for the
Rockchip-specific SECTOR_SIZE and PAGE_SIZE macros to avoid this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/rk-usb-loader.c | 4 ++--
 scripts/rkimage.c       | 4 ++--
 scripts/rockchip.h      | 4 ++--
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/scripts/rk-usb-loader.c b/scripts/rk-usb-loader.c
index ad70cfe27147..2e0d5488deb9 100644
--- a/scripts/rk-usb-loader.c
+++ b/scripts/rk-usb-loader.c
@@ -266,8 +266,8 @@ static int upload_image(const char *filename)
 
 		log_info("Uploading %d/%d\n", i + 1, n_files);
 
-		foffset = (entry->sector & 0xffff) * SECTOR_SIZE;
-		fsize = (entry->sector >> 16) * SECTOR_SIZE;
+		foffset = (entry->sector & 0xffff) * RK_SECTOR_SIZE;
+		fsize = (entry->sector >> 16) * RK_SECTOR_SIZE;
 
 		log_debug("image starting at offset 0x%08x, size 0x%08x\n", foffset, fsize);
 
diff --git a/scripts/rkimage.c b/scripts/rkimage.c
index 551114ed8220..b31893fe8f45 100644
--- a/scripts/rkimage.c
+++ b/scripts/rkimage.c
@@ -82,7 +82,7 @@ static int create_newidb(struct newidb *idb)
 		struct rkcode *c = &code[i];
 		unsigned int image_sector;
 
-		image_sector = c->size / SECTOR_SIZE;
+		image_sector = c->size / RK_SECTOR_SIZE;
 
 		entry->sector  = (image_sector << 16) + image_offset;
 		entry->unknown_ffffffff = 0xffffffff;
@@ -170,7 +170,7 @@ int main(int argc, char *argv[])
 			exit(1);
 
 		c->path = path;
-		c->size = ALIGN(s.st_size, PAGE_SIZE);
+		c->size = ALIGN(s.st_size, RK_PAGE_SIZE);
 		c->buf = calloc(c->size, 1);
 		if (!c->buf)
 			exit(1);
diff --git a/scripts/rockchip.h b/scripts/rockchip.h
index 8cc14f8f2fbd..2d060fdefe90 100644
--- a/scripts/rockchip.h
+++ b/scripts/rockchip.h
@@ -29,7 +29,7 @@ struct newidb {
 	unsigned char hash[512];
 };
 
-#define SECTOR_SIZE 512
-#define PAGE_SIZE 2048
+#define RK_SECTOR_SIZE 512
+#define RK_PAGE_SIZE 2048
 
 #endif /* __ROCKCHIP_H */
-- 
2.39.5



