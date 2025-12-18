Delivery-date: Thu, 18 Dec 2025 12:38:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCKz-00CoMk-0N
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 12:38:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCKV-0000gl-9J
	for lore@pengutronix.de; Thu, 18 Dec 2025 12:38:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eNiruujWKwfqxMz4XYEeIKlMOdWQ3vjLXpRK4P/YrCw=; b=3jIu2LNy0crxX34K5QH9grvDem
	ikv63WMD4FADmAtkPIbwyL+njNu9U4RaaK5bvTS9EweTznhCHqVHIzqnux+s9bj18Bhq5UPEFUukV
	SbrHPbEnrbWWBAsL+2uR2XOF+UPivSi2HMRTRttaRT0IfnXeaemseFK9c48vrcuHLswbUx6PiJZlz
	gPhKCd7TQTxdxNGzSUMGRdXhbe82O3bTmlbPIKUpCIpNCVJFONYd3ltO21IL/wsm2eTa0yHbotx3h
	F0dmP2tveKj8Lays83qioiAPr6C6V4iq5T+kYpoh84a8QTFUppTSHsHFftssO/VW3DInfir5C7DSB
	r+jtA/9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCJc-00000008KSz-1927;
	Thu, 18 Dec 2025 11:37:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCJN-00000008KBH-4AaD
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 11:36:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJM-00089j-FR; Thu, 18 Dec 2025 12:36:48 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJM-006Gv0-0u;
	Thu, 18 Dec 2025 12:36:48 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw4-0000000AVre-3zY5;
	Thu, 18 Dec 2025 12:12:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Dec 2025 11:38:00 +0100
Message-ID: <20251218111242.1527495-41-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
References: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_033650_027718_4BE7BC21 
X-CRM114-Status: GOOD (  10.08  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v1 40/54] hardening: disable some features when EFI runtime support is enabled
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The way we compile the barebox EFI runtime makes it clash with some
of our hardening measures:

- ARM_MMU_PERMISSIONS: currently handles only a single text/rodata
  section, but with .efi_runtime we have twice of each, but the code
  can't yet handle applying permissions. But even with that fixed, eFI
  payloads expet to be mapped RWX apparently? Needs some more thought
  put into it.

- Stack protector: Stack protector sits outside of EFI runtime section
  for now.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/Kconfig      | 1 +
 lib/Kconfig.hardening | 2 ++
 2 files changed, 3 insertions(+)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 4b7f5b83c67e..ae3de9504a9b 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -414,6 +414,7 @@ config ARM_UNWIND
 
 config ARM_MMU_PERMISSIONS
 	bool "Map with extended RO/X permissions"
+	depends on !EFI_RUNTIME
 	default y
 	help
 	  Enable this option to map readonly sections as readonly, executable
diff --git a/lib/Kconfig.hardening b/lib/Kconfig.hardening
index 3b3ba6267aec..59dd02c9cfae 100644
--- a/lib/Kconfig.hardening
+++ b/lib/Kconfig.hardening
@@ -169,6 +169,7 @@ config STACKPROTECTOR_NONE
 config STACKPROTECTOR_STRONG
 	bool "Strong"
 	depends on $(cc-option,-fstack-protector-strong)
+	depends on !EFI_RUNTIME
 	select STACKPROTECTOR
 	help
 	  This option turns on the "stack-protector" GCC feature. This
@@ -196,6 +197,7 @@ config STACKPROTECTOR_ALL
 	bool "All"
 	depends on $(cc-option,-fstack-protector-all)
 	depends on COMPILE_TEST
+	depends on !EFI_RUNTIME
 	select STACKPROTECTOR
 	help
 	  This pushes and verifies stack protector canaries on all functions,
-- 
2.47.3



