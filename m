Delivery-date: Wed, 10 Jun 2026 17:40:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXL2S-004Nz5-3A
	for lore@lore.pengutronix.de;
	Wed, 10 Jun 2026 17:40:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXL2S-0008AV-91
	for lore@pengutronix.de; Wed, 10 Jun 2026 17:40:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=KXkP7luO3IUP6BUMIvAKVmIuYskQhLc0lwWVuYK/rng=; b=jx3aOO1cIemRs84Plz6pGUZx5V
	Y/Ofl6acOMsdVcXIRYw272syXT9Usp/4rL34C0beoZDcI43Gko1D6BMCDvht8B5s/6NRfEf2QSv5y
	lchIjlko+0PeawyY9A7IznLn1zOheUeTWb/Kkx/HuZ5oxqhr76BZf8+Fs6dlSNCEnpV1nTESKhi/Z
	XXuh0KoASifFoQ69/rUVwUt2XYQAxmfMBgEo8Ppd+fr5/fD9pLw/iBRK4OrwIndKgzywbXgWUD77k
	nIULW4rBVuMW401MbGumZ0+ZFNBGY84GZLiU1kEkVsq91wieN2mtDj4HZMos2QxuvmMdQp2oUnmhP
	lP/G9aoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXL1O-000000082cz-3ATm;
	Wed, 10 Jun 2026 15:39:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXL1J-000000082bK-2cex
	for barebox@lists.infradead.org;
	Wed, 10 Jun 2026 15:39:12 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=localhost.localdomain)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wXL1H-0007ph-8T; Wed, 10 Jun 2026 17:39:07 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Wed, 10 Jun 2026 17:37:25 +0200
Message-ID: <20260610153904.2862220-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_083909_773601_E018C996 
X-CRM114-Status: GOOD (  14.53  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] ARM: deprecate use of ARCH=arm for arm64 builds
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Linux has separate arch/arm and arch/arm64, where each is built by
ARCH=arm and ARCH=arm64, respectively.

barebox has arch/arm for both, which leads to issues from time to time:

  - Ported kernel code may assume SRCARCH to differ between arm32
    and arm64[1].

  - It's not possible to determine if we are going to build for 32-bit
    ARM or 64-bit ARM before reading and normalizing the config[2].

To be able to, someday, resolve these issues, let's throw a warning
when ARCH=arm is used when it later turns out that ARCH=arm64 would
have been more correct and vice versa.

[1]: https://lore.kernel.org/barebox/20260610135904.2717667-1-a.fatoum@barebox.org/T/#u
[2]: 92d503132efc ("Revert "MAKEALL: query CONFIG_64BIT before make instead of CONFIG_ARM64 after"")

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 Documentation/migration-guides/migration-master.rst |  8 ++++++++
 arch/arm/Kconfig                                    |  7 +++++++
 arch/arm/Makefile                                   | 10 ++++++++++
 3 files changed, 25 insertions(+)
 create mode 100644 Documentation/migration-guides/migration-master.rst

diff --git a/Documentation/migration-guides/migration-master.rst b/Documentation/migration-guides/migration-master.rst
new file mode 100644
index 000000000000..455863357d1d
--- /dev/null
+++ b/Documentation/migration-guides/migration-master.rst
@@ -0,0 +1,8 @@
+:orphan:
+
+ARCH=arm64
+----------
+
+Use of ``ARCH=arm`` for 64-bit ARM builds is deprecated and now emits
+a warning. Users should change build scripts to use ``ARCH=arm64``
+instead when targetting ARMv8.
diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index cb6652001546..63877c965fad 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -41,6 +41,13 @@ config ARM64
 	select ARCH_HAS_RELR
 	select ARCH_HAS_BAREBOX_MEMORY_OFFSET
 
+config ARM64_STRICT_BUILD_ARCH
+	bool
+	depends on ARM64
+	help
+	  When selected, ARCH=arm64 is required for 64-bit builds and ARCH=arm
+	  will fail.  When not selected, a deprecation warning is printed.
+
 config ARCH_TEXT_BASE
 	hex
 	default 0x00000000
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index eb4c634c42ec..edf6f7d74eb5 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -18,10 +18,20 @@ KBUILD_CPPFLAGS	+= -D__ARM__ -fno-strict-aliasing
 # Explicitly specifiy 32-bit ARM ISA since toolchain default can be -mthumb:
 ifeq ($(CONFIG_CPU_64),y)
 KBUILD_CPPFLAGS	+=$(call cc-option,-maarch64,)
+ifneq ($(UTS_MACHINE),arm64)
+ifdef CONFIG_ARM64_STRICT_BUILD_ARCH
+$(error Deprecated use of ARCH=arm in 64-bit ARM build! Set ARCH=arm64 instead.)
+else
+$(warning Deprecated use of ARCH=arm in 64-bit ARM build! Set ARCH=arm64 instead.)
+endif
+endif
 endif
 ifeq ($(CONFIG_CPU_32),y)
 KBUILD_CPPFLAGS	+=$(call cc-option,-marm,)
 KBUILD_CPPFLAGS	+= -msoft-float
+ifeq ($(UTS_MACHINE),arm64)
+$(error Erroneous use of ARCH=arm64 in 32-bit ARM build! Set ARCH=arm instead.)
+endif
 endif
 
 ifeq ($(CONFIG_CPU_BIG_ENDIAN),y)
-- 
2.47.3



