Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFfrl-0004YF-MA
 for barebox@lists.infradead.org; Wed, 02 Oct 2019 14:44:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  2 Oct 2019 16:44:28 +0200
Message-Id: <20191002144430.14946-6-s.hauer@pengutronix.de>
In-Reply-To: <20191002144430.14946-1-s.hauer@pengutronix.de>
References: <20191002144430.14946-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/7] X86: lds: remove unnecessary alignments
To: Barebox List <barebox@lists.infradead.org>

We do not seem to need all these alignments in the rodata sections
except the one for the command array. Remove them and put the alignment
for the command array into the BAREBOX_CMDS define.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/sandbox/board/barebox.lds.S       | 8 --------
 arch/x86/mach-efi/elf_ia32_efi.lds.S   | 6 ------
 arch/x86/mach-efi/elf_x86_64_efi.lds.S | 6 ------
 include/asm-generic/barebox.lds.h      | 6 ++++++
 4 files changed, 6 insertions(+), 20 deletions(-)

diff --git a/arch/sandbox/board/barebox.lds.S b/arch/sandbox/board/barebox.lds.S
index bdce8ecbd6..862376dd0e 100644
--- a/arch/sandbox/board/barebox.lds.S
+++ b/arch/sandbox/board/barebox.lds.S
@@ -4,17 +4,9 @@ SECTIONS
 {
 	. = ALIGN(64);
 	.barebox_initcalls : { BAREBOX_INITCALLS }
-
-	. = ALIGN(64);
 	.barebox_exitcalls : { BAREBOX_EXITCALLS }
-
-	. = ALIGN(64);
 	.barebox_magicvar : { BAREBOX_MAGICVARS }
-
-	. = ALIGN(64);
 	__barebox_cmd : { BAREBOX_CMDS }
-
-	. = ALIGN(64);
 	__barebox_ratp_cmd : { BAREBOX_RATP_CMDS }
 }
 
diff --git a/arch/x86/mach-efi/elf_ia32_efi.lds.S b/arch/x86/mach-efi/elf_ia32_efi.lds.S
index a5874c448b..70d34f4871 100644
--- a/arch/x86/mach-efi/elf_ia32_efi.lds.S
+++ b/arch/x86/mach-efi/elf_ia32_efi.lds.S
@@ -54,14 +54,8 @@ SECTIONS
 
 	.barebox_initcalls : { BAREBOX_INITCALLS }
 	.barebox_exitcalls : { BAREBOX_EXITCALLS }
-
-	. = ALIGN(64);
 	.barebox_magicvar : { BAREBOX_MAGICVARS }
-
-	. = ALIGN(64);
 	__barebox_cmd : { BAREBOX_CMDS }
-
-	. = ALIGN(64);
 	__barebox_ratp_cmd : { BAREBOX_RATP_CMDS }
 
 	. = ALIGN(4096);
diff --git a/arch/x86/mach-efi/elf_x86_64_efi.lds.S b/arch/x86/mach-efi/elf_x86_64_efi.lds.S
index b00cb98c97..53de22d75c 100644
--- a/arch/x86/mach-efi/elf_x86_64_efi.lds.S
+++ b/arch/x86/mach-efi/elf_x86_64_efi.lds.S
@@ -56,14 +56,8 @@ SECTIONS
 
 	.barebox_initcalls : { BAREBOX_INITCALLS }
 	.barebox_exitcalls : { BAREBOX_EXITCALLS }
-
-	. = ALIGN(64);
 	.barebox_magicvar : { BAREBOX_MAGICVARS }
-
-	. = ALIGN(64);
 	__barebox_cmd : { BAREBOX_CMDS }
-
-	. = ALIGN(64);
 	__barebox_ratp_cmd : { BAREBOX_RATP_CMDS }
 
 	. = ALIGN(4096);
diff --git a/include/asm-generic/barebox.lds.h b/include/asm-generic/barebox.lds.h
index 2f8786356e..acf838e85f 100644
--- a/include/asm-generic/barebox.lds.h
+++ b/include/asm-generic/barebox.lds.h
@@ -46,7 +46,13 @@
 	KEEP(*(.exitcall.6))			\
 	__barebox_exitcalls_end = .;
 
+/* For some obscure reason X86_64 needs these 64bit aligned */
+#ifdef __x86_64__
+#define X86_64_ALIGN . = ALIGN(64);
+#endif
+
 #define BAREBOX_CMDS				\
+	X86_64_ALIGN				\
 	__barebox_cmd_start = .;		\
 	KEEP(*(SORT_BY_NAME(.barebox_cmd*)))	\
 	__barebox_cmd_end = .;
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
