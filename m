Delivery-date: Sat, 27 Jun 2026 23:26:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wdaYB-00AYYK-26
	for lore@lore.pengutronix.de;
	Sat, 27 Jun 2026 23:26:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wdaYB-0000zr-2a
	for lore@pengutronix.de; Sat, 27 Jun 2026 23:26:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=X0duMCsMgNB1SyQnrU5JWa5agp12iHV5IKWM3ickRy0=; b=Yfx3x8+icgTBj52rY3wmJol3mD
	avuuWqmzHNnOILWPiopaWgTxL6uU5DJkiqPxugMuY0Z7K8Iy+7r6kR5kEZoMATjXQhk+e6fuP9t3E
	3q4G7xwNh7IfdztKAjEF9ojoXsmjiFOigf6CTkbEaCn5iG7wwvZKqpCFTuGNDfkMiI5F2V4mJdD1H
	kAn0CgTM7yQYt79mOGc+Kvy4z/c13qQtRWjsV9A6+TBNNTeqdJvhmI2vuLBwLZP+cjMvlAQ7H8nib
	VeCFpPjZvbmp5BpYQqVaCpUxtUBXW7OrpNiS3brBeLK7Uq2SYQ4RFRvVXhQL400Lxk+Kz+RKdKKBd
	ZK2x+oRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdaWy-0000000ClzJ-2jO3;
	Sat, 27 Jun 2026 21:25:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdaWv-0000000Clyy-3FrR
	for barebox@lists.infradead.org;
	Sat, 27 Jun 2026 21:25:39 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wdaWt-0004E1-By; Sat, 27 Jun 2026 23:25:35 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Sat, 27 Jun 2026 23:25:33 +0200
Message-ID: <20260627212534.3785131-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260627_142537_836355_A28FCF27 
X-CRM114-Status: UNSURE (   8.72  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] efi: loader: require at least 128 KiB of stack space
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

rEFInd overflows the default 32K barebox stack when it is loaded as
a second EFI payload after GRUB from the NixOS arm64 ISO.

UEFI requires at least 128K of stack space for calls into EFI
applications. Have STACK_SIZE default to 128 KiB and enforce that it
doesn't get smaller than that whenever EFI_LOADER is enabled.

Non-EFI builds are unaffected.

This aligns us with what U-Boot is doing since commit
ca495f011f ("efi_loader: require at least 128 KiB of stack space").

Reported-by: Ben Pye # IRC
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 common/Kconfig | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/common/Kconfig b/common/Kconfig
index dd13cc756905..2c75844be92d 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -333,8 +333,16 @@ config STACK_BASE
 
 config STACK_SIZE
 	hex
+	range 0x20000 0xffffffff if EFI_LOADER
+	default 0x20000 if EFI_LOADER
 	default 0x8000
 	prompt "Stack size"
+	help
+	  Size of the barebox call stack.
+
+	  The UEFI specification requires at least 128 KiB of stack space
+	  when calling EFI applications. Enforce that minimum for builds
+	  that provide the EFI loader.
 
 config MALLOC_SIZE
 	hex
-- 
2.47.3



