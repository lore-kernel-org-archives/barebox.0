Delivery-date: Mon, 23 Feb 2026 09:57:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuRkw-004luE-0R
	for lore@lore.pengutronix.de;
	Mon, 23 Feb 2026 09:57:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuRkw-0005md-Fx
	for lore@pengutronix.de; Mon, 23 Feb 2026 09:57:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=fZaMS1p8Lmrm2xldCARcKNPuVCVK44nBDg5JQ0wC6Ec=; b=iwQIm/wNy7fg67zB7GcdXq8YIo
	SvhbaQEsMdJ7kAMe7p4x/5RDyAmDwaE8ctXGI+l096UlDp5ut3xH//OGe0GcQVyR3zl4HtkSvsy2g
	HD1HNeDJPJunHTWlBcC47xpn8f5TQh/PzlWpzMEN9omCw/N2DaxhkjVvxFbq1C7A9ceLN8FKx1NG6
	hm38XdLbbTnw3pvyihL7kSE12byipiw3WBpi+1RJokgdo9KuVc0r3aVmu9dTm/ETSDKwuUK4It+5x
	DWdaTCTbsXYxbBDjyUjQgLjgijR/JWnQsO9iBz1a+HwsGAUYOsQjCRwIK6NNpBWMRltbQek/G/jwq
	gJ/HMZ9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuRkT-0000000HRoP-0sPp;
	Mon, 23 Feb 2026 08:57:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuRkR-0000000HRnd-1g5Z
	for barebox@lists.infradead.org;
	Mon, 23 Feb 2026 08:57:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuRkI-0005a5-05; Mon, 23 Feb 2026 09:56:50 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuRkG-002COU-1Q;
	Mon, 23 Feb 2026 09:56:49 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuRkH-00000000mdp-2xlk;
	Mon, 23 Feb 2026 09:56:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 23 Feb 2026 09:56:48 +0100
Message-Id: <20260223-rockchip-optee-v1-0-723493320d42@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAFAWnGkC/x3MQQqAIBBA0avErBNqCrOuEi1MpxoCFY0IpLsnL
 d/i/wyJIlOCqcoQ6ebE3hW0dQXm0G4nwbYYsEHZIHYienOag4Pw4SISIyrq5WDXQWkoUYi08fM
 P5+V9P8VvGdRgAAAA
X-Change-ID: 20260223-rockchip-optee-928e467db78a
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771837009; l=698;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=497dcmMPCQ3hffwWzDie1cfnRv+B0Xkrrfcjd5e/Oxs=;
 b=uNmg4RpPJGdNFDgR/E9a1zQkDnKBbtnYER6ZnXSLKTuxX5hDL/dcfNbGtBPLzo6q/gyW1jNX/
 kQaNBUe50CXDME42xUYVg9Cm9rwzfSpnoZBXHgHBMsDSDr1BQNdmOMH
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_005659_456984_09ECCCFB 
X-CRM114-Status: UNSURE (   8.00  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 0/2] ARM: Rockchip: RK3588: fix memory layout
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Rockchip boards with 4GB and more of DRAM the memory we pass to
barebox overlaps the internal register space which only didn't blow
up because the affected area was not used by barebox. Fix this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (2):
      ARM: rockchip: dmc: use define instead of hardcoded value
      ARM: rockchip: atf: Fix memend

 arch/arm/mach-rockchip/atf.c | 12 +++++++-----
 arch/arm/mach-rockchip/dmc.c |  4 ++--
 2 files changed, 9 insertions(+), 7 deletions(-)
---
base-commit: ffd4db2ea98ea1b8713382ca3d7a8ea7dadca4da
change-id: 20260223-rockchip-optee-928e467db78a

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



