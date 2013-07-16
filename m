Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22b.google.com ([2a00:1450:4010:c04::22b])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uz0gM-0004no-Se
 for barebox@lists.infradead.org; Tue, 16 Jul 2013 08:32:29 +0000
Received: by mail-lb0-f171.google.com with SMTP id 13so380158lba.30
 for <barebox@lists.infradead.org>; Tue, 16 Jul 2013 01:32:03 -0700 (PDT)
Date: Tue, 16 Jul 2013 12:30:12 +0400
From: "antonynpavlov@gmail.com" <antonynpavlov@gmail.com>
Message-Id: <20130716123012.3cea8ffd77234ce1edd94493@gmail.com>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: ARM: stack region-related issue
To: barebox@lists.infradead.org

Hi, all!

We have common request_sdram_region("stack", ...)
in mem_malloc_resource() (common/memory.c).

But we also have ARM-special request_sdram_region("stack", ...)
inside arm_request_stack() initcall.

In normal situation there is no problem at all.

Here is the 'iomem' log for versatile qemu virtual board:

0x00000000 - 0x03ffffff (size 0x04000000) ram0
0x00c00000 - 0x00ffffff (size 0x00400000) malloc space
0x01000000 - 0x0102d5f3 (size 0x0002d5f4) barebox
0x0102d5f4 - 0x0102f307 (size 0x00001d14) barebox data
0x0102f308 - 0x010346db (size 0x000053d4) bss
0x03ff8000 - 0x03ffffff (size 0x00008000) stack

But if the board use MEMORY_LAYOUT_FIXED then
we can have a problem.

I enabled CONFIGURABLE_MEMORY_LAYOUT for versatile.
Here is a patch:

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index bd10591..2969b19 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -134,6 +134,7 @@ config ARCH_VERSATILE
 	bool "ARM Versatile boards (ARM926EJ-S)"
 	select CPU_ARM926T
 	select GPIOLIB
+	select HAVE_CONFIGURABLE_MEMORY_LAYOUT
 =

 config ARCH_VEXPRESS
 	bool "ARM Vexpres boards"

I have rebuilt barebox with this memory layout:

CONFIG_HAVE_CONFIGURABLE_MEMORY_LAYOUT=3Dy
# CONFIG_MEMORY_LAYOUT_DEFAULT is not set
CONFIG_MEMORY_LAYOUT_FIXED=3Dy
CONFIG_STACK_BASE=3D0x20000
CONFIG_STACK_SIZE=3D0x8000
CONFIG_MALLOC_BASE=3D0x00c00000
CONFIG_MALLOC_SIZE=3D0x400000

Here is the 'iomem' log for MEMORY_LAYOUT_FIXED:

0x00000000 - 0x03ffffff (size 0x04000000) ram0
0x00020000 - 0x00027fff (size 0x00008000) stack
0x00c00000 - 0x00ffffff (size 0x00400000) malloc space
0x01000000 - 0x0102d61b (size 0x0002d61c) barebox
0x0102d61c - 0x0102f327 (size 0x00001d0c) barebox data
0x0102f328 - 0x010346fb (size 0x000053d4) bss
0x03ff8000 - 0x03ffffff (size 0x00008000) stack

The result is confusing!
We got two stack regions:
 * the first region registered by common code (CONFIG_STACK_BASE=3D0x20000);
 * the second region registered by ARM-specific code.

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
