Delivery-date: Wed, 17 Nov 2021 04:51:30 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mnBys-0002JA-Rd
	for lore@lore.pengutronix.de; Wed, 17 Nov 2021 04:51:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mnBys-0001pT-1s
	for lore@pengutronix.de; Wed, 17 Nov 2021 04:51:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vuCiYTm99U2anrCOI0Ys6kfungvcAP72XtaxYrBs4JM=; b=zACcf/dMtQnXnk
	kna4vhYs//PWK9pJ2kAY5MCZ+jh/Vrll8SBwCvtUkMY7FSfkq03vsEApawI2ZzXnLaHoB72BcaO+4
	PN6DI0CZJr+XhtcaCSjKlXA9ky2BTdwp2eUg0tvzZjjyQrOlHdpyjmK1KYUZG6XdmN2LzJR0kF4/Y
	/QqD9LehECjL+A5+biCaY5silItDia7GKF8TsfN/PWS2BOqWA/txqDzvwQ8/kqALpc3isPTam8njr
	srDPtmGe5PtrQgsWxe71IGmVnxc8pPtxpe3D19AMYpiH7R+GOZnNal6U8jyV/ivUwL6l5NYswqQ7J
	CvHI2ZC9+WL41yyjFZCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnBxY-003Ecp-L7; Wed, 17 Nov 2021 03:50:08 +0000
Received: from conuserg-08.nifty.com ([210.131.2.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnBxH-003EZ6-NU
 for barebox@lists.infradead.org; Wed, 17 Nov 2021 03:49:55 +0000
Received: from grover.. (133-32-232-101.west.xps.vectant.ne.jp
 [133.32.232.101]) (authenticated)
 by conuserg-08.nifty.com with ESMTP id 1AH3nM9l012692;
 Wed, 17 Nov 2021 12:49:25 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-08.nifty.com 1AH3nM9l012692
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1637120965;
 bh=c/VqmIx//1mNyHKeL225Iie1rURcCG0OLYRt13m5zdQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=iZtE4l5fCT+ks4NRxSOlJe2WldhbUG9Ux3/7JULwTzxQ4jf8MY3LiYpTOXiKArGTI
 F/NJeB70N8BJBS+4nzpJv++csiFfQ8Ct7eYBJSUKSWJd7ghxxwyErFp2zFt1Pj4NBd
 P/VT/TTjcCgzrmerh2Vtm2o8e7qnKA5KOMenaWGV0d8dao00biMOSgRkeWBV+fSvt6
 yAdLYQeHE9A+GhXfQqnhpR/gMnIaBzq5uRR34AiDhE5iKKs7Hg7N8X2u6+/8Xe+EDq
 L6vGF9RPHe7PwGW+O4Xw1G7ELoyFQz+3VSuEo3lByvKb/hF6Wod/AXuTXMcciHqgDr
 JYtNQj7mPSntQ==
X-Nifty-SrcIP: [133.32.232.101]
From: Masahiro Yamada <masahiroy@kernel.org>
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 17 Nov 2021 12:49:18 +0900
Message-Id: <20211117034918.1226358-6-masahiroy@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211117034918.1226358-1-masahiroy@kernel.org>
References: <20211117034918.1226358-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211116_194952_185477_45303236 
X-CRM114-Status: UNSURE (   9.18  )
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
Subject: [PATCH 5/5] x86_64: do not pass the EFI image handle or system table
 to relocation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The _reloc() function in reloc_x86_64.c is passed with the EFI image
handle and system table, but they are unrelated to the relocation.
In fact, they are not used at all.

Remove them and clean up the assembler code as well.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 arch/x86/mach-efi/crt0-efi-x86_64.S | 6 +-----
 arch/x86/mach-efi/reloc_x86_64.c    | 4 ++--
 2 files changed, 3 insertions(+), 7 deletions(-)

diff --git a/arch/x86/mach-efi/crt0-efi-x86_64.S b/arch/x86/mach-efi/crt0-efi-x86_64.S
index aa03106e9..d23c1fb2d 100644
--- a/arch/x86/mach-efi/crt0-efi-x86_64.S
+++ b/arch/x86/mach-efi/crt0-efi-x86_64.S
@@ -47,14 +47,10 @@ _start:
 	lea image_base(%rip), %rdi
 	lea _DYNAMIC(%rip), %rsi
 
-	popq %rcx
-	popq %rdx
-	pushq %rcx
-	pushq %rdx
 	call _relocate
 
-	popq %rdi
 	popq %rsi
+	popq %rdi
 
 	call efi_main
 	addq $8, %rsp
diff --git a/arch/x86/mach-efi/reloc_x86_64.c b/arch/x86/mach-efi/reloc_x86_64.c
index e83bacb30..f015ae047 100644
--- a/arch/x86/mach-efi/reloc_x86_64.c
+++ b/arch/x86/mach-efi/reloc_x86_64.c
@@ -41,9 +41,9 @@
 
 #include <elf.h>
 
-asmlinkage efi_status_t _relocate (long, Elf64_Dyn *, efi_handle_t, efi_system_table_t *);
+asmlinkage efi_status_t _relocate(long, Elf64_Dyn *);
 
-efi_status_t _relocate (long ldbase, Elf64_Dyn *dyn, efi_handle_t image, efi_system_table_t *systab)
+efi_status_t _relocate(long ldbase, Elf64_Dyn *dyn)
 {
 	long relsz = 0, relent = 0;
 	Elf64_Rel *rel = 0;
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

