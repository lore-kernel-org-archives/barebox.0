Delivery-date: Tue, 21 Oct 2025 08:48:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vB6An-00AADQ-19
	for lore@lore.pengutronix.de;
	Tue, 21 Oct 2025 08:48:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vB6Am-0008Ds-Oe
	for lore@pengutronix.de; Tue, 21 Oct 2025 08:48:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=RFLjjmqWionvFGjlgi+E3wFeo53NcHebcAH6fQc/toI=; b=m+10F43ObvJRvPt25llr2yZffP
	rzJVbJ1tzCDe6EEputLZVYD2C909blHYDWME2rant9+vjMh0LV8LbTrrayTdYZ3ksToOnzz4FxpCg
	OCOIQQ2PKeIq1X0QjTyqg/mxRON82I4LxC3WFq/QC0fqb2bSZHTAoDVHiRV75KJv8DMup6JtXtDEY
	j+5/VjKbLWF4dmsiBGUMG2h1Ft+thFOHxA9JyHGGiPKNLcQsEpCkpfOjEGZF7uWqj39QCXn+AwgVI
	+nHqqkUcbZQqoNwfQQG7qpB9j8kuOTOIwvJaexJHeAbT6m4mFM5j1RE+gS0nwZnqAexF6RcuK+EpF
	4JgtKG7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vB6A6-0000000FxA2-1u2a;
	Tue, 21 Oct 2025 06:48:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vB6A3-0000000Fx9g-3FI6
	for barebox@lists.infradead.org;
	Tue, 21 Oct 2025 06:48:01 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vB6A1-00086i-Kx; Tue, 21 Oct 2025 08:47:57 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Tue, 21 Oct 2025 08:47:55 +0200
Message-ID: <20251021064756.775098-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251020_234759_811598_7D6F37F4 
X-CRM114-Status: UNSURE (   6.43  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] sandbox: cut down on if clauses using SANDBOX_LIBS-y
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This makes the Makefile a bit more readable.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/sandbox/Makefile | 21 ++++++++-------------
 1 file changed, 8 insertions(+), 13 deletions(-)

diff --git a/arch/sandbox/Makefile b/arch/sandbox/Makefile
index 55b8ca1780df..0318c8dd1452 100644
--- a/arch/sandbox/Makefile
+++ b/arch/sandbox/Makefile
@@ -51,33 +51,26 @@ PHONY += maketools
 
 export SANDBOX_LIBS BAREBOX_LDFLAGS
 
-ifeq ($(CONFIG_SDL),y)
-SANDBOX_LIBS += $(shell $(CROSS_PKG_CONFIG) sdl2 --libs)
-endif
-
-ifeq ($(CONFIG_GPIO_LIBFTDI1),y)
-SANDBOX_LIBS += $(shell $(CROSS_PKG_CONFIG) libftdi1 --libs)
-endif
+SANDBOX_LIBS-$(CONFIG_SDL) += $(shell $(CROSS_PKG_CONFIG) sdl2 --libs)
+SANDBOX_LIBS-$(CONFIG_GPIO_LIBFTDI1) += $(shell $(CROSS_PKG_CONFIG) libftdi1 --libs)
 
 ifeq ($(CONFIG_ASAN),y)
 KBUILD_CPPFLAGS += -fsanitize=address
-SANDBOX_LIBS += -fsanitize=address
+SANDBOX_LIBS-y += -fsanitize=address
 ifeq ($(CONFIG_CC_IS_CLANG),y)
 KBUILD_CPPFLAGS += -fno-sanitize-address-globals-dead-stripping
-SANDBOX_LIBS += -fno-sanitize-address-globals-dead-stripping
+SANDBOX_LIBS-y += -fno-sanitize-address-globals-dead-stripping
 endif
 endif
 
-ifeq ($(CONFIG_UBSAN),y)
-SANDBOX_LIBS += -fsanitize=undefined
-endif
+SANDBOX_LIBS-$(CONFIG_UBSAN) += -fsanitize=undefined
 
 ifeq ($(CONFIG_FUZZ_EXTERNAL),y)
 LIBARCH-y = $(UNAME_M)
 LIBARCH-$(CONFIG_SANDBOX_LINUX_I386) = i386
 
 KBUILD_CPPFLAGS += -fsanitize=fuzzer-no-link
-SANDBOX_LIBS += -Wl,-Bstatic -L"$(CONFIG_CLANG_RUNTIME_DIR)" \
+SANDBOX_LIBS-y += -Wl,-Bstatic -L"$(CONFIG_CLANG_RUNTIME_DIR)" \
 		-lclang_rt.fuzzer_no_main-$(LIBARCH-y) -Wl,-Bdynamic
 endif
 
@@ -95,6 +88,8 @@ KBUILD_AFLAGS += -m32
 BAREBOX_LDFLAGS += -m32
 endif
 
+SANDBOX_LIBS += $(SANDBOX_LIBS-y)
+
 common-y += $(BOARD) arch/sandbox/os/ arch/sandbox/lib/
 
 SANDBOX_PROPER2PBL_GLUE_SYMS := \
-- 
2.47.3



