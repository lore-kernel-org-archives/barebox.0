Delivery-date: Fri, 03 Nov 2023 17:00:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qywb8-00HJ9I-FQ
	for lore@lore.pengutronix.de; Fri, 03 Nov 2023 17:00:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qywb4-0004Ql-QU
	for lore@pengutronix.de; Fri, 03 Nov 2023 17:00:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=McJR7zLMZ0Ud0BLsE9EdzPwYcuK7I9nRqHbHAhiJmaM=; b=25N2bK9ZoqlnNxISdb6WzQ7kiD
	yr6KY8Tx91aarYZdSfFW58URAmvOplFOUJvt4uULrLwAu40PhEXVR4lJSwjCJG7+SE6+7VUWA1Gli
	OXPQXKKXst6Z71+ajJwaJtKIzUUGgw1nnWX9V0CXqRcAf+ep9E//Yp0RQQiq8a30LUs1QRjvapXcW
	caQjxvmXCENqyUQa8vA4Bwr8vmylnez9FvS48xcByEcTf5tj+0IWIylrDYDFGhWapYnxyNnkbk1U5
	6ZyH45PP8uMMIl9DLbQ4TMYMBReJtJIdhISXhZNU8kgALqN1f9glYz2y+gLp+lLGGAzE9s7E+Bub7
	+0l0whrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qywZF-00BjLi-2w;
	Fri, 03 Nov 2023 15:58:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qywZC-00BjL2-0W
	for barebox@lists.infradead.org;
	Fri, 03 Nov 2023 15:58:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mol@pengutronix.de>)
	id 1qywZ8-00043O-3e; Fri, 03 Nov 2023 16:58:34 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mol@pengutronix.de>)
	id 1qywZ7-006LrN-Na; Fri, 03 Nov 2023 16:58:33 +0100
Received: from mol by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mol@pengutronix.de>)
	id 1qywZ7-000fO5-2C;
	Fri, 03 Nov 2023 16:58:33 +0100
From: Michael Olbrich <m.olbrich@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Michael Olbrich <m.olbrich@pengutronix.de>
Date: Fri,  3 Nov 2023 16:58:31 +0100
Message-Id: <20231103155831.152488-1-m.olbrich@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231103_085838_195971_3D5D98BF 
X-CRM114-Status: UNSURE (   9.91  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] x86: efi: add IMD data to the EFI binary
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

It it currently missing so the imd command and the bareboximd tool do
not work.

Add the .barebox_imd section to the linker script and copy it to the EFI
binary.

Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
---
 arch/x86/Makefile                      | 2 +-
 arch/x86/mach-efi/elf_x86_64_efi.lds.S | 2 ++
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/x86/Makefile b/arch/x86/Makefile
index a0ce8c17f181..019c1adb7781 100644
--- a/arch/x86/Makefile
+++ b/arch/x86/Makefile
@@ -60,7 +60,7 @@ KBUILD_LDFLAGS := --no-undefined
 
 OBJCOPYFLAGS_barebox.efi = \
 	-j .text -j .sdata -j .data -j .dynamic -j .dynsym -j .rel -j .rela \
-	-j .reloc -j .bbenv.* -j .bblogo.* --target=$(TARGET)
+	-j .reloc -j .bbenv.* -j .bblogo.* -j .barebox_imd --target=$(TARGET)
 
 barebox.efi: $(KBUILD_BINARY) FORCE
 	$(call if_changed,objcopy)
diff --git a/arch/x86/mach-efi/elf_x86_64_efi.lds.S b/arch/x86/mach-efi/elf_x86_64_efi.lds.S
index ab4a9e815c00..52a0d3db2d6c 100644
--- a/arch/x86/mach-efi/elf_x86_64_efi.lds.S
+++ b/arch/x86/mach-efi/elf_x86_64_efi.lds.S
@@ -56,6 +56,8 @@ SECTIONS
 	}
 	_edata = .;
 
+	.barebox_imd : { BAREBOX_IMD }
+
 	. = ALIGN(4096);
 	.dynamic : { *(.dynamic) }
 	. = ALIGN(4096);
-- 
2.39.2



