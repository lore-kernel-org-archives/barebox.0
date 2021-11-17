Delivery-date: Wed, 17 Nov 2021 04:51:31 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mnByt-0002JM-3Z
	for lore@lore.pengutronix.de; Wed, 17 Nov 2021 04:51:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mnByr-0001os-CK
	for lore@pengutronix.de; Wed, 17 Nov 2021 04:51:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aDusFp2fZ0c+rg9yFb6uAVLFg9Q+8gOOEcy4+8NS4MQ=; b=GT5scF9KkY69CS
	br6CcOQG/m4keuk0Qt6NdtUw8dwNYhsu7tt1FDTzXy5n9xmvQDYB20nE+Hs2sUk28MrlPc22JsdMH
	qvZ9Ed0PSQU97vN/kQQcQ557i/shKTuOvQ2CssnTgUobmUe3KJKP1mjlgHbMNhnIRDvDPwVlfMBhS
	HeWROQuRoS7xiUxTK5eA1jmT13SBfICzt9uvtJ5rP4d+VbnI4jur0SXB/mcwep06VZSKyShgwD6NS
	degXXoZN4b/RLdb2ZyPCO46n9M97H2u4tLoekNB171kWCl+yGe5d2SUtqXS03jZXN/VbDmwOt/LMA
	YO1q97fQY/SuHV5mX9tA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnBxN-003Eb8-FJ; Wed, 17 Nov 2021 03:49:57 +0000
Received: from conuserg-08.nifty.com ([210.131.2.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnBxH-003EZB-MI
 for barebox@lists.infradead.org; Wed, 17 Nov 2021 03:49:53 +0000
Received: from grover.. (133-32-232-101.west.xps.vectant.ne.jp
 [133.32.232.101]) (authenticated)
 by conuserg-08.nifty.com with ESMTP id 1AH3nM9h012692;
 Wed, 17 Nov 2021 12:49:23 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-08.nifty.com 1AH3nM9h012692
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1637120963;
 bh=eN1KzMqkWzppOJx+JCOioUknbH6N5gpDgzouWLxeT7U=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=0qk/GnBoiTye3Rw7esiPPsXzyOwmasN1MlVIkvcv7Josl37IdiZtClk/7nxsk4LWB
 jOxh5F2Q6AWAysE+MO0dEMHPC0W8h+8bi6EsSPC9f//Qs/FaPO5WZ5wsZaLxaJ4844
 LQg9FpMgkM+kFbxG45C5yysZwY0GEW4j/T5ilqiQ7oDdwZMdBUKt2+4tJIxOCOErLA
 R6dwxEeiBHJlu5WQIL43J8Sm3MTQ3enJJKuQSsM1Gmw/2btl8GsxbORDuyQ7EJAi7r
 7erZJg6a5aWmZ9EAklqDS6Q8bEgGXIO0J9ddLZ1UKwN3TdK/MEngpwAkqyfQHb+229
 SC+R5XvCtDpzA==
X-Nifty-SrcIP: [133.32.232.101]
From: Masahiro Yamada <masahiroy@kernel.org>
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 17 Nov 2021 12:49:14 +0900
Message-Id: <20211117034918.1226358-2-masahiroy@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211117034918.1226358-1-masahiroy@kernel.org>
References: <20211117034918.1226358-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211116_194952_133938_023F10C2 
X-CRM114-Status: GOOD (  12.00  )
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
Subject: [PATCH 1/5] kbuild: remove unneeded -nostdlib flag
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The -nostdlib option requests the compiler to not use the standard
system startup files or libraries when linking.

arch/kvm/Makefile adds it to KBUILD_CFLAGS/AFLAGS, but it does not make
sense because those are unrelated to linking.

arch/{mips,riscv,x86}/Makefile passes it to the linker, but it is not
sensible either. As noted above, adding -nostdlib makes sense only
when $(CC) is used as a linker driver, but $(LD) is directly used for
linking barebox. (ld.bfd/ld.lld recognizes the -nostdlib flag, but its
behavior is obscure, and unneeded here.)

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 arch/kvx/Makefile   | 2 +-
 arch/mips/Makefile  | 2 --
 arch/riscv/Makefile | 1 -
 arch/x86/Makefile   | 2 +-
 4 files changed, 2 insertions(+), 5 deletions(-)

diff --git a/arch/kvx/Makefile b/arch/kvx/Makefile
index 13c4e2431..f29eeef92 100644
--- a/arch/kvx/Makefile
+++ b/arch/kvx/Makefile
@@ -8,7 +8,7 @@ ifeq ($(CROSS_COMPILE),)
 CROSS_COMPILE    := kvx-elf-
 endif
 
-DEFAULT_CFLAGS := -nostdlib -fno-builtin -fstrict-align -g
+DEFAULT_CFLAGS := -fno-builtin -fstrict-align -g
 DEFAULT_CFLAGS += -DTEXT_BASE=$(CONFIG_TEXT_BASE)
 
 LIBGCC_PATH = $(dir $(shell $(CC) $(KBUILD_CFLAGS) --print-libgcc-file-name))
diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index 4eb6ba772..786695194 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -72,8 +72,6 @@ KBUILD_BINARY := barebox.bin
 KBUILD_TARGET := barebox.bin
 endif
 
-LDFLAGS_barebox += -nostdlib
-
 machine-$(CONFIG_MACH_MIPS_MALTA)	:= malta
 machine-$(CONFIG_MACH_MIPS_AR231X)	:= ar231x
 machine-$(CONFIG_MACH_MIPS_ATH79)	:= ath79
diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
index 0b1278936..23ea6178a 100644
--- a/arch/riscv/Makefile
+++ b/arch/riscv/Makefile
@@ -17,7 +17,6 @@ PBL_CPPFLAGS += $(riscv-cflags-y)
 LDFLAGS_pbl += $(riscv-ldflags-y)
 
 cflags-y += $(riscv-cflags-y)
-LDFLAGS_barebox += -nostdlib
 
 LDFLAGS_barebox += $(riscv-ldflags-y)
 
diff --git a/arch/x86/Makefile b/arch/x86/Makefile
index fd871ca21..9fc64cc04 100644
--- a/arch/x86/Makefile
+++ b/arch/x86/Makefile
@@ -54,7 +54,7 @@ lds-$(CONFIG_X86_64)   := arch/x86/mach-efi/elf_x86_64_efi.lds
 
 cmd_barebox__ ?= $(LD) $(KBUILD_LDFLAGS) $(LDFLAGS_barebox) -o $@	\
 		-T $(lds-y)					\
-		-shared -Bsymbolic -nostdlib -znocombreloc	\
+		-shared -Bsymbolic -znocombreloc	\
 		--whole-archive $(BAREBOX_OBJS)			\
 		--no-whole-archive				\
 		$(filter-out $(BAREBOX_LDS) $(BAREBOX_OBJS) FORCE ,$^)
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

