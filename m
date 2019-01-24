Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gmVUn-0007ed-EE
 for barebox@lists.infradead.org; Thu, 24 Jan 2019 03:16:02 +0000
Received: by mail-pg1-x542.google.com with SMTP id j10so2036737pga.1
 for <barebox@lists.infradead.org>; Wed, 23 Jan 2019 19:15:59 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 23 Jan 2019 19:15:43 -0800
Message-Id: <20190124031543.11733-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] ARM: aarch64: Avoid relocations in runtime-offset.S
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Since get_runtime_offset() is executed as a part of reloaction logic,
it cannot have code dependend on any kind of
relocation. Unfortunately, current codebase violates this rule and

linkadr:
.quad get_runtime_offset

ends up producing R_AARCH64_RELATIVE relocation that has to be
resolved at runtime. From tiral and error experimentation it seems
that the simplest way to do this is to drop "a" (allocatable)
attribute fom the section directive in runtime-offset.S

With "a" (see first entry):

aarch64-linux-gnu-objdump -R images/start_zii_imx8mq_dev.pbl

images/start_zii_imx8mq_dev.pbl:     file format elf64-littleaarch64

DYNAMIC RELOCATION RECORDS
OFFSET           TYPE              VALUE
00000000000000b0 R_AARCH64_RELATIVE  *ABS*+0x00000000000000a0
0000000000004258 R_AARCH64_RELATIVE  *ABS*+0x0000000000028118
0000000000004260 R_AARCH64_RELATIVE  *ABS*+0x0000000000028128
00000000000042e0 R_AARCH64_RELATIVE  *ABS*
00000000000042e8 R_AARCH64_RELATIVE  *ABS*+0x0000000000028118
00000000000042f0 R_AARCH64_RELATIVE  *ABS*+0x00000000000042c8

Without "a":

 aarch64-linux-gnu-objdump -R images/start_zii_imx8mq_dev.pbl

images/start_zii_imx8mq_dev.pbl:     file format elf64-littleaarch64

DYNAMIC RELOCATION RECORDS
OFFSET           TYPE              VALUE
0000000000004258 R_AARCH64_RELATIVE  *ABS*+0x0000000000028100
0000000000004260 R_AARCH64_RELATIVE  *ABS*+0x0000000000028110
00000000000042e0 R_AARCH64_RELATIVE  *ABS*
00000000000042e8 R_AARCH64_RELATIVE  *ABS*+0x0000000000028100
00000000000042f0 R_AARCH64_RELATIVE  *ABS*+0x00000000000042c8

Note that on recent toolchains (tested on 8.1.1), this problem is
masked by the fact that

.quad get_runtime_offset

will be initialized with link-time value of "get_runtime_offset" in
addition to having a R_AARCH64_RELATIVE relocation.

00000000000000a0 <get_runtime_offset>:
      a0:	10000000 	adr	x0, a0 <get_runtime_offset>
      a4:	58000061 	ldr	x1, b0 <linkadr>
      a8:	eb010000 	subs	x0, x0, x1
      ac:	d65f03c0 	ret

00000000000000b0 <linkadr>:
      b0:	000000a0 	.word	0x000000a0
      b4:	00000000 	.word	0x00000000

_However_, older toolchains (tested on 5.5.0), will only issue a
R_AARCH64_RELATIVE, so memory location will contain only zeroes:

00000000000000a0 <get_runtime_offset>:
      a0:	10000000 	adr	x0, a0 <get_runtime_offset>
      a4:	58000061 	ldr	x1, b0 <linkadr>
      a8:	eb010000 	subs	x0, x0, x1
      ac:	d65f03c0 	ret

00000000000000b0 <linkadr>:
	...

This leads to an very early crash and complete boot failure in the
latter case.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---

Sascha:

Assuming that proposed fix is OK, this should probably got to 'master'
as well as 'next'.

Thanks,
Andrey Smirnov

 arch/arm/lib64/runtime-offset.S | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/lib64/runtime-offset.S b/arch/arm/lib64/runtime-offset.S
index 177ca6478..c90469e66 100644
--- a/arch/arm/lib64/runtime-offset.S
+++ b/arch/arm/lib64/runtime-offset.S
@@ -1,7 +1,7 @@
 #include <linux/linkage.h>
 #include <asm/assembler.h>
 
-.section ".text_bare_init","ax"
+.section ".text_bare_init","x"
 
 /*
  * Get the offset between the link address and the address
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
