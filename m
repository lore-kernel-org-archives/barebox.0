Delivery-date: Mon, 02 Jun 2025 08:16:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uLyTU-002rgs-0K
	for lore@lore.pengutronix.de;
	Mon, 02 Jun 2025 08:16:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uLyTT-0001oI-In
	for lore@pengutronix.de; Mon, 02 Jun 2025 08:16:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=XBTh3Ztjf7IeEQHkstDAe7yiwN1beNDIJuHKPga74mU=; b=bL068A3FRgi9QRBQ8D0pFLwOr8
	mBDjLp95yHlt8UB8+Jojq97W6ZtITxZPYu7J95W4sdjzOEMFoSiOB2K07TQyPVPdUGNs5N9IdffHQ
	HOBsBOqoM20+FfgoJqQ7WKEag+alrveAqGm9caapnQwmacNuREVi8V6Rr80HrspBa4OE0cWTdFk9p
	gstmk+lH4YfaNIURoUIWmKyKGDPKpj4oDozBYIQgd2e/kDefxlaUVps9VWRjVWmte5PrLpXX5zRCp
	JpalNxEJeq3EqsPyv5aiYNZ8YMF9ORCzywghgrABAAWEif7RxiK8HmhhBGcFCmEJdMul8ASBfXbBc
	XnXnGSuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uLyT0-00000006pBc-39PV;
	Mon, 02 Jun 2025 06:16:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uLySy-00000006pAp-3fJB
	for barebox@lists.infradead.org;
	Mon, 02 Jun 2025 06:16:13 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uLySx-0001ZH-Ce; Mon, 02 Jun 2025 08:16:11 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  2 Jun 2025 08:16:09 +0200
Message-Id: <20250602061610.752815-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250601_231612_909414_D252EFBC 
X-CRM114-Status: GOOD (  10.10  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] video: panel-mipi-dbi: fix fake clock calculation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

pixclock is supposed to be in picoseconds, not Hz and panel-mipi-dbi.c
got that wrong. According to the comment the value isn't used, so this
fix only ensures sane values are read while debugging.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/video/panel-mipi-dbi.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/video/panel-mipi-dbi.c b/drivers/video/panel-mipi-dbi.c
index fecb232796cc..10812c9d7bbd 100644
--- a/drivers/video/panel-mipi-dbi.c
+++ b/drivers/video/panel-mipi-dbi.c
@@ -248,10 +248,12 @@ static int panel_mipi_dbi_get_mode(struct mipi_dbi_dev *dbidev, struct fb_videom
 
 	/* The driver doesn't use the pixel clock but it is mandatory so fake one if not set */
 	if (!mode->pixclock) {
-		mode->pixclock =
-			(mode->left_margin + mode->xres + mode->right_margin + mode->hsync_len) *
-			(mode->upper_margin + mode->yres + mode->lower_margin + mode->vsync_len) *
-			60 / 1000;
+		unsigned htotal = mode->left_margin + mode->xres +
+				mode->right_margin + mode->hsync_len;
+		unsigned vtotal = mode->upper_margin + mode->yres +
+			mode->lower_margin + mode->vsync_len;
+
+		mode->pixclock = KHZ2PICOS(htotal * vtotal * 60 / 1000);
 	}
 
 	return 0;
-- 
2.39.5



