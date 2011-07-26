Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo4.mail-out.ovh.net ([91.121.62.11]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QlZiW-00008U-Ca
	for barebox@lists.infradead.org; Tue, 26 Jul 2011 04:58:05 +0000
Received: from mail92.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id E7F76FFB579
	for <barebox@lists.infradead.org>;
	Tue, 26 Jul 2011 06:58:43 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 26 Jul 2011 06:40:36 +0200
Message-Id: <1311655236-6684-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH] mips: fix mipsel toolchains support to compile BIG_ENDIAN
	board
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/mips/Makefile |   42 ++++++++++++++++++++++++++++++++++++++----
 1 files changed, 38 insertions(+), 4 deletions(-)

diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index 86b4b80..72434d4 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -1,20 +1,54 @@
+#
+# Select the object file format to substitute into the linker script.
+#
+ifdef CONFIG_CPU_LITTLE_ENDIAN
+32bit-tool-archpref	= mipsel
+64bit-tool-archpref	= mips64el
+32bit-bfd		= elf32-tradlittlemips
+64bit-bfd		= elf64-tradlittlemips
+32bit-emul		= elf32ltsmip
+64bit-emul		= elf64ltsmip
+else
+32bit-tool-archpref	= mips
+64bit-tool-archpref	= mips64
+32bit-bfd		= elf32-tradbigmips
+64bit-bfd		= elf64-tradbigmips
+32bit-emul		= elf32btsmip
+64bit-emul		= elf64btsmip
+endif
+
 CPPFLAGS += -D__MIPS__ -fno-strict-aliasing -fno-merge-constants
 
 cflags-y += -G 0 -mno-abicalls -fno-pic -pipe
 cflags-y += -Wall -Wmissing-prototypes -Wstrict-prototypes \
 	-Wno-uninitialized -Wno-format -Wno-main
 
-cflags-$(CONFIG_32BIT) += -mabi=32
-cflags-$(CONFIG_64BIT) += -mabi=64
+ifdef CONFIG_32BIT
+ld-emul		= $(32bit-emul)
+cflags-y	+= -mabi=32
+endif
+
+ifdef CONFIG_64BIT
+ld-emul		= $(64bit-emul)
+cflags-y	+= -mabi=64
+endif
 
 undef-all += -UMIPSEB -U_MIPSEB -U__MIPSEB -U__MIPSEB__
 undef-all += -UMIPSEL -U_MIPSEL -U__MIPSEL -U__MIPSEL__
 predef-be += -DMIPSEB -D_MIPSEB -D__MIPSEB -D__MIPSEB__
 predef-le += -DMIPSEL -D_MIPSEL -D__MIPSEL -D__MIPSEL__
 
-cflags-$(CONFIG_CPU_BIG_ENDIAN) += $(shell $(CC) -dumpmachine |grep -q 'mips.*el-.*' && echo -EB $(undef-all) $(predef-be))
+ifdef CONFIG_CPU_BIG_ENDIAN
+cflags-y += $(shell $(CC) -dumpmachine |grep -q 'mips.*el-.*' && echo -EB $(undef-all) $(predef-be))
+ldflags-y += $(shell $(CC) -dumpmachine |grep -q 'mips.*el-.*' && echo -EB )
+endif
+
+ifdef CONFIG_CPU_BIG_ENDIAN
+cflags-y += $(shell $(CC) -dumpmachine |grep -q 'mips.*el-.*' || echo -EL $(undef-all) $(predef-le))
+ldflags-y += $(shell $(CC) -dumpmachine |grep -q 'mips.*el-.*' || echo -EL )
+endif
 
-cflags-$(CONFIG_CPU_LITTLE_ENDIAN) += $(shell $(CC) -dumpmachine |grep -q 'mips.*el-.*' || echo -EL $(undef-all) $(predef-le))
+LDFLAGS += $(ldflags-y) -m $(ld-emul)
 
 #
 # CPU-dependent compiler/assembler options for optimization.
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
