Delivery-date: Mon, 10 Oct 2022 08:13:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ohm2l-0033he-Ap
	for lore@lore.pengutronix.de; Mon, 10 Oct 2022 08:13:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ohm2h-0001Ob-W5
	for lore@pengutronix.de; Mon, 10 Oct 2022 08:13:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4f2eXOgfscexfEOck1KS/MecBWhvdR4CkNK3HujtO50=; b=1Y3WcEQW6lU18wiKNgAqRkTZ6H
	yn9GxzhDQRPFw+xU2JO2DDFBnpkn7M5D1eVtwDbHqqkQdKW4Wq4qaXsrEeyfmk210qMPZ/tK/QLok
	P1m1Y1ovDvVlLkFG9IWjF8fFaDtV7gtJy9OuE+/zWeW5tuz5oebUr+4qW/lrpn4qbl83wAxUQI+Hh
	oWjQEOqQLUG4koOJ0v7T31iq7F4Z/MbX8PtPkcsLRloYernvE7OQCxaoa9nJnYFbRs4di4lH4sKiY
	0I7Mn/is3RfUdRpxwec4Dnb+ki3/sfiTnNeZFSvG5R2+JFg4lRMIXOWKdL/dS2Clv+lE80gbLLIeZ
	K3anbUEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohm1F-00HAv2-2Z; Mon, 10 Oct 2022 06:12:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohm0l-00HAau-G1
	for barebox@lists.infradead.org; Mon, 10 Oct 2022 06:11:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1ohm0c-0000Xu-8t; Mon, 10 Oct 2022 08:11:26 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ohm0b-000d9r-Ij; Mon, 10 Oct 2022 08:11:25 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ohm0a-008kAw-61; Mon, 10 Oct 2022 08:11:24 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 10 Oct 2022 08:11:18 +0200
Message-Id: <20221010061122.2084009-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221010061122.2084009-1-a.fatoum@pengutronix.de>
References: <20221010061122.2084009-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221009_231135_765716_8A3F2A63 
X-CRM114-Status: GOOD (  11.87  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 06/10] lds: move OUTPUT_FORMAT/ARCH definition into header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

In order to allow us having architecture-indepenent linker scripts, move
the definition for the format and the architecture into the new
<asm/barebox.lds.h> header file.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/include/asm/barebox.lds.h       |  8 ++++++++
 arch/arm/lib/pbl.lds.S                   | 10 +++-------
 arch/arm/lib32/barebox.lds.S             |  4 ++--
 arch/arm/lib64/barebox.lds.S             |  4 ++--
 arch/kvx/include/asm/barebox.lds.h       |  3 +++
 arch/mips/include/asm/barebox.lds.h      |  2 ++
 arch/mips/lib/barebox.lds.S              |  2 +-
 arch/mips/lib/pbl.lds.S                  |  2 +-
 arch/mips/pbl/zbarebox.lds.S             |  2 +-
 arch/openrisc/cpu/barebox.lds.S          |  2 +-
 arch/openrisc/include/asm/barebox.lds.h  |  2 ++
 arch/powerpc/boards/pcm030/barebox.lds.S |  2 +-
 arch/powerpc/include/asm/barebox.lds.h   |  2 ++
 arch/powerpc/mach-mpc85xx/barebox.lds.S  |  2 +-
 arch/riscv/include/asm/barebox.lds.h     |  7 +++++++
 arch/riscv/lib/barebox.lds.S             |  8 ++------
 arch/riscv/lib/pbl.lds.S                 |  8 ++------
 arch/x86/include/asm/barebox.lds.h       |  8 ++++++++
 arch/x86/mach-efi/elf_ia32_efi.lds.S     |  4 ++--
 arch/x86/mach-efi/elf_x86_64_efi.lds.S   |  4 ++--
 20 files changed, 53 insertions(+), 33 deletions(-)

diff --git a/arch/arm/include/asm/barebox.lds.h b/arch/arm/include/asm/barebox.lds.h
index 327beaf4bfb8..e358064ec6f8 100644
--- a/arch/arm/include/asm/barebox.lds.h
+++ b/arch/arm/include/asm/barebox.lds.h
@@ -4,4 +4,12 @@
 #include <mach/barebox.lds.h>
 #endif
 
+#ifdef CONFIG_CPU_32
+#define BAREBOX_OUTPUT_FORMAT	"elf32-littlearm", "elf32-littlearm", "elf32-littlearm"
+#define BAREBOX_OUTPUT_ARCH	"arm"
+#else
+#define BAREBOX_OUTPUT_FORMAT	"elf64-littleaarch64", "elf64-littleaarch64", "elf64-littleaarch64"
+#define BAREBOX_OUTPUT_ARCH	"aarch64"
+#endif
+
 #include <asm-generic/barebox.lds.h>
diff --git a/arch/arm/lib/pbl.lds.S b/arch/arm/lib/pbl.lds.S
index cc4b12f44893..42c7a4f91fb4 100644
--- a/arch/arm/lib/pbl.lds.S
+++ b/arch/arm/lib/pbl.lds.S
@@ -11,13 +11,9 @@
 #define BASE	(TEXT_BASE - SZ_2M)
 #endif
 
-#ifdef CONFIG_CPU_32
-OUTPUT_FORMAT("elf32-littlearm", "elf32-littlearm", "elf32-littlearm")
-OUTPUT_ARCH(arm)
-#else
-OUTPUT_FORMAT("elf64-littleaarch64", "elf64-littleaarch64", "elf64-littleaarch64")
-OUTPUT_ARCH(aarch64)
-#endif
+OUTPUT_FORMAT(BAREBOX_OUTPUT_FORMAT)
+OUTPUT_ARCH(BAREBOX_OUTPUT_ARCH)
+
 SECTIONS
 {
 	. = BASE;
diff --git a/arch/arm/lib32/barebox.lds.S b/arch/arm/lib32/barebox.lds.S
index 2bf66657a367..ea66b3c3feaf 100644
--- a/arch/arm/lib32/barebox.lds.S
+++ b/arch/arm/lib32/barebox.lds.S
@@ -4,8 +4,8 @@
 #include <asm/barebox.lds.h>
 #include <asm/secure.h>
 
-OUTPUT_FORMAT("elf32-littlearm", "elf32-littlearm", "elf32-littlearm")
-OUTPUT_ARCH(arm)
+OUTPUT_FORMAT(BAREBOX_OUTPUT_FORMAT)
+OUTPUT_ARCH(BAREBOX_OUTPUT_ARCH)
 ENTRY(start)
 SECTIONS
 {
diff --git a/arch/arm/lib64/barebox.lds.S b/arch/arm/lib64/barebox.lds.S
index c1069c896f27..e2049753fdd5 100644
--- a/arch/arm/lib64/barebox.lds.S
+++ b/arch/arm/lib64/barebox.lds.S
@@ -3,8 +3,8 @@
 
 #include <asm/barebox.lds.h>
 
-OUTPUT_FORMAT("elf64-littleaarch64", "elf64-littleaarch64", "elf64-littleaarch64")
-OUTPUT_ARCH(aarch64)
+OUTPUT_FORMAT(BAREBOX_OUTPUT_FORMAT)
+OUTPUT_ARCH(BAREBOX_OUTPUT_ARCH)
 ENTRY(start)
 SECTIONS
 {
diff --git a/arch/kvx/include/asm/barebox.lds.h b/arch/kvx/include/asm/barebox.lds.h
index 540d740959ff..4b0581c81aeb 100644
--- a/arch/kvx/include/asm/barebox.lds.h
+++ b/arch/kvx/include/asm/barebox.lds.h
@@ -1,3 +1,6 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 
+#define LDS_OUTPUT_FORMAT	"elf64-kvx"
+#define LDS_OUTPUT_ARCH		"kvx:kv3-1:64"
+
 #include <asm-generic/barebox.lds.h>
diff --git a/arch/mips/include/asm/barebox.lds.h b/arch/mips/include/asm/barebox.lds.h
index 540d740959ff..124f3d5d6667 100644
--- a/arch/mips/include/asm/barebox.lds.h
+++ b/arch/mips/include/asm/barebox.lds.h
@@ -1,3 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 
+#define BAREBOX_OUTPUT_ARCH	"mips"
+
 #include <asm-generic/barebox.lds.h>
diff --git a/arch/mips/lib/barebox.lds.S b/arch/mips/lib/barebox.lds.S
index 87668c7a7320..1259a4e94fc5 100644
--- a/arch/mips/lib/barebox.lds.S
+++ b/arch/mips/lib/barebox.lds.S
@@ -6,7 +6,7 @@
 
 #include <asm/barebox.lds.h>
 
-OUTPUT_ARCH(mips)
+OUTPUT_ARCH(BAREBOX_OUTPUT_ARCH)
 ENTRY(_start)
 SECTIONS
 {
diff --git a/arch/mips/lib/pbl.lds.S b/arch/mips/lib/pbl.lds.S
index 521333df0be0..4cf0398f33d1 100644
--- a/arch/mips/lib/pbl.lds.S
+++ b/arch/mips/lib/pbl.lds.S
@@ -10,7 +10,7 @@
 
 #define BASE    (TEXT_BASE - SZ_2M)
 
-OUTPUT_ARCH("mips")
+OUTPUT_ARCH(BAREBOX_OUTPUT_ARCH)
 SECTIONS
 {
 	. = BASE;
diff --git a/arch/mips/pbl/zbarebox.lds.S b/arch/mips/pbl/zbarebox.lds.S
index 2d82065bce08..e3114dfe2230 100644
--- a/arch/mips/pbl/zbarebox.lds.S
+++ b/arch/mips/pbl/zbarebox.lds.S
@@ -6,7 +6,7 @@
 #include <asm/barebox.lds.h>
 #include <asm-generic/memory_layout.h>
 
-OUTPUT_ARCH("mips")
+OUTPUT_ARCH(BAREBOX_OUTPUT_ARCH)
 ENTRY(pbl_start)
 SECTIONS
 {
diff --git a/arch/openrisc/cpu/barebox.lds.S b/arch/openrisc/cpu/barebox.lds.S
index f6999a113438..3fae1af37594 100644
--- a/arch/openrisc/cpu/barebox.lds.S
+++ b/arch/openrisc/cpu/barebox.lds.S
@@ -16,7 +16,7 @@
 #include <config.h>
 #include <asm/barebox.lds.h>
 
-OUTPUT_FORMAT("elf32-or1k", "elf32-or1k", "elf32-or1k")
+OUTPUT_FORMAT(BAREBOX_OUTPUT_FORMAT)
 ENTRY(__reset)
 __DYNAMIC  =  0;
 
diff --git a/arch/openrisc/include/asm/barebox.lds.h b/arch/openrisc/include/asm/barebox.lds.h
index 540d740959ff..87d868e1ad21 100644
--- a/arch/openrisc/include/asm/barebox.lds.h
+++ b/arch/openrisc/include/asm/barebox.lds.h
@@ -1,3 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 
+#define BAREBOX_OUTPUT_FORMAT "elf32-or1k", "elf32-or1k", "elf32-or1k"
+
 #include <asm-generic/barebox.lds.h>
diff --git a/arch/powerpc/boards/pcm030/barebox.lds.S b/arch/powerpc/boards/pcm030/barebox.lds.S
index b90e88058113..146b63fe8889 100644
--- a/arch/powerpc/boards/pcm030/barebox.lds.S
+++ b/arch/powerpc/boards/pcm030/barebox.lds.S
@@ -16,7 +16,7 @@
 
 #include <asm/barebox.lds.h>
 
-OUTPUT_ARCH("powerpc")
+OUTPUT_ARCH(BAREBOX_OUTPUT_ARCH)
 ENTRY(_start)
 /* Do we need any of these for elf?
    __DYNAMIC = 0;    */
diff --git a/arch/powerpc/include/asm/barebox.lds.h b/arch/powerpc/include/asm/barebox.lds.h
index 540d740959ff..14477bd44a37 100644
--- a/arch/powerpc/include/asm/barebox.lds.h
+++ b/arch/powerpc/include/asm/barebox.lds.h
@@ -1,3 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 
+#define BAREBOX_OUTPUT_ARCH	"powerpc"
+
 #include <asm-generic/barebox.lds.h>
diff --git a/arch/powerpc/mach-mpc85xx/barebox.lds.S b/arch/powerpc/mach-mpc85xx/barebox.lds.S
index 253fd3735e48..764854a860e7 100644
--- a/arch/powerpc/mach-mpc85xx/barebox.lds.S
+++ b/arch/powerpc/mach-mpc85xx/barebox.lds.S
@@ -21,7 +21,7 @@
 #define RESET_VECTOR_ADDRESS    0xfffffffc
 #endif
 
-OUTPUT_ARCH("powerpc")
+OUTPUT_ARCH(BAREBOX_OUTPUT_ARCH)
 ENTRY(_start_e500)
 
 PHDRS
diff --git a/arch/riscv/include/asm/barebox.lds.h b/arch/riscv/include/asm/barebox.lds.h
index 540d740959ff..0fa05df6ff2e 100644
--- a/arch/riscv/include/asm/barebox.lds.h
+++ b/arch/riscv/include/asm/barebox.lds.h
@@ -1,3 +1,10 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 
+#define BAREBOX_OUTPUT_ARCH	"riscv"
+#ifdef CONFIG_64BIT
+#define BAREBOX_OUTPUT_FORMAT	"elf64-littleriscv"
+#else
+#define BAREBOX_OUTPUT_FORMAT	"elf32-littleriscv"
+#endif
+
 #include <asm-generic/barebox.lds.h>
diff --git a/arch/riscv/lib/barebox.lds.S b/arch/riscv/lib/barebox.lds.S
index 5de32a47e7c0..101615ab052a 100644
--- a/arch/riscv/lib/barebox.lds.S
+++ b/arch/riscv/lib/barebox.lds.S
@@ -13,13 +13,9 @@
 
 #include <asm/barebox.lds.h>
 
-OUTPUT_ARCH(riscv)
+OUTPUT_ARCH(BAREBOX_OUTPUT_ARCH)
 ENTRY(start)
-#ifdef CONFIG_64BIT
-OUTPUT_FORMAT("elf64-littleriscv")
-#else
-OUTPUT_FORMAT("elf32-littleriscv")
-#endif
+OUTPUT_FORMAT(BAREBOX_OUTPUT_FORMAT)
 SECTIONS
 {
 	. = 0x0;
diff --git a/arch/riscv/lib/pbl.lds.S b/arch/riscv/lib/pbl.lds.S
index ba59024ae037..0fe7dfda8eb4 100644
--- a/arch/riscv/lib/pbl.lds.S
+++ b/arch/riscv/lib/pbl.lds.S
@@ -5,12 +5,8 @@
 #include <asm/barebox.lds.h>
 #include <asm-generic/memory_layout.h>
 
-OUTPUT_ARCH(riscv)
-#ifdef CONFIG_64BIT
-OUTPUT_FORMAT("elf64-littleriscv")
-#else
-OUTPUT_FORMAT("elf32-littleriscv")
-#endif
+OUTPUT_ARCH(BAREBOX_OUTPUT_ARCH)
+OUTPUT_FORMAT(BAREBOX_OUTPUT_FORMAT)
 SECTIONS
 {
 	. = 0x0;
diff --git a/arch/x86/include/asm/barebox.lds.h b/arch/x86/include/asm/barebox.lds.h
index 540d740959ff..f00d36c4e747 100644
--- a/arch/x86/include/asm/barebox.lds.h
+++ b/arch/x86/include/asm/barebox.lds.h
@@ -1,3 +1,11 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 
+#ifdef CONFIG_X86_32
+#define BAREBOX_OUTPUT_FORMAT	"elf32-i386", "elf32-i386", "elf32-i386"
+#define BAREBOX_OUTPUT_ARCH	"i386"
+#else
+#define BAREBOX_OUTPUT_FORMAT	"elf64-x86-64", "elf64-x86-64", "elf64-x86-64"
+#define BAREBOX_OUTPUT_ARCH	"i386:x86-64"
+#endif
+
 #include <asm-generic/barebox.lds.h>
diff --git a/arch/x86/mach-efi/elf_ia32_efi.lds.S b/arch/x86/mach-efi/elf_ia32_efi.lds.S
index 14ae702e5049..4b1300724300 100644
--- a/arch/x86/mach-efi/elf_ia32_efi.lds.S
+++ b/arch/x86/mach-efi/elf_ia32_efi.lds.S
@@ -2,8 +2,8 @@
 
 #include <asm/barebox.lds.h>
 
-OUTPUT_FORMAT("elf32-i386", "elf32-i386", "elf32-i386")
-OUTPUT_ARCH(i386)
+OUTPUT_FORMAT(BAREBOX_OUTPUT_FORMAT)
+OUTPUT_ARCH(BAREBOX_OUTPUT_ARCH)
 ENTRY(_start)
 SECTIONS
 {
diff --git a/arch/x86/mach-efi/elf_x86_64_efi.lds.S b/arch/x86/mach-efi/elf_x86_64_efi.lds.S
index 8c666235ce1a..f63c0c0c939e 100644
--- a/arch/x86/mach-efi/elf_x86_64_efi.lds.S
+++ b/arch/x86/mach-efi/elf_x86_64_efi.lds.S
@@ -4,8 +4,8 @@
 
 /* Same as elf_x86_64_fbsd_efi.lds, except for OUTPUT_FORMAT below - KEEP IN SYNC */
 
-OUTPUT_FORMAT("elf64-x86-64", "elf64-x86-64", "elf64-x86-64")
-OUTPUT_ARCH(i386:x86-64)
+OUTPUT_FORMAT(BAREBOX_OUTPUT_FORMAT)
+OUTPUT_ARCH(BAREBOX_OUTPUT_ARCH)
 ENTRY(_start)
 SECTIONS
 {
-- 
2.30.2



