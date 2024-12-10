Delivery-date: Tue, 10 Dec 2024 09:05:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tKvFA-006IUz-06
	for lore@lore.pengutronix.de;
	Tue, 10 Dec 2024 09:05:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tKvFA-0007Wn-0P
	for lore@pengutronix.de; Tue, 10 Dec 2024 09:05:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=4e/q9Ot63SflSLGLHDkG+ug6Jqksf1TMxLnnLiQpA5o=; b=bcTCd6Cw6R7iESZw1AHEDcj9rV
	i4Hi3/BTFbyEp05tSdmuXXAan3rpmIE+G40X33+STBilPhSG8a8Vv+dCl47mPZ3D+vBxNMAUu6nvA
	iXbNFQ6Qrp0sDZkZXbZKb66BMvnafajKItDT7sropvGdpH3wlBOYVRxiSmesY0SNBuwg7lSjE2NYy
	asvkuThOLwMMaSBPgzSDaeiAnm9pb/ma6GjnwFYcCDbCe2FHv0NHEuQaoTR4NusESsywKyFMu2sdl
	YxCXRbThpD2cM89zYi9dTEL7gOFSXLJ6+eJ9PfT9658i/MEjuCTldDaa+IzP3CLVdZKNK4d7wSuTx
	e8+QL3XQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKvEV-0000000AeEa-1uhr;
	Tue, 10 Dec 2024 08:04:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKvET-0000000AeDH-0DhF
	for barebox@lists.infradead.org;
	Tue, 10 Dec 2024 08:04:38 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1tKvEP-0007RQ-Gu; Tue, 10 Dec 2024 09:04:33 +0100
From: =?UTF-8?q?Sven=20P=C3=BCschel?= <s.pueschel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Sven=20P=C3=BCschel?= <s.pueschel@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 10 Dec 2024 09:04:03 +0100
Message-Id: <20241210080403.1235658-1-s.pueschel@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241210_000437_088635_03999E27 
X-CRM114-Status: GOOD (  10.94  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] video: mipi_dbi: don't send image before initialization
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Don't send an image to the display before it is initialized, as it can
cause a broken image being stored in the display memory and being shown
while initializing. Instead just damage the image in the flush call but
avoid writing the actual image.

This problem was experienced with a ILI9341 LCD driver and calling the
splash command before enabling the framebuffer. The splash command flushed
out the data, but given no initialization, they were misinterpreted.
After enabling the display, it displayed the broken image for a short time
before being updated. This caused a flickering effect for the viewer.
Switching the command ordering also fixes the problem, but sends an black
image before the actual splash image.

Co-developed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Sven Püschel <s.pueschel@pengutronix.de>
---
 drivers/video/mipi_dbi.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/video/mipi_dbi.c b/drivers/video/mipi_dbi.c
index 9611a402d1..c202ecc1c7 100644
--- a/drivers/video/mipi_dbi.c
+++ b/drivers/video/mipi_dbi.c
@@ -366,6 +366,9 @@ void mipi_dbi_fb_flush(struct fb_info *info)
 		dbidev->damage.y2 = info->yres;
 	}
 
+	if (!info->enabled)
+		return;
+
 	mipi_dbi_fb_dirty(dbidev, info, &dbidev->damage);
 }
 EXPORT_SYMBOL(mipi_dbi_fb_flush);
-- 
2.39.5



