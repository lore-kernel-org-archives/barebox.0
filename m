Delivery-date: Wed, 07 Jun 2023 17:33:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6vA2-00EWuG-MN
	for lore@lore.pengutronix.de; Wed, 07 Jun 2023 17:33:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6vA0-0000XE-8c
	for lore@pengutronix.de; Wed, 07 Jun 2023 17:33:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=NST6KpywvF2IADBE5fvODAALmcNvni5aZwExVhFkx5k=; b=2JLdkAxYAW+SLGbpLAmx/XcRg3
	VWkl0k3IVqnS7Z3h7fvQ/0KVYUTUiv/hJ3XgW7s+xSRMri58gy44QUKPRqw5mODwok4XHcR3/Z4gV
	He/dfuPDFZjyYRbHVFDddsaeKh4TX6CRAKTGT5jzRi9onfDeMsKWUgqOM7CRqZK+QheGlLywO14XT
	KV+jTw6kFPE3lM5V3yWURu4lKjSnPOJf8ysU6/JOWoVn1jDxGJqTS11jE++zagYZBp2G6/pKrApv0
	Dld6dMWf7ciFBR4q8RUlgcIgv7PKWQwx44IYOZsPy3A2OckhPR1eZn31L0BCEpy7k57NTda2Zipbr
	moit0L8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6v8k-006QbS-25;
	Wed, 07 Jun 2023 15:32:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6v8h-006QaM-0s
	for barebox@lists.infradead.org;
	Wed, 07 Jun 2023 15:32:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q6v8c-0000PL-Tl; Wed, 07 Jun 2023 17:31:54 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q6v8c-005m1B-8o; Wed, 07 Jun 2023 17:31:54 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q6v8b-00BFSQ-CC; Wed, 07 Jun 2023 17:31:53 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  7 Jun 2023 17:31:51 +0200
Message-Id: <20230607153152.2681009-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230607_083159_328131_4DC0E8E9 
X-CRM114-Status: GOOD (  10.84  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] ARM: replace CONFIG_CPU_V8 with CONFIG_CPU_64 in Makefile
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We use CONFIG_CPU_V8 and CONFIG_CPU_64 interchangeably in barebox,
because we don't yet support any SoCs with ARMv9 and because we always
target the A64 instruction set on ARMv8 processors.

In the Makefile where we have decisions dependent on whether we are
compiling for 64-bit or not, we should rather use CONFIG_CPU_64 though,
because the same options would likely be applicable to ARMv9 as well.

Given that the follow-up commit will introduce a number of
CONFIG_CPU_32, let's replace the CONFIG_CPU_V8 symbols with
CONFIG_CPU_64 for symmetry. No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/Makefile | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 35ebc70f44e2..926af7387f7f 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -4,7 +4,7 @@ KBUILD_DEFCONFIG := multi_v8_defconfig
 
 KBUILD_CPPFLAGS	+= -D__ARM__ -fno-strict-aliasing
 # Explicitly specifiy 32-bit ARM ISA since toolchain default can be -mthumb:
-ifeq ($(CONFIG_CPU_V8),y)
+ifeq ($(CONFIG_CPU_64),y)
 KBUILD_CPPFLAGS	+=$(call cc-option,-maarch64,)
 else
 KBUILD_CPPFLAGS	+=$(call cc-option,-marm,)
@@ -27,14 +27,14 @@ endif
 # at least some of the code would be executed with MMU off, lets be
 # conservative and instruct the compiler not to generate any unaligned
 # accesses
-ifneq ($(CONFIG_CPU_V8),y)
+ifneq ($(CONFIG_CPU_64),y)
 KBUILD_CFLAGS += -mno-unaligned-access
 else
 KBUILD_CFLAGS += -mstrict-align
 endif
 
 # Prevent use of floating point and Advanced SIMD registers.
-ifeq ($(CONFIG_CPU_V8),y)
+ifeq ($(CONFIG_CPU_64),y)
 KBUILD_CFLAGS += -mgeneral-regs-only
 endif
 
@@ -54,7 +54,7 @@ tune-$(CONFIG_CPU_ARM920T)	:=-mtune=arm9tdmi
 tune-$(CONFIG_CPU_ARM926T)	:=-mtune=arm9tdmi
 tune-$(CONFIG_CPU_XSCALE)	:=$(call cc-option,-mtune=xscale,-mtune=strongarm110) -Wa,-mcpu=xscale
 
-ifeq ($(CONFIG_CPU_V8), y)
+ifeq ($(CONFIG_CPU_64), y)
 CFLAGS_ABI	:=-mabi=lp64
 else
 ifeq ($(CONFIG_AEABI),y)
@@ -75,7 +75,7 @@ CFLAGS_THUMB2	:=-mthumb $(AFLAGS_AUTOIT) $(AFLAGS_NOWARN)
 AFLAGS_THUMB2	:=$(CFLAGS_THUMB2) -Wa$(comma)-mthumb
 endif
 
-ifeq ($(CONFIG_CPU_V8), y)
+ifeq ($(CONFIG_CPU_64), y)
 KBUILD_CPPFLAGS += $(CFLAGS_ABI) $(arch-y) $(tune-y)
 KBUILD_AFLAGS   += -include asm/unified.h
 export S64_32 = 64
@@ -197,7 +197,7 @@ common-y += arch/arm/boards/ $(MACH)
 common-y += arch/arm/cpu/
 common-y += arch/arm/crypto/
 
-ifeq ($(CONFIG_CPU_V8), y)
+ifeq ($(CONFIG_CPU_64), y)
 common-y += arch/arm/lib64/
 else
 common-y += arch/arm/lib32/
@@ -205,7 +205,7 @@ endif
 
 common-$(CONFIG_OFTREE) += arch/arm/dts/
 
-ifeq ($(CONFIG_CPU_V8), y)
+ifeq ($(CONFIG_CPU_64), y)
 lds-y	:= arch/arm/lib64/barebox.lds
 else
 lds-y	:= arch/arm/lib32/barebox.lds
-- 
2.39.2



