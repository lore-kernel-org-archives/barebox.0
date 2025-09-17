Delivery-date: Wed, 17 Sep 2025 11:59:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyowj-0041xb-2I
	for lore@lore.pengutronix.de;
	Wed, 17 Sep 2025 11:59:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyowj-00040Z-4A
	for lore@pengutronix.de; Wed, 17 Sep 2025 11:59:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=WGtQSyI/w6QIpacPaBxNIAqb6ywoxmy4WfADAEKY39U=; b=wJgjNEVGaL0NH4+K5zJ5IeASYl
	6Zv+9ZmXSft/tEwBNNaxIC5n3eIjc4SfZChAoNW6WuuT3F2eLhrQl0dxc1ChyjXgmFTjOgzgwjN62
	8LoOBeZ7/VJo1OkY8iSPPpjMqcz643XYOkk4Z7Nsu4mOigo84OFkPFUJzc6rmLMS7bYmUON2eM0YW
	PXpgyENR0CUGx+mqAdBR9iSZ4lKpFEIEAtvfLowxHplReQadLCHs2OO1+K3XCDUVL7oRTa0pwdPrh
	bnBYO65/xnDlXdyZn1jB11wwHpSj7WFdxNMEOdtyFprp5qZceDP+p4/buvyr8pSIyVOKK87ciAn5U
	PI4tEptQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyovy-0000000AsPj-2NEj;
	Wed, 17 Sep 2025 09:58:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyovv-0000000AsMv-3bKI
	for barebox@lists.infradead.org;
	Wed, 17 Sep 2025 09:58:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uyovs-0003m6-1R; Wed, 17 Sep 2025 11:58:36 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uyovr-001jxf-2m;
	Wed, 17 Sep 2025 11:58:35 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uyovr-0000000BRVi-389d;
	Wed, 17 Sep 2025 11:58:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 17 Sep 2025 11:58:34 +0200
Message-ID: <20250917095834.2727068-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250917_025839_894971_3412C3FE 
X-CRM114-Status: GOOD (  13.38  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] firmware: handle firmware files being links correctly
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Sometimes firmware files can be links. When rebuilding barebox correctly
rebuilds the firmware when file the link points to is updated, but the
firmware is not rebuilt when the link itself is changed to link to
another file.

Fix this by including the sha256sum directly in the generated assembly
file by using .byte rather than generating a file containing the
binary sha256sum and include that using .incbin. This way the generated
assembly file for sure changes when the firmware file changes and it's
rebuilt when necessary (and not when it's not).

Reproducer:

export ARCH=arm
make imx_v8_defconfig
echo foo > firmware/foo
echo bar > firmware/bar
ln -sf foo firmware/imx8mm-bl31.bin
make

The following should rebuild the barebox image including the updated
firmware, but doesn't:

ln -sf bar firmware/imx8mm-bl31.bin
make

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 firmware/Makefile | 16 +++++-----------
 1 file changed, 5 insertions(+), 11 deletions(-)

diff --git a/firmware/Makefile b/firmware/Makefile
index 0c9da2996f..df9f277475 100644
--- a/firmware/Makefile
+++ b/firmware/Makefile
@@ -57,6 +57,8 @@ FWSTR     = $(subst /,_,$(subst .,_,$(subst -,_,$(FWNAME))))
 FWNAME_EXISTS = $(if $(wildcard $(FIRMWARE_DIR)/$(FWNAME)),1,0)
 
 filechk_fwbin = { \
+	SHA=$$(sha256sum $(FIRMWARE_DIR)/$(FWNAME) | sed 's/ .*$$//;s/../0x&, /g;s/, $$//') ;\
+	\
 	echo "/* Generated by $(src)/Makefile */"		;\
 	echo "\#include <asm-generic/pointer.h>"		;\
 	echo ".section .note.GNU-stack,\"\",%progbits"		;\
@@ -80,7 +82,7 @@ filechk_fwbin = { \
 	echo "    .p2align ASM_LGPTR"				;\
 	echo ".global _fw_$(FWSTR)_sha_start"			;\
 	echo "_fw_$(FWSTR)_sha_start:"				;\
-	echo "    .incbin \"$(fwobjdir)/$(FWNAME).sha.bin\""	;\
+	echo "    .byte $${SHA}"				;\
 	echo ".global _fw_$(FWSTR)_sha_end"			;\
 	echo "_fw_$(FWSTR)_sha_end:"				;\
 }
@@ -89,20 +91,12 @@ filechk_fwbin_ext = { \
 	$(filechk_fwbin)					;\
 }
 
-$(obj)/%.gen.S: $(obj)/%.sha.bin FORCE
+$(obj)/%.gen.S: FORCE
 	$(call filechk,fwbin,.rodata.$(FWSTR),)
 
-$(obj)/%.extgen.S: $(obj)/%.sha.bin FORCE
+$(obj)/%.extgen.S: FORCE
 	$(call filechk,fwbin_ext,.pblext.$(FWSTR),a)
 
-$(obj)/%.sha.bin: $(obj)/%.sum FORCE
-	$(call if_changed,sha256bin)
-
-$(obj)/%.sum: FORCE
-	$(if $(wildcard $(FIRMWARE_DIR)/$*), $(call if_changed,sha256sum,$(FIRMWARE_DIR)/$*), @touch $@)
-
-clean-files += *.sha.bin *.sum
-
 # This dependency is used if missing firmware should fail the build immediately
 fwdep-required-y = $(FIRMWARE_DIR)/%
 # This dependency expands to nothing if the file doesn't exist. This allows
-- 
2.47.3



