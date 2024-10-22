Delivery-date: Tue, 22 Oct 2024 10:35:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t3AMh-007Oas-1c
	for lore@lore.pengutronix.de;
	Tue, 22 Oct 2024 10:35:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t3AMg-0006Tw-UH
	for lore@pengutronix.de; Tue, 22 Oct 2024 10:35:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ULAX6K4aGpXctF7f7YQuJwbHk4/aD1EHGxw4oTXoMos=; b=zZow6Ab6darkg3Blf5+Mg9hdAJ
	bF1L6eMFLDv+aRXlr1hSrHspoljz+J5TsFssVga0YPNkNChKBNB2fUy8F4OeeDnUKK7NGyUCfO6wL
	QNQZf/+CuRLfmvDT9lqi0/MEkgt8fOVpjMaHBWhS0Myde1xius0SXCknq941vpFUyIH3vtTvcb2Qo
	YHKcomRtU3G0ftE8PNnYx01ON1bcFLI1mBoNG5TwCNrPhD2S2pSr/2Nu9/S4+39hyQBsfD2yExXey
	HxKc/R1+5QbsVenvfM4yotNFtS1BYQKOV4H9BL2nG/6mi4wcj+HvNkdoCyaHcruKrTFJ02wrMGY34
	JAD2BQ1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3AMF-0000000ABDk-1Fqs;
	Tue, 22 Oct 2024 08:35:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3ALt-0000000ABBG-1VoO
	for barebox@lists.infradead.org;
	Tue, 22 Oct 2024 08:34:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t3ALr-0006Le-To; Tue, 22 Oct 2024 10:34:51 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t3ALr-000plh-2O;
	Tue, 22 Oct 2024 10:34:51 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t3ALr-00DdAK-27;
	Tue, 22 Oct 2024 10:34:51 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 22 Oct 2024 10:34:50 +0200
Message-Id: <20241022083450.3248781-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241022_013453_417866_B1230C27 
X-CRM114-Status: GOOD (  12.33  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! video: Rockchip: Add VOP2 driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

video: Rockchip: add missing dma_alloc_coherent a device parameter

dma_alloc_coherent was recently changed to take a device parameter like
in Linux.

The VOP2 driver went upstream during the same time and is missing the
fixup.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
This should be squashed either into the DMA branch or the VOP2 branch,
whichever comes first.
---
 drivers/video/rockchip/rockchip_drm_vop2.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/video/rockchip/rockchip_drm_vop2.c b/drivers/video/rockchip/rockchip_drm_vop2.c
index 3ab6fe97e0b0..3a1c951ec7e4 100644
--- a/drivers/video/rockchip/rockchip_drm_vop2.c
+++ b/drivers/video/rockchip/rockchip_drm_vop2.c
@@ -1634,8 +1634,9 @@ static int vop2_register_plane(struct vop2_video_port *vp, struct vop2_win *win)
 	win->dst.y2 = info->yres;
 
 	info->line_length = vp->line_length;
-	info->screen_base = dma_alloc_writecombine(vp->line_length * vp->max_yres,
-							&win->dma);
+	info->screen_base = dma_alloc_writecombine(DMA_DEVICE_BROKEN,
+						   vp->line_length * vp->max_yres,
+						   &win->dma);
 	if (!info->screen_base)
 		return -ENOMEM;
 
-- 
2.39.5



