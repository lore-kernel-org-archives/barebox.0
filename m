Delivery-date: Thu, 31 Jul 2025 12:54:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uhQva-005Zt8-2M
	for lore@lore.pengutronix.de;
	Thu, 31 Jul 2025 12:54:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uhQvZ-0000wm-O9
	for lore@pengutronix.de; Thu, 31 Jul 2025 12:54:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cebrcIaqIa+1Oxb6cYqvVO7PiiIS6yWQUA3UxQJrJ3k=; b=0g55yQxb9pLKwc+A2cRXpgJH57
	HfjIb96V5Qq9ZOvhGZsvTSX6bLKm34MywMGoX7Vk6m1U2VZ4HDweek6rbfbb//PjeURsRrs1zFHOQ
	kqEFDwSd7MT42poVnTkBLNIDIqdyh29Ca4NKUrnU8FtrsM2VZwb6zo09XhyjI1SGS93PIylVJzYz3
	RXVUaXFLjvGGtGlvSP6zeWzGKtBv4P6bGBdh9HMLCDuGrX1Kg4OAj7o5bRtoWKz+asdtn7QUSvhwe
	rveTFN7jNw++zCkazhAMk+imChuxiPqa2T9wyl1rWRhWaOI3tgXsHztPimnQup2a9V/AKxRGGYkBS
	HLF0H47g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhQv4-00000003Pqi-3H7Y;
	Thu, 31 Jul 2025 10:53:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhQqH-00000003PIn-0xDA
	for barebox@lists.infradead.org;
	Thu, 31 Jul 2025 10:48:58 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1uhQqE-0008Vg-LS; Thu, 31 Jul 2025 12:48:54 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu, 31 Jul 2025 12:48:21 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250731-rkimage-cleanup-v1-1-967037e5d67a@pengutronix.de>
References: <20250731-rkimage-cleanup-v1-0-967037e5d67a@pengutronix.de>
In-Reply-To: <20250731-rkimage-cleanup-v1-0-967037e5d67a@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250731_034857_275658_7AABC469 
X-CRM114-Status: GOOD (  11.39  )
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
Subject: [PATCH 1/5] scripts: rockchip: use correct header size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The hash should include the entire header, which is actually 1536 bytes
long. It seems that the hash is not checked for unsigned images and thus
this wasn't an issue until now.

If the hash is used for signing the image, hashing 1535 bytes instead of
1536 bytes causes a verification failure.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
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



