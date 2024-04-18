Delivery-date: Thu, 18 Apr 2024 11:24:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rxO0o-005zYs-2w
	for lore@lore.pengutronix.de;
	Thu, 18 Apr 2024 11:24:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rxO0o-0003vg-9s
	for lore@pengutronix.de; Thu, 18 Apr 2024 11:24:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=wyVrypriLKL2oktKzDHH5MjkghpNNu4KlKy/+YIPNa0=; b=tgqslMNpkCE/6OmjJYAVOu5JPQ
	Dc9pGiH1TCX4Bv+ojuflfSSofdpCxsVAJ7hVZZt5GssetxvvVX1IuwMWyhkOZoQingh5iVMfdlmRl
	YzqBglBIH7MYw4A8JObQLkaEOpjgYf+NTJXQahgcs1jdJUwxmv7g4kVjCXkTpWAQXnL3qJ8TvHRX0
	yoDFu8mFMjZdq+uObLLfOdtwq+QThY3udMRTntDbfcNX3MASiqBpRxF4x+7VbYpeAvnJfYENaGAlC
	fnlJbQn7pFCQOJNbLLE0mKlQ9TXhrz6AwV22+KCY9U4v97cvJhq1860aR59PE+I45x7GdeeMKY99T
	CsAwimwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxO0E-00000001b24-1kyp;
	Thu, 18 Apr 2024 09:24:22 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxO0A-00000001b0P-2xTn
	for barebox@lists.infradead.org;
	Thu, 18 Apr 2024 09:24:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1713432257;
	bh=d/iT4n4D9YSQG5cBhnibtL2dmX9BA584dt4fP/kpkw4=;
	h=From:To:Cc:Subject:Date:From;
	b=s13/ecXnYnzfV7lcgp1r2tv/noHha0owFs1bx2/myg4ZHIAlH+Oz+JUe/Huc4ot5a
	 y/fqRe7zai7UCb5bNImVVraz+TE6gHePXIfO9eHc+KubicaWoVSsh+ovAKqdyhFbbn
	 tV7G2Esa8xIrp8pwuWunWBqVEPsd19Vrkcsef6ufc5v3RAdoNbZ/faFNNFH5wKeTxu
	 9IDpA3rPl2TMf7jbn1oJxd/FBTc0oC/oujbDjrlPVeTGGg1f8HCCNvWxGCyVShcyzN
	 wHqxDH2JTK5NY1J596abJB4F6XRgFAlA2JAx6u8MX/XYKm1VXNb4Yicic2mhKraFWn
	 PeecckuvQWgnw==
Received: from benjamin-XPS-13-9310.. (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 0764F37813E3;
	Thu, 18 Apr 2024 09:24:16 +0000 (UTC)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: barebox@lists.infradead.org
Cc: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Date: Thu, 18 Apr 2024 11:24:11 +0200
Message-Id: <20240418092411.224055-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240418_022418_948209_232FAA11 
X-CRM114-Status: UNSURE (   9.70  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2] scripts: imx: IMX8MQ: fix header entry offset
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Unlike other IMX8M, IMX8MQ version use a fixed offset so do a special
case for this SoC.

Fixes: 1c18863354dc ("scripts: imx-image: header_v2: add header_len parameter")
Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
version 2:
- Use a fixed offset only for IMX8MQ

 scripts/imx/imx-image.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index bc2e7af5d6..9ba60dbc5b 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -322,7 +322,11 @@ add_header_v2(const struct config_data *data, void *buf, uint32_t offset,
 	hdr->header.length	= htobe16(32);
 	hdr->header.version	= IVT_VERSION;
 
-	hdr->entry		= loadaddr + header_len;
+	/* IMX_CPU_IMX8MQ is a special case with fixed offset */
+	if (data->cpu_type == IMX_CPU_IMX8MQ)
+		hdr->entry	= loadaddr + HEADER_LEN;
+	else
+		hdr->entry	= loadaddr + header_len;
 	if (dcdsize)
 		hdr->dcd_ptr = loadaddr + offset + offsetof(struct imx_flash_header_v2, dcd_header);
 	if (create_usb_image) {
@@ -1019,6 +1023,7 @@ int main(int argc, char *argv[])
 					PLUGIN_HDMI_SIZE);
 
 			header_len += signed_hdmi_firmware_size;
+
 			barebox_image_size += signed_hdmi_firmware_size;
 
 			buf = realloc(buf, header_len);
-- 
2.40.1



