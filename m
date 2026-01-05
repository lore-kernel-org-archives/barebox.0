Delivery-date: Mon, 05 Jan 2026 12:27:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcikF-001VA8-2S
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 12:27:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcikF-0005yJ-2N
	for lore@pengutronix.de; Mon, 05 Jan 2026 12:27:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UBvDgC4Sap2uQwYpWy2ChDtl99x1BOUKtwsP4StuG5w=; b=L7xkZcNxRdiSEjBjuIwX9V0AnZ
	eqtRog41V+CpyFOSY/8yRvPnAzYXUBTxEflbtZPNKqnbOwE4bxphDQEuTowm/UQRnHnPX602k4+0k
	ZNLpqiojXj6F+kF8/Y+kEPtxOBQRpCGpeqqEgpbKtRSuI8Vts0p13x3l05gZWY0uDUyXpGESkghsu
	txNtBmMc6rhSRgbZa6RN9WTfyqiFrw9w9y47fELyWgobD72tyDE+HrwTZ59/65K+P6+yrssxYO4UT
	kcrYj5Xt87iXyNFv5wCKILovbcHwVOy0Zy4SGg2Eu/n9ZAmpv1CkReCrcgoRBLh94nANuj0IoYYiC
	rucAklSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcijj-0000000BBFx-0VJS;
	Mon, 05 Jan 2026 11:26:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcijg-0000000BBE0-1YnE
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 11:26:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vcije-0005Yt-P9; Mon, 05 Jan 2026 12:26:54 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vcije-0099xg-1C;
	Mon, 05 Jan 2026 12:26:54 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vcije-00000007KWP-0yn7;
	Mon, 05 Jan 2026 12:26:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 05 Jan 2026 12:26:49 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260105-pbl-load-elf-v1-8-e97853f98232@pengutronix.de>
References: <20260105-pbl-load-elf-v1-0-e97853f98232@pengutronix.de>
In-Reply-To: <20260105-pbl-load-elf-v1-0-e97853f98232@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767612414; l=1862;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=FU+a9ToO9bcQwfLC/L+MNOiAXlN/ovzK1BnyJ6TFem4=;
 b=MpMki8EvESdnDzWMhy6FqOlqHJnW6oepUm0c9aIpXeZC/5Q7ILQgspcr6Ycg292qYcMYV/S68
 wNTWSOCakSmBHBu0Z2sMedBuFZ1mCXSNGmp5fR4wh878AmOoYgXOv3G
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_032656_412099_EB2BA642 
X-CRM114-Status: UNSURE (   9.59  )
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
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 08/19] Makefile: add barebox.elf build target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add a build target to create barebox.elf, which provides an ELF format
version of barebox that can be used for debugging or alternative boot
scenarios.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Co-Authored-By: Claude Sonnet 4.5 <noreply@anthropic.com>
---
 Makefile | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index 75e14383bcdcf987d091442adba9b053af28eae7..c1aa6935abe5c65156b812d4a0b21c6d488038ae 100644
--- a/Makefile
+++ b/Makefile
@@ -850,6 +850,9 @@ all: barebox-flash-images
 endif
 
 all: $(symlink-y)
+ifeq ($(CONFIG_PBL_IMAGE)-$(CONFIG_PBL_IMAGE_NO_PIGGY),y-)
+all: barebox.elf
+endif
 
 .SECONDEXPANSION:
 $(symlink-y): $$(or $$(SYMLINK_DEP_$$(@F)),$$(SYMLINK_TARGET_$$(@F))) FORCE
@@ -1091,6 +1094,17 @@ barebox.fit: images/barebox-$(CONFIG_ARCH_LINUX_NAME).fit
 barebox.srec: barebox
 	$(OBJCOPY) -O srec $< $@
 
+OBJCOPYFLAGS_barebox.elf = --strip-debug --strip-unneeded \
+			   --remove-section=.comment \
+			   --remove-section=.note \
+			   --remove-section=.note.gnu.build-id
+
+quiet_cmd_objcopy_elf = OBJCOPY $@
+      cmd_objcopy_elf = $(OBJCOPY) $(OBJCOPYFLAGS_barebox.elf) $< $@
+
+barebox.elf: barebox FORCE
+	$(call if_changed,objcopy_elf)
+
 quiet_cmd_barebox_proper__ = CC      $@
       cmd_barebox_proper__ = $(CC) -r -o $@ -Wl,--whole-archive $(BAREBOX_OBJS)
 
@@ -1388,7 +1402,7 @@ CLEAN_FILES +=	barebox System.map include/generated/barebox_default_env.h \
                 .tmp_version .tmp_barebox* barebox.bin barebox.map \
 		.tmp_kallsyms* barebox.ldr compile_commands.json \
 		.tmp_barebox.o barebox.o barebox-flash-image \
-		barebox.srec barebox.s5p barebox.ubl \
+		barebox.srec barebox.elf barebox.s5p barebox.ubl \
 		barebox.uimage \
 		barebox.efi barebox.canon-a1100.bin
 

-- 
2.47.3



