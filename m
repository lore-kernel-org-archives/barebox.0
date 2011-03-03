Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PvHUM-0003Mm-3d
	for barebox@lists.infradead.org; Thu, 03 Mar 2011 22:59:26 +0000
Received: by mail-wy0-f177.google.com with SMTP id 23so1676005wyf.36
	for <barebox@lists.infradead.org>; Thu, 03 Mar 2011 14:59:17 -0800 (PST)
From: franck.jullien@gmail.com
Date: Thu,  3 Mar 2011 23:58:46 +0100
Message-Id: <4d701d45.9009d80a.2cd3.5e94@mx.google.com>
In-Reply-To: <n>
References: <n>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 32/54] Add arch/nios2/include/asm/elf.h
To: barebox@lists.infradead.org

From: Franck JULLIEN <franck.jullien@gmail.com>

Add arch/nios2/include/asm/elf.h

---
 arch/nios2/include/asm/elf.h |  119 ++++++++++++++++++++++++++++++++++++++++++
 1 files changed, 119 insertions(+), 0 deletions(-)
 create mode 100644 arch/nios2/include/asm/elf.h

diff --git a/arch/nios2/include/asm/elf.h b/arch/nios2/include/asm/elf.h
new file mode 100644
index 0000000..6b55a23
--- /dev/null
+++ b/arch/nios2/include/asm/elf.h
@@ -0,0 +1,119 @@
+#ifndef _ASM_NIOS2_ELF_H
+#define _ASM_NIOS2_ELF_H
+
+#define R_NIOS2_NONE		0
+#define R_NIOS2_S16		1
+#define R_NIOS2_U16		2
+#define R_NIOS2_PCREL16		3
+#define R_NIOS2_CALL26		4
+#define R_NIOS2_IMM5		5
+#define R_NIOS2_CACHE_OPX 	6
+#define R_NIOS2_IMM6		7
+#define R_NIOS2_IMM8		8
+#define R_NIOS2_HI16		9
+#define R_NIOS2_LO16		10
+#define R_NIOS2_HIADJ16 	11
+#define R_NIOS2_BFD_RELOC_32	12
+#define R_NIOS2_BFD_RELOC_16	13
+#define R_NIOS2_BFD_RELOC_8	14
+#define R_NIOS2_GPREL		15
+#define R_NIOS2_GNU_VTINHERIT 	16
+#define R_NIOS2_GNU_VTENTRY  	17
+#define R_NIOS2_UJMP		18
+#define R_NIOS2_CJMP		19
+#define R_NIOS2_CALLR		20
+#define R_NIOS2_ALIGN		21
+/* Keep this the last entry.  */
+#define R_NIOS2_NUM		22
+
+#include <asm/ptrace.h>
+#include <asm/user.h>
+
+typedef unsigned long elf_greg_t;
+
+#define ELF_NGREG (sizeof (struct pt_regs) / sizeof(elf_greg_t))
+typedef elf_greg_t elf_gregset_t[ELF_NGREG];
+
+typedef unsigned long elf_fpregset_t;
+
+/*
+ * This is used to ensure we don't load something for the wrong architecture.
+ */
+#define elf_check_arch(x) ((x)->e_machine == EM_ALTERA_NIOS2)
+
+/*
+ * These are used to set parameters in the core dumps.
+ */
+#define ELF_CLASS	ELFCLASS32
+#define ELF_DATA	ELFDATA2LSB
+#define ELF_ARCH	EM_ALTERA_NIOS2
+
+#define ELF_PLAT_INIT(_r, load_addr)
+
+#define USE_ELF_CORE_DUMP
+#define ELF_EXEC_PAGESIZE	4096
+
+/* This is the location that an ET_DYN program is loaded if exec'ed.  Typical
+   use of this is to invoke "./ld.so someprog" to test out a new version of
+   the loader.  We need to make sure that it is out of the way of the program
+   that it will "exec", and that there is sufficient room for the brk.  */
+
+#define ELF_ET_DYN_BASE         0xD0000000UL
+
+/* regs is struct pt_regs, pr_reg is elf_gregset_t (which is
+   now struct_user_regs, they are different) */
+
+#define ELF_CORE_COPY_REGS(pr_reg, regs)				\
+	/* Bleech. */							\
+	pr_reg[0]  = regs->r8;						\
+	pr_reg[1]  = regs->r9;						\
+	pr_reg[2]  = regs->r10;						\
+	pr_reg[3]  = regs->r11;						\
+	pr_reg[4]  = regs->r12;						\
+	pr_reg[5]  = regs->r13;						\
+	pr_reg[6]  = regs->r14;						\
+	pr_reg[7]  = regs->r15;						\
+	pr_reg[8]  = regs->r1;						\
+	pr_reg[9]  = regs->r2;						\
+	pr_reg[10] = regs->r3;						\
+	pr_reg[11] = regs->r4;						\
+	pr_reg[12] = regs->r5;						\
+	pr_reg[13] = regs->r6;						\
+	pr_reg[14] = regs->r7;						\
+	pr_reg[15] = regs->orig_r2;					\
+	pr_reg[16] = regs->ra;						\
+	pr_reg[17] = regs->fp;						\
+	pr_reg[18] = regs->sp;						\
+	pr_reg[19] = regs->gp;						\
+	pr_reg[20] = regs->estatus;					\
+	pr_reg[21] = regs->ea;						\
+	pr_reg[22] = regs->orig_r7;					\
+	{								\
+	  struct switch_stack *sw = ((struct switch_stack *)regs) - 1;	\
+	  pr_reg[23] = sw->r16;						\
+	  pr_reg[24] = sw->r17;						\
+	  pr_reg[25] = sw->r18;						\
+	  pr_reg[26] = sw->r19;						\
+	  pr_reg[27] = sw->r20;						\
+	  pr_reg[28] = sw->r21;						\
+	  pr_reg[29] = sw->r22;						\
+	  pr_reg[30] = sw->r23;						\
+	  pr_reg[31] = sw->fp;						\
+	  pr_reg[32] = sw->gp;						\
+	  pr_reg[33] = sw->ra;						\
+	}
+
+/* This yields a mask that user programs can use to figure out what
+   instruction set this cpu supports.  */
+
+#define ELF_HWCAP	(0)
+
+/* This yields a string that ld.so will use to load implementation
+   specific libraries for optimization.  This is more specific in
+   intent than poking at uname or /proc/cpuinfo.  */
+
+#define ELF_PLATFORM  (NULL)
+
+#define SET_PERSONALITY(ex) set_personality(PER_LINUX_32BIT)
+
+#endif
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
