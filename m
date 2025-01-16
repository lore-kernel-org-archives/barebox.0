Delivery-date: Thu, 16 Jan 2025 15:11:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tYQaR-000cau-0C
	for lore@lore.pengutronix.de;
	Thu, 16 Jan 2025 15:11:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tYQaQ-0002ns-R5
	for lore@pengutronix.de; Thu, 16 Jan 2025 15:11:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=vBJEOEeRrzpjjkVsuQt6doe6E6SPdp20HiF87k+6K9s=; b=bRgixRWC0tGDXQUZjIBjjw8e0C
	41gKj1V4HJua6HZo4C4g8GZmMy/KCw8gpKEdmyrY79mkzMDKgF4K1gt/m4rqIuBln6VhiOPm8vrnS
	7Rb3qdfIMNWL5J1xGqAL5R/yKzBIgDfoeKGcU/2Wk0SwU7Vqau6tp33vLMMeTGMdwr/stGl8mM3FP
	DUF+jiZ8P0BQXoAY9lRG3jYEGs/s+R40QjfcFlqsrh6HFH0Cg8lf+x6nFTSJE/4M/r725GBtjIh7v
	rI3zzne6budXNVOmbOpIrAiHKkEAy5+L3wLxCZ0PStmGcha+gNiJSSu5S9nLmFfwu1XUYXKhKW4SR
	1d7DyJrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tYQZn-0000000F6lG-45bk;
	Thu, 16 Jan 2025 14:10:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tYQYp-0000000F6TT-1Jm6
	for barebox@lists.infradead.org;
	Thu, 16 Jan 2025 14:09:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tYQYn-0002Mn-C0; Thu, 16 Jan 2025 15:09:25 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tYQYn-000Ga6-0a;
	Thu, 16 Jan 2025 15:09:25 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tYQYn-001Flp-2e;
	Thu, 16 Jan 2025 15:09:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 16 Jan 2025 15:09:23 +0100
Message-Id: <20250116140924.298889-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250116_060927_356103_A08968CE 
X-CRM114-Status: UNSURE (   9.33  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] kbuild: allow overriding mkimage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

mkimage is not built as part of barebox and the barebox build for the
BeaglePlay assumes it's in PATH. To make integration in build systems
easier, let's allow specifying the location of the mkimage binary via
the MKIMAGE variable.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Makefile        | 3 ++-
 images/Makefile | 2 +-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/Makefile b/Makefile
index 3de35d3a34cc..3487aba201b9 100644
--- a/Makefile
+++ b/Makefile
@@ -438,6 +438,7 @@ KALLSYMS	= scripts/kallsyms
 PERL		= perl
 PYTHON3		= python3
 CHECK		= sparse
+MKIMAGE		= mkimage
 BASH		= bash
 
 CHECKFLAGS     := -D__linux__ -Dlinux -D__STDC__ -Dunix -D__unix__ -Wbitwise $(CF)
@@ -500,7 +501,7 @@ LDFLAGS_elf += $(LDFLAGS_common) --nmagic -s
 export ARCH SRCARCH CONFIG_SHELL BASH HOSTCC KBUILD_HOSTCFLAGS CROSS_COMPILE LD CC
 export CPP AR NM STRIP OBJCOPY OBJDUMP MAKE AWK GENKSYMS PERL PYTHON3 UTS_MACHINE
 export LEX YACC
-export HOSTCXX CHECK CHECKFLAGS
+export HOSTCXX CHECK CHECKFLAGS MKIMAGE
 export KBUILD_HOSTCXXFLAGS KBUILD_HOSTLDFLAGS KBUILD_HOSTLDLIBS LDFLAGS_MODULE
 export KBUILD_USERCFLAGS KBUILD_USERLDFLAGS
 
diff --git a/images/Makefile b/images/Makefile
index 4e5cb693e40a..6daaee8b7c7e 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -117,7 +117,7 @@ $(obj)/%.s: $(obj)/% FORCE
 quiet_cmd_itb = FIT.ITS $@
 cmd_itb = $(CPP) $(dtc_cpp_flags) -x assembler-with-cpp -o $(dtc-tmp) \
 	-D'$(subst -,_,$(*F))_dts=1' $(foreach f,$< $(2),-include '$(f)') /dev/null ; \
-	mkimage -f $(dtc-tmp) $@ -E \
+	$(MKIMAGE) -f $(dtc-tmp) $@ -E \
 	cat $(depfile).pre $(depfile).dtc > $(depfile)
 
 $(obj)/%.itb: $(obj)/%.its FORCE
-- 
2.39.5



