Delivery-date: Thu, 15 Jan 2026 13:04:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgM5A-001aC8-22
	for lore@lore.pengutronix.de;
	Thu, 15 Jan 2026 13:04:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgM59-0001le-L0
	for lore@pengutronix.de; Thu, 15 Jan 2026 13:04:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=SoWFwbFFHWK5s7J9d/5BcIAQgnoBp28VKVIDmBSPKpE=; b=NV0oPU9MNXpFk2IdfAGX8xOHTv
	7wxT0iSxOGo4Ce/FpeQ9Rw8p6ICMTNaDgiOPWc5IZ1N5eJhiPrDRsAYjEdNfSVMLxpz5rbWMhAmPY
	Aypw/+Wli6UCVB051PnqjWDgaa43MwCVDlxxz0aoo+FtBgdFvQBB37bQSyvvhF5h1M0zMoP4+e6XS
	KgvgbiVdKjJO9O9Bg+9ydJB+q32G+R+/9DdBHI9muuHr2aD6wtBmr4uvjAWCDZUuiMGQEKTocsJlM
	1y8vl3Mb247bJZU7lq/x8pUdlV3Rehhlf1zh9o1FccB8a4v7z2Kc+UvsfBebq5yM+eTwk9LAA1gSA
	7nbtoHPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgM4h-0000000CI3r-2mXl;
	Thu, 15 Jan 2026 12:03:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgM4e-0000000CI3V-3cPG
	for barebox@lists.infradead.org;
	Thu, 15 Jan 2026 12:03:37 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vgM4c-0001eJ-HU; Thu, 15 Jan 2026 13:03:34 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Thu, 15 Jan 2026 13:03:33 +0100
Message-ID: <20260115120333.3432231-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260115_040336_902830_5B44233A 
X-CRM114-Status: UNSURE (   6.81  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] efi: payload: enable both efi loader and payload for *_efi_defconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We already have an efi_defconfig that's only for use as EFI payload/app.
Let's have all _efi_defconfig thus enable both efi-payload and efi
loader support for extra coverage.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 Makefile          | 2 ++
 arch/arm/Makefile | 6 ++----
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/Makefile b/Makefile
index 9c70aa0f49a3..6da8db039b5e 100644
--- a/Makefile
+++ b/Makefile
@@ -619,6 +619,8 @@ endif
 
 %_efiloader_defconfig: FORCE
 	$(call merge_into_defconfig,$*_defconfig,efi-loader)
+%_efi_defconfig: FORCE
+	$(call merge_into_defconfig,$*_defconfig,efi-loader efi-payload)
 
 config: outputmakefile scripts_basic FORCE
 	$(Q)$(MAKE) $(build)=scripts/kconfig KCONFIG_DEFCONFIG_LIST= $@
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 5efc4c3457db..b38f694339a4 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -8,13 +8,11 @@ am335x_mlo_sdmmc_defconfig:
 am335x_mlo_rawflash_defconfig:
 	$(call merge_into_defconfig,am335x_mlo_defconfig,nomci)
 
-multi_v8_efi_defconfig:
-	$(call merge_into_defconfig,multi_v8_defconfig,efi-payload)
-generated_configs += multi_v8_efi_defconfig
-
 # Generic rule applying the fragment is in top-level Makefile
 generated_configs += $(patsubst %_defconfig,%_efiloader_defconfig, \
 		     multi_v7_defconfig multi_v8_defconfig)
+generated_configs += $(patsubst %_defconfig,%_efi_defconfig, \
+		     multi_v8_defconfig)
 
 KBUILD_CPPFLAGS	+= -D__ARM__ -fno-strict-aliasing
 # Explicitly specifiy 32-bit ARM ISA since toolchain default can be -mthumb:
-- 
2.47.3



