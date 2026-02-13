Delivery-date: Fri, 13 Feb 2026 10:29:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vqpUd-001Ccc-0c
	for lore@lore.pengutronix.de;
	Fri, 13 Feb 2026 10:29:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vqpUd-0005A7-HC
	for lore@pengutronix.de; Fri, 13 Feb 2026 10:29:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=KqQeVPmuyrV1Bp61s8zzRkl8veLj9aXBMxbwMmia080=; b=IYbeC+jJyscz/HRYPzhMPZJuw2
	1ta0seVAQi8fS11AiqDXh82UNaFc2DgdqUZYwgZGUTXp1rQlk7vsAyUgMmCHtdjniMWC9LaJFWYyx
	KHU3p2Sx3zsnXrDvr8mb0h3yt0iiBywlCT9sBCsEDYvEY5XpjtoO7KtVS9xjdgQ+aY0PWlrPmGdrS
	8BkGF0U7q7a5knOi3gJ2kxXGHXLCWNYIBBnqMOQtUZ0tnkJbGxdSAqAUuPD+Lz1hSb1ovsjSZY/6I
	g2kJ4RIkpLg6jFXeXGjtrBnYeZgOTHLFhVK/COKnDoUT90WxgNaO4C06Z/ox87HmGmzA80VL1YZkB
	Vj+Ut4tQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqpUB-00000003EeZ-1yLw;
	Fri, 13 Feb 2026 09:29:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqpU7-00000003Edn-24sb
	for barebox@lists.infradead.org;
	Fri, 13 Feb 2026 09:29:13 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vqpU3-00053h-BS; Fri, 13 Feb 2026 10:29:07 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: "Claude Opus 4.6" <noreply@anthropic.com>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri, 13 Feb 2026 10:28:08 +0100
Message-ID: <20260213092906.3960051-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260213_012911_549159_27169868 
X-CRM114-Status: UNSURE (   6.71  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master 1/2] video: mode-helpers: preserve sync polarity in fb_videomode conversion
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The FB_SYNC_*_HIGH_ACT flags indicate that the respective sync signal is
active high when set and active low when unset.

The DISPLAY_FLAGS_*SYNC_* flags on the other hands have separate
non-zero _HIGH and _LOW flags, which fb_videomode_to_videomode() failed
to account for.

This causes a DPI sync polarity mismatch for MIPI-DSI panels with
negative sync polarity, which was hackily worked around by enabling the
video pattern generator intermittently.

Fix by explicitly setting the LOW polarity flags, which restores
DRM_MODE_FLAG_NHSYNC/NVSYNC after the fb_videomode round-trip.

Reported-by: Claude Opus 4.6 <noreply@anthropic.com>
Fixes: 7fc6f7b5daa0 ("video: add videomode helpers")
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/video/mode-helpers.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/video/mode-helpers.c b/drivers/video/mode-helpers.c
index 4a1d31813e79..89abd8342bf4 100644
--- a/drivers/video/mode-helpers.c
+++ b/drivers/video/mode-helpers.c
@@ -143,8 +143,12 @@ void fb_videomode_to_videomode(const struct fb_videomode *fbmode,
 
 	if (fbmode->sync & FB_SYNC_HOR_HIGH_ACT)
 		vm->flags |= DISPLAY_FLAGS_HSYNC_HIGH;
+	else
+		vm->flags |= DISPLAY_FLAGS_HSYNC_LOW;
 	if (fbmode->sync & FB_SYNC_VERT_HIGH_ACT)
 		vm->flags |= DISPLAY_FLAGS_VSYNC_HIGH;
+	else
+		vm->flags |= DISPLAY_FLAGS_VSYNC_LOW;
 	if (fbmode->vmode & FB_VMODE_INTERLACED)
 		vm->flags |= DISPLAY_FLAGS_INTERLACED;
 	if (fbmode->vmode & FB_VMODE_DOUBLE)
-- 
2.47.3



