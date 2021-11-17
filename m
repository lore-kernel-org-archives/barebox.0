Delivery-date: Wed, 17 Nov 2021 04:51:32 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mnByu-0002K7-K1
	for lore@lore.pengutronix.de; Wed, 17 Nov 2021 04:51:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mnByt-0001q4-LF
	for lore@pengutronix.de; Wed, 17 Nov 2021 04:51:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CSoQCXUlBLr1BNFI216uTOdC+2EBPOo59zxMM5X5E1E=; b=0UAYPbZC1qSRPs
	i3saE7pJMZIP31ZfssMLfL4ptfoRv3/vH1CNFB5UbGLnXXi5HseKCGEJRm56mvlI5mKKsQtjozW4P
	JRFcmhnJ+EnX3SeKoiZcfc7p9SwQdtoIGWmW+xV1kG6hdnKlIoafMpsN7Qzljsy8bh7/Zxf5Vy2Af
	Nc1VqeGVAFgxHzwudB2/9JGQopfmAXPjOCiHcup9P6cEYFwNxozNRhLnUd0FulRTTyTDWX3k4QDd5
	UDhGyus+S9u26/U/JEkB9Q3Glb2knHVXAIHguvlCpxHKPwmGgWUf+Tm2JyDmOQqgyEIfLctYtRBzY
	RVgy1FWRmIa0wmOvmY9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnBxT-003Ebg-D6; Wed, 17 Nov 2021 03:50:03 +0000
Received: from conuserg-08.nifty.com ([210.131.2.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnBxH-003EZ9-Og
 for barebox@lists.infradead.org; Wed, 17 Nov 2021 03:49:54 +0000
Received: from grover.. (133-32-232-101.west.xps.vectant.ne.jp
 [133.32.232.101]) (authenticated)
 by conuserg-08.nifty.com with ESMTP id 1AH3nM9i012692;
 Wed, 17 Nov 2021 12:49:23 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-08.nifty.com 1AH3nM9i012692
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1637120964;
 bh=vkduDQ3HhDa4pBUOnNyrd6U4YJXh3MjgJwE/5PR3edk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=dqSxdcilRsgjF2bomXBQmrHM/mZlMRNnYhuip2CxWX9A4CthRYrc5hZ069sD8rnr+
 V/DOJET3gZK/d7qWATDT+K7vt96/Mo2MVbaFgShspwPxxu+bzYyrokT4QkzwE5YNzg
 /c8SSJX2c3lG7cpad7BLzmB4V/qO0XD/Uko4mBKs1BLD1XVoQDAWKF9y1+OY4DTtUN
 64ort73h7iX0brDuPDwdBjFb1AAlgr1CnMV+1Rct/ax0alMH23ZSD2N6FIzy7RMi6F
 C5XMT9rmWJ277wUVwn0K3attRXBSYXFnkhUoDzrPu8hVhRgbxy2q3L9ciGDRpg0GYd
 f1B+D1ZKdTkew==
X-Nifty-SrcIP: [133.32.232.101]
From: Masahiro Yamada <masahiroy@kernel.org>
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 17 Nov 2021 12:49:15 +0900
Message-Id: <20211117034918.1226358-3-masahiroy@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211117034918.1226358-1-masahiroy@kernel.org>
References: <20211117034918.1226358-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211116_194952_168000_D9CC8992 
X-CRM114-Status: UNSURE (   7.08  )
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
Subject: [PATCH 2/5] x86: remove x86-specific cmd_barebox__
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The difference from cmd_barebox__ in the top Makefile is:

  -shared -Bsymbolic -znocombreloc

Put the flags to LDFLAGS_barebox, and remove the x86-specific
cmd_barebox__.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 arch/x86/Makefile | 11 +++--------
 1 file changed, 3 insertions(+), 8 deletions(-)

diff --git a/arch/x86/Makefile b/arch/x86/Makefile
index 9fc64cc04..c73842cf8 100644
--- a/arch/x86/Makefile
+++ b/arch/x86/Makefile
@@ -28,7 +28,9 @@ endif
 
 ifndef CONFIG_MODULES
 # Add cleanup flags
-ifneq ($(CONFIG_X86_EFI),y)
+ifeq ($(CONFIG_X86_EFI),y)
+LDFLAGS_barebox += -shared -Bsymbolic -znocombreloc
+else
 KBUILD_CPPFLAGS += -fdata-sections -ffunction-sections
 LDFLAGS_barebox += -static --gc-sections
 endif
@@ -52,13 +54,6 @@ common-y += arch/x86/lib/
 lds-$(CONFIG_X86_32)   := arch/x86/mach-efi/elf_ia32_efi.lds
 lds-$(CONFIG_X86_64)   := arch/x86/mach-efi/elf_x86_64_efi.lds
 
-cmd_barebox__ ?= $(LD) $(KBUILD_LDFLAGS) $(LDFLAGS_barebox) -o $@	\
-		-T $(lds-y)					\
-		-shared -Bsymbolic -znocombreloc	\
-		--whole-archive $(BAREBOX_OBJS)			\
-		--no-whole-archive				\
-		$(filter-out $(BAREBOX_LDS) $(BAREBOX_OBJS) FORCE ,$^)
-
 quiet_cmd_efi_image = EFI-IMG $@
       cmd_efi_image = $(OBJCOPY) -j .text -j .sdata -j .data -j .dynamic \
 		      -j .dynsym -j .rel -j .rela -j .reloc -j __barebox_initcalls \
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

