Delivery-date: Sat, 27 Jun 2026 11:57:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wdPml-00AO6v-1M
	for lore@lore.pengutronix.de;
	Sat, 27 Jun 2026 11:57:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wdPmk-000820-99
	for lore@pengutronix.de; Sat, 27 Jun 2026 11:57:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TAYVxGQGMSK7D7j+7YXO0zmrl2pXvnZcHIfDcFtzdKg=; b=VzPc4imuyLfb9PSqvoN8VaUOgH
	J+KtAGP44YxOuVR2lDPbmaCIZtiM8raE10hT4XADM6VBkeuTZniFQwrL/C/rmkp+8c3//AP34J4b4
	gnzIsDl5n06QHIUVVEREwhMP2iBp8U1BV2AScLeVyeahzi3bEQw1G3OoFygiLLxZyXj8VglUAuHyc
	vjrzypwdUDM1QvULoX8g34vw6NhMUw2Rk/lxpTQJiKiA5AXuZqjVjPGxUpo4qqfdTBwE6V+SW65fW
	c9UStGA4qY0YR9UyGqsaLm8jc3/kVYJjfn9ZdOnPbfFJTXy3DzyBHLTQ5TL7FCp2ZoDWWv7tP9Yab
	mdKnYVTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdPlT-0000000CLxY-0xGP;
	Sat, 27 Jun 2026 09:55:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdPlN-0000000CLw0-363G
	for barebox@lists.infradead.org;
	Sat, 27 Jun 2026 09:55:53 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wdPlK-0002ad-IU; Sat, 27 Jun 2026 11:55:46 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Sat, 27 Jun 2026 11:55:40 +0200
Message-ID: <20260627095543.2462939-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260627095543.2462939-1-a.fatoum@barebox.org>
References: <20260627095543.2462939-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260627_025549_929567_427CBB58 
X-CRM114-Status: GOOD (  14.09  )
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
Subject: [PATCH master 2/3] efi: gop: use correct BLT pixel type
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

EFI_PIXEL_BITMASK and EFI_GRAPHICS_OUTPUT_BLT_PIXEL are distinct types:
Whereas the former is 4 32-bit masks, the latter is int total 32-bit
with 8-bit for each of red, green, blue and reserved.

The EFI_GRAPHICS_OUTPUT_PROTOCOL_BLT callback takes the BltBuffer as
EFI_GRAPHICS_OUTPUT_BLT_PIXEL, but instead we used efi_pixel_bitmask, an
oversight when I ported the U-Boot support while trying to make use of
the existent barebox EFI app types. The EFI GOP driver used in barebox
as EFI payload doesn't use the Blt callback at all.

Fixes: d040f49ad0b3 ("efi: loader: protocol: add graphical output protocol support")
Reported-by: Ben Pye # Matrix
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 efi/loader/protocols/gop.c | 64 +++++++++++++++++++-------------------
 include/efi/protocol/gop.h |  9 +++++-
 2 files changed, 40 insertions(+), 33 deletions(-)

diff --git a/efi/loader/protocols/gop.c b/efi/loader/protocols/gop.c
index d48edac5a2d6..03995d9eee29 100644
--- a/efi/loader/protocols/gop.c
+++ b/efi/loader/protocols/gop.c
@@ -66,50 +66,50 @@ static efi_status_t EFIAPI gop_query_mode(struct efi_graphics_output_protocol *t
 	return EFI_EXIT(ret);
 }
 
-static __always_inline struct efi_pixel_bitmask efi_vid30_to_blt_col(u32 vid)
+static __always_inline struct efi_gop_pixel efi_vid30_to_blt_col(u32 vid)
 {
-	struct efi_pixel_bitmask blt = {
-		.reserved_mask = 0,
+	struct efi_gop_pixel blt = {
+		.reserved = 0,
 	};
 
-	blt.blue_mask  = (vid & 0x3ff) >> 2;
+	blt.blue  = (vid & 0x3ff) >> 2;
 	vid >>= 10;
-	blt.green_mask = (vid & 0x3ff) >> 2;
+	blt.green = (vid & 0x3ff) >> 2;
 	vid >>= 10;
-	blt.red_mask   = (vid & 0x3ff) >> 2;
+	blt.red   = (vid & 0x3ff) >> 2;
 	return blt;
 }
 
-static __always_inline u32 efi_blt_col_to_vid30(struct efi_pixel_bitmask *blt)
+static __always_inline u32 efi_blt_col_to_vid30(struct efi_gop_pixel *blt)
 {
-	return (u32)(blt->red_mask   << 2) << 20 |
-	       (u32)(blt->green_mask << 2) << 10 |
-	       (u32)(blt->blue_mask  << 2);
+	return (u32)(blt->red   << 2) << 20 |
+	       (u32)(blt->green << 2) << 10 |
+	       (u32)(blt->blue  << 2);
 }
 
-static __always_inline struct efi_pixel_bitmask efi_vid16_to_blt_col(u16 vid)
+static __always_inline struct efi_gop_pixel efi_vid16_to_blt_col(u16 vid)
 {
-	struct efi_pixel_bitmask blt = {
-		.reserved_mask = 0,
+	struct efi_gop_pixel blt = {
+		.reserved = 0,
 	};
 
-	blt.blue_mask  = (vid & 0x1f) << 3;
+	blt.blue  = (vid & 0x1f) << 3;
 	vid >>= 5;
-	blt.green_mask = (vid & 0x3f) << 2;
+	blt.green = (vid & 0x3f) << 2;
 	vid >>= 6;
-	blt.red_mask   = (vid & 0x1f) << 3;
+	blt.red   = (vid & 0x1f) << 3;
 	return blt;
 }
 
-static __always_inline u16 efi_blt_col_to_vid16(struct efi_pixel_bitmask *blt)
+static __always_inline u16 efi_blt_col_to_vid16(struct efi_gop_pixel *blt)
 {
-	return (u16)(blt->red_mask   >> 3) << 11 |
-	       (u16)(blt->green_mask >> 2) <<  5 |
-	       (u16)(blt->blue_mask  >> 3);
+	return (u16)(blt->red   >> 3) << 11 |
+	       (u16)(blt->green >> 2) <<  5 |
+	       (u16)(blt->blue  >> 3);
 }
 
 static __always_inline efi_status_t gop_blt_int(struct efi_graphics_output_protocol *this,
-						struct efi_pixel_bitmask *bufferp,
+						struct efi_gop_pixel *bufferp,
 						u32 operation, efi_uintn_t sx,
 						efi_uintn_t sy, efi_uintn_t dx,
 						efi_uintn_t dy,
@@ -122,7 +122,7 @@ static __always_inline efi_status_t gop_blt_int(struct efi_graphics_output_proto
 	efi_uintn_t i, j, linelen, slineoff = 0, dlineoff, swidth, dwidth;
 	u32 *fb32 = gopobj->fb;
 	u16 *fb16 = gopobj->fb;
-	struct efi_pixel_bitmask *buffer = __builtin_assume_aligned(bufferp, 4);
+	struct efi_gop_pixel *buffer = __builtin_assume_aligned(bufferp, 4);
 	bool blt_to_video = (operation != EFI_BLT_VIDEO_TO_BLT_BUFFER);
 
 	if (delta) {
@@ -200,7 +200,7 @@ static __always_inline efi_status_t gop_blt_int(struct efi_graphics_output_proto
 	dlineoff = dwidth * dy;
 	for (i = 0; i < height; i++) {
 		for (j = 0; j < width; j++) {
-			struct efi_pixel_bitmask pix;
+			struct efi_gop_pixel pix;
 
 			/* Read source pixel */
 			switch (operation) {
@@ -213,7 +213,7 @@ static __always_inline efi_status_t gop_blt_int(struct efi_graphics_output_proto
 			case EFI_BLT_VIDEO_TO_BLT_BUFFER:
 			case EFI_BLT_VIDEO_TO_VIDEO:
 				if (vid_bpp == 32)
-					pix = *(struct efi_pixel_bitmask *)&fb32[
+					pix = *(struct efi_gop_pixel *)&fb32[
 						slineoff + j + sx];
 				else if (vid_bpp == 30)
 					pix = efi_vid30_to_blt_col(fb32[
@@ -285,7 +285,7 @@ static efi_uintn_t gop_get_bpp(struct efi_graphics_output_protocol *this)
  * optimize for speed.
  */
 static efi_status_t gop_blt_video_fill(struct efi_graphics_output_protocol *this,
-				       struct efi_pixel_bitmask *buffer,
+				       struct efi_gop_pixel *buffer,
 				       u32 foo, efi_uintn_t sx,
 				       efi_uintn_t sy, efi_uintn_t dx,
 				       efi_uintn_t dy, efi_uintn_t width,
@@ -297,7 +297,7 @@ static efi_status_t gop_blt_video_fill(struct efi_graphics_output_protocol *this
 }
 
 static efi_status_t gop_blt_buf_to_vid16(struct efi_graphics_output_protocol *this,
-					 struct efi_pixel_bitmask *buffer,
+					 struct efi_gop_pixel *buffer,
 					 u32 foo, efi_uintn_t sx,
 					 efi_uintn_t sy, efi_uintn_t dx,
 					 efi_uintn_t dy, efi_uintn_t width,
@@ -308,7 +308,7 @@ static efi_status_t gop_blt_buf_to_vid16(struct efi_graphics_output_protocol *th
 }
 
 static efi_status_t gop_blt_buf_to_vid30(struct efi_graphics_output_protocol *this,
-					 struct efi_pixel_bitmask *buffer,
+					 struct efi_gop_pixel *buffer,
 					 u32 foo, efi_uintn_t sx,
 					 efi_uintn_t sy, efi_uintn_t dx,
 					 efi_uintn_t dy, efi_uintn_t width,
@@ -319,7 +319,7 @@ static efi_status_t gop_blt_buf_to_vid30(struct efi_graphics_output_protocol *th
 }
 
 static efi_status_t gop_blt_buf_to_vid32(struct efi_graphics_output_protocol *this,
-					 struct efi_pixel_bitmask *buffer,
+					 struct efi_gop_pixel *buffer,
 					 u32 foo, efi_uintn_t sx,
 					 efi_uintn_t sy, efi_uintn_t dx,
 					 efi_uintn_t dy, efi_uintn_t width,
@@ -330,7 +330,7 @@ static efi_status_t gop_blt_buf_to_vid32(struct efi_graphics_output_protocol *th
 }
 
 static efi_status_t gop_blt_vid_to_vid(struct efi_graphics_output_protocol *this,
-				       struct efi_pixel_bitmask *buffer,
+				       struct efi_gop_pixel *buffer,
 				       u32 foo, efi_uintn_t sx,
 				       efi_uintn_t sy, efi_uintn_t dx,
 				       efi_uintn_t dy, efi_uintn_t width,
@@ -342,7 +342,7 @@ static efi_status_t gop_blt_vid_to_vid(struct efi_graphics_output_protocol *this
 }
 
 static efi_status_t gop_blt_vid_to_buf(struct efi_graphics_output_protocol *this,
-				       struct efi_pixel_bitmask *buffer,
+				       struct efi_gop_pixel *buffer,
 				       u32 foo, efi_uintn_t sx,
 				       efi_uintn_t sy, efi_uintn_t dx,
 				       efi_uintn_t dy, efi_uintn_t width,
@@ -369,7 +369,7 @@ static efi_status_t EFIAPI gop_set_mode(struct efi_graphics_output_protocol *thi
 					u32 mode_number)
 {
 	struct efi_gop_obj *gopobj;
-	struct efi_pixel_bitmask buffer = {0, 0, 0, 0};
+	struct efi_gop_pixel buffer = {0, 0, 0, 0};
 	efi_uintn_t vid_bpp;
 	efi_status_t ret = EFI_SUCCESS;
 
@@ -412,7 +412,7 @@ static efi_status_t EFIAPI gop_set_mode(struct efi_graphics_output_protocol *thi
  * Return:	status code
  */
 static efi_status_t EFIAPI gop_blt(struct efi_graphics_output_protocol *this,
-				   struct efi_pixel_bitmask *buffer,
+				   struct efi_gop_pixel *buffer,
 				   u32 operation, efi_uintn_t sx,
 				   efi_uintn_t sy, efi_uintn_t dx,
 				   efi_uintn_t dy, efi_uintn_t width,
diff --git a/include/efi/protocol/gop.h b/include/efi/protocol/gop.h
index 12a5ea6d0fe0..3410d8e3ce67 100644
--- a/include/efi/protocol/gop.h
+++ b/include/efi/protocol/gop.h
@@ -21,6 +21,13 @@ struct efi_pixel_bitmask {
 	u32 reserved_mask;
 };
 
+struct efi_gop_pixel {
+	u8 blue;
+	u8 green;
+	u8 red;
+	u8 reserved;
+};
+
 #define EFI_BLT_VIDEO_FILL		0
 #define EFI_BLT_VIDEO_TO_BLT_BUFFER	1
 #define EFI_BLT_BUFFER_TO_VIDEO		2
@@ -51,7 +58,7 @@ struct efi_graphics_output_protocol {
 	efi_status_t (EFIAPI *set_mode) (struct efi_graphics_output_protocol *This,
 			uint32_t mode_number);
 	efi_status_t (EFIAPI *blt)(struct efi_graphics_output_protocol *This,
-			struct efi_pixel_bitmask *buffer,
+			struct efi_gop_pixel *buffer,
 			u32 operation,
 			size_t sourcex, size_t sourcey,
 			size_t destinationx, size_t destinationy,
-- 
2.47.3



