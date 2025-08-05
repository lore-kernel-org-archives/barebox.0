Delivery-date: Tue, 05 Aug 2025 09:34:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujCBg-007DVb-1B
	for lore@lore.pengutronix.de;
	Tue, 05 Aug 2025 09:34:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujCBf-0005Q9-Ql
	for lore@pengutronix.de; Tue, 05 Aug 2025 09:34:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3OMqmhcYmoyAApU0g8NIHLKdtdUjNxbZPmT4KL9NQdE=; b=KLUX4ekQEKomWRL6nCBOQt0XeR
	2fCX6TBunLz+BpBmZ4uzPa9Sqx8ZDAAJ+s9ZcC8qnKn0wSd6qgVTCiaIakdTmgh8e2w4UZ+llh7x5
	j3Jz82kmMafmDyoGs4pqj9pOkgT4q23+iUSi94PnG6H5CHjsGK1mqo62576D4OS2zlWP/CvMAmykn
	4Ffe+S6yEDndzYyWS5D6T3qYVnbal20mPg6HdQc2eT/lc5koTSzv9X8898tSsYLOOIrMfgODZyRXH
	kRa5pKIcn2FyAAZc/2zmVC2z3z7ffGfn1q4I8QHj3nh+oXBYQHXSxQIPx4Md3tuJqt7CgDh++1dG4
	ciArr5nQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujCBH-0000000C1z2-2DNo;
	Tue, 05 Aug 2025 07:33:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujCBD-0000000C1wS-0IZu
	for barebox@lists.infradead.org;
	Tue, 05 Aug 2025 07:33:54 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1ujCBA-00058R-Az; Tue, 05 Aug 2025 09:33:48 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Tue, 05 Aug 2025 09:33:46 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250805-rkimage-cleanup-v2-1-5d015f6c9059@pengutronix.de>
References: <20250805-rkimage-cleanup-v2-0-5d015f6c9059@pengutronix.de>
In-Reply-To: <20250805-rkimage-cleanup-v2-0-5d015f6c9059@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_003351_224618_AF69DF32 
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
Subject: [PATCH v2 1/5] scripts: rockchip: use correct header size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The hash should include the entire header, which is actually 1536 bytes
long. It seems that the hash is not checked for unsigned images and thus
this wasn't an issue until now.

If the hash is used for signing the image, hashing 1535 bytes instead of
1536 bytes causes a verification failure.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Changes in v2:
- none
---
 scripts/rkimage.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/rkimage.c b/scripts/rkimage.c
index b31893fe8f451b4c70dfb55005529ac21cc74156..ba89f32d9376d0153692baa3ddde1c793c1e4cc2 100644
--- a/scripts/rkimage.c
+++ b/scripts/rkimage.c
@@ -98,9 +98,9 @@ static int create_newidb(struct newidb *idb)
 	}
 
 	if (hash_type == HASH_TYPE_SHA256)
-		sha256(idbu8, 1535, idbu8 + 1536);
+		sha256(idbu8, 1536, idbu8 + 1536);
 	else if (hash_type == HASH_TYPE_SHA512)
-		sha512(idbu8, 1535, idbu8 + 1536);
+		sha512(idbu8, 1536, idbu8 + 1536);
 
 	return 0;
 }

-- 
2.39.5



