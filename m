Delivery-date: Wed, 20 Aug 2025 14:19:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uohmT-002cDO-1b
	for lore@lore.pengutronix.de;
	Wed, 20 Aug 2025 14:19:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uohmS-0007qC-BS
	for lore@pengutronix.de; Wed, 20 Aug 2025 14:19:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LBbpKuvUK5yg4s6Rfxz/atJV/FT77VhU90xwwUU2g+4=; b=DA6uLrgv9wbDVjZJXIPXZQDQj4
	TblHFfX0PmANNdwXRGGmG1fAS8jjap65kTnxBzlsjcqd/NMVgeX3RKgP1syTndW0NEmwZXjD9sl5M
	ajMCZLhYjqYoGfvjT3sZliC49z6F/iT5Tn4MG6B681Hq+YpzccpKkUZTkGCTT5TPAlWglCL91zkMj
	/dZFHRYbkak73/EfNcSHG16wprAPgNnU2EWt1iliOJK0TtBlFkWjbdhWhtO1UiprwlYkdQBZ8z5k6
	l1ukJ3V/Fw7IGHu6VbjiQ1NGnOu00ttGsawnuYGfVjNbGykH6i3K5WL6Cob4eKcSyzeyPx/EMShC8
	cyYELaCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uohmG-0000000DXBO-1kMS;
	Wed, 20 Aug 2025 12:18:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uofsQ-0000000D6ux-0zuq
	for barebox@lists.infradead.org;
	Wed, 20 Aug 2025 10:17:08 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1uofsN-0005Ap-Pi; Wed, 20 Aug 2025 12:17:03 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Wed, 20 Aug 2025 12:16:58 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250820-rkimage-signed-v1-2-0ad3d1d1c952@pengutronix.de>
References: <20250820-rkimage-signed-v1-0-0ad3d1d1c952@pengutronix.de>
In-Reply-To: <20250820-rkimage-signed-v1-0-0ad3d1d1c952@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_031706_282404_E1F01AD2 
X-CRM114-Status: GOOD (  10.20  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH 2/4] ARM: rockchip: bbu: accept signed images
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Accept Rockchip signed images in the update handler.

This is necessary to be able to use the update handler to flash a signed
image to an SD card or eMMC.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/mach-rockchip/bbu.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-rockchip/bbu.c b/arch/arm/mach-rockchip/bbu.c
index b4d2a5280fab9f8bf6357948f2188afcb8cc89a5..2067af7b1d231e00ec436d50686cb252e9c96dbd 100644
--- a/arch/arm/mach-rockchip/bbu.c
+++ b/arch/arm/mach-rockchip/bbu.c
@@ -46,10 +46,10 @@ static int rockchip_bbu_mmc_handler(struct bbu_handler *handler,
 	struct cdev *cdev;
 
 	filetype = file_detect_type(data->image, data->len);
-	if (filetype != filetype_rockchip_rkns_image) {
-		if (!bbu_force(data, "incorrect image type. Expected: %s, got %s",
-				file_type_to_string(filetype_rockchip_rkns_image),
-				file_type_to_string(filetype)))
+	if (filetype != filetype_rockchip_rkns_image &&
+	    filetype != filetype_rockchip_rkss_image) {
+		if (!bbu_force(data, "incorrect image type. Got %s",
+			       file_type_to_string(filetype)))
 			return -EINVAL;
 	}
 

-- 
2.39.5



