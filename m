Delivery-date: Thu, 11 Dec 2025 20:34:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTmQK-00APAB-18
	for lore@lore.pengutronix.de;
	Thu, 11 Dec 2025 20:34:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTmQJ-00080e-QT
	for lore@pengutronix.de; Thu, 11 Dec 2025 20:34:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=3Xy6Sh+3kBBzrbhetdjrld6YBXgGXhWdtYmX66CvnE4=; b=pJu+bdD0cwi5gO4MYwJqUZ5SoN
	yIqpqyIfwSxuRu6hQ28Z7IxGmjCJI4mJhw6dXra1e+M9/GlnXO5kOBavHq3QAin9x54FKEQU3CTxh
	OU3P54XBJo+gd30ExczRNDAfNRN87d3iIuRxYwKNPM1qHtPSRj5AgMaEcxE5/56QoHvg9VQAoq0cv
	vUqGPuvfGj6EXSRi1qiPago+yxbQYHpObeQaWInknr8+QUUjnavct53AyeIwY5OBh4N4DxrWf5H7A
	iMS++wDsCRfUiZF2EHofnl3g/Tyg0eVcFVJmgyLIOWzWzqQVSsB5TPmn09KYlfkY+q8ieQe/q52Zd
	6wGq8U0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTmPg-0000000HAK6-3bFc;
	Thu, 11 Dec 2025 19:33:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTmPe-0000000HAJk-3MfO
	for barebox@lists.infradead.org;
	Thu, 11 Dec 2025 19:33:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTmPd-0007pO-1V; Thu, 11 Dec 2025 20:33:17 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTmPc-005B1w-0B;
	Thu, 11 Dec 2025 20:33:16 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTmPb-0000000GU0E-3yKt;
	Thu, 11 Dec 2025 20:33:15 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 11 Dec 2025 20:33:12 +0100
Message-ID: <20251211193315.3927292-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_113318_842107_9392F838 
X-CRM114-Status: UNSURE (   9.90  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] fixup! efi: add option to generate vfat file for barebox.efi
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

efi: fix generation for non !EFI_STUB configurations

The if currently always succeeded and trying to build the payload code
on sandbox unearthes another issue, so fix both.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/payload/Kconfig | 1 +
 images/Makefile     | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/efi/payload/Kconfig b/efi/payload/Kconfig
index 69dc50a7c6dd..01f54ee7cf10 100644
--- a/efi/payload/Kconfig
+++ b/efi/payload/Kconfig
@@ -2,6 +2,7 @@
 
 config EFI_PAYLOAD_ESP_IMAGE
 	bool "Generate barebox.esp image from payload"
+	depends on EFI_STUB || !PBL_IMAGE
 
 config EFI_HANDOVER_PROTOCOL
 	bool "EFI Handover protocol (DEPRECATED)"
diff --git a/images/Makefile b/images/Makefile
index 119e7a6e2b8e..69447fd64541 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -215,7 +215,7 @@ FILE_barebox.img = start_pbl.pblb
 image-$(CONFIG_PBL_SINGLE_IMAGE) += barebox.img
 endif
 
-FILE_barebox.vfat = $(if CONFIG_EFI_STUB,barebox-dt-2nd.img,../barebox.efi)
+FILE_barebox.vfat = $(if $(CONFIG_EFI_STUB),barebox-dt-2nd.img,../barebox.efi)
 FILE_barebox.esp = barebox.vfat
 image-$(CONFIG_EFI_PAYLOAD_ESP_IMAGE) += barebox.esp barebox.vfat
 
-- 
2.47.3



