Delivery-date: Mon, 13 Apr 2026 22:04:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCNW3-00BpTV-2n
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 22:04:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCNW3-0001Bb-BL
	for lore@pengutronix.de; Mon, 13 Apr 2026 22:04:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=uQ775e+M8yD3sWnfYCnfOt6frmyud0QJbN66Kgd7Y0U=; b=nAHtMRzBxyGDJorwIr10HTOWyQ
	e0gOAEeIJEjC/6qEMu0WnUJyYyYt40fewheFUKim8enh8D7Bdaz2LLpJCv8vLaW9XmkkBbQHXprEV
	Me7IawyCNlATinAa50yms2pBjrERJBjA3YpiWHmTi5H4sac+5/Zwr2EWXdl6imCl2+N/9+/hOxKXT
	UBw3xgWABCva3PX6GXv/iTAOUMLDl9KOf0XwJZNPr7Wvz+KFzz7Ijsm/2FtChl98CfXMHJ+w/6/XM
	7kmO/u41Ww3wFrmv7y6eIFwD3I3hU+9zdgR03SXPSVm0hHtoZWSRjYV7h6ZUi3RJlY9nw5cKA1Gna
	PNqeRGgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCNVR-0000000GL9k-0G0A;
	Mon, 13 Apr 2026 20:03:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCNVN-0000000GL8w-3Y7Y
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 20:03:35 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wCNVM-00014b-26; Mon, 13 Apr 2026 22:03:32 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 13 Apr 2026 22:03:26 +0200
Message-ID: <20260413200330.1558038-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_130333_882512_2F23636C 
X-CRM114-Status: GOOD (  10.13  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] efi: gop: use screen_base directly instead of shadow buffer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The EFI GOP protocol operates on the hardware framebuffer and calls
fb_damage() to notify the driver of updates. Using fb_get_screen_base()
would return the shadow buffer when enabled, causing GOP writes to go
into the shadow instead of the actual framebuffer.

Do as the simplefb fixup does and use the screen_base.

Fixes: d040f49ad0b3 ("efi: loader: protocol: add graphical output protocol support")
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 efi/loader/protocols/gop.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/efi/loader/protocols/gop.c b/efi/loader/protocols/gop.c
index 2d87acc9bcc7..5bceb3f68f0f 100644
--- a/efi/loader/protocols/gop.c
+++ b/efi/loader/protocols/gop.c
@@ -558,7 +558,7 @@ static efi_status_t efi_gop_register(void *data)
 		pixel_information->blue_mask = 0x001f;
 	}
 	gopobj->info.pixels_per_scan_line = col;
-	gopobj->fb = fb_get_screen_base(fbi);
+	gopobj->fb = fbi->screen_base;
 	gopobj->fbi = fbi;
 
 	return EFI_SUCCESS;
-- 
2.47.3



