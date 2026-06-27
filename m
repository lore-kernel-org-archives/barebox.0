Delivery-date: Sat, 27 Jun 2026 11:57:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wdPml-00AO6u-11
	for lore@lore.pengutronix.de;
	Sat, 27 Jun 2026 11:57:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wdPmk-000829-OC
	for lore@pengutronix.de; Sat, 27 Jun 2026 11:57:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=2pYDAHnXJeEvL3kMPIa9Iv+I8XZaVN+1vp9/VTJBSWE=; b=T9xHCHeuoEI48PlBLwbx7aU6wf
	DScvQM2DqU59s+S6PomnhPNIN6tOv+W2+8HmYK8LEFpdxsGwuHUdP4coKfpknmtz7+nNeQCTP2FZe
	ol78K9XkmYF+sCw6Ogb2dwTCd39YbBfbitH95yOIjPgg1pBsinMsoDs0mgcex1LlUqf6a90m0GtgP
	kaJHVNUsOn2IWGiMLCCIegjZf8P+E+N+1p/yi2SMBO3lxgKjrDdSVo9o1uhCjwFylWWp9IG5WwJUf
	l7jxjlc2Ry34/3srR3rLvCObuUCfV2d9YfmV9rfeG7DCfRSLtrv+ZYb4sh68VZWooJvpmsqL3DlN4
	wgUCC8Aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdPlR-0000000CLwz-0JQL;
	Sat, 27 Jun 2026 09:55:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdPlN-0000000CLvz-34Vn
	for barebox@lists.infradead.org;
	Sat, 27 Jun 2026 09:55:51 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wdPlK-0002ad-50; Sat, 27 Jun 2026 11:55:46 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Sat, 27 Jun 2026 11:55:39 +0200
Message-ID: <20260627095543.2462939-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260627_025549_771043_8B1034C9 
X-CRM114-Status: UNSURE (   9.06  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 1/3] efi: gop: fix rectangle extents passed to fb_damage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

fb_damage takes the coordinates of the upper left and bottom right
pixels as can be seen in fb_rect_width() and fb_rect_height().

We erroneously passed only width and height though, so add the origin
pixel coordinates on top to fix this.

Fixes: d040f49ad0b3 ("efi: loader: protocol: add graphical output protocol support")
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 efi/loader/protocols/gop.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/efi/loader/protocols/gop.c b/efi/loader/protocols/gop.c
index 9ada8a2da290..d48edac5a2d6 100644
--- a/efi/loader/protocols/gop.c
+++ b/efi/loader/protocols/gop.c
@@ -248,7 +248,7 @@ static __always_inline efi_status_t gop_blt_int(struct efi_graphics_output_proto
 	}
 
 	if (blt_to_video) {
-		struct fb_rect rect = { dx, dy, width, height };
+		struct fb_rect rect = { dx, dy, dx + width, dy + height };
 		fb_damage(gopobj->fbi, &rect);
 	}
 
-- 
2.47.3



