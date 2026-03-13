Delivery-date: Fri, 13 Mar 2026 14:34:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12eZ-000DNA-2a
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 14:34:11 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12eG-0008Pp-Pz
	for lore@pengutronix.de; Fri, 13 Mar 2026 14:34:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cS3Us/jnAFTOfZwyuwqC1k+rekzMxHA/bdM0ZN+jG/g=; b=ZCr2UHIT7MtLOpAq7DDRCRFlnV
	fFW17fJHgQS60ypBat+ZMmA22zG9BhPvPSB2+RJLFrsIsMM0sD46BL/P1Fx+iUr8tBCNzO/ahHz3N
	XkLTYu0RpazXJ6aGmZA912RD1KKLj5lGev9FM8l1FOaTloRfGli0E6pFE3j65pu1slhiOMzcDI3/c
	pXUO7+Pgyi0IWNbypyemi69dpFI5s/HZ/91+J5c18ZcPRpmUAxhWf1S1kxassuOKpUiIkudg5egle
	3qh/2hamxWxyfMy3lrTdwg1PCd6+e1EAUcdpeqBh21m+gDay2DdgclyVZd3KU/ZxEWXN+E4Wy33hB
	guP0V+Lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12dD-00000000Ffo-0iKV;
	Fri, 13 Mar 2026 13:32:47 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12d7-00000000FWd-0NSk
	for barebox@bombadil.infradead.org;
	Fri, 13 Mar 2026 13:32:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=cS3Us/jnAFTOfZwyuwqC1k+rekzMxHA/bdM0ZN+jG/g=; b=gx5ExggDGcOpXX8mAn2SCk4uhg
	bWSZxiEL9SBHM9ZlqYc8HoLHQFGyWOBmBzKzOVO4F3BkYQrurG//JFN6oyAkm4rp6X4T4041XMO2Y
	eRdxbVwQjiX497v03306sgnB3xwK3A1Q3JezRA/mjQp38fUI8Kh7ijVeQjPAPAIqueZh8fcL2ggje
	/OorlB9PJd7F1d8w7VTQcwnJi4i+sKmuSBBPUnsDdYPDzteHWylFP4kTZl4FEx5u/0q28DLfpWYi/
	ML9S1pu9U0YE7nlwYNGd8YctpbBzV8al4aJivRiRK8eM0PQf2RL+eaqd3955h8VMxSQiZSES8VgZW
	7/Lk9+dA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12cy-00000003OSZ-3BAI
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 13:32:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12cx-0006n9-Mt; Fri, 13 Mar 2026 14:32:31 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12cx-0005SY-1c;
	Fri, 13 Mar 2026 14:32:31 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XM-00000009ULB-18Fa;
	Fri, 13 Mar 2026 14:26:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>,
	"Claude Opus 4.6" <noreply@anthropic.com>
Date: Fri, 13 Mar 2026 14:25:29 +0100
Message-ID: <20260313132631.2257573-46-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
References: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_133234_099299_1DB846C7 
X-CRM114-Status: UNSURE (   7.63  )
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
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,RCVD_IN_VALIDITY_RPBL_BLOCKED,
	RCVD_IN_VALIDITY_SAFE_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=no
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 45/58] video: mode-helpers: preserve sync polarity in fb_videomode conversion
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

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

(cherry picked from commit f66af1ff3a2042bfbadbfc952359d1cdc6fb07c3)

Reported-by: Claude Opus 4.6 <noreply@anthropic.com>
Fixes: 7fc6f7b5daa0 ("video: add videomode helpers")
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
Link: https://lore.barebox.org/20260213092906.3960051-1-a.fatoum@barebox.org
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
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



