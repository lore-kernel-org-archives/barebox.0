Delivery-date: Fri, 07 Nov 2025 22:01:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vHTaG-00GQ55-02
	for lore@lore.pengutronix.de;
	Fri, 07 Nov 2025 22:01:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vHTaF-0000a1-FZ
	for lore@pengutronix.de; Fri, 07 Nov 2025 22:01:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NqmZuJ+BwGJmhIWcv6BkviBHp/WFsslgUVTdUNRXfkk=; b=pcHaA7Tolwr8aPf6gXhmmSivaX
	H6U4ZJT5gCz4tmd8XLzPJao0SQMjg8tOvGkEw8PU7OQ8I+RjJvfHpxHHb7RVOiW/RusnA4UOR5CX6
	/LTxJVN6WwqtQsduxdXVYcHalZXRTKXAqFvnwbq8I7zG5+lZyqE8a4zjavkxii9hbNqr5IX8fXT31
	ydc9kW/OLxHFNhOJEux9QhXdXfGjAYRZFzLNMvbkKDt+sSjwXNmc6pfObrs3YNJ1uL95i4O4kJhny
	taC5KbCviRlxy+e/LkZUrx5RzydEls83yoYH5YALsgQmHGArvRpbiPS8UB05+LeBTnnWwP1n0GEzQ
	HXagvF4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHTZa-000000013sq-0uBf;
	Fri, 07 Nov 2025 21:00:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHTZX-000000013rM-2mfN
	for barebox@lists.infradead.org;
	Fri, 07 Nov 2025 21:00:41 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vHTZU-00009d-Gd; Fri, 07 Nov 2025 22:00:36 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri,  7 Nov 2025 22:00:30 +0100
Message-ID: <20251107210033.2229781-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251107210033.2229781-1-a.fatoum@barebox.org>
References: <20251107210033.2229781-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251107_130039_698228_2D699C7E 
X-CRM114-Status: UNSURE (   9.77  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] video: stm: allocate uncached framebuffer memory as write-combine
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For i.MX23 and i.MX28, this makes no difference as the MMU treats
write-combine and uncached the same on ARMv6 and earlier, but on
ARMv7 and above, use of the write combine buffer allows us to spend less
time pushing pixels.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/video/stm.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/video/stm.c b/drivers/video/stm.c
index c5dadb823251..da006b7c240f 100644
--- a/drivers/video/stm.c
+++ b/drivers/video/stm.c
@@ -305,8 +305,8 @@ static int stmfb_activate_var(struct fb_info *fb_info)
 		remap_range(fbi->fixed_screen,
 				fbi->fixed_screen_size, MAP_UNCACHED);
 	} else {
-		fb_info->screen_base = dma_alloc_coherent(DMA_DEVICE_BROKEN,
-							  size, DMA_ADDRESS_BROKEN);
+		fb_info->screen_base = dma_alloc_writecombine(DMA_DEVICE_BROKEN,
+							      size, DMA_ADDRESS_BROKEN);
 		if (!fb_info->screen_base)
 			return -ENOMEM;
 		fbi->memory_size = size;
-- 
2.47.3



