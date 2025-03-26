Delivery-date: Wed, 26 Mar 2025 09:00:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txLgI-004LjR-26
	for lore@lore.pengutronix.de;
	Wed, 26 Mar 2025 09:00:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txLgH-0005jI-A2
	for lore@pengutronix.de; Wed, 26 Mar 2025 09:00:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eYvcXuvhuAL7FTO+DgHmRVUBHh+ettwnLonzsciU8k8=; b=rVDsU93fBSLmghKV8G33zMGaJ3
	VbDOLTn15H8/2u4Afa7p6+dJ2t4Qiw0tLvP4JmTP/ANNRERUL7LoulBFHU8rGbK/aYa622RQRWc9F
	Npj6ZVMXLMv6EKk4PaQzyEmThmfZ5iBdTRHBOu7Bu/7hvpl1Pwvf/8xk+deTEo1M+2TK8wsSmfcAV
	wnfzi58v7Q4vje+SdZSu6TpmN5YeCt8oWsB7DjK4dhQek+gMP0zKZqeMA2pgrFyF72IHXWxHCavJ+
	ms0LoYsNTHfNt2j1mky7Sp19f1U9MR0s4sYzO4jQrc6ew9uLI5yJHPtIU+0iO2lnP6UTxI3UQX60b
	/xG06+MQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txLfn-00000007qZn-1I0q;
	Wed, 26 Mar 2025 07:59:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txLfW-00000007qSe-227m
	for barebox@lists.infradead.org;
	Wed, 26 Mar 2025 07:59:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txLfV-0005KR-1n; Wed, 26 Mar 2025 08:59:21 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txLfU-001iAj-1Q;
	Wed, 26 Mar 2025 08:59:20 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txLfU-00EZsX-2T;
	Wed, 26 Mar 2025 08:59:20 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>,
	jre@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 26 Mar 2025 08:59:14 +0100
Message-Id: <20250326075919.3448789-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250326075919.3448789-1-a.fatoum@pengutronix.de>
References: <20250326075919.3448789-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250326_005922_535708_308EAE89 
X-CRM114-Status: GOOD (  11.24  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/6] sandbox: use CROSS_PKG_CONFIG when compiling sandbox arch code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

sandbox only means that we run under Linux as host operating system
(as opposed to before). It can still be cross compiled and indeed that's
what barebox-tools in OE-core does to build the target tools.

OE-core doesn't yet build barebox for sandbox itself (only the scripts),
but nonetheless, if it did, SDL and libftdi need to be usable with the
cross toolchain, not with the host toolchain, so let's use
CROSS_PKG_CONFIG accordingly.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/Makefile    | 4 ++--
 arch/sandbox/os/Makefile | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/sandbox/Makefile b/arch/sandbox/Makefile
index 157e856c59b1..dbdf8a6e8117 100644
--- a/arch/sandbox/Makefile
+++ b/arch/sandbox/Makefile
@@ -62,11 +62,11 @@ archprepare: maketools
 PHONY += maketools
 
 ifeq ($(CONFIG_SDL),y)
-SDL_LIBS := $(shell $(PKG_CONFIG) sdl2 --libs)
+SDL_LIBS := $(shell $(CROSS_PKG_CONFIG) sdl2 --libs)
 endif
 
 ifeq ($(CONFIG_GPIO_LIBFTDI1),y)
-FTDI1_LIBS := $(shell $(PKG_CONFIG) libftdi1 --libs)
+FTDI1_LIBS := $(shell $(CROSS_PKG_CONFIG) libftdi1 --libs)
 endif
 
 ifeq ($(CONFIG_ASAN),y)
diff --git a/arch/sandbox/os/Makefile b/arch/sandbox/os/Makefile
index 7a76fb0290e8..c77702bb0c1d 100644
--- a/arch/sandbox/os/Makefile
+++ b/arch/sandbox/os/Makefile
@@ -23,8 +23,8 @@ endif
 obj-y = common.o tap.o setjmp.o
 obj-$(CONFIG_MALLOC_LIBC) += libc_malloc.o
 
-CFLAGS_sdl.o = $(shell $(PKG_CONFIG) sdl2 --cflags)
+CFLAGS_sdl.o = $(shell $(CROSS_PKG_CONFIG) sdl2 --cflags)
 obj-$(CONFIG_SDL) += sdl.o
 
-CFLAGS_ftdi.o = $(shell $(PKG_CONFIG) libftdi1 --cflags)
+CFLAGS_ftdi.o = $(shell $(CROSS_PKG_CONFIG) libftdi1 --cflags)
 obj-$(CONFIG_GPIO_LIBFTDI1) += ftdi.o
-- 
2.39.5



