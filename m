Delivery-date: Thu, 31 Jul 2025 12:54:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uhQvb-005Zte-0d
	for lore@lore.pengutronix.de;
	Thu, 31 Jul 2025 12:54:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uhQva-0000xL-Jf
	for lore@pengutronix.de; Thu, 31 Jul 2025 12:54:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8w1El5DQb5B0ySdt+1+QOwTT5nx2b6bScIUrxSuueU0=; b=0egwm8nDexSsew
	oCaaR3kiw+CSqeO7RKqnYi/XPVD5YxcenE6d/HV7MLNzDGguY2FslK9rtt2TA/LiCJlltYnJPhQST
	COSQpXZ3bjfW/msK4VPqxed6DIMAlsqoyC6Tw4n5QM1oCDm3NxPB9tQBOe8TtVD/cohmBfKYuQWUV
	61nTX02ef5F2o9SvfXzl+aBEttyvLqc9KUPRgrj4Nbb9w+o2624VECcRRCm8wR3pRqeTWbQlNcQZA
	ExlTO+9PFCEyhBZW+LsEbFDUapLambw26vU2QXJiHWnLOWA4UxgC1CznbjX7+BEufnCyejrl9iq0k
	rwDzFqSvFNMW0ZdJ4QnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhQv5-00000003PrZ-3koO;
	Thu, 31 Jul 2025 10:53:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhQqH-00000003PIm-17pK
	for barebox@lists.infradead.org;
	Thu, 31 Jul 2025 10:48:59 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1uhQqE-0008Vg-KI; Thu, 31 Jul 2025 12:48:54 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu, 31 Jul 2025 12:48:20 +0200
Message-Id: <20250731-rkimage-cleanup-v1-0-967037e5d67a@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPRJi2gC/x2MQQqAIBAAvyJ7TsgVDfpKdDDbaqkslCII/550n
 IGZFxJFpgSteCHSzYmPUEBVAvziwkySx8KANZq60UrGlXdXtN/IheuUVinTIGocrIVSnZEmfv5
 j1+f8AczFfRNhAAAA
X-Change-ID: 20250731-rkimage-cleanup-611572232b66
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250731_034857_355909_31EB480F 
X-CRM114-Status: UNSURE (   8.19  )
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
Subject: [PATCH 0/5] scripts: rockchip: fix and cleanup rkimage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This series prepares the Rockchip tooling for creating and handling
signed images. The patch series for adding code to sign the images will
follow as a second step.

Fix the wrong size when calculating the hash over the image header.
Rename the hashtype field in the header to flags, because there are
other flags in this field, too. Extend the rk-usb-loader to accept
signed images and load signed images to a board via USB.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Michael Tretter (5):
      scripts: rockchip: use correct header size
      scripts: rockchip: add helper for updating hash
      scripts: rockchip: rename hashtype to flags
      scripts: rockchip: rename NEWIDB_MAGIC to NEWIDB_MAGIC_RKNS
      scripts: rockchip: support RKSS images

 scripts/rk-usb-loader.c |  7 ++++---
 scripts/rkimage.c       | 24 ++++++++++++++++--------
 scripts/rockchip.h      |  8 ++++++--
 3 files changed, 26 insertions(+), 13 deletions(-)
---
base-commit: 89bf1fcc998fc5fea0ce613d9930dd9ee39c0fb2
change-id: 20250731-rkimage-cleanup-611572232b66

Best regards,
-- 
Michael Tretter <m.tretter@pengutronix.de>



