Delivery-date: Wed, 10 Jan 2024 15:18:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNZPe-00BiBR-2b
	for lore@lore.pengutronix.de;
	Wed, 10 Jan 2024 15:18:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNZPe-0007tW-4b
	for lore@pengutronix.de; Wed, 10 Jan 2024 15:18:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GPgneAop7bw7J+UlMOPdeWORye14SFHV3EqoDuCgJ/Y=; b=mG0+dJIT2rL0C7uuRaUNtBL68G
	yPFKtqVQZz68KlLWD6txXOK5ah+YkxBkreHdjO872hNTYUyNQXEGGwo7GdLgFCUrZ3OB/KOtTJCbd
	AJjHjcOv3CC+/HWa3gS7KIufHxA/Em0qL8oFVhjzqXQoHmuIXMljwlfLPLjKSNnpwYI9jtkLZ61DR
	njPiFXbLU6cTztwg6s2dKbxmJy52GB0uYPUtVUCfmaQrd5RQLQGEYbj57XyNbmhcwRgE7IiR8rpQr
	B+cnkV6LAupjlAZ//3ph1L1pHGDcvEK8hZ5ufel8AI0GAb4xwOGV3wTYP24OWn6DKKjpYwC4tMqSN
	WS+ff+rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNZOY-00CGIO-2X;
	Wed, 10 Jan 2024 14:17:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNZOW-00CGHF-06
	for barebox@lists.infradead.org;
	Wed, 10 Jan 2024 14:17:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rNZOM-0007SZ-TH; Wed, 10 Jan 2024 15:17:14 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rNZOM-001ipV-GX; Wed, 10 Jan 2024 15:17:14 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rNZOM-00DAdA-1S;
	Wed, 10 Jan 2024 15:17:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 10 Jan 2024 15:17:12 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240110-scripts-omap3-usb-loader-fix-compilation-v1-2-0503f170fa59@pengutronix.de>
References: <20240110-scripts-omap3-usb-loader-fix-compilation-v1-0-0503f170fa59@pengutronix.de>
In-Reply-To: <20240110-scripts-omap3-usb-loader-fix-compilation-v1-0-0503f170fa59@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1704896234; l=1862;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=a72OMKUa6/DnDhCAicVV8P8BEvK3ZKBwe/5sRrWKb+o=;
 b=EaHGJ739VrFGn1GhUv7F6auWfLlZ03GyKy1F127oREr9c1mwu7zcr0HI+CkvmA2UcjkkLtqdB
 MaxXVSOIJiVCFoWxq2PEQ4glF4ELt9WVLgiakyS3b4xPPaI7BXWAc36
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240110_061724_066717_78AC39C8 
X-CRM114-Status: GOOD (  13.94  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] omap3-usb-loader: Fix for big endian hosts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

omap3-usb-loader does a "filelen = cpu_to_le32(file->size)" and does
arithmetic operations on filelen afterwards. Also it passes filelen
to omap_usb_write() as the number of bytes to upload. This obviously
only works on little endian hosts where cpu_to_le32() is a no-op.

Fix this by doing the cpu_to_le32() conversion after all arithmetic
operations and do not use filelen after it has been converted.

This is a drive-by fix, untested currently as I don't have any big
endian host to test it with.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/omap3-usb-loader.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/scripts/omap3-usb-loader.c b/scripts/omap3-usb-loader.c
index d9422a0916..38cdbfac93 100644
--- a/scripts/omap3-usb-loader.c
+++ b/scripts/omap3-usb-loader.c
@@ -330,7 +330,7 @@ static int transfer_first_stage(libusb_device_handle * handle, struct arg_state
 
 	/* TODO determine buffer size based on endpoint */
 	buffer = calloc(bufsize, sizeof (unsigned char));
-	filelen = cpu_to_le32(file->size);
+	filelen = file->size;
 
 	data = file->data;
 	dbuf = data;
@@ -397,6 +397,8 @@ static int transfer_first_stage(libusb_device_handle * handle, struct arg_state
 		goto fail;
 	}
 
+	filelen = cpu_to_le32(filelen);
+
 	/* send the length of the first file (little endian) */
 	if (!omap_usb_write
 	    (handle, (unsigned char *) &filelen, sizeof (filelen))) {
@@ -406,9 +408,9 @@ static int transfer_first_stage(libusb_device_handle * handle, struct arg_state
 	}
 
 	/* send the file! */
-	if (!omap_usb_write(handle, data, filelen)) {
+	if (!omap_usb_write(handle, data, file->size)) {
 		log_error("failed to send file \'%s\' (size %u)\n",
-			  file->basename, filelen);
+			  file->basename, file->size);
 		goto fail;
 	}
 

-- 
2.39.2



