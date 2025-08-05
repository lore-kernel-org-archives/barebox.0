Delivery-date: Tue, 05 Aug 2025 09:34:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujCBk-007DWV-0O
	for lore@lore.pengutronix.de;
	Tue, 05 Aug 2025 09:34:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujCBj-0005Ro-Gn
	for lore@pengutronix.de; Tue, 05 Aug 2025 09:34:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=X/5PQiyFu2ql3CQ1ndDCBDCWQ5sZe/djXBTjF22A2sk=; b=C7HDDeuGC1oPtB
	msHC4edclRH7w6o2ZqassRhmRsd4zp30Uv0rkYDVNT33eyE4VnDuJiRqTgE7ChU0BCN3ZT0MUcBFz
	miYDC2v5elL3bee071sZAg0hJPu6nY0aCyuKYEuUuiHTMHKPZgsJBitxBqVtXQv5/rfalFLymQHL3
	M9JJ0C+R0vTJ4XhgsmSNZMuXoLhAOqE68/jJDKIAtIAO08wMgN0kGb8X5n9nJEK08LaGJdE52kTjg
	ceXNYb/kKtXw1TuuiiZx/wdDgfxy8gIz96XAw9NlnQ03wurBO51y7chvqv0Elkv5KfToHUZrNqL2v
	G+YRN2DXx3Mu3Kme5lmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujCBJ-0000000C1zq-0y34;
	Tue, 05 Aug 2025 07:33:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujCBD-0000000C1wR-0VEP
	for barebox@lists.infradead.org;
	Tue, 05 Aug 2025 07:33:54 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1ujCBA-00058R-9v; Tue, 05 Aug 2025 09:33:48 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Tue, 05 Aug 2025 09:33:45 +0200
Message-Id: <20250805-rkimage-cleanup-v2-0-5d015f6c9059@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIANmzkWgC/3WNwQ7CIBAFf6XZsxigAaIn/6PpAcvablRKoCU1D
 f8u9u5xJnnzdkgYCRNcmx0iZko0+wry1MAwWT8iI1cZJJeKm1aw+KS3rXp4ofVrYFoIZaRs5V1
 rqKsQ8UHbUez6yhOlZY6f4yCLn/3fyoJxdtGGtwaV08beAvpxXeLsaTs7hL6U8gUX7YviswAAA
 A==
X-Change-ID: 20250731-rkimage-cleanup-611572232b66
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_003351_223719_8A65070A 
X-CRM114-Status: UNSURE (   8.95  )
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
Subject: [PATCH v2 0/5] scripts: rockchip: fix and cleanup rkimage
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
Changes in v2:
- Switch order of Patch 2 and Patch 3 to define flags before using them
- Drop double negation in flags check
- Link to v1: https://lore.kernel.org/r/20250731-rkimage-cleanup-v1-0-967037e5d67a@pengutronix.de

---
Michael Tretter (5):
      scripts: rockchip: use correct header size
      scripts: rockchip: rename hashtype to flags
      scripts: rockchip: add helper for updating hash
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



