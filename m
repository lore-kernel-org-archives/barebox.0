Delivery-date: Wed, 20 Aug 2025 14:19:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uohmT-002cCs-0F
	for lore@lore.pengutronix.de;
	Wed, 20 Aug 2025 14:19:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uohmR-0007q8-VM
	for lore@pengutronix.de; Wed, 20 Aug 2025 14:19:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=X3CSTA5DHsLG4UeAYHTJpweJCl6+yFSqJ85gjQQyv2Y=; b=d9MrcQtV/cEyaPsp7TUVd1rRQC
	9CekpqDR24EASNgwwj3lwUTnSfkkA9KRqXVTDQZRv+Txo4m7zMtWuo71mrUeCtNIKtqVxsrtXNV8y
	o9RZhHRU7mPwIv+l8S+zJjj4FDTQoACaZ/cZQ+MhD+hj37ITk1LK8cVxYtC1KjFyAY+vcxSIedZb2
	v9uQp+IyX9LrMKj+MQUPsYGzSgvBsj8f1/+3leyJhYZQ8PshO3EkdwQA3jlsrlWq++jo3m3R3q8k+
	GuzVnkVWJDp2W5JcXYla23zkFDXjdRyOMNwOvmvSTwm5vPImLuzFbBAXx69cMM6FckEo+gfT9uc+D
	tg1XalHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uohmH-0000000DXCG-2pMT;
	Wed, 20 Aug 2025 12:18:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uofsQ-0000000D6uz-1IJi
	for barebox@lists.infradead.org;
	Wed, 20 Aug 2025 10:17:08 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1uofsN-0005Ap-Rh; Wed, 20 Aug 2025 12:17:03 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Wed, 20 Aug 2025 12:17:00 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250820-rkimage-signed-v1-4-0ad3d1d1c952@pengutronix.de>
References: <20250820-rkimage-signed-v1-0-0ad3d1d1c952@pengutronix.de>
In-Reply-To: <20250820-rkimage-signed-v1-0-0ad3d1d1c952@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_031706_351744_993C1F04 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
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
Subject: [PATCH 4/4] ARM: rockchip: bootm: accept signed images
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add an image handler for signed Rockchip images.

Signed image can be handled like unsigned images. Eventually barebox may
perform additional checks on the signed image, e.g. that the image is
actually signed and the signature is valid. For now, simply accept and
boot signed images.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/mach-rockchip/bootm.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/mach-rockchip/bootm.c b/arch/arm/mach-rockchip/bootm.c
index 097b0af7d8ba29a37e50dcb0f7d823c0456d1020..ff3d9a2db3a0462365f3ccd4e09f178b74903244 100644
--- a/arch/arm/mach-rockchip/bootm.c
+++ b/arch/arm/mach-rockchip/bootm.c
@@ -113,12 +113,19 @@ static struct image_handler image_handler_rkns_barebox_image = {
 	.filetype = filetype_rockchip_rkns_image,
 };
 
+static struct image_handler image_handler_rkss_barebox_image = {
+	.name = "Rockchip RKSS barebox image",
+	.bootm = do_bootm_rkns_barebox_image,
+	.filetype = filetype_rockchip_rkss_image,
+};
+
 static int rockchip_register_barebox_image_handler(void)
 {
 	if (rockchip_soc() < 0)
 		return 0;
 
 	register_image_handler(&image_handler_rkns_barebox_image);
+	register_image_handler(&image_handler_rkss_barebox_image);
 
 	return 0;
 }

-- 
2.39.5



