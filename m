Delivery-date: Sat, 27 Jun 2026 11:57:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wdPmj-00AO6Z-1Y
	for lore@lore.pengutronix.de;
	Sat, 27 Jun 2026 11:57:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wdPmi-0007sB-Ns
	for lore@pengutronix.de; Sat, 27 Jun 2026 11:57:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uGAkwRCh0j4tGudIoewwb6i9MpEGct+s+zHiP+C24Vw=; b=IlSOuXq+GWnNLzqji5G9brTJIV
	atXn9wcTebSblRremCcRxeU39zC/nWnuIFSIp8Iuc4o8bVZiPcm4pLZYm408UMyg3JCggLWfcjl+D
	m0Fvw9RyO9aC6YWbmj2C/Em2C1EmVTOa/LRvLqgS8eRQ7wPj5TqiYdrMERDeoz8yLX6YvvbrxUbAV
	UUwuYkoF+N8GAMmei0XXku8GsbC7bdOjhtFBoKypUBH+o6lICkv+PDkmygJKkUkqO5AVzCFTOyz0H
	e1yr6ve8+BAzZ6FzVpRCTrRsU7lo2hezauSbGPQwgjQNkk4rJbV4ItcV4zH/mv2eGM81C1QWjVXLL
	PViK8mxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdPlR-0000000CLx4-0bLq;
	Sat, 27 Jun 2026 09:55:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdPlN-0000000CLw1-31Cc
	for barebox@lists.infradead.org;
	Sat, 27 Jun 2026 09:55:51 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wdPlK-0002ad-Ur; Sat, 27 Jun 2026 11:55:47 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Sat, 27 Jun 2026 11:55:41 +0200
Message-ID: <20260627095543.2462939-3-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260627095543.2462939-1-a.fatoum@barebox.org>
References: <20260627095543.2462939-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260627_025549_771251_170702C5 
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 3/3] efi: gop: report and use framebuffer stride
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Both barebox and EFI GOP differentiate between the width of a line on
screen and in memory.

The EFI GOP driver we had imported from U-Boot loses that distinction
and reports PixelsPerScanLine to be identical to the visible horizontal
resolution. Pass the framebuffer line length instead to fix potential
issues when they differ.

Assisted-by: Codex:gpt-5.5
Fixes: d040f49ad0b3 ("efi: loader: protocol: add graphical output protocol support")
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 efi/loader/protocols/gop.c | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/efi/loader/protocols/gop.c b/efi/loader/protocols/gop.c
index 03995d9eee29..fbbcace83eef 100644
--- a/efi/loader/protocols/gop.c
+++ b/efi/loader/protocols/gop.c
@@ -174,7 +174,7 @@ static __always_inline efi_status_t gop_blt_int(struct efi_graphics_output_proto
 		break;
 	case EFI_BLT_VIDEO_TO_BLT_BUFFER:
 	case EFI_BLT_VIDEO_TO_VIDEO:
-		swidth = gopobj->info.horizontal_resolution;
+		swidth = gopobj->info.pixels_per_scan_line;
 		if (!vid_bpp)
 			return EFI_UNSUPPORTED;
 		break;
@@ -187,7 +187,7 @@ static __always_inline efi_status_t gop_blt_int(struct efi_graphics_output_proto
 	case EFI_BLT_BUFFER_TO_VIDEO:
 	case EFI_BLT_VIDEO_FILL:
 	case EFI_BLT_VIDEO_TO_VIDEO:
-		dwidth = gopobj->info.horizontal_resolution;
+		dwidth = gopobj->info.pixels_per_scan_line;
 		if (!vid_bpp)
 			return EFI_UNSUPPORTED;
 		break;
@@ -489,6 +489,7 @@ static efi_status_t efi_gop_register(void *data)
 	struct fb_info *fbi;
 	struct screen *sc;
 	struct efi_pixel_bitmask *pixel_information;
+	u32 bytes_per_pixel, pixels_per_scan_line;
 
 	sc = fb_open(fbdev);
 	if (IS_ERR(sc)) {
@@ -510,6 +511,14 @@ static efi_status_t efi_gop_register(void *data)
 		return EFI_UNSUPPORTED;
 	}
 
+	bytes_per_pixel = fbi->bits_per_pixel / BITS_PER_BYTE;
+	if (fbi->line_length % bytes_per_pixel)
+		return EFI_UNSUPPORTED;
+
+	pixels_per_scan_line = fbi->line_length / bytes_per_pixel;
+	if (pixels_per_scan_line < col)
+		return EFI_UNSUPPORTED;
+
 	gopobj = calloc(1, sizeof(*gopobj));
 	if (!gopobj) {
 		pr_err("Out of memory\n");
@@ -566,7 +575,7 @@ static efi_status_t efi_gop_register(void *data)
 		pixel_information->green_mask = 0x07e0;
 		pixel_information->blue_mask = 0x001f;
 	}
-	gopobj->info.pixels_per_scan_line = col;
+	gopobj->info.pixels_per_scan_line = pixels_per_scan_line;
 	gopobj->fb = fbi->screen_base;
 	gopobj->fbi = fbi;
 
-- 
2.47.3



