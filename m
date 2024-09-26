Delivery-date: Thu, 26 Sep 2024 15:41:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stok2-0031JT-1I
	for lore@lore.pengutronix.de;
	Thu, 26 Sep 2024 15:41:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stok2-0007eN-An
	for lore@pengutronix.de; Thu, 26 Sep 2024 15:41:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ctuE4zhXBKRds6Q81COmn9EMtTWKARZogodaRfg4TuU=; b=Rqg6cDfXPyOD44mX7xDxAd/IXt
	rk4wmqQ1a1PCvUjA9FjvLHtEqg9eipKL9OBKItFi4u+NZC1QjhF6yajPojTD9l/Eie8Pzx7KRnNCj
	lwDBDgiwPppAz1GBpJgbLcKnUB/kh/wfvCJ/Q4CwwcdjGADKvMlg61jIzxGOKUYBMeudCIvlLQj88
	b+yQWs5bftEkJkS84MFN39wYdhc67GM0p385qZyo+Okk4xwZliiUmraxbh1SZLd15bmRMcptUqoDH
	w7xS9Z/oPeOTa3jCv1X62KpzRmibaGEuzPXnigt2IH4sdEvJ8QV9iPP5QIdhHyGewTFsVa0Gs+vJD
	uU9K13rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stojU-00000008Txe-3CAt;
	Thu, 26 Sep 2024 13:40:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stojR-00000008Tw8-2HY9
	for barebox@lists.infradead.org;
	Thu, 26 Sep 2024 13:40:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stojQ-000785-4z; Thu, 26 Sep 2024 15:40:32 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stojP-001hM9-OZ; Thu, 26 Sep 2024 15:40:31 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stoKl-00GZyn-1l;
	Thu, 26 Sep 2024 15:15:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 26 Sep 2024 15:15:08 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240926-vop2-v1-10-fe0581f2020b@pengutronix.de>
References: <20240926-vop2-v1-0-fe0581f2020b@pengutronix.de>
In-Reply-To: <20240926-vop2-v1-0-fe0581f2020b@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1727356502; l=1063;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=/FqB90zJ72GCrUUMBvns5uaf64m6GLIl32F3Bmy3U9Y=;
 b=Ct26SMN15GjbARC+uqKaNK4EeRnhYLoxcjYYQHLOFWVV8gw4rfQ7BmjTRNDQLaLDa0LcfA50v
 BKRdMvh3wkJC48q18yN2VGMKdPrFFNcn1mq3KqIkSffENMNR1t2M/AE
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240926_064033_624921_398C73A0 
X-CRM114-Status: GOOD (  13.02  )
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
Subject: [PATCH 10/13] fb: Accept overlay framebuffers without modes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds a pointer to the base framebuffer to struct fb_info
in case the framebuffer is an overlay. As overlays do not have modes,
accept them in fb_enable() even when it doesn't have a mode.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/fb.c | 2 +-
 include/fb.h       | 2 ++
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/video/fb.c b/drivers/video/fb.c
index a752c114e2..3677c63e07 100644
--- a/drivers/video/fb.c
+++ b/drivers/video/fb.c
@@ -138,7 +138,7 @@ static int fb_enable_set(struct param_d *param, void *priv)
 {
 	struct fb_info *info = priv;
 
-	if (!info->mode)
+	if (!info->mode && !info->base)
 		return -EINVAL;
 
 	if (info->p_enable)
diff --git a/include/fb.h b/include/fb.h
index 574a66a396..b08ff1675d 100644
--- a/include/fb.h
+++ b/include/fb.h
@@ -175,6 +175,8 @@ struct fb_info {
 					 * be created.
 					 */
 	int shadowfb;
+
+	struct fb_info *base;
 };
 
 int of_get_display_timing(const struct device_node *np, const char *name,

-- 
2.39.5



