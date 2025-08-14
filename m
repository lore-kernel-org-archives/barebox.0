Delivery-date: Thu, 14 Aug 2025 22:23:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umeUF-000cbf-2N
	for lore@lore.pengutronix.de;
	Thu, 14 Aug 2025 22:23:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umeUE-0000Qn-GL
	for lore@pengutronix.de; Thu, 14 Aug 2025 22:23:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=rk192QmWY+BIXxkorVgZqFN+Uzzgrj2qiXoUy7IXiKU=; b=vXM/HMYVSFIHC7eWzPuKSGAx+F
	o0wE4bO8BEOyVSdZMSmCXNINXHY6rbv9/LQBBy3LAWlhdztZBVg6rEHFFlQdDOe88KEw8A39BhsWW
	mgxkI3dQ8324D1NQQXeKG/XyB40u7COKjdkElsCo4z3QdRKDmX53jfXcM5UBN9Hc83yeSghOUSPzv
	ZvCZ87XqnuIZjY+PKV8bwhbe8WOY7yrcXKO9eDeL3JpZTMwDLFFBUwkvhSiOnTEw5EPajcKeb+QYg
	lcZ+s0dDgCXZrkkJl2nFwUuWuWNlehQKpx+OMtlcYfzfQBj+CXHRUg3t9IhwkdcAcAefP5MpLxiaW
	f+N7FMng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umeTX-00000000Upd-3bla;
	Thu, 14 Aug 2025 20:23:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umeTT-00000000Uoh-09tR
	for barebox@lists.infradead.org;
	Thu, 14 Aug 2025 20:23:01 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1umeTP-0000GP-DN; Thu, 14 Aug 2025 22:22:55 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Thu, 14 Aug 2025 22:22:53 +0200
Message-Id: <20250814202254.344010-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250814_132259_071113_0C987D80 
X-CRM114-Status: GOOD (  10.15  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 1/2] kbuild: images/Makefile: fix broken if_changed usage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

if_changed also triggers when the command line changes by comparing the
command executed against what was written last time.

This necessarily means that there may only be a single if_changed called
per target, a rule which we violated.

This led to breakage on RISC-V, because every build triggered a relink
of the PBLs, but only every second build executed cmd_prelink__.

Switch over to if_changed_rule to fix this. This also means we need to
move the comments out of the define, so they aren't printed.

Fixes: 912696b571bb ("images: don't compute size if input file didn't change")
Fixes: 4c31478919f5 ("images: don't prelink if input file didn't change")
Fixes: c2e320f6b243 ("images: don't check for missing FW if file didn't change")
Fixes: 8ddc2d799b4a ("images: don't compare filesizes if file didn't change")
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 images/Makefile | 38 +++++++++++++++++++++++---------------
 1 file changed, 23 insertions(+), 15 deletions(-)

diff --git a/images/Makefile b/images/Makefile
index e20d11e1501a..03c7fdc0240b 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -69,19 +69,20 @@ quiet_cmd_elf__ ?= LD      $@
 
 PBL_CPPFLAGS	+= -fdata-sections -ffunction-sections
 
+define rule_elf
+	$(call cmd,elf__,$(*F))
+	$(call cmd,prelink__)
+endef
+
 $(obj)/%.pbl: $(pbl-lds) $(BAREBOX_PBL_OBJS) $(BAREBOX_PIGGY_OBJS) FORCE
-	$(call if_changed,elf__,$(*F))
-	$(call if_changed,prelink__)
+	$(call if_changed_rule,elf)
 
 $(obj)/%.elf: $(pbl-lds) $(BAREBOX_PBL_OBJS) $(BAREBOX_PIGGY_OBJS) FORCE
-	$(call if_changed,elf__,$(*F))
-	$(call if_changed,prelink__)
+	$(call if_changed_rule,elf)
 
-$(obj)/%.pblb: $(obj)/%.pbl FORCE
-	$(call if_changed,objcopy_bin,$(*F))
-	$(call if_changed,check_missing_fw,$@,$<)
-	$(call if_changed,check_file_size,$@,$(CONFIG_BAREBOX_MAX_IMAGE_SIZE))
 
+# Convert the ELF into a linear binary, check for missing firmware
+# and verify file sizes:
 #
 # For each start symbol create three variables containing the
 # relevant sizes in the image:
@@ -91,6 +92,13 @@ $(obj)/%.pblb: $(obj)/%.pbl FORCE
 # PBL_IMAGE_SIZE_$(symbol)  - contains the full image size including the
 #                             compressed payload
 #
+# if MAX_PBL_xxx_SIZE_$(symbol) is defined it contains the maximum size the
+# code/memory/image for this PBL may get. Check these values.
+define rule_pblb
+	$(call cmd,objcopy_bin,$(*F))
+	$(call cmd,check_missing_fw,$@,$<)
+	$(call cmd,check_file_size,$@,$(CONFIG_BAREBOX_MAX_IMAGE_SIZE))
+
 	$(eval PBL_CODE_SIZE_$* = \
 		$(shell $(srctree)/scripts/extract_symbol_offset pbl_code_size $^))
 	$(eval PBL_MEMORY_SIZE_$*= \
@@ -98,21 +106,21 @@ $(obj)/%.pblb: $(obj)/%.pbl FORCE
 	$(eval PBL_IMAGE_SIZE_$*= \
 		$(shell $(srctree)/scripts/extract_symbol_offset pbl_image_size $^))
 
-#
-# if MAX_PBL_xxx_SIZE_$(symbol) is defined it contains the maximum size the
-# code/memory/image for this PBL may get. Check these values.
-#
 	$(if $(MAX_PBL_CODE_SIZE_$*), \
-		$(call if_changed,check_size,$(PBL_CODE_SIZE_$*),$(MAX_PBL_CODE_SIZE_$*)) \
+		$(call cmd,check_size,$(PBL_CODE_SIZE_$*),$(MAX_PBL_CODE_SIZE_$*)) \
 	)
 
 	$(if $(MAX_PBL_MEMORY_SIZE_$*), \
-		$(call if_changed,check_size,$(PBL_MEMORY_SIZE_$*),$(MAX_PBL_MEMORY_SIZE_$*)) \
+		$(call cmd,check_size,$(PBL_MEMORY_SIZE_$*),$(MAX_PBL_MEMORY_SIZE_$*)) \
 	)
 
 	$(if $(MAX_PBL_IMAGE_SIZE_$*), \
-		$(call if_changed,check_size,$(PBL_IMAGE_SIZE_$*),$(MAX_PBL_IMAGE_SIZE_$*)) \
+		$(call cmd,check_size,$(PBL_IMAGE_SIZE_$*),$(MAX_PBL_IMAGE_SIZE_$*)) \
 	)
+endef
+
+$(obj)/%.pblb: $(obj)/%.pbl FORCE
+	$(call if_changed_rule,pblb)
 
 $(obj)/%.s: $(obj)/% FORCE
 	$(call if_changed,disasm)
-- 
2.39.5



