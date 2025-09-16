Delivery-date: Tue, 16 Sep 2025 10:02:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyQe0-003cF6-22
	for lore@lore.pengutronix.de;
	Tue, 16 Sep 2025 10:02:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyQdz-0003K9-WD
	for lore@pengutronix.de; Tue, 16 Sep 2025 10:02:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=DWEP9dJbfWs/qUTOVm0CbgCpsC/1BSEKUl2SAZAWdU8=; b=zQFBu+UHXolEECU4mUm1vAkdgb
	3LcHY/pafs1HTTjBzlS6bdgjmYJ7o3RI7bOQze4aUALRa1zJnHh93lYwsPSEXUaw4ZoufymLTpRd3
	LV5YbJewtqMX5Pb3qIku5KC/IDq8jvj3N373eGlKKMVurvgsQ0vpOhE7uAO3oYaN11QkqpuxA8bW5
	XIJE9N+Tyho4q1rg3mECpr+UkjABje/NygFf5lia5OdtdMElYMELFRWGv/lKI8cWYlC2KFUT5zq0Y
	kQGiaBg/u11f2HdKIhFEtyPYvhgzP04+yscTUXBj18NArZkTB80QjL+oX9W3iSyU14MPOcmyp/iKD
	ncLxM/+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyQdb-000000076tu-2NeJ;
	Tue, 16 Sep 2025 08:02:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyQdY-000000076t2-2iJe
	for barebox@lists.infradead.org;
	Tue, 16 Sep 2025 08:02:05 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1uyQdX-000385-6p; Tue, 16 Sep 2025 10:02:03 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Tue, 16 Sep 2025 10:02:02 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250916-rockchip-cleanup-iram-v1-1-e6797d08f8dc@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAHkZyWgC/x3MQQqEMAxA0atI1hPQFoXOVcRFiFHDzNSSMiJI7
 25x+Rb/X5DFVDK8mwtMDs26x4ru1QBvFFdBnavBta5vQzeg7fzhTRPyVyj+E6rRD8nPJM57Lxy
 gtslk0fP5jlMpNyImg8hnAAAA
X-Change-ID: 20250916-rockchip-cleanup-iram-a3dae2333ec9
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250916_010204_827057_F630993D 
X-CRM114-Status: GOOD (  13.57  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: rockchip: cleanup iram handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

struct rockchip_scratch_space has grown and gained additional fields.
While the scratch space for the iram is still at the start of the
rockchip_scratch_space, it is actually just one field in the scratch
space.

Explicitly store the iram to the iram field, and copy only the size of
the iram field instead of the entire scratch space.

Explicitly pass the iram field when the iram should be parsed.

Rename the field from irom to iram.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/mach-rockchip/rk3568.c | 2 +-
 arch/arm/mach-rockchip/rk3576.c | 2 +-
 arch/arm/mach-rockchip/rk3588.c | 2 +-
 include/mach/rockchip/bootrom.h | 4 ++--
 4 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-rockchip/rk3568.c b/arch/arm/mach-rockchip/rk3568.c
index 75b0824479fb8f774b0d41137b25ddf90ea9a3df..5019ea03366b658b5d3f07d845ac2bb901af0ac7 100644
--- a/arch/arm/mach-rockchip/rk3568.c
+++ b/arch/arm/mach-rockchip/rk3568.c
@@ -142,7 +142,7 @@ void rk3568_lowlevel_init(void)
 
 int rk3568_init(void)
 {
-	rockchip_parse_bootrom_iram(rockchip_scratch_space());
+	rockchip_parse_bootrom_iram(rockchip_scratch_space()->iram);
 
 	return 0;
 }
diff --git a/arch/arm/mach-rockchip/rk3576.c b/arch/arm/mach-rockchip/rk3576.c
index 320d0ec9a536aaa88b44f6e022d6ee990da4209b..28655a25269e466048addf5544d722945c942af2 100644
--- a/arch/arm/mach-rockchip/rk3576.c
+++ b/arch/arm/mach-rockchip/rk3576.c
@@ -14,7 +14,7 @@ void rk3576_lowlevel_init(void)
 
 int rk3576_init(void)
 {
-	rockchip_parse_bootrom_iram(rockchip_scratch_space());
+	rockchip_parse_bootrom_iram(rockchip_scratch_space()->iram);
 
 	return 0;
 }
diff --git a/arch/arm/mach-rockchip/rk3588.c b/arch/arm/mach-rockchip/rk3588.c
index 25f14812967f85b27c2a58564d904b33208f87c7..e0841154ed9ff1e37a1ac65c129d282d8e371ef6 100644
--- a/arch/arm/mach-rockchip/rk3588.c
+++ b/arch/arm/mach-rockchip/rk3588.c
@@ -14,7 +14,7 @@ void rk3588_lowlevel_init(void)
 
 int rk3588_init(void)
 {
-	rockchip_parse_bootrom_iram(rockchip_scratch_space());
+	rockchip_parse_bootrom_iram(rockchip_scratch_space()->iram);
 
 	return 0;
 }
diff --git a/include/mach/rockchip/bootrom.h b/include/mach/rockchip/bootrom.h
index 586008a78505943c968301a9ce90ed5e4aa9b18b..fc63e793783bc7706235fb01abdb6acd64c3afa6 100644
--- a/include/mach/rockchip/bootrom.h
+++ b/include/mach/rockchip/bootrom.h
@@ -11,7 +11,7 @@
 #include <pbl.h>
 
 struct rockchip_scratch_space {
-	u32 irom[16];
+	u32 iram[16];
 	struct optee_header optee_hdr;
 	/* FDT needs an 8 byte alignment */
 	u8 fdt[CONFIG_ARCH_ROCKCHIP_ATF_FDT_SIZE] __aligned(8);
@@ -23,7 +23,7 @@ extern struct rockchip_scratch_space *rk_scratch;
 static inline void rockchip_store_bootrom_iram(const void *iram)
 {
 	if (rk_scratch)
-		memcpy(rk_scratch, iram, sizeof(struct rockchip_scratch_space));
+		memcpy(rk_scratch->iram, iram, sizeof(rk_scratch->iram));
 }
 
 static inline const struct rockchip_scratch_space *rockchip_scratch_space(void)

---
base-commit: f3be3a8e9ae884bdfb116238e9049b1eb2759810
change-id: 20250916-rockchip-cleanup-iram-a3dae2333ec9

Best regards,
-- 
Michael Tretter <m.tretter@pengutronix.de>



