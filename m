Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j44yB-0005Nx-9O
 for barebox@lists.infradead.org; Tue, 18 Feb 2020 15:39:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 18 Feb 2020 16:39:12 +0100
Message-Id: <20200218153917.15937-3-s.hauer@pengutronix.de>
In-Reply-To: <20200218153917.15937-1-s.hauer@pengutronix.de>
References: <20200218153917.15937-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/8] ARM: arm64: remove bare_init
To: Barebox List <barebox@lists.infradead.org>

bare_init is only meaningful when we initially only have parts of
the barebox binary available. This is not the case on ARM64, so remove
the unnecessary __bare_init attributes.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/lowlevel_64.S      | 2 +-
 arch/arm/lib64/barebox.lds.S    | 3 ---
 arch/arm/lib64/runtime-offset.S | 2 +-
 3 files changed, 2 insertions(+), 5 deletions(-)

diff --git a/arch/arm/cpu/lowlevel_64.S b/arch/arm/cpu/lowlevel_64.S
index 6a23132ed1..4a3ab7e683 100644
--- a/arch/arm/cpu/lowlevel_64.S
+++ b/arch/arm/cpu/lowlevel_64.S
@@ -3,7 +3,7 @@
 #include <asm/system.h>
 #include <asm/assembler64.h>
 
-.section ".text_bare_init_","ax"
+.section ".text.arm_cpu_lowlevel_init","ax"
 ENTRY(arm_cpu_lowlevel_init)
 	switch_el x1, 3f, 2f, 1f
 
diff --git a/arch/arm/lib64/barebox.lds.S b/arch/arm/lib64/barebox.lds.S
index cf6ef18895..cfafa5311c 100644
--- a/arch/arm/lib64/barebox.lds.S
+++ b/arch/arm/lib64/barebox.lds.S
@@ -42,9 +42,6 @@ SECTIONS
 	{
 		_stext = .;
 		*(.text_entry*)
-		__bare_init_start = .;
-		*(.text_bare_init*)
-		__bare_init_end = .;
 		__exceptions_start = .;
 		KEEP(*(.text_exceptions*))
 		__exceptions_stop = .;
diff --git a/arch/arm/lib64/runtime-offset.S b/arch/arm/lib64/runtime-offset.S
index 5e5ab9a8d1..d6f0c10c46 100644
--- a/arch/arm/lib64/runtime-offset.S
+++ b/arch/arm/lib64/runtime-offset.S
@@ -1,7 +1,7 @@
 #include <linux/linkage.h>
 #include <asm/assembler.h>
 
-.section ".text_bare_init","ax"
+.section ".text.get_runtime_offset","ax"
 
 /*
  * Get the offset between the link address and the address
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
