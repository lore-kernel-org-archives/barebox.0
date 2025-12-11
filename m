Delivery-date: Thu, 11 Dec 2025 21:25:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnDw-00AQ38-0B
	for lore@lore.pengutronix.de;
	Thu, 11 Dec 2025 21:25:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnDv-0005cQ-HO
	for lore@pengutronix.de; Thu, 11 Dec 2025 21:25:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=xhYor+wu86hM0xdhuiJGsAMancG3cJURacIsfIfbRKk=; b=g5WbwITQj0n+ezEoZfICPqwCw1
	A4hYP24yj1s+LXyqSACDtYlE39l4sz7e/KlI8ElfkZGoPIAauZLX2JbPA4FDIJhsF25IhY8Jvhmsq
	iaKVmKuthuEm+77lw9533JwdhZZROj3+LmzJJybut8GBxzGpjaDAf3VOT0P8VQM9aQ0Ffz36WlMOq
	93iQdMuJBZXidS24p2RAs+LTn8xqpH0Trqi1KJk3Y6rh1GZ8xuoRi8UpDA/Df9NVZtXu1z1yvz7fR
	2148t5ZwMHsKxcdvCP29cZju7X3Pz/SJZnVwldRajJejMhs01rj8h1BvyG75zIhEUzH3VByPTt1/E
	v8wwxKSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnDN-0000000HDX6-2X2c;
	Thu, 11 Dec 2025 20:24:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnDK-0000000HDW3-3EPU
	for barebox@lists.infradead.org;
	Thu, 11 Dec 2025 20:24:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnDI-0005RM-Gi; Thu, 11 Dec 2025 21:24:36 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnDI-005BQE-13;
	Thu, 11 Dec 2025 21:24:36 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnDI-00000006rPs-0wOa;
	Thu, 11 Dec 2025 21:24:36 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 11 Dec 2025 21:24:27 +0100
Message-ID: <20251211202435.1626910-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_122438_809192_E86A599D 
X-CRM114-Status: GOOD (  10.70  )
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
Subject: [PATCH v2 1/3] fixup! efi: add option to generate vfat file for barebox.efi
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

efi: fix generation for non !EFI_STUB configurations

The if currently always succeeded and trying to build the payload code
on sandbox unearthes another issue, so fix both.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - no change
---
 efi/payload/Kconfig | 1 +
 images/Makefile     | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/efi/payload/Kconfig b/efi/payload/Kconfig
index 871395b69683..2c47e6cb1805 100644
--- a/efi/payload/Kconfig
+++ b/efi/payload/Kconfig
@@ -27,6 +27,7 @@ config EFI_STUB
 
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



