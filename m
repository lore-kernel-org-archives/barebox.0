Delivery-date: Fri, 13 Mar 2026 14:27:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12YK-000DA8-0H
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 14:27:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12YI-0005fl-5l
	for lore@pengutronix.de; Fri, 13 Mar 2026 14:27:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DzWvfSf2/8jKztjqjqxD26h6xAP5NSVodKUYSAa3zXk=; b=QwlqB3REVBR3bM
	6r/Ey7WixNrLCqXKMZnjf/2UYVbGV4DRJNc3O0f3mWJT3JCn4DOlFFE1rlmQLelB63GQCC5rbE01O
	aF4wd2OuhRTYcs5PsQdOsj4XcMI+VrrIQy61SJ3pRn3MwZ6hftMoFPrDyo4XS7j5NpLPi1Y7pf3KA
	4sROpkoICAy55m6qmqbP2r7mGQskrdX6cCBnEBsH94o9TxlDyqcaWTo0uOoHOEO0l9jXqbX+ipxZ6
	l3xY+pDUtyZlr0H3ALm1xP2FGpHInc68Gdia9Xnohp3BBlrzAgsG/bPHHybqInUyn8LrXer3DtR5n
	1fzomxqiTvqy90k58YHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12XS-00000000ECi-2Jiz;
	Fri, 13 Mar 2026 13:26:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12XO-00000000E8X-0EjF
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 13:26:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XK-00058k-Ss; Fri, 13 Mar 2026 14:26:42 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XK-0005Ri-27;
	Fri, 13 Mar 2026 14:26:42 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XK-00000009ULB-2LWP;
	Fri, 13 Mar 2026 14:26:42 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 13 Mar 2026 14:24:51 +0100
Message-ID: <20260313132631.2257573-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
References: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_062646_099849_62621AFE 
X-CRM114-Status: GOOD (  12.53  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 07/58] firmware: handle firmware files being links correctly
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Sascha Hauer <s.hauer@pengutronix.de>

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

(cherry picked from commit 3065a332e49881a892e4a6230069bc3923952b18)

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Link: https://lore.barebox.org/20250917095834.2727068-1-s.hauer@pengutronix.de
Link: https://lore.barebox.org/20250917130505.2972322-1-s.hauer@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 firmware/Makefile | 23 ++++++++++++-----------
 1 file changed, 12 insertions(+), 11 deletions(-)

diff --git a/firmware/Makefile b/firmware/Makefile
index 0c9da2996ffc..1fe770a2d900 100644
--- a/firmware/Makefile
+++ b/firmware/Makefile
@@ -57,6 +57,10 @@ FWSTR     = $(subst /,_,$(subst .,_,$(subst -,_,$(FWNAME))))
 FWNAME_EXISTS = $(if $(wildcard $(FIRMWARE_DIR)/$(FWNAME)),1,0)
 
 filechk_fwbin = { \
+	SHA=$$(sha256sum $(FIRMWARE_DIR)/$(FWNAME) |		\
+		sed 's/ .*$$//;s/../0x&, /g;s/, $$//')		\
+		2>/dev/null					;\
+	\
 	echo "/* Generated by $(src)/Makefile */"		;\
 	echo "\#include <asm-generic/pointer.h>"		;\
 	echo ".section .note.GNU-stack,\"\",%progbits"		;\
@@ -80,29 +84,26 @@ filechk_fwbin = { \
 	echo "    .p2align ASM_LGPTR"				;\
 	echo ".global _fw_$(FWSTR)_sha_start"			;\
 	echo "_fw_$(FWSTR)_sha_start:"				;\
-	echo "    .incbin \"$(fwobjdir)/$(FWNAME).sha.bin\""	;\
+	echo "    .byte $${SHA}"				;\
 	echo ".global _fw_$(FWSTR)_sha_end"			;\
 	echo "_fw_$(FWSTR)_sha_end:"				;\
+	echo "\#if $(FWNAME_EXISTS)"				;\
+	echo ".if _fw_$(FWSTR)_sha_start + 32 - _fw_$(FWSTR)_sha_end";\
+	echo ".error \"sha256sum invalid\""			;\
+	echo ".endif"						;\
+	echo "\#endif"						;\
 }
 
 filechk_fwbin_ext = { \
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



