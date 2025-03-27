Delivery-date: Thu, 27 Mar 2025 11:01:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txk3f-004pL7-1F
	for lore@lore.pengutronix.de;
	Thu, 27 Mar 2025 11:01:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txk3e-0003hW-Rn
	for lore@pengutronix.de; Thu, 27 Mar 2025 11:01:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=RLO+VHurin0htgKbnepZ66eaeGhEUjv0nne072hjf+w=; b=eaHb+REggyUm5vrGdN8qOjhI4P
	IsswCWcRpo0T7G1LNbICJwWkFRlwoXAfBk9UH0MeqEm4n3H0WMUshnoZWxsEPJVqmbodNwBg9wgEO
	lsgCv5HUj2n7vKQihzb86L1Q58Vh2zWOZs5DJZiuLZTUG8j1K052nk+tSOfk70mHN0JbjJB6nKw/8
	NKqKphI1/DWVzQlgebha+QXIXg52rnQk6pp5y00CoSVhwhHB/9WKuR051CFx+hnvL3qfj1L2FdsbB
	4yRkDCnn9b+G9WUeFfJfGzFFyaoXlwAWqHYkovB2PxuqO/4cC5TKr/b0heq2nVJ4bbw0cejG80WVL
	blobhzUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txk2z-0000000Advg-3fau;
	Thu, 27 Mar 2025 10:01:13 +0000
Received: from smtp16.bhosted.nl ([2a02:9e0:8000::27])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txk2v-0000000Adta-2utU
	for barebox@lists.infradead.org;
	Thu, 27 Mar 2025 10:01:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:mime-version:message-id:date:subject:cc:to:from:
	 from;
	bh=RLO+VHurin0htgKbnepZ66eaeGhEUjv0nne072hjf+w=;
	b=vzYHEwYj3KNbJhjC5BIu+kKt3dkCREPKLvwUdm215TqMzLsPyeO1c8lfy1j9ctjsb80BWNhgbVgju
	 C45gBMy67HTe8axkEmmrJKODjo7RCgUg7/p6CeVLrp3QSjlsEoQFDGcUPrMZ9DlQmvNfm3XnD+se9L
	 SKUkbbQcG/BKNjisKPORpnaKmjLHSxmmJ0frEHV+tm5MnIM4PZ2lymCMLtiCH5C5+5XICfqz0c4aD4
	 riFq1GLGKoEQVjflxX4mv1Dotklw+aN6QxTlqIN8wBNzI92dqvYP2aXt8yibDhWJtJyts1vath5Ooy
	 pCZr4V7ZcLkuhZfNRSKOEbmO6iZM51w==
X-MSG-ID: 63ec34ec-0af2-11f0-abc5-005056817704
From: Robin van der Gracht <robin@protonic.nl>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org,
	Robin van der Gracht <robin@protonic.nl>
Date: Thu, 27 Mar 2025 11:00:44 +0100
Message-ID: <20250327100044.654042-1-robin@protonic.nl>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250327_030110_156340_17D749B3 
X-CRM114-Status: UNSURE (   9.42  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: boards: protonic-imx6: Add prt-usb as fallback preferred boot target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

If i.e. the bootchooser target fails because of missing or broken follow-up
software, instead of doing nothing, we try to boot from usb.

Signed-off-by: Robin van der Gracht <robin@protonic.nl>
---
 arch/arm/boards/protonic-imx6/board.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/protonic-imx6/board.c b/arch/arm/boards/protonic-imx6/board.c
index 4585ca4730..19e58627c6 100644
--- a/arch/arm/boards/protonic-imx6/board.c
+++ b/arch/arm/boards/protonic-imx6/board.c
@@ -496,7 +496,7 @@ static int prt_imx6_env_init(struct prt_imx6_priv *priv)
 	if (!priv->no_usb_check)
 		boot_targets = xasprintf("prt-usb %s", bootsrc);
 	else
-		boot_targets = xstrdup(bootsrc);
+		boot_targets = xasprintf("%s prt-usb", bootsrc);
 
 	ret = setenv("global.boot.default", boot_targets);
 	free(boot_targets);
-- 
2.43.0



