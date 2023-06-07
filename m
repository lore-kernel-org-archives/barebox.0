Delivery-date: Wed, 07 Jun 2023 17:33:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6vA5-00EWuk-5r
	for lore@lore.pengutronix.de; Wed, 07 Jun 2023 17:33:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6vA2-0000Xz-Ja
	for lore@pengutronix.de; Wed, 07 Jun 2023 17:33:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3mKhhYGkLgrBdP9uZXX/MLo1JlYetNh/RHYOM2twn7o=; b=CAviN8JmCKK9Yz
	ZP0Gw7j40XjSdYS6yQIqn/vM44CbRMDVKilEw6ub7UAAuC0Y+QNpN6q3xdceRJnTjbME+Q9xBUL8F
	kr8ipUd5vRkQBNyLrqwUTqurJOZ7nbNmxu+aPogTJP2/ANW6V8S0UYYCLMtiR+ntY/yQsSJc3ItGr
	Ik6VU6gdGanCOgg3+PB41234Pj1WxamsUWMzhrhwfgEs5cF9U7Wf0KDJrXSkV1veiWH1eKh2dkALa
	c/TsLOfYwOcWh2ZAcq6L3LiHkGRxplrPdzM6KZ8Yxqtxv+F4f46bDVnxAVQVJffef5j128IHTDZHU
	e05I51J06snFqWfIa47w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6v8l-006Qbc-0j;
	Wed, 07 Jun 2023 15:32:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6v8h-006QaV-0r
	for barebox@lists.infradead.org;
	Wed, 07 Jun 2023 15:32:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q6v8d-0000PM-Gd; Wed, 07 Jun 2023 17:31:55 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q6v8c-005m1E-GE; Wed, 07 Jun 2023 17:31:54 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q6v8b-00BFST-Cb; Wed, 07 Jun 2023 17:31:53 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed,  7 Jun 2023 17:31:52 +0200
Message-Id: <20230607153152.2681009-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230607153152.2681009-1-a.fatoum@pengutronix.de>
References: <20230607153152.2681009-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230607_083159_328376_5C2A436E 
X-CRM114-Status: GOOD (  11.73  )
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
Cc: Lior Weintraub <liorw@pliops.com>, Ahmad Fatoum <a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/2] ARM: don't assume 32-bit when no boards are selected
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

barebox build errors are very confusing if no board is selected.
This should have been fixed with commit 14b296d2a7e6 ("arm: error
out if __LINUX_ARM_ARCH__ is undefined"), but unfortunately that's
only true for ARM32. On ARM64, the error message in question
is not printed, because build aborts even earlier, because Kbuild
assumes it should build for 32-bit ARM and thus passes the ARM64
compiler options that it can't understand:

  aarch64-oe-linux-gcc: error: unrecognized argument in option '-mabi=apcs-gnu'
  aarch64-oe-linux-gcc: note: valid arguments to '-mabi=' are: ilp32 lp64
  aarch64-oe-linux-gcc: error: unrecognized command-line option '-msoft-float'
  aarch64-oe-linux-gcc: error: unrecognized command-line option '-mno-unaligned-access'

Let's fix that for ARM64 builds by not assuming !CONFIG_CPU_64 to be 32-bit,
but instead explicitly check that CONFIG_CPU_32 is set before doing
32-bit specific changes.

This ensures we now fail during compilation on both ARM32 and ARM64 if
no boards were selected. We can't fail earlier via $(error ...) as this
would impact use of targets like menuconfig.

Reported-by: Lior Weintraub <liorw@pliops.com>
Reported-by: Ulrich Ölmann <u.oelmann@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/Makefile | 35 ++++++++++++++---------------------
 1 file changed, 14 insertions(+), 21 deletions(-)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 926af7387f7f..337b7e9095fa 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -6,7 +6,8 @@ KBUILD_CPPFLAGS	+= -D__ARM__ -fno-strict-aliasing
 # Explicitly specifiy 32-bit ARM ISA since toolchain default can be -mthumb:
 ifeq ($(CONFIG_CPU_64),y)
 KBUILD_CPPFLAGS	+=$(call cc-option,-maarch64,)
-else
+endif
+ifeq ($(CONFIG_CPU_32),y)
 KBUILD_CPPFLAGS	+=$(call cc-option,-marm,)
 KBUILD_CPPFLAGS	+= -msoft-float
 endif
@@ -27,14 +28,12 @@ endif
 # at least some of the code would be executed with MMU off, lets be
 # conservative and instruct the compiler not to generate any unaligned
 # accesses
-ifneq ($(CONFIG_CPU_64),y)
+ifeq ($(CONFIG_CPU_32),y)
 KBUILD_CFLAGS += -mno-unaligned-access
-else
-KBUILD_CFLAGS += -mstrict-align
 endif
-
-# Prevent use of floating point and Advanced SIMD registers.
 ifeq ($(CONFIG_CPU_64),y)
+KBUILD_CFLAGS += -mstrict-align
+# Prevent use of floating point and Advanced SIMD registers.
 KBUILD_CFLAGS += -mgeneral-regs-only
 endif
 
@@ -54,19 +53,11 @@ tune-$(CONFIG_CPU_ARM920T)	:=-mtune=arm9tdmi
 tune-$(CONFIG_CPU_ARM926T)	:=-mtune=arm9tdmi
 tune-$(CONFIG_CPU_XSCALE)	:=$(call cc-option,-mtune=xscale,-mtune=strongarm110) -Wa,-mcpu=xscale
 
-ifeq ($(CONFIG_CPU_64), y)
-CFLAGS_ABI	:=-mabi=lp64
-else
-ifeq ($(CONFIG_AEABI),y)
-CFLAGS_ABI	:=-mabi=aapcs-linux
-else
-CFLAGS_ABI	:=$(call cc-option,-mapcs-32,-mabi=apcs-gnu) $(call cc-option,-mno-thumb-interwork,)
-endif
-endif
+CFLAGS_ABI-$(CONFIG_CPU_64)	:=-mabi=lp64
+CFLAGS_ABI-$(CONFIG_CPU_32)	:=$(call cc-option,-mapcs-32,-mabi=apcs-gnu) $(call cc-option,-mno-thumb-interwork,)
+CFLAGS_ABI-$(CONFIG_AEABI)	:=-mabi=aapcs-linux
 
-ifeq ($(CONFIG_ARM_UNWIND),y)
-CFLAGS_ABI	+=-funwind-tables
-endif
+CFLAGS_ABI-$(CONFIG_ARM_UNWIND)	+=-funwind-tables
 
 ifeq ($(CONFIG_THUMB2_BAREBOX),y)
 AFLAGS_AUTOIT	:=$(call as-option,-Wa$(comma)-mimplicit-it=always,-Wa$(comma)-mauto-it)
@@ -75,13 +66,15 @@ CFLAGS_THUMB2	:=-mthumb $(AFLAGS_AUTOIT) $(AFLAGS_NOWARN)
 AFLAGS_THUMB2	:=$(CFLAGS_THUMB2) -Wa$(comma)-mthumb
 endif
 
+KBUILD_CPPFLAGS += $(CFLAGS_ABI-y) $(arch-y) $(tune-y)
+
 ifeq ($(CONFIG_CPU_64), y)
-KBUILD_CPPFLAGS += $(CFLAGS_ABI) $(arch-y) $(tune-y)
 KBUILD_AFLAGS   += -include asm/unified.h
 export S64_32 = 64
 export S64 = 64
-else
-KBUILD_CPPFLAGS += $(CFLAGS_ABI) $(arch-y) $(tune-y) $(CFLAGS_THUMB2)
+endif
+ifeq ($(CONFIG_CPU_32), y)
+KBUILD_CPPFLAGS += $(CFLAGS_THUMB2)
 KBUILD_AFLAGS   += -include asm/unified.h -msoft-float $(AFLAGS_THUMB2)
 export S64_32 = 32
 export S32 = 32
-- 
2.39.2



