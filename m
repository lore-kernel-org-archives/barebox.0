Delivery-date: Tue, 06 Jan 2026 13:54:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd6ZX-001tVf-1L
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 13:54:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd6ZW-0001bt-Gy
	for lore@pengutronix.de; Tue, 06 Jan 2026 13:54:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=f69r8Um3UpIejCFbGYYRwzsBkbdC9Ow5lCW5j45vvQQ=; b=gEBil2IJxUEADPxoCSyk0YKbm0
	SytKgaX7edgJnZzGteW4EjlOAEVGnjQXcvwl1BTWLSHK0K1dlCMBPktQkRp+3QN+HAxQGjDk7o9h5
	6UGB0YEQfTjJXtr1mJUCbkyt3MaWjwep3PW0HxhcijMK5JbU+dJpcrEJ9CLUUuO050naJRrl3dFIs
	H60MPDstVu73EgXa6IyBs6HUa/koxQec52Z3+arPsrfPfIWVTjaEfwyA6RvWSZ/58P+V5IN653Fb/
	1jREl50Ay0uqdJWua4XWLa0h6cb5FZuHoobNX1i4ywuaVAExPp4zLuBZMJiHk8zZWw2h6pb0f5eSm
	pRv7lhQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd6Z8-0000000D1n7-2iaI;
	Tue, 06 Jan 2026 12:53:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd6Z4-0000000D1jM-3ft3
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 12:53:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd6Yf-000132-BZ; Tue, 06 Jan 2026 13:53:09 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd6Ye-009Lcm-37;
	Tue, 06 Jan 2026 13:53:08 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd6Ye-000000078QE-3Uy5;
	Tue, 06 Jan 2026 13:53:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 06 Jan 2026 13:53:12 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260106-pbl-load-elf-v2-9-487bc760f045@pengutronix.de>
References: <20260106-pbl-load-elf-v2-0-487bc760f045@pengutronix.de>
In-Reply-To: <20260106-pbl-load-elf-v2-0-487bc760f045@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767703988; l=1770;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=ybjXNYrgizlsEN7fhnoo5GjTN7wfKePCG6eU3zG6uN4=;
 b=vNiFY2KJOh5oEI6B59YX1ivOHLa+G6nW+RZmkfEhEwNAvix5kFZa5M37nMias6K1zWBGrtwxJ
 w4EAGdXr2RUAvlnKl1N62FfthoPdu+MaT8Mk0GjplaEKP0tZDUhadw/
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_045334_920988_D3923683 
X-CRM114-Status: GOOD (  10.19  )
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
Subject: [PATCH v2 09/21] Makefile: add barebox.elf build target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add a build target to create barebox.elf, which provides an ELF format
version of barebox that can be used for debugging or alternative boot
scenarios.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Co-Authored-By: Claude Sonnet 4.5 <noreply@anthropic.com>
---
 Makefile | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index 3b31cecc22c431a063b8d2d3c387da487b698e74..aa12b385c779512fe20d33792f4968fed2eec29a 100644
--- a/Makefile
+++ b/Makefile
@@ -853,6 +853,9 @@ all: barebox-flash-images
 endif
 
 all: $(symlink-y)
+ifeq ($(CONFIG_PBL_IMAGE)-$(CONFIG_PBL_IMAGE_NO_PIGGY),y-)
+all: barebox.elf
+endif
 
 .SECONDEXPANSION:
 $(symlink-y): $$(or $$(SYMLINK_DEP_$$(@F)),$$(SYMLINK_TARGET_$$(@F))) FORCE
@@ -1096,6 +1099,14 @@ barebox.fit: images/barebox-$(CONFIG_ARCH_LINUX_NAME).fit
 barebox.srec: barebox
 	$(OBJCOPY) -O srec $< $@
 
+OBJCOPYFLAGS_barebox.elf = --strip-debug --strip-unneeded \
+			   --remove-section=.comment \
+			   --remove-section=.note* \
+			   --remove-section=.gnu.hash
+
+barebox.elf: barebox FORCE
+	$(call if_changed,objcopy)
+
 quiet_cmd_barebox_proper__ = CC      $@
       cmd_barebox_proper__ = $(CC) -r -o $@ -Wl,--whole-archive $(BAREBOX_OBJS)
 
@@ -1378,7 +1389,7 @@ CLEAN_FILES +=	barebox System.map include/generated/barebox_default_env.h \
                 .tmp_version .tmp_barebox* barebox.bin barebox.map \
 		.tmp_kallsyms* compile_commands.json \
 		.tmp_barebox.o barebox.o barebox-flash-image \
-		barebox.srec barebox.efi
+		barebox.srec barebox.efi barebox.elf
 
 CLEAN_FILES +=	scripts/bareboxenv-target scripts/kernel-install-target \
 		scripts/bareboxcrc32-target scripts/bareboximd-target \

-- 
2.47.3



