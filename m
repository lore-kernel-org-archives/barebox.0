Delivery-date: Mon, 31 Aug 2026 21:30:45 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x17iO-009Nth-25
	for lore@lore.pengutronix.de;
	Mon, 31 Aug 2026 21:30:45 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id C3DD22032F7
	for <lore@pengutronix.de>; Mon, 31 Aug 2026 21:30:40 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=vXUOuWzx;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=0PtTu/WOjJ+z8/bHJbRLqSZMXFG8+S+NxHB/iYX23Ek=; b=vXUOuWzx/ikLAs59a6MyOu7tfh
	4nrABF1ex0v7UHSRV7G7yfTypfjG7MQnmnhPIeNB2sj8mPWyw5mAFpLQuuoSjhN3pbJyE0K/rQZ4I
	7OR12cV9EgAqZSf6U3UWuZYq7vptVtjZR5sSEIaRPsaJlI7/K3Dhf+9EZVr/XUm/aIZN30CNSOMOp
	zfqsu5kk5oa453In1Rja/O5ShYS5YRWcMQT3pV51Y2iaeww2O+Gprmbb0Av5DyWydOBTjI5467aYk
	Jtt2Fdqdyoq3l7ONY6OauFpk20Umre4gcBXPbw2sIa/espZWtGr0r7UHtNUNyGCR8XxlEXf2TSq/k
	CYNSZ99Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x17hs-0000000ANMP-3gkh;
	Mon, 31 Aug 2026 19:30:12 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x17hq-0000000ANLd-17E0
	for barebox@lists.infradead.org;
	Mon, 31 Aug 2026 19:30:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 95D3D202EA1;
	Mon, 31 Aug 2026 21:30:04 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x17hk-004Iyb-1b;
	Mon, 31 Aug 2026 21:30:04 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x17hk-00000006A0R-1dIJ;
	Mon, 31 Aug 2026 21:30:04 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH] video: efi_gop: reject Blt-only graphics output
Date: Mon, 31 Aug 2026 21:29:53 +0200
Message-ID: <20260831192958.1468375-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_123010_456972_F0F7FF7D 
X-CRM114-Status: GOOD (  18.48  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> A GOP in PixelBltOnly
    mode has neither a linear framebuffer nor a pixel layout, so there is nothing
    to draw into. Bail out of both the mode setup and the probe instead of making
    up a 4 bpp format; the [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Server: mx1
X-Stat-Signature: y4q5xg7wnhwrjybsd3x1epkin69xuss7
X-Rspamd-Queue-Id: C3DD22032F7
X-Spamd-Result: default: False [-56.31 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:c01:1d::a2:received,2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action

From: Ahmad Fatoum <a.fatoum@barebox.org>

A GOP in PixelBltOnly mode has neither a linear framebuffer nor a pixel
layout, so there is nothing to draw into. Bail out of both the mode
setup and the probe instead of making up a 4 bpp format; the probe
check is needed as register_framebuffer() ignores the initial mode
setup's error. Query the mode before switching to it, so an unusable
mode doesn't change the display state.

This is hit with EDK II's VirtioGpuDxe, which is Blt-only.

Assisted-by: Claude:opus-5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/video/efi_gop.c | 60 +++++++++++++++++++++++++++--------------
 1 file changed, 40 insertions(+), 20 deletions(-)

diff --git a/drivers/video/efi_gop.c b/drivers/video/efi_gop.c
index aff1e45b28a2..111c763cd197 100644
--- a/drivers/video/efi_gop.c
+++ b/drivers/video/efi_gop.c
@@ -47,7 +47,7 @@ static void find_bits(unsigned long mask, u32 *pos, u32 *size)
 	*size = len;
 }
 
-static void setup_pixel_info(struct fb_info *fb, u32 pixels_per_scan_line,
+static int setup_pixel_info(struct fb_info *fb, u32 pixels_per_scan_line,
 		 struct efi_pixel_bitmask pixel_info, int pixel_format)
 {
 	if (pixel_format == PIXEL_RGB_RESERVED_8BIT_PER_COLOR) {
@@ -83,17 +83,15 @@ static void setup_pixel_info(struct fb_info *fb, u32 pixels_per_scan_line,
 			fb->blue.length + fb->transp.length;
 		fb->line_length = (pixels_per_scan_line * fb->bits_per_pixel) / 8;
 	} else {
-		fb->bits_per_pixel = 4;
-		fb->line_length = fb->xres / 2;
-		fb->red.length = 0;
-		fb->red.offset = 0;
-		fb->green.length = 0;
-		fb->green.offset = 0;
-		fb->blue.length = 0;
-		fb->blue.offset = 0;
-		fb->transp.length = 0;
-		fb->transp.offset = 0;
+		/*
+		 * PixelBltOnly modes have no pixel layout and no linear
+		 * framebuffer, so there is nothing we could draw into. Any
+		 * other value is a format we don't know about.
+		 */
+		return -EOPNOTSUPP;
 	}
+
+	return 0;
 }
 
 static int efi_gop_query(struct efi_gop_priv *priv)
@@ -131,12 +129,25 @@ static int efi_gop_fb_activate_var(struct fb_info *fb_info)
 {
 	struct efi_gop_priv *priv = fb_info->priv;
 	struct efi_graphics_output_mode_info *info;
-	int num;
+	int num, ret;
 	size_t size = 0;
 	efi_status_t efiret;
 
 	num = simple_strtoul(fb_info->mode->name, NULL, 0);
 
+	efiret = priv->gop->query_mode(priv->gop, num, &size, &info);
+	if (EFI_ERROR(efiret))
+		return -efi_errno(efiret);
+
+	/* Don't switch to a mode we would not be able to draw into */
+	ret = setup_pixel_info(&priv->fb, info->pixels_per_scan_line,
+			       info->pixel_information, info->pixel_format);
+
+	BS->free_pool(info);
+
+	if (ret)
+		return ret;
+
 	if (priv->mode != num) {
 		efiret = priv->gop->set_mode(priv->gop, num);
 		if (EFI_ERROR(efiret))
@@ -144,13 +155,6 @@ static int efi_gop_fb_activate_var(struct fb_info *fb_info)
 		priv->mode = num;
 	}
 
-	efiret = priv->gop->query_mode(priv->gop, num, &size, &info);
-	if (EFI_ERROR(efiret))
-		return -efi_errno(efiret);
-
-	setup_pixel_info(&priv->fb, info->pixels_per_scan_line,
-			 info->pixel_information, info->pixel_format);
-
 	return 0;
 }
 
@@ -160,6 +164,7 @@ static struct fb_ops efi_gop_ops = {
 
 static int efi_gop_probe(struct efi_device *efidev)
 {
+	struct efi_graphics_output_mode_info *info;
 	struct efi_gop_priv *priv;
 	int ret = 0;
 	efi_status_t efiret;
@@ -173,11 +178,26 @@ static int efi_gop_probe(struct efi_device *efidev)
 	priv->gop = protocol;
 	priv->dev = &efidev->dev;
 
-	if (!priv->gop) {
+	if (!priv->gop || !priv->gop->mode || !priv->gop->mode->info) {
 		ret = -EINVAL;
 		goto err;
 	}
 
+	/*
+	 * register_framebuffer() ignores the error from the initial mode
+	 * setup, so run the same check here to avoid registering a
+	 * framebuffer we can't use. EDK II's VirtioGpuDxe is Blt-only and
+	 * ends up here.
+	 */
+	info = priv->gop->mode->info;
+	ret = setup_pixel_info(&priv->fb, info->pixels_per_scan_line,
+			       info->pixel_information, info->pixel_format);
+	if (ret) {
+		dev_warn(priv->dev, "no usable framebuffer (pixel format %d)\n",
+			 info->pixel_format);
+		goto err;
+	}
+
 	ret = efi_gop_query(priv);
 	if (ret)
 		goto err;
-- 
2.47.3



