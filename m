Delivery-date: Thu, 18 Apr 2024 10:35:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rxNFC-005wez-1S
	for lore@lore.pengutronix.de;
	Thu, 18 Apr 2024 10:35:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rxNFB-0003Bo-8N
	for lore@pengutronix.de; Thu, 18 Apr 2024 10:35:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=2QtzSLDRC8tLJHnoQOIgJ1KLrCnVINoW/xT8dJCXUhU=; b=nQWiCn6upwyh26bAuPvd392S8B
	GO6zpJ9ybYlTElj8zWOvdfCiGRVNX88R39v5DmBGjP6UR1a8XSl0WK3lrEHAXRpSYFZymRDdpmmP0
	CnPD/tl0e4NGaj9DklOSHge8dSltWVNzkCD91Bp31+DYomyu4FmK0GIsjthOEmA9tD+f8pZQY4h8V
	f0FDeDHMh4h619u9GQZD9K27LnED+Tr5sGBPOSBAISMTBl2t1a2D+8hKXiHy7iXwuKLX2+OXlU2gq
	Qs+OwoleXHLdXkpIQ3eydM5PJm5nj2FNSzowH3fBHDCGhZx3bb9L28gFsNQZk35CscRnrCDm5xsrM
	SgVV1m4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxNEL-00000001SgP-23CL;
	Thu, 18 Apr 2024 08:34:53 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxNEI-00000001SfI-1Kk9
	for barebox@lists.infradead.org;
	Thu, 18 Apr 2024 08:34:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1713429287;
	bh=ETacd2zM0O/nyoHucqqa4XOc7k7Oh0WlQkysMtVbaHg=;
	h=From:To:Cc:Subject:Date:From;
	b=AnIhahQ4z8jk7OJXZGNJik+NM5b0atvH+g4WEbNaKr2XkZjZMgihHLcHUe95K6mag
	 HAa4mbYDLPk9LySZneJPEMkF6+VrTtJqzamG7SV8VfV9Oyneht9ELZMlyO9O7sOkGl
	 78oGEqX2gTubIxj9i29VgAb4xCut9DJzjC5OQQktrR4Ofu6jcissO8v0UiWFLeAM5h
	 MJf5/IbOBL+LemR1oE+03rvLVM7iS8E4Q0IAaTh4eFB42tu6jwyYy3ap0M1YjRCfcB
	 oPL6WBCLtVb78sfQ/oxXWaJjdgmuvCy29ymdojpowz445thHHfJitGibh2Qly5Ip8F
	 v8a5QkbXi+ndQ==
Received: from benjamin-XPS-13-9310.. (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 5488E37820E2;
	Thu, 18 Apr 2024 08:34:47 +0000 (UTC)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: barebox@lists.infradead.org
Cc: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Date: Thu, 18 Apr 2024 10:34:36 +0200
Message-Id: <20240418083436.171366-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240418_013450_507515_7CF8230E 
X-CRM114-Status: GOOD (  10.01  )
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
Subject: [PATCH] scripts: imx: fix header entry offset
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Header entry is at a fixed offset and doesn't rely on header lenght.
Use header lenght create a bug when adding a signed firmware like
the HDMI firmware for IMX8MQ.

Fixes: 1c18863354dc ("scripts: imx-image: header_v2: add header_len parameter")
Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 scripts/imx/imx-image.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index bc2e7af5d6..4f4d5526ed 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -322,7 +322,7 @@ add_header_v2(const struct config_data *data, void *buf, uint32_t offset,
 	hdr->header.length	= htobe16(32);
 	hdr->header.version	= IVT_VERSION;
 
-	hdr->entry		= loadaddr + header_len;
+	hdr->entry		= loadaddr + HEADER_LEN;
 	if (dcdsize)
 		hdr->dcd_ptr = loadaddr + offset + offsetof(struct imx_flash_header_v2, dcd_header);
 	if (create_usb_image) {
-- 
2.40.1



