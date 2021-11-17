Delivery-date: Wed, 17 Nov 2021 04:51:34 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mnByw-0002KX-Ri
	for lore@lore.pengutronix.de; Wed, 17 Nov 2021 04:51:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mnByw-0001qs-0Q
	for lore@pengutronix.de; Wed, 17 Nov 2021 04:51:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9SZr6AXD1deBTslZn5kceHf0fjCBUhQMiR+Qbykk1Js=; b=JRhuJpjCSvCF+z
	KPhNm5A+Z/vRDcR+Nzd9OJyY6CusJDFVpJkQxjyvfs2RtFRaUoh7prLT0HI+Rk0wjU80BcRiILJ4K
	er7/9vUCUxDOiMjV1pwoMNf+3QgaTTgLgOyDOcYjoNTCmpisUSF4ZYB94a8OPTTxs8qvAw/xOAx6g
	DXHYYAd2pyr80FLGskOSjsM9dg8ZdIb4am71qUMFX8GWtgrvXvDcyL69q5vm5uwKx+QtR7Ngzec60
	bqK2xERTK8Nh43a6f7rqa74J8E9APG6KOABOecERmm81VMDvGnuazmhPfCk1bT2Fxu1q44C2oUDbX
	8fFNntCssNRSv2hxA4xA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnBxd-003Edm-1z; Wed, 17 Nov 2021 03:50:13 +0000
Received: from conuserg-08.nifty.com ([210.131.2.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnBxH-003EZ7-NW
 for barebox@lists.infradead.org; Wed, 17 Nov 2021 03:49:55 +0000
Received: from grover.. (133-32-232-101.west.xps.vectant.ne.jp
 [133.32.232.101]) (authenticated)
 by conuserg-08.nifty.com with ESMTP id 1AH3nM9k012692;
 Wed, 17 Nov 2021 12:49:24 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-08.nifty.com 1AH3nM9k012692
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1637120964;
 bh=i0LVZxcEizjtHIRNdwcF5+HI6k/bRvBRdGHj4+Clbi8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Sn7Pxp8QM7K3+QX4qBcrR25OQQDtwx4fxG+UZrHujfYgJF7R7kSSitAKYXLXpgF46
 HRXpRcuefaX4H+ghFbbYvsA1b73wLtwQphz4EM6/8DbWEWAHJ9cBmYHbtcwM23+ibF
 NN9wR2aF3b3lhOCuE4i4Ykp60ulr+T6UOeadcm28APzGpfWRo7SVsKIGSkIkwMe7oO
 lIP6bXhUH/vXsO+/y/qdUfqx16pL5e029HM/U8VrWCllTUg9mcbhH75HObbV4ervla
 JhyfDLhDXDO2Bg/KFzqmble3lFFm7DUAUIpqUkr5HGeoWQojAdwvc2tzjj9m7CHXHv
 edgfp+iRfST1Q==
X-Nifty-SrcIP: [133.32.232.101]
From: Masahiro Yamada <masahiroy@kernel.org>
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 17 Nov 2021 12:49:17 +0900
Message-Id: <20211117034918.1226358-5-masahiroy@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211117034918.1226358-1-masahiroy@kernel.org>
References: <20211117034918.1226358-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211116_194952_274057_C572EC61 
X-CRM114-Status: UNSURE (   6.69  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-104.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 4/5] x86: reuse cmd_objcopy to generate barebox.efi
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The objcopy rule is defined in scripts/Makefile.lib

Reuse it.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 arch/x86/Makefile | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/arch/x86/Makefile b/arch/x86/Makefile
index 5623b2cea..53cbd5088 100644
--- a/arch/x86/Makefile
+++ b/arch/x86/Makefile
@@ -54,17 +54,16 @@ common-y += arch/x86/lib/
 lds-$(CONFIG_X86_32)   := arch/x86/mach-efi/elf_ia32_efi.lds
 lds-$(CONFIG_X86_64)   := arch/x86/mach-efi/elf_x86_64_efi.lds
 
-quiet_cmd_efi_image = EFI-IMG $@
-      cmd_efi_image = $(OBJCOPY) -j .text -j .sdata -j .data -j .dynamic \
-		      -j .dynsym -j .rel -j .rela -j .reloc \
-		      -j .bbenv.* -j .bblogo.* --target=$(TARGET) $< $@
-
 KBUILD_BINARY := barebox
 
 KBUILD_LDFLAGS := --no-undefined
 
+OBJCOPYFLAGS_barebox.efi = \
+	-j .text -j .sdata -j .data -j .dynamic -j .dynsym -j .rel -j .rela \
+	-j .reloc -j .bbenv.* -j .bblogo.* --target=$(TARGET)
+
 barebox.efi: $(KBUILD_BINARY) FORCE
-	$(call if_changed,efi_image)
+	$(call if_changed,objcopy)
 
 KBUILD_IMAGE := barebox.efi
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

