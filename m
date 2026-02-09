Delivery-date: Mon, 09 Feb 2026 10:15:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpNMx-00AVJl-3D
	for lore@lore.pengutronix.de;
	Mon, 09 Feb 2026 10:15:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpNMw-0006Ah-SR
	for lore@pengutronix.de; Mon, 09 Feb 2026 10:15:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vG3DYKFapsi0HhMHHMbta97Q6GMSKjtv0+Lve3S9BSE=; b=MUaHgBEcjcvNUenb6NmcnS/IkY
	b2KHFQL28JAMpx0rxbWaBRgOK+Jv6ingV/f+zQ4diA2ogqTfRXyqx2EzVIBhslM3S9RIdsKBUj50w
	uBmq6CL9EjwyQ6WvI46MQZnLM7S3YwNhKQIFja4NcZx4bTyxA05m0WRYbZ16n1xAv2kE0cGnQwUdI
	KHiGVw90SoNrJxX2sIKfH4gvUuHxY2hreZsqpGU/8T2xkm9NthIQoos2JjzW8tOJCXMIKVyVQuPrP
	4axwxnzkZX8lJk4vojDi61QIDexf4MS8MU6qGx2JYki9RjNiIjG/h7m35ES/p9nLaT0MnTOJ5OzJE
	lwPz94fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpNMY-0000000F6et-1AK2;
	Mon, 09 Feb 2026 09:15:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpNMT-0000000F6bT-3xfU
	for barebox@lists.infradead.org;
	Mon, 09 Feb 2026 09:15:20 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=localhost.localdomain)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vpNMS-0005oY-83; Mon, 09 Feb 2026 10:15:16 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  9 Feb 2026 10:10:28 +0100
Message-ID: <20260209091513.3563412-4-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260209091513.3563412-1-a.fatoum@barebox.org>
References: <20260209091513.3563412-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260209_011518_199551_5FF072E0 
X-CRM114-Status: UNSURE (   8.84  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 3/6] lib: stackprot: omit HAVE_STACKPROTECTOR for powerpc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

gcc for PowerPC generates references to __stack_chk_guard_local and
aliasing it to __stack_chk_guard doesn't lead to a bootable barebox, so
let's disable stack protector on that architecture.

The other architectures are assumed to work, but this should be verified
per CI test in future.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/Kconfig          | 6 ++++++
 arch/arm/Kconfig      | 1 +
 arch/kvx/Kconfig      | 1 +
 arch/mips/Kconfig     | 1 +
 arch/openrisc/Kconfig | 1 +
 arch/riscv/Kconfig    | 1 +
 arch/sandbox/Kconfig  | 1 +
 arch/x86/Kconfig      | 1 +
 lib/Kconfig.hardening | 2 ++
 9 files changed, 15 insertions(+)

diff --git a/arch/Kconfig b/arch/Kconfig
index ca9aa25a9c4b..ba9dd0e6f4df 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -131,6 +131,12 @@ config HAVE_ARCH_KASAN
 config ARCH_HAS_UBSAN_SANITIZE_ALL
 	bool
 
+config HAVE_STACKPROTECTOR
+	bool
+	help
+	  An arch should select this symbol if:
+	  - it has implemented a stack canary (e.g. __stack_chk_guard)
+
 config ARCH_HAS_FORTIFY_SOURCE
 	bool
 	help
diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 65856977ab41..c7514acb775f 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -3,6 +3,7 @@
 config ARM
 	bool
 	select HAS_KALLSYMS
+	select HAVE_STACKPROTECTOR
 	select HAVE_IMAGE_COMPRESSION
 	select HAVE_ARCH_KASAN
 	select ARCH_HAS_SJLJ
diff --git a/arch/kvx/Kconfig b/arch/kvx/Kconfig
index 987fdb2e1e89..bbbec6471f06 100644
--- a/arch/kvx/Kconfig
+++ b/arch/kvx/Kconfig
@@ -3,6 +3,7 @@
 config KVX
 	bool
 	select 64BIT
+	select HAVE_STACKPROTECTOR
 	select BOOTM
 	select HAVE_ARCH_BOOTM_OFTREE
 	select BOOTM_OFTREE
diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index 44c4fc82ae5b..d34377a33d47 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -3,6 +3,7 @@
 config MIPS
 	bool
 	select GENERIC_LIB_ASHLDI3
+	select HAVE_STACKPROTECTOR
 	select GENERIC_LIB_ASHRDI3
 	select GENERIC_LIB_LSHRDI3
 	select HAS_KALLSYMS
diff --git a/arch/openrisc/Kconfig b/arch/openrisc/Kconfig
index 10cbfa1ffbce..f82d160a3a15 100644
--- a/arch/openrisc/Kconfig
+++ b/arch/openrisc/Kconfig
@@ -3,6 +3,7 @@
 config OPENRISC
 	bool
 	select OFTREE
+	select HAVE_STACKPROTECTOR
 	select HAVE_CONFIGURABLE_MEMORY_LAYOUT
 	select GENERIC_FIND_NEXT_BIT
 	select ARCH_HAS_SJLJ
diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index cc9b15ce6409..f1d98d1b33a5 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -3,6 +3,7 @@
 config RISCV
 	def_bool y
 	select GENERIC_FIND_NEXT_BIT
+	select HAVE_STACKPROTECTOR
 	select GPIOLIB
 	select OFTREE
 	select OFDEVICE
diff --git a/arch/sandbox/Kconfig b/arch/sandbox/Kconfig
index 5c7948b215cf..504171809193 100644
--- a/arch/sandbox/Kconfig
+++ b/arch/sandbox/Kconfig
@@ -5,6 +5,7 @@ source "scripts/Kconfig.include"
 config SANDBOX
 	bool
 	select OFTREE
+	select HAVE_STACKPROTECTOR
 	select GPIOLIB
 	select ARCH_HAS_UBSAN_SANITIZE_ALL
 	select ARCH_HAS_FORTIFY_SOURCE
diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
index b453890f022b..3426392bc463 100644
--- a/arch/x86/Kconfig
+++ b/arch/x86/Kconfig
@@ -3,6 +3,7 @@
 config X86
 	bool
 	select HAS_KALLSYMS
+	select HAVE_STACKPROTECTOR
 	select HAS_DMA
 	select GENERIC_FIND_NEXT_BIT
 	select ARCH_DMA_DEFAULT_COHERENT
diff --git a/lib/Kconfig.hardening b/lib/Kconfig.hardening
index 59dd02c9cfae..6374576f489c 100644
--- a/lib/Kconfig.hardening
+++ b/lib/Kconfig.hardening
@@ -162,6 +162,7 @@ config STACKPROTECTOR
 
 choice
 	prompt "Stack Protector buffer overflow detection"
+	depends on HAVE_STACKPROTECTOR
 
 config STACKPROTECTOR_NONE
 	bool "None"
@@ -211,6 +212,7 @@ endchoice
 
 choice
 	prompt "Stack Protector buffer overflow detection for PBL" if PBL_IMAGE
+	depends on HAVE_STACKPROTECTOR
 
 config PBL_STACKPROTECTOR_NONE
 	bool "None"
-- 
2.47.3



