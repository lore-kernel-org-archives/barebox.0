Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yk0-x230.google.com ([2607:f8b0:4002:c07::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zbojx-0000Cn-1L
 for barebox@lists.infradead.org; Tue, 15 Sep 2015 11:49:37 +0000
Received: by ykdg206 with SMTP id g206so181910551ykd.1
 for <barebox@lists.infradead.org>; Tue, 15 Sep 2015 04:49:15 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 15 Sep 2015 19:49:15 +0800
Message-ID: <CANvTkNYaWMG0biCUXs+hZNBoPBg6dvS8artP8eo+5pvU_MGSdg@mail.gmail.com>
From: Kevin Du Huanpeng <u74147@gmail.com>
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
Subject: compile bug about banner and version macros.
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

this patch fix a tiny compile bug.
1. how to reproduce the bug.
        $ export ARCH=mips
        $ export CROSS_COMPILE=mips-linux-gnu-
        $ make allnoconfig
- - - error msg - - -
du@L64:~/source/barebox$ make
  CHK     include/generated/version.h
  CHK     include/generated/utsrelease.h
  AS      arch/mips/boot/start.o
arch/mips/boot/start.S:25:31: fatal error: generated/compile.h: No
such file or directory
 #include <generated/compile.h>
                               ^
compilation terminated.
make[1]: *** [arch/mips/boot/start.o] Error 1
make: *** [arch/mips/boot] Error 2
- - - error msg - - -

2. huntting the bug.
after use grep, I find the file is depends on version.o in
        $ vi common/Makefile +81
                81 $(obj)/version.o: include/generated/compile.h
when the CONFIG_BANNER is not enabled, the version.o is not exsist,
so, the file was never genated.
                13 obj-$(CONFIG_BANNER)            += version.o
3. fix it.
add condition compile, or anyone have better sulotion?
----
diff --git a/arch/mips/boot/start.S b/arch/mips/boot/start.S
index 7e2ae5e..2b0ffa8 100644
--- a/arch/mips/boot/start.S
+++ b/arch/mips/boot/start.S
@@ -22,7 +22,9 @@
 #include <asm/mipsregs.h>
 #include <asm/asm.h>
 #include <asm-generic/memory_layout.h>
+#ifdef CONFIG_BANNER
 #include <generated/compile.h>
+#endif
 #include <generated/utsrelease.h>

        /*
@@ -56,7 +58,10 @@ EXPORT(_start)
         nop

        .org    0x10
-       .ascii  "barebox " UTS_RELEASE " " UTS_VERSION
+       .ascii  "barebox " UTS_RELEASE
+#ifdef CONFIG_BANNER
+       .ascii  " " UTS_VERSION
+#endif
        .byte   0

        .align 4

----
4. better sulotion?
I grep-ed compile.h, more than one source code use this file without
check the CONFIG_BANNER macro. so... maybe my patch need improved.
or allways genate compile.h? this just waste some time when compiling.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
