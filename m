Delivery-date: Wed, 13 Sep 2023 14:58:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qgPSA-00DmDG-Oo
	for lore@lore.pengutronix.de; Wed, 13 Sep 2023 14:58:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qgPS8-0007Xb-RJ
	for lore@pengutronix.de; Wed, 13 Sep 2023 14:58:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=esxA2H5H+oXMOat/Hlr69ek/GebFMzDSSQ3P838IYVs=; b=u5cprH+Y4qfUPYlSnzPvSCV/9O
	+ZjbtDoz3czDkxe7p3V18Bb+2aUkF8R3Yx9+2R3oYJ86ZVyEYqTAv9KWZ45RYDN+czLVwPlXbd796
	7jpxcx/6uDUMzTImGMtUptVlz8KlWKZn74x5uTVnp4cQH0B4qfbcg6TFfTXUqygLoX+b1ZCAwJkaj
	MjsaVLV7Ugy9ftWmRK3tYH5He5K6s+0w3zKEU4+3q8k6guhv1vmImuELpQgcdd+3aLGqmxY3R2XWY
	VUnFSCq4wJty92nZqKgoLIb1DKWwCL+lRv4PsToYZbwY2vp1YfvSmaOvps2qknpWYxlytW7lnj2U1
	pzWXc/Hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qgPQv-005uT2-1J;
	Wed, 13 Sep 2023 12:57:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qgPQo-005uRC-33
	for barebox@lists.infradead.org;
	Wed, 13 Sep 2023 12:57:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qgPQk-0006hR-MK; Wed, 13 Sep 2023 14:57:18 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qgPQk-0064XE-34; Wed, 13 Sep 2023 14:57:18 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qgPQk-008zjH-05;
	Wed, 13 Sep 2023 14:57:18 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 13 Sep 2023 14:57:15 +0200
Message-Id: <20230913125715.2142524-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230913125715.2142524-1-a.fatoum@pengutronix.de>
References: <20230913125715.2142524-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230913_055723_111322_574C7078 
X-CRM114-Status: GOOD (  10.50  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] kbuild: support generating stripped ELF files for PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For testing remoteproc and ELF loading mechanisms, it can be useful
to have the consumed ELF files result from the barebox build itself.

The *.pblb intermediate artifacts can be used for this purpose, but they
are at least 64K larger than need be, because of generous alignment in
addition to debug and symbol information.

Let's add a separate %.elf target, that behaves like %.pblb with the
difference that the result is stripped and alignment of sections on-disk
is disabled.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Makefile        |  4 ++--
 images/Makefile | 10 +++++++---
 2 files changed, 9 insertions(+), 5 deletions(-)

diff --git a/Makefile b/Makefile
index f86d76076fb7..0e579eb804f2 100644
--- a/Makefile
+++ b/Makefile
@@ -470,6 +470,7 @@ LDFLAGS_common += $(call ld-option,--no-warn-rwx-segments)
 
 LDFLAGS_barebox += $(LDFLAGS_common)
 LDFLAGS_pbl += $(LDFLAGS_common)
+LDFLAGS_elf += $(LDFLAGS_common) --nmagic -s
 
 export ARCH SRCARCH CONFIG_SHELL BASH HOSTCC KBUILD_HOSTCFLAGS CROSS_COMPILE LD CC
 export CPP AR NM STRIP OBJCOPY OBJDUMP MAKE AWK GENKSYMS PERL PYTHON3 UTS_MACHINE
@@ -483,8 +484,7 @@ export KBUILD_CFLAGS CFLAGS_KERNEL CFLAGS_MODULE
 export KBUILD_AFLAGS AFLAGS_KERNEL AFLAGS_MODULE
 export KBUILD_AFLAGS_MODULE KBUILD_CFLAGS_MODULE
 export KBUILD_AFLAGS_KERNEL KBUILD_CFLAGS_KERNEL
-export LDFLAGS_barebox
-export LDFLAGS_pbl
+export LDFLAGS_barebox LDFLAGS_pbl LDFLAGS_elf
 
 export CFLAGS_UBSAN
 export CFLAGS_KASAN CFLAGS_KASAN_NOSANITIZE
diff --git a/images/Makefile b/images/Makefile
index c1cb56f5b189..9739a15c06ba 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -57,9 +57,9 @@ $(pbl-lds): $(obj)/../arch/$(SRCARCH)/lib/pbl.lds.S FORCE
 	$(call if_changed_dep,cpp_lds_S)
 
 quiet_cmd_elf__ ?= LD      $@
-      cmd_elf__ ?= $(LD) $(LDFLAGS_pbl) --gc-sections		\
+      cmd_elf__ ?= $(LD) $(LDFLAGS_$(patsubst .%,%,$(suffix $(@F)))) 	\
 		-e $(2) -Map $@.map $(LDFLAGS_$(@F)) -o $@		\
-		--defsym=__pbl_board_entry=$(2)  			\
+		--gc-sections --defsym=__pbl_board_entry=$(2)  		\
 		-T $(pbl-lds)						\
 		--whole-archive $(BAREBOX_PBL_OBJS) $(obj)/piggy.o	\
 		$(obj)/sha_sum.o
@@ -70,6 +70,10 @@ $(obj)/%.pbl: $(pbl-lds) $(BAREBOX_PBL_OBJS) $(obj)/piggy.o $(obj)/sha_sum.o FOR
 	$(call if_changed,elf__,$(*F))
 	$(call cmd,prelink__)
 
+$(obj)/%.elf: $(pbl-lds) $(BAREBOX_PBL_OBJS) $(obj)/piggy.o $(obj)/sha_sum.o FORCE
+	$(call if_changed,elf__,$(*F))
+	$(call cmd,prelink__)
+
 $(obj)/%.pblb: $(obj)/%.pbl FORCE
 	$(call if_changed,objcopy_bin,$(*F))
 	$(Q)$(OBJCOPY) -O binary --only-section=.missing_fw $< $@.missing-firmware
@@ -218,7 +222,7 @@ $(flash-link): $(link-dest) FORCE
 $(flash-list): $(image-y-path)
 	@for i in $^; do if [ -s $$i ]; then echo $$i; fi; done > $@
 
-clean-files := *.pbl *.pblb *.map start_*.imximg *.img barebox.z start_*.kwbimg \
+clean-files := *.pbl *.pblb *.elf *.map start_*.imximg *.img barebox.z start_*.kwbimg \
 	start_*.kwbuartimg *.socfpgaimg *.mlo *.t20img *.t20img.cfg *.t30img \
 	*.t30img.cfg *.t124img *.t124img.cfg *.mlospi *.mlo *.mxsbs *.mxssd *.rkimg \
 	start_*.simximg start_*.usimximg *.zynqimg *.image *.swapped *.missing-firmware
-- 
2.39.2



