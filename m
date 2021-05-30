Delivery-date: Sun, 30 May 2021 17:01:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lnMwW-0006Jk-C8
	for lore@lore.pengutronix.de; Sun, 30 May 2021 17:01:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lnMwV-0004hn-AX
	for lore@pengutronix.de; Sun, 30 May 2021 17:01:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=W66Em3wMacPSsf5YHfREpYAetceXs3RW0o4+wrALeNE=; b=eDZSpNJzi1A5+b
	BdnC25D/3b1D4p6RfMiDKmfh54KSdrooR6mOaMMcyBeWzaAp+Mb7DxhNQiuKPZCkI4u8lTpOu0sj6
	VeP+7MdE6QCYrZEt6o9dIIPKFhstyGOMRJlnCoKT2pi7W33mf8wUWJ0ZLSiKHoNQ4s278+fXrXLhP
	vdlKJEO+NXcJ8w14phaHdcGFd8rwk8t+pqu+cTK+WjSeX0we6EYyUvINi2O3FjoqN7xRWKDp5IeDf
	aLZYOCd5osS+tEkQ5tpndE99cJB0YKwiM51GC+/Lne4guNcTIZJsddmyZGerKzXgh54G08k+Fqhy8
	C72s/7APXrNPDTsY+9Nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lnMuc-009lo7-Pa; Sun, 30 May 2021 14:59:34 +0000
Received: from conuserg-07.nifty.com ([210.131.2.74])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lnMuW-009lnk-Or
 for barebox@lists.infradead.org; Sun, 30 May 2021 14:59:30 +0000
Received: from localhost.localdomain (133-32-232-101.west.xps.vectant.ne.jp
 [133.32.232.101]) (authenticated)
 by conuserg-07.nifty.com with ESMTP id 14UEwi64030387;
 Sun, 30 May 2021 23:58:44 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-07.nifty.com 14UEwi64030387
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1622386725;
 bh=AzmeicZUO7PBefE1UsqyK9+ylQhai0dqz9EYo4VqhDM=;
 h=From:To:Cc:Subject:Date:From;
 b=FHbV11dnDE5Z8UpHhbsRU3PJm96wW0lcoW5VuPJt2pPcPJvSjBMhZ5wRBzGBvQivl
 +EHkisR3O2zE8cCF3O0S5RLjzlygsUNBUf1WLqvgXRMn/A+yR1QlLbubFPL9uH56Y9
 b7xPMDuE1WpPn4UXx9BSg1WIdRCdRy9rhtADkFZmSANCiHH9/7BbOd4wpZY42lhEP6
 DGoatK87V0wxNydER8fMlbNXFpWio6PyRdlr/PN2F2DyIPoRTqC4DdDdEGWc40kjRi
 eycx73n/pW6mFFEdur/HP6Hy0oodyIQ3y+A3J0UW5cy1mnnZYai478YNAXBf3BBrhC
 tD+MU3iTX9gsw==
X-Nifty-SrcIP: [133.32.232.101]
From: Masahiro Yamada <masahiroy@kernel.org>
To: barebox@lists.infradead.org
Date: Sun, 30 May 2021 23:58:41 +0900
Message-Id: <20210530145842.2610109-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210530_075929_163697_F9370606 
X-CRM114-Status: GOOD (  12.97  )
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
Cc: Masahiro Yamada <masahiroy@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-104.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] firmware: refactor firmware/Makefile
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Masahiro Yamada <yamada.masahiro@socionext.com>

Linux commit 3470d9eb638722212ac44787eaf13486823fa011

Clean up the Makefile. Equivalent *.gen.S files are still produced.

 - Use filechk to remove ugly wordsize_deps

 - Get FWNAME, FWSTR, ASM_WORD, ASM_ALIGN, and PROGBITS out of the
   recipe for readability

 - Remove 'mkdir' because filechk takes care of it

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 firmware/Makefile | 56 +++++++++++++++++------------------------------
 1 file changed, 20 insertions(+), 36 deletions(-)

diff --git a/firmware/Makefile b/firmware/Makefile
index cc28c0fc3..3a38c4007 100644
--- a/firmware/Makefile
+++ b/firmware/Makefile
@@ -1,7 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0
-#
-# kbuild file for firmware/
-#
 
 firmware-$(CONFIG_FIRMWARE_IMX_LPDDR4_PMU_TRAIN) += \
 	lpddr4_pmu_train_1d_dmem.bin \
@@ -19,52 +16,39 @@ firmware-$(CONFIG_ARCH_LAYERSCAPE_PPA) += ppa-ls1046a.bin
 
 firmware-$(CONFIG_FIRMWARE_CCBV2_OPTEE) += ccbv2_optee.bin
 
-# Create $(fwabs) from $(CONFIG_EXTRA_FIRMWARE_DIR) -- if it doesn't have a
+# Create $(fwdir) from $(CONFIG_EXTRA_FIRMWARE_DIR) -- if it doesn't have a
 # leading /, it's relative to $(srctree).
 fwdir := $(subst $(quote),,$(CONFIG_EXTRA_FIRMWARE_DIR))
-fwabs := $(addprefix $(srctree)/,$(filter-out /%,$(fwdir)))$(filter /%,$(fwdir))
+fwdir := $(addprefix $(srctree)/,$(filter-out /%,$(fwdir)))$(filter /%,$(fwdir))
 
-fw-external-y := $(firmware-y)
+obj-pbl-y := $(addsuffix .gen.o, $(firmware-y))
 
-quiet_cmd_fwbin = MK_FW   $@
-      cmd_fwbin = FWNAME="$(patsubst firmware/%.gen.S,%,$@)";		     \
-		  FWSTR="$(subst /,_,$(subst .,_,$(subst -,_,$(patsubst	     \
-				firmware/%.gen.S,%,$@))))";		     \
-		  ASM_WORD=$(if $(CONFIG_64BIT),.quad,.long);		     \
-		  ASM_ALIGN=$(if $(CONFIG_64BIT),3,2);			     \
-		  PROGBITS=$(if $(CONFIG_ARM),%,@)progbits;		     \
-		  echo "/* Generated by firmware/Makefile */"		> $@;\
-		  echo "    .section .rodata.$${FWSTR}"			>>$@;\
-		  echo "    .p2align $${ASM_ALIGN}"			>>$@;\
-		  echo ".global _fw_$${FWSTR}_start"			>>$@;\
-		  echo "_fw_$${FWSTR}_start:"				>>$@;\
-		  echo "    .incbin \"$(2)\""				>>$@;\
-		  echo ".global _fw_$${FWSTR}_end"			>>$@;\
-		  echo "_fw_$${FWSTR}_end:"				>>$@;
+FWNAME    = $(patsubst $(obj)/%.gen.S,%,$@)
+FWSTR     = $(subst /,_,$(subst .,_,$(subst -,_,$(FWNAME))))
+ASM_ALIGN = $(if $(CONFIG_64BIT),3,2)
 
-# One of these files will change, or come into existence, whenever
-# the configuration changes between 32-bit and 64-bit. The .S files
-# need to change when that happens.
-wordsize_deps := $(wildcard include/config/64bit.h include/config/32bit.h)
+filechk_fwbin = { \
+	echo "/* Generated by $(src)/Makefile */"		;\
+	echo "    .section .rodata.$(FWSTR)"			;\
+	echo "    .p2align $(ASM_ALIGN)"			;\
+	echo ".global _fw_$(FWSTR)_start"			;\
+	echo "_fw_$(FWSTR)_start:"				;\
+	echo "    .incbin \"$(fwdir)/$(FWNAME)\""		;\
+	echo ".global _fw_$(FWSTR)_end"				;\
+	echo "_fw_$(FWSTR)_end:"				;\
+}
 
-$(patsubst %,$(obj)/%.gen.S, $(fw-external-y)): %: $(wordsize_deps) \
-		include/config/extra/firmware/dir.h
-	$(call cmd,fwbin,$(fwabs)/$(patsubst $(obj)/%.gen.S,%,$@))
+$(obj)/%.gen.S: FORCE
+	$(call filechk,fwbin)
 
 # The .o files depend on the binaries directly; the .S files don't.
-$(patsubst %,$(obj)/%.gen.o, $(fw-external-y)): $(obj)/%.gen.o: $(fwdir)/%
+$(patsubst %,$(obj)/%.gen.o, $(obj-pbl-y)): $(obj)/%.gen.o: $(fwdir)/%
 
 # The same for pbl:
-$(patsubst %,$(obj)/%.gen.pbl.o, $(fw-external-y)): $(obj)/%.gen.pbl.o: $(fwdir)/%
+$(patsubst %,$(obj)/%.gen.pbl.o, $(obj-pbl-y)): $(obj)/%.gen.pbl.o: $(fwdir)/%
 
 obj-pbl-y			 += $(patsubst %,%.gen.o, $(fw-external-y))
 
-ifndef building_out_of_srctree
-# Makefile.build only creates subdirectories for O= builds, but external
-# firmware might live outside the kernel source tree
-_dummy := $(foreach d,$(addprefix $(obj)/,$(dir $(fw-external-y))), $(shell [ -d $(d) ] || mkdir -p $(d)))
-endif
-
 targets := $(patsubst $(obj)/%,%, \
                                 $(shell find $(obj) -name \*.gen.S 2>/dev/null))
 
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

