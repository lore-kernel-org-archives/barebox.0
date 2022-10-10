Delivery-date: Mon, 10 Oct 2022 08:13:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ohm2S-0033ge-Oq
	for lore@lore.pengutronix.de; Mon, 10 Oct 2022 08:13:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ohm2P-0001En-8Z
	for lore@pengutronix.de; Mon, 10 Oct 2022 08:13:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XNGq7EbTHxSlkqiPuBKvSJuwRe3UER67UO6UdCpgzIo=; b=o41hSukM6jjcJRivQ2xPaIlhFn
	zGIAHINEZIxILBiyxau+ntC9D05Vw/rFW9CBaGwYUYyo0Mz1Ioa2WbsJ6XzsFIo1NybYcLBKbfNe8
	dc3lOh1vyX44dpQEY769u45ZwkIfn4KpNx2bN/JrLFkMTPOKhhrh8fjpAGts8r3a7eMKOVrsnhhjJ
	nRGMu8xTI7H+sjHkjde6oLaaNRG9AAWSQFOQtIf2tx1wcvamLU4f1kQl80c5omm7JNe+kIY2wtAuk
	TuQlwa2ULo41NmyWnu/euxsZynlxdFvqb8tE2qLHdDLPC8/Rd4E+g/PESISTC7y43vO4qtbpJLZqn
	YF4gTcyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohm14-00HAmY-Mx; Mon, 10 Oct 2022 06:11:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohm0d-00HAWg-Uk
	for barebox@lists.infradead.org; Mon, 10 Oct 2022 06:11:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1ohm0c-0000YH-M6; Mon, 10 Oct 2022 08:11:26 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ohm0b-000d9y-VW; Mon, 10 Oct 2022 08:11:25 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ohm0a-008kAt-5X; Mon, 10 Oct 2022 08:11:24 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 10 Oct 2022 08:11:17 +0200
Message-Id: <20221010061122.2084009-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221010061122.2084009-1-a.fatoum@pengutronix.de>
References: <20221010061122.2084009-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221009_231128_334199_45957820 
X-CRM114-Status: GOOD (  16.90  )
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
Subject: [PATCH 05/10] lds: introduce <asm/barebox.lds.h>
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We have a separate linker script for each architecture and one more for
PBL if supported. All linker scripts include <asm-generic/barebox.lds.h>.

In future, we may want to use a linker script common to more than one
architecture. Prepare for this by having each architecture define a
<asm/barebox.lds.h>. Currently, these files contain little more than
1-2 #include directives, but this will change in later commits.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/include/asm/barebox.lds.h       | 7 +++++++
 arch/arm/lib/pbl.lds.S                   | 2 +-
 arch/arm/lib32/barebox.lds.S             | 2 +-
 arch/arm/lib64/barebox.lds.S             | 2 +-
 arch/kvx/cpu/barebox.lds.S               | 2 +-
 arch/kvx/include/asm/barebox.lds.h       | 3 +++
 arch/mips/include/asm/barebox.lds.h      | 3 +++
 arch/mips/lib/barebox.lds.S              | 2 +-
 arch/mips/lib/pbl.lds.S                  | 2 +-
 arch/mips/pbl/zbarebox.lds.S             | 2 +-
 arch/openrisc/cpu/barebox.lds.S          | 2 +-
 arch/openrisc/include/asm/barebox.lds.h  | 3 +++
 arch/powerpc/boards/pcm030/barebox.lds.S | 2 +-
 arch/powerpc/include/asm/barebox.lds.h   | 3 +++
 arch/powerpc/mach-mpc85xx/barebox.lds.S  | 2 +-
 arch/riscv/include/asm/barebox.lds.h     | 3 +++
 arch/riscv/lib/barebox.lds.S             | 2 +-
 arch/riscv/lib/pbl.lds.S                 | 2 +-
 arch/sandbox/board/barebox.lds.S         | 2 +-
 arch/sandbox/include/asm/barebox.lds.h   | 3 +++
 arch/x86/include/asm/barebox.lds.h       | 3 +++
 arch/x86/mach-efi/elf_ia32_efi.lds.S     | 2 +-
 arch/x86/mach-efi/elf_x86_64_efi.lds.S   | 2 +-
 common/module.lds.S                      | 2 +-
 include/asm-generic/barebox.lds.h        | 4 ----
 lib/logo/Makefile                        | 2 +-
 scripts/Makefile.lib                     | 4 ++--
 scripts/gen-dtb-s                        | 2 +-
 28 files changed, 48 insertions(+), 24 deletions(-)
 create mode 100644 arch/arm/include/asm/barebox.lds.h
 create mode 100644 arch/kvx/include/asm/barebox.lds.h
 create mode 100644 arch/mips/include/asm/barebox.lds.h
 create mode 100644 arch/openrisc/include/asm/barebox.lds.h
 create mode 100644 arch/powerpc/include/asm/barebox.lds.h
 create mode 100644 arch/riscv/include/asm/barebox.lds.h
 create mode 100644 arch/sandbox/include/asm/barebox.lds.h
 create mode 100644 arch/x86/include/asm/barebox.lds.h

diff --git a/arch/arm/include/asm/barebox.lds.h b/arch/arm/include/asm/barebox.lds.h
new file mode 100644
index 000000000000..327beaf4bfb8
--- /dev/null
+++ b/arch/arm/include/asm/barebox.lds.h
@@ -0,0 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#if defined CONFIG_ARCH_EP93XX
+#include <mach/barebox.lds.h>
+#endif
+
+#include <asm-generic/barebox.lds.h>
diff --git a/arch/arm/lib/pbl.lds.S b/arch/arm/lib/pbl.lds.S
index d48f27bc43b5..cc4b12f44893 100644
--- a/arch/arm/lib/pbl.lds.S
+++ b/arch/arm/lib/pbl.lds.S
@@ -2,7 +2,7 @@
 /* SPDX-FileCopyrightText: 2012 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix */
 
 #include <linux/sizes.h>
-#include <asm-generic/barebox.lds.h>
+#include <asm/barebox.lds.h>
 #include <asm-generic/memory_layout.h>
 
 #ifdef CONFIG_PBL_RELOCATABLE
diff --git a/arch/arm/lib32/barebox.lds.S b/arch/arm/lib32/barebox.lds.S
index 77a5c525c5ae..2bf66657a367 100644
--- a/arch/arm/lib32/barebox.lds.S
+++ b/arch/arm/lib32/barebox.lds.S
@@ -1,7 +1,7 @@
 /* SPDX-License-Identifier: GPL-2.0-or-later */
 /* SPDX-FileCopyrightText: 2000-2004 Wolfgang Denk <wd@denx.de>, DENX Software Engineering */
 
-#include <asm-generic/barebox.lds.h>
+#include <asm/barebox.lds.h>
 #include <asm/secure.h>
 
 OUTPUT_FORMAT("elf32-littlearm", "elf32-littlearm", "elf32-littlearm")
diff --git a/arch/arm/lib64/barebox.lds.S b/arch/arm/lib64/barebox.lds.S
index 2ebaabef0f1d..c1069c896f27 100644
--- a/arch/arm/lib64/barebox.lds.S
+++ b/arch/arm/lib64/barebox.lds.S
@@ -1,7 +1,7 @@
 /* SPDX-License-Identifier: GPL-2.0-or-later */
 /* SPDX-FileCopyrightText: 2000-2004 Wolfgang Denk <wd@denx.de>, DENX Software Engineering */
 
-#include <asm-generic/barebox.lds.h>
+#include <asm/barebox.lds.h>
 
 OUTPUT_FORMAT("elf64-littleaarch64", "elf64-littleaarch64", "elf64-littleaarch64")
 OUTPUT_ARCH(aarch64)
diff --git a/arch/kvx/cpu/barebox.lds.S b/arch/kvx/cpu/barebox.lds.S
index 77ebaf0aeac0..a22998190f78 100644
--- a/arch/kvx/cpu/barebox.lds.S
+++ b/arch/kvx/cpu/barebox.lds.S
@@ -5,7 +5,7 @@
 
 #include <asm/common.h>
 #include <asm/sys_arch.h>
-#include <asm-generic/barebox.lds.h>
+#include <asm/barebox.lds.h>
 
 OUTPUT_FORMAT("elf64-kvx")
 OUTPUT_ARCH("kvx:kv3-1:64")
diff --git a/arch/kvx/include/asm/barebox.lds.h b/arch/kvx/include/asm/barebox.lds.h
new file mode 100644
index 000000000000..540d740959ff
--- /dev/null
+++ b/arch/kvx/include/asm/barebox.lds.h
@@ -0,0 +1,3 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#include <asm-generic/barebox.lds.h>
diff --git a/arch/mips/include/asm/barebox.lds.h b/arch/mips/include/asm/barebox.lds.h
new file mode 100644
index 000000000000..540d740959ff
--- /dev/null
+++ b/arch/mips/include/asm/barebox.lds.h
@@ -0,0 +1,3 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#include <asm-generic/barebox.lds.h>
diff --git a/arch/mips/lib/barebox.lds.S b/arch/mips/lib/barebox.lds.S
index c954df41f3cc..87668c7a7320 100644
--- a/arch/mips/lib/barebox.lds.S
+++ b/arch/mips/lib/barebox.lds.S
@@ -4,7 +4,7 @@
  */
 
 
-#include <asm-generic/barebox.lds.h>
+#include <asm/barebox.lds.h>
 
 OUTPUT_ARCH(mips)
 ENTRY(_start)
diff --git a/arch/mips/lib/pbl.lds.S b/arch/mips/lib/pbl.lds.S
index 413f24b9ab05..521333df0be0 100644
--- a/arch/mips/lib/pbl.lds.S
+++ b/arch/mips/lib/pbl.lds.S
@@ -4,7 +4,7 @@
  * (C) Copyright 2012 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
  */
 
-#include <asm-generic/barebox.lds.h>
+#include <asm/barebox.lds.h>
 #include <asm-generic/memory_layout.h>
 #include <linux/sizes.h>
 
diff --git a/arch/mips/pbl/zbarebox.lds.S b/arch/mips/pbl/zbarebox.lds.S
index 04b5b8680f27..2d82065bce08 100644
--- a/arch/mips/pbl/zbarebox.lds.S
+++ b/arch/mips/pbl/zbarebox.lds.S
@@ -3,7 +3,7 @@
  * (C) Copyright 2012 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
  */
 
-#include <asm-generic/barebox.lds.h>
+#include <asm/barebox.lds.h>
 #include <asm-generic/memory_layout.h>
 
 OUTPUT_ARCH("mips")
diff --git a/arch/openrisc/cpu/barebox.lds.S b/arch/openrisc/cpu/barebox.lds.S
index 45c5f2553951..f6999a113438 100644
--- a/arch/openrisc/cpu/barebox.lds.S
+++ b/arch/openrisc/cpu/barebox.lds.S
@@ -14,7 +14,7 @@
  */
 
 #include <config.h>
-#include <asm-generic/barebox.lds.h>
+#include <asm/barebox.lds.h>
 
 OUTPUT_FORMAT("elf32-or1k", "elf32-or1k", "elf32-or1k")
 ENTRY(__reset)
diff --git a/arch/openrisc/include/asm/barebox.lds.h b/arch/openrisc/include/asm/barebox.lds.h
new file mode 100644
index 000000000000..540d740959ff
--- /dev/null
+++ b/arch/openrisc/include/asm/barebox.lds.h
@@ -0,0 +1,3 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#include <asm-generic/barebox.lds.h>
diff --git a/arch/powerpc/boards/pcm030/barebox.lds.S b/arch/powerpc/boards/pcm030/barebox.lds.S
index 2536db745cf8..b90e88058113 100644
--- a/arch/powerpc/boards/pcm030/barebox.lds.S
+++ b/arch/powerpc/boards/pcm030/barebox.lds.S
@@ -14,7 +14,7 @@
  *
  */
 
-#include <asm-generic/barebox.lds.h>
+#include <asm/barebox.lds.h>
 
 OUTPUT_ARCH("powerpc")
 ENTRY(_start)
diff --git a/arch/powerpc/include/asm/barebox.lds.h b/arch/powerpc/include/asm/barebox.lds.h
new file mode 100644
index 000000000000..540d740959ff
--- /dev/null
+++ b/arch/powerpc/include/asm/barebox.lds.h
@@ -0,0 +1,3 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#include <asm-generic/barebox.lds.h>
diff --git a/arch/powerpc/mach-mpc85xx/barebox.lds.S b/arch/powerpc/mach-mpc85xx/barebox.lds.S
index 2b73fda4e6b8..253fd3735e48 100644
--- a/arch/powerpc/mach-mpc85xx/barebox.lds.S
+++ b/arch/powerpc/mach-mpc85xx/barebox.lds.S
@@ -13,7 +13,7 @@
  * GNU General Public License for more details.
  */
 
-#include <asm-generic/barebox.lds.h>
+#include <asm/barebox.lds.h>
 
 #ifdef CONFIG_RESET_VECTOR_ADDRESS
 #define RESET_VECTOR_ADDRESS    CONFIG_RESET_VECTOR_ADDRESS
diff --git a/arch/riscv/include/asm/barebox.lds.h b/arch/riscv/include/asm/barebox.lds.h
new file mode 100644
index 000000000000..540d740959ff
--- /dev/null
+++ b/arch/riscv/include/asm/barebox.lds.h
@@ -0,0 +1,3 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#include <asm-generic/barebox.lds.h>
diff --git a/arch/riscv/lib/barebox.lds.S b/arch/riscv/lib/barebox.lds.S
index 7856b57a5220..5de32a47e7c0 100644
--- a/arch/riscv/lib/barebox.lds.S
+++ b/arch/riscv/lib/barebox.lds.S
@@ -11,7 +11,7 @@
  *
  */
 
-#include <asm-generic/barebox.lds.h>
+#include <asm/barebox.lds.h>
 
 OUTPUT_ARCH(riscv)
 ENTRY(start)
diff --git a/arch/riscv/lib/pbl.lds.S b/arch/riscv/lib/pbl.lds.S
index ccf64fc6d3aa..ba59024ae037 100644
--- a/arch/riscv/lib/pbl.lds.S
+++ b/arch/riscv/lib/pbl.lds.S
@@ -2,7 +2,7 @@
 /* SPDX-FileCopyrightText: 2012 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix */
 
 #include <linux/sizes.h>
-#include <asm-generic/barebox.lds.h>
+#include <asm/barebox.lds.h>
 #include <asm-generic/memory_layout.h>
 
 OUTPUT_ARCH(riscv)
diff --git a/arch/sandbox/board/barebox.lds.S b/arch/sandbox/board/barebox.lds.S
index 84d085a25911..ab2801f3d207 100644
--- a/arch/sandbox/board/barebox.lds.S
+++ b/arch/sandbox/board/barebox.lds.S
@@ -1,6 +1,6 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 
-#include <asm-generic/barebox.lds.h>
+#include <asm/barebox.lds.h>
 
 SECTIONS
 {
diff --git a/arch/sandbox/include/asm/barebox.lds.h b/arch/sandbox/include/asm/barebox.lds.h
new file mode 100644
index 000000000000..540d740959ff
--- /dev/null
+++ b/arch/sandbox/include/asm/barebox.lds.h
@@ -0,0 +1,3 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#include <asm-generic/barebox.lds.h>
diff --git a/arch/x86/include/asm/barebox.lds.h b/arch/x86/include/asm/barebox.lds.h
new file mode 100644
index 000000000000..540d740959ff
--- /dev/null
+++ b/arch/x86/include/asm/barebox.lds.h
@@ -0,0 +1,3 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#include <asm-generic/barebox.lds.h>
diff --git a/arch/x86/mach-efi/elf_ia32_efi.lds.S b/arch/x86/mach-efi/elf_ia32_efi.lds.S
index ac89fd89a4d3..14ae702e5049 100644
--- a/arch/x86/mach-efi/elf_ia32_efi.lds.S
+++ b/arch/x86/mach-efi/elf_ia32_efi.lds.S
@@ -1,6 +1,6 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 
-#include <asm-generic/barebox.lds.h>
+#include <asm/barebox.lds.h>
 
 OUTPUT_FORMAT("elf32-i386", "elf32-i386", "elf32-i386")
 OUTPUT_ARCH(i386)
diff --git a/arch/x86/mach-efi/elf_x86_64_efi.lds.S b/arch/x86/mach-efi/elf_x86_64_efi.lds.S
index b620ba5b3797..8c666235ce1a 100644
--- a/arch/x86/mach-efi/elf_x86_64_efi.lds.S
+++ b/arch/x86/mach-efi/elf_x86_64_efi.lds.S
@@ -1,6 +1,6 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 
-#include <asm-generic/barebox.lds.h>
+#include <asm/barebox.lds.h>
 
 /* Same as elf_x86_64_fbsd_efi.lds, except for OUTPUT_FORMAT below - KEEP IN SYNC */
 
diff --git a/common/module.lds.S b/common/module.lds.S
index 76f3b6d1bba1..b2d685670bb0 100644
--- a/common/module.lds.S
+++ b/common/module.lds.S
@@ -15,7 +15,7 @@
  *
  */
 
-#include <asm-generic/barebox.lds.h>
+#include <asm/barebox.lds.h>
 
 SECTIONS
 {
diff --git a/include/asm-generic/barebox.lds.h b/include/asm-generic/barebox.lds.h
index 48c10b173852..d3736ebaed59 100644
--- a/include/asm-generic/barebox.lds.h
+++ b/include/asm-generic/barebox.lds.h
@@ -8,10 +8,6 @@
 #define STRUCT_ALIGNMENT 32
 #define STRUCT_ALIGN() . = ALIGN(STRUCT_ALIGNMENT)
 
-#if defined CONFIG_ARCH_EP93XX
-#include <mach/barebox.lds.h>
-#endif
-
 #ifndef PRE_IMAGE
 #define PRE_IMAGE
 #endif
diff --git a/lib/logo/Makefile b/lib/logo/Makefile
index d076a19a7657..382701fb365c 100644
--- a/lib/logo/Makefile
+++ b/lib/logo/Makefile
@@ -25,7 +25,7 @@ obj-$(CONFIG_BAREBOX_LOGO) += logo.o
 quiet_cmd_logo_S = LOGO.S  $@
 cmd_logo_S =							\
 (								\
-	echo '\#include <asm-generic/barebox.lds.h>';		\
+	echo '\#include <asm/barebox.lds.h>';			\
 	echo '.section .bblogo.rodata.$(subst -,_,$(*F)),"a"';	\
 	echo '.balign STRUCT_ALIGNMENT';			\
 	echo '.global __bblogo_$(subst -,_,$(*F))_start';	\
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 16308497b845..85d18f07a2b6 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -379,7 +379,7 @@ dtc-tmp = $(subst $(comma),_,$(dot-target).dts)
 quiet_cmd_env_S = ENV.S   $@
 cmd_env_S =							\
 (								\
-	echo '\#include <asm-generic/barebox.lds.h>';		\
+	echo '\#include <asm/barebox.lds.h>';			\
 	echo '.section .bbenv.rodata.$(subst -,_,$(*F)),"a"';	\
 	echo '.balign STRUCT_ALIGNMENT';			\
 	echo '.global __bbenv_$(subst -,_,$(*F))_start';	\
@@ -528,7 +528,7 @@ quiet_cmd_check_file_size = CHKFILESIZE $2
 quiet_cmd_imximage__S_dcd= DCD_S   $@
 cmd_imximage_S_dcd=						\
 (								\
-	echo '\#include <asm-generic/barebox.lds.h>';		\
+	echo '\#include <asm/barebox.lds.h>';			\
 	echo '.balign STRUCT_ALIGNMENT';			\
 	echo '.global $(subst -,_,$(*F))_start';		\
 	echo '$(subst -,_,$(*F))_start:';			\
diff --git a/scripts/gen-dtb-s b/scripts/gen-dtb-s
index eadf4d76f313..c5c46a4d8675 100755
--- a/scripts/gen-dtb-s
+++ b/scripts/gen-dtb-s
@@ -4,7 +4,7 @@ name=$1
 dtb=$2
 imd=$3
 
-echo "#include <asm-generic/barebox.lds.h>"
+echo "#include <asm/barebox.lds.h>"
 
 le32() {
 	printf ".byte 0x%02x, 0x%02x, 0x%02x, 0x%02x\n" \
-- 
2.30.2



