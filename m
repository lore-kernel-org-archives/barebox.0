Delivery-date: Mon, 08 Dec 2025 11:31:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vSYWZ-009BL4-2V
	for lore@lore.pengutronix.de;
	Mon, 08 Dec 2025 11:31:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vSYWZ-0002Ye-8J
	for lore@pengutronix.de; Mon, 08 Dec 2025 11:31:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=/gjFRnDcLukaLf7pxy8ljrZHY0KODMu3Ujp104LxUJo=; b=Uk45bspOp8ybkel2zXKSnNToM8
	SrwsgKIH+xZ629+WjoJUab4vZ3ikJKSofd+EBV0Kmz/bs4ftTIgQwi7NpW+uiCyB5+A6ZTfu+fONz
	p7bxZr03VlAwxxSYYK2XDYoCdCygPm9HDhrlqrllrnJZP2/X5itggq19FXyd3EpgZmW9W38caBHLE
	FapeXMoBy/M32mQY9bL8Mhc17pfOzfH1BHYUacHmMc9UVeqjn4CRu90DvwUSldOu2jJ116twYGrL/
	7ylyxWfQnxW6P7q56niF9OFX3czu1QLh+nNMTIzwBaWJQMkce3Xv4L6EfguRU3xMgzIfDhJ0NNu72
	V0WJG6cA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSYVu-0000000Cx7H-0jMy;
	Mon, 08 Dec 2025 10:30:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSYVr-0000000Cx6o-2jsx
	for barebox@lists.infradead.org;
	Mon, 08 Dec 2025 10:30:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vSYVo-0002QY-J0; Mon, 08 Dec 2025 11:30:36 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vSYVo-004b1h-1I;
	Mon, 08 Dec 2025 11:30:36 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vSYVo-0000000HKLr-1GlN;
	Mon, 08 Dec 2025 11:30:36 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  8 Dec 2025 11:30:34 +0100
Message-ID: <20251208103035.4129780-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251208_023039_693677_5C2D9C94 
X-CRM114-Status: UNSURE (   9.74  )
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
Subject: [PATCH] fixup! efi: add option to generate vfat file for barebox.efi
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

efi: payload: move EFI_PAYLOAD_ESP_IMAGE into payload/Kconfig

Anticipating addition of full loader support, it's important to clearly mark
things specific to the payload, so move the symbol there.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/Kconfig         | 4 ----
 efi/payload/Kconfig | 3 +++
 2 files changed, 3 insertions(+), 4 deletions(-)

diff --git a/efi/Kconfig b/efi/Kconfig
index 49839f8466ea..35850b20ef50 100644
--- a/efi/Kconfig
+++ b/efi/Kconfig
@@ -4,10 +4,6 @@ menu "EFI (Extensible Firmware Interface) Support"
 
 source "efi/payload/Kconfig"
 
-config EFI_PAYLOAD_ESP_IMAGE
-	bool "Generate barebox.esp image from payload"
-	depends on EFI_PAYLOAD
-
 config EFI
 	bool
 
diff --git a/efi/payload/Kconfig b/efi/payload/Kconfig
index 782e974d8f58..871395b69683 100644
--- a/efi/payload/Kconfig
+++ b/efi/payload/Kconfig
@@ -25,6 +25,9 @@ if EFI_PAYLOAD
 config EFI_STUB
 	def_bool HAVE_EFI_STUB
 
+config EFI_PAYLOAD_ESP_IMAGE
+	bool "Generate barebox.esp image from payload"
+
 config EFI_HANDOVER_PROTOCOL
 	bool "EFI Handover protocol (DEPRECATED)"
 	depends on X86
-- 
2.47.3



