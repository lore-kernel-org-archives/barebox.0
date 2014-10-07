Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XbVf2-0008HT-79
 for barebox@lists.infradead.org; Tue, 07 Oct 2014 14:22:47 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1XbVee-0003OL-Qm
 for barebox@lists.infradead.org; Tue, 07 Oct 2014 16:22:20 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.84)
 (envelope-from <jbe@pengutronix.de>) id 1XbVee-0004Cg-Pb
 for barebox@lists.infradead.org; Tue, 07 Oct 2014 16:22:20 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Tue,  7 Oct 2014 16:22:00 +0200
Message-Id: <1412691738-11145-2-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1412691738-11145-1-git-send-email-jbe@pengutronix.de>
References: <1412691738-11145-1-git-send-email-jbe@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 01/19] arch/MPC5xxx: fix linker script for MPC5200
To: barebox@lists.infradead.org

Without this change the barebox.bin ends up with:

00000000  79 ba 8f 79 00 00 00 00  75 39 6e d1 74 27 00 00  |y..y....u9n.t'..|
00000010  01 00 00 00 00 00 00 00  28 80 ad db 8d c7 a8 67  |........(......g|
00000020  4e 07 00 00 10 00 00 00  2f 63 6f 6e 66 69 67 00  |N......./config.|
00000030  8d c7 a8 68 ff 01 00 00  23 21 2f 62 69 6e 2f 73  |...h....#!/bin/s|
00000040  68 0a 0a 68 6f 73 74 6e  61 6d 65 3d 46 49 58 4d  |h..hostname=FIXM|
00000050  45 0a 69 66 20 5b 20 2d  7a 20 22 24 75 73 65 72  |E.if [ -z "$user|
00000060  22 20 5d 3b 20 74 68 65  6e 0a 23 09 75 73 65 72  |" ]; then.#.user|
00000070  3d 0a 66 69 0a 0a 23 20  45 6e 74 65 72 20 4d 41  |=.fi..# Enter MA|
[...]

which means it starts with the default environment instead of the reset vector area.

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 arch/ppc/boards/pcm030/barebox.lds.S | 26 +++++++++++++++-----------
 1 file changed, 15 insertions(+), 11 deletions(-)

diff --git a/arch/ppc/boards/pcm030/barebox.lds.S b/arch/ppc/boards/pcm030/barebox.lds.S
index 20ac0d8..1332ad1 100644
--- a/arch/ppc/boards/pcm030/barebox.lds.S
+++ b/arch/ppc/boards/pcm030/barebox.lds.S
@@ -26,7 +26,21 @@ SECTIONS
 {
   . = TEXT_BASE;
 
+  .text      :
+  {
+    _text = .;
+    _stext = .;
+    arch/ppc/mach-mpc5xxx/start.o	(.text)
+    *(.text*)
+    *(.got1*)
+    . = ALIGN(16);
+    *(.rodata*)
+    *(.rodata1*)
+    *(.rodata.str1.4)
+  }
+
   /* Read-only sections, merged into text segment: */
+/*
   .interp : { *(.interp) }
   .hash          : { *(.hash)		}
   .dynsym        : { *(.dynsym)		}
@@ -50,20 +64,10 @@ SECTIONS
   .init          : { *(.init)	}
   .plt : { *(.plt) }
   .text      :
-  {
-    _text = .;
-    _stext = .;
-    arch/ppc/mach-mpc5xxx/start.o	(.text)
-    *(.text*)
-    *(.got1*)
-    . = ALIGN(16);
-    *(.rodata*)
-    *(.rodata1*)
-    *(.rodata.str1.4)
-  }
   .fini      : { *(.fini)    } =0
   .ctors     : { *(.ctors)   }
   .dtors     : { *(.dtors)   }
+*/
 
   /* Read-write section, merged into data segment: */
   . = (. + 0x0FFF) & 0xFFFFF000;
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
