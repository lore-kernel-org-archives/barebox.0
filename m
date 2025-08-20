Delivery-date: Wed, 20 Aug 2025 14:19:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uohmT-002cDw-2u
	for lore@lore.pengutronix.de;
	Wed, 20 Aug 2025 14:19:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uohmS-0007qE-Oj
	for lore@pengutronix.de; Wed, 20 Aug 2025 14:19:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4KJocfzLAwwzbUpTsaxKweUAhd/dKB9hue4YjaSDNPE=; b=UPgutzUxFmW1nY
	sDjc0PuciRQ3t6M1sXs+KpLRLTUuh0V5BFawpEAgQY6LX38FAK4R4kVth8/lu8f4uW/psO/+Wh7Pd
	4olMxj726Jr9iTOlTGF8FiY0PuY2LmD1in/QOg7Fk7E4RHrhq8tEf1eyQ9R8Eon9C/iD/STE5mLrv
	AJp3k0+CSu3hjt4bpOKPiIDK3o+yPN+GEgUx+2SRfvFcDBrietgD5OxGRLr4TGeZsKog8tMuowi4q
	gWEfieiWmBc/vZeQFwREU3OhaBTVcjrgvegRl3pyuY+/WHE4tHN8iFVTn7Oteufi94OYvAeEdbmoi
	kdgCm9Q644NiWx4Vtiag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uohmF-0000000DXB4-3hlP;
	Wed, 20 Aug 2025 12:18:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uofsQ-0000000D6uu-0oAz
	for barebox@lists.infradead.org;
	Wed, 20 Aug 2025 10:17:07 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1uofsN-0005Ap-Nu; Wed, 20 Aug 2025 12:17:03 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Wed, 20 Aug 2025 12:16:56 +0200
Message-Id: <20250820-rkimage-signed-v1-0-0ad3d1d1c952@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJigpWgC/x2MQQqAIBAAvyJ7TrAtyfpKdCjdbIksFCKQ/p50n
 IGZDIkiU4JBZIh0c+IzFKgrAXabgyfJrjCgQq0MKhl3PuaiE/tATlqNnUHTuLZfoERXpJWffzh
 O7/sBfoqhzWAAAAA=
X-Change-ID: 20250820-rkimage-signed-c5278283d49b
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_031706_238223_0248451A 
X-CRM114-Status: UNSURE (   7.68  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH 0/4] ARM: rockchip: add support for signed images
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The Rockchip signed image has the same header format as the unsigned
image, but uses a different magic.

In order to be able do boot and update signed images, barebox has to
accept the magic of the signed images.

Extend the bootm and bbu handlers to accept signed images.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Michael Tretter (4):
      filetype: detect Rockchip signed images
      ARM: rockchip: bbu: accept signed images
      ARM: rockchip: bootm: don't propagate error from register_image_handler
      ARM: rockchip: bootm: accept signed images

 arch/arm/mach-rockchip/bbu.c   |  8 ++++----
 arch/arm/mach-rockchip/bootm.c | 11 ++++++++++-
 common/filetype.c              |  4 ++++
 include/filetype.h             |  1 +
 4 files changed, 19 insertions(+), 5 deletions(-)
---
base-commit: c23f4202a0abd964a5d0a2ac7b1e7bcf28a1d687
change-id: 20250820-rkimage-signed-c5278283d49b

Best regards,
-- 
Michael Tretter <m.tretter@pengutronix.de>



