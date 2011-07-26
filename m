Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ew0-f49.google.com ([209.85.215.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QlmMp-0001oF-T0
	for barebox@lists.infradead.org; Tue, 26 Jul 2011 18:28:32 +0000
Received: by ewy3 with SMTP id 3so848974ewy.36
	for <barebox@lists.infradead.org>; Tue, 26 Jul 2011 11:28:28 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 26 Jul 2011 22:28:23 +0400
Message-Id: <1311704903-32404-1-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1311655236-6684-1-git-send-email-plagnioj@jcrosoft.com>
References: <1311655236-6684-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH] MIPS: fix fix mipsel toolchains support to compile BIG_ENDIAN
	board
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/Makefile |   10 +---------
 1 files changed, 1 insertions(+), 9 deletions(-)

diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index 72434d4..43b8ae6 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -2,17 +2,9 @@
 # Select the object file format to substitute into the linker script.
 #
 ifdef CONFIG_CPU_LITTLE_ENDIAN
-32bit-tool-archpref	= mipsel
-64bit-tool-archpref	= mips64el
-32bit-bfd		= elf32-tradlittlemips
-64bit-bfd		= elf64-tradlittlemips
 32bit-emul		= elf32ltsmip
 64bit-emul		= elf64ltsmip
 else
-32bit-tool-archpref	= mips
-64bit-tool-archpref	= mips64
-32bit-bfd		= elf32-tradbigmips
-64bit-bfd		= elf64-tradbigmips
 32bit-emul		= elf32btsmip
 64bit-emul		= elf64btsmip
 endif
@@ -43,7 +35,7 @@ cflags-y += $(shell $(CC) -dumpmachine |grep -q 'mips.*el-.*' && echo -EB $(unde
 ldflags-y += $(shell $(CC) -dumpmachine |grep -q 'mips.*el-.*' && echo -EB )
 endif
 
-ifdef CONFIG_CPU_BIG_ENDIAN
+ifdef CONFIG_CPU_LITTLE_ENDIAN
 cflags-y += $(shell $(CC) -dumpmachine |grep -q 'mips.*el-.*' || echo -EL $(undef-all) $(predef-le))
 ldflags-y += $(shell $(CC) -dumpmachine |grep -q 'mips.*el-.*' || echo -EL )
 endif
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
