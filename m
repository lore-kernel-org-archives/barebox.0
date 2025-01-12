Delivery-date: Sun, 12 Jan 2025 09:35:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tWtR3-0007du-1I
	for lore@lore.pengutronix.de;
	Sun, 12 Jan 2025 09:35:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tWtR2-0006v1-LB
	for lore@pengutronix.de; Sun, 12 Jan 2025 09:35:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6KsVyysq2gIznq5bBrcFsI7zgbbRWumSRxgEpdv6zNw=; b=Izm/HE1UUq6XSV148gDPbcHS9/
	UhoIhNZp1JtGaKLa4IyXOm5lGMLHjYRwkeBAMKxWi0b+Z93ag9y68ld3tkIH17QsJKQulKGF2s4VX
	Po8HjBW4xEctgw/hygKsX2VtQ2MgjOHIWzePb9uh1Pqz7n5YO2KZ1dSA31JJIfOZChoUlF30E/5bp
	eeoSnerhB/Ki6GYYFpcfG7WBqvYqHYy1JK/E6k0gacuKeNgVQLotE0P64itp4AnNH1MGcPz3FJ51w
	OlofNl9WoMBUx/G8qZlFWdTwgoYw/ffG+YBv4E6kToQu1IkZ+YN0PTgp+FrYOItt2hzvo1hCzNaFQ
	LYf/0jjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tWtQe-00000002Kv6-3mF8;
	Sun, 12 Jan 2025 08:34:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tWtQa-00000002KtS-3Eat
	for barebox@lists.infradead.org;
	Sun, 12 Jan 2025 08:34:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tWtQZ-0006gJ-Hv; Sun, 12 Jan 2025 09:34:35 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tWtQX-0003Nt-0g;
	Sun, 12 Jan 2025 09:34:33 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tWtQY-001LPJ-18;
	Sun, 12 Jan 2025 09:34:33 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Felix Singer <felixsinger@posteo.net>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sun, 12 Jan 2025 09:34:21 +0100
Message-Id: <20250112083432.320215-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250112083432.320215-1-a.fatoum@pengutronix.de>
References: <20250112083432.320215-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250112_003436_858841_F50C0E9E 
X-CRM114-Status: GOOD (  12.69  )
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
Subject: [PATCH 02/13] treewide: collect the name of all board device trees
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Linux collects device trees by adding them to dtb-y, but in barebox we
just add them normally to obj- or pbl- (or lwl-) and have rules matching
the .dtb.o extension take care of invoking the device tree compiler.

In preparation for assembling a list of all enabled device trees, let's
introduce dtb- and dtb-y variables like in Linux, which will hold the
list of enabled device trees.

As we are not interested in the device trees added by unit tests, we
will ignore any device trees outside of pbl-y and lwl-y and change
existing board device trees for non-PBL platforms to use lwl- instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/kvx/dts/Makefile      | 4 ++--
 arch/openrisc/dts/Makefile | 2 +-
 arch/sandbox/dts/Makefile  | 2 +-
 scripts/Makefile.lib       | 3 +++
 4 files changed, 7 insertions(+), 4 deletions(-)

diff --git a/arch/kvx/dts/Makefile b/arch/kvx/dts/Makefile
index 41613033ce81..597b905624de 100644
--- a/arch/kvx/dts/Makefile
+++ b/arch/kvx/dts/Makefile
@@ -6,9 +6,9 @@ obj- += dummy.o
 
 BUILTIN_DTB := $(patsubst "%",%,$(CONFIG_BUILTIN_DTB_NAME))
 ifneq ($(BUILTIN_DTB),)
-obj-$(CONFIG_BUILTIN_DTB) += $(BUILTIN_DTB).dtb.o
+lwl-$(CONFIG_BUILTIN_DTB) += $(BUILTIN_DTB).dtb.o
 endif
 
-obj-$(CONFIG_BOARD_K200) += k200.dtb.o
+lwl-$(CONFIG_BOARD_K200) += k200.dtb.o
 
 clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.z
diff --git a/arch/openrisc/dts/Makefile b/arch/openrisc/dts/Makefile
index 6778abe1b4fd..01cb2195fda3 100644
--- a/arch/openrisc/dts/Makefile
+++ b/arch/openrisc/dts/Makefile
@@ -1,6 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
 BUILTIN_DTB := $(patsubst "%",%,$(CONFIG_BUILTIN_DTB_NAME))
-obj-$(CONFIG_BUILTIN_DTB) += $(BUILTIN_DTB).dtb.o
+lwl-$(CONFIG_BUILTIN_DTB) += $(BUILTIN_DTB).dtb.o
 
 clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.z
diff --git a/arch/sandbox/dts/Makefile b/arch/sandbox/dts/Makefile
index 79625b103eba..5eb6aeeb14cb 100644
--- a/arch/sandbox/dts/Makefile
+++ b/arch/sandbox/dts/Makefile
@@ -1,6 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
-obj-$(CONFIG_OFTREE) += \
+lwl-$(CONFIG_OFTREE) += \
 	sandbox.dtb.o
 
 # just to build a built-in.o. Otherwise compilation fails when no devicetree is
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index c32adf07cc51..0dfb496777dd 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -35,6 +35,9 @@ else
 obj-y		+= $(lwl-y)
 endif
 
+dtb- 		+= $(patsubst %.dtb.o,%.dtb,$(filter %.dtb.o,$(pbl-)  $(lwl-)))
+dtb-y		+= $(patsubst %.dtb.o,%.dtb,$(filter %.dtb.o,$(pbl-y) $(lwl-y)))
+
 obj-y		+= $(obj-pbl-y)
 pbl-y		+= $(obj-pbl-y)
 
-- 
2.39.5



