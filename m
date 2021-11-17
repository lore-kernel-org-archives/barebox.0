Delivery-date: Wed, 17 Nov 2021 04:51:29 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mnByr-0002IS-Tt
	for lore@lore.pengutronix.de; Wed, 17 Nov 2021 04:51:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mnByr-0001ol-0k
	for lore@pengutronix.de; Wed, 17 Nov 2021 04:51:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WDCso4nuh2phb0MzeBnAMnWYSa+TaxsPbWTOIb9RGeo=; b=hOqWHAJ3WcMca6
	vXvhDC6zUjNdJCOxnbtmjKa/W5gJ+WFUzRpzJ6BklggMvX9UNPiIr8svI0BEVySAdJxHemd9l+Hkk
	jt0z42jZdJ61fGZa4WPYkOuWpQP2vZhkhJEt5CHlKRd6s9qpJhRwCN+dENKH0Bq8ga+bhziXqWRjy
	K07PyKI/piLq/6Zv1+YbYa9zWp8UkfBD2HUPzC6SJJdM1YcDcGLLZS/GRqNW7xJKAlyS3D0bDKHMI
	ctZCb+oAV8YVLwjGplMrzOWgGKgg0eLqJ3+w3EW24Y7tAk4d9cvf8fPm81uIH/T0278PsT+3G5v28
	cOd5uxFNTQNe7H2m7hXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnBxQ-003EbT-SR; Wed, 17 Nov 2021 03:50:00 +0000
Received: from conuserg-08.nifty.com ([210.131.2.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnBxH-003EZ8-OP
 for barebox@lists.infradead.org; Wed, 17 Nov 2021 03:49:54 +0000
Received: from grover.. (133-32-232-101.west.xps.vectant.ne.jp
 [133.32.232.101]) (authenticated)
 by conuserg-08.nifty.com with ESMTP id 1AH3nM9j012692;
 Wed, 17 Nov 2021 12:49:24 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-08.nifty.com 1AH3nM9j012692
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1637120964;
 bh=tDp+7/UKDp0ysphFD+XoelWO9Ay664+b3po6BEVMvH0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=pLqRmGIF/MorDgbqUTYcViNYfW1a51CVGw2qRrzjn7WTZ4LI3o35TIZ3SS0zK42UT
 Mrf2lcLvjBlf/oSe8pYbIkQ4/4AY3ABkt15ZDHtObdHAr+XVfDVtxfT1nH2uz40kzR
 LHjs7mm6SAnxnU8S4E+83P0BaaZLuJbp0VNxZu3hbMpltD+jwuFPOau9/oKfzUtWWT
 BdO+R94njU8okjexROufgPE9axbxqHGcy9FMr2nK70tXkqVf8fhN9v2mH/tXXhU+KW
 /odyBvBh2pvETgfj03bUArCsMvKonw8PNyBCbVAyse0argYu4ignGqZCugLrIw/FL9
 +8NUnxrZXo0Tw==
X-Nifty-SrcIP: [133.32.232.101]
From: Masahiro Yamada <masahiroy@kernel.org>
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 17 Nov 2021 12:49:16 +0900
Message-Id: <20211117034918.1226358-4-masahiroy@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211117034918.1226358-1-masahiroy@kernel.org>
References: <20211117034918.1226358-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211116_194952_159921_098509DD 
X-CRM114-Status: UNSURE (   7.12  )
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
Subject: [PATCH 3/5] x86: stop copying unneeded sections to barebox.efi
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Stop copying the following sections:

  __barebox_initcalls
  __barebox_exitcalls
  __barebox_cmd
  .barebox_magic

Such sections do not exist.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 arch/x86/Makefile | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/x86/Makefile b/arch/x86/Makefile
index c73842cf8..5623b2cea 100644
--- a/arch/x86/Makefile
+++ b/arch/x86/Makefile
@@ -56,8 +56,7 @@ lds-$(CONFIG_X86_64)   := arch/x86/mach-efi/elf_x86_64_efi.lds
 
 quiet_cmd_efi_image = EFI-IMG $@
       cmd_efi_image = $(OBJCOPY) -j .text -j .sdata -j .data -j .dynamic \
-		      -j .dynsym -j .rel -j .rela -j .reloc -j __barebox_initcalls \
-		      -j __barebox_exitcalls -j __barebox_cmd -j .barebox_magicvar \
+		      -j .dynsym -j .rel -j .rela -j .reloc \
 		      -j .bbenv.* -j .bblogo.* --target=$(TARGET) $< $@
 
 KBUILD_BINARY := barebox
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

