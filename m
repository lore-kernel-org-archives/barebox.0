Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1OEhRI-0001J5-Jf
	for barebox@lists.infradead.org; Wed, 19 May 2010 11:27:54 +0000
Date: Wed, 19 May 2010 13:27:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100519112750.GN31199@pengutronix.de>
References: <AANLkTikXvBdVzs2w51dzow9V7myhkvq0sSWUNMzPWn23@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AANLkTikXvBdVzs2w51dzow9V7myhkvq0sSWUNMzPWn23@mail.gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: board_init_lowlevel_return: Error: symbol ABS is in a
	different section
To: Ivo Clarysse <ivo.clarysse@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, May 18, 2010 at 01:40:11PM +0200, Ivo Clarysse wrote:
> When compiling barebox recently, I get an error:
> 
> [..]
>   arm-none-linux-gnueabi-gcc -Wp,-MD,arch/arm/cpu/.start.o.d
> -nostdinc -isystem
> /opt/arm-2009q3/bin/../lib/gcc/arm-none-linux-gnueabi/4.4.1/include
> -D__KERNEL__ -D__BAREBOX__ -Iinclude
> -I/home/imxbuild/barebox-master/build-mx25pdk/arch/arm/include
> -I/home/imxbuild/barebox-master/build-mx25pdk/arch/arm/include
> -include include/linux/autoconf.h -fno-builtin -ffreestanding
> -D__ARM__ -fno-strict-aliasing -marm -mlittle-endian -mabi=apcs-gnu
> -mno-thumb-interwork -D__LINUX_ARM_ARCH__=5 -march=armv5te
> -mtune=arm9tdmi -Iarch/arm/mach-imx/include -DTEXT_BASE=0x83F00000 -P
> -fdata-sections -ffunction-sections -Wall -Wundef -Wstrict-prototypes
> -Wno-trigraphs -fno-strict-aliasing -fno-common -Os -pipe
> -fno-stack-protector -Wdeclaration-after-statement -Wno-pointer-sign
>  -D"KBUILD_STR(s)=#s" -D"KBUILD_BASENAME=KBUILD_STR(start)"
> -D"KBUILD_MODNAME=KBUILD_STR(start)" -c -o arch/arm/cpu/start.o
> arch/arm/cpu/start.c
> {standard input}: Assembler messages:
> {standard input}:37: Error: symbol *ABS* is in a different section
> make[1]: *** [arch/arm/cpu/start.o] Error 1
> make: *** [arch/arm/cpu] Error 2
> 
> This seems to be due to:
> 
> [...]
> void __naked __bare_init board_init_lowlevel_return(void)
> {
>         uint32_t r;
> 
>         /* Setup the stack */
>         r = STACK_BASE + STACK_SIZE - 16;
>         __asm__ __volatile__("mov sp, %0" : : "r"(r));
> 
>         /* Get runtime address of this function */
>         __asm__ __volatile__("adr %0, 0":"=r"(r));
> [...]
> 
> Which yields the following assembly:
> 
> @ 0 "" 2
>         .size   exception_vectors, .-exception_vectors
>         .section        .text_bare_init.text,"ax",%progbits
>         .align  2
>         .global board_init_lowlevel_return
>         .type   board_init_lowlevel_return, %function
> board_init_lowlevel_return:
>         @ Naked Function: prologue and epilogue provided by programmer.
>         @ args = 0, pretend = 0, frame = 0
>         @ frame_needed = 0, uses_anonymous_args = 0
>         ldr     r3, .L7
> #APP
> @ 900 "start.i" 1
>         mov sp, r3
> @ 0 "" 2
> @ 901 "start.i" 1
>         adr r1, 0
> @ 0 "" 2
> [...]
> 
> 
> My toolchain (CodeSourcery G++ Lite, 2009Q3 - also tested with the
> 2010Q1 release), does not seem to like "adr r1, 0".
> 
> I can get it to compile, by changing change board_init_lowlevel to:
> 
> void __naked __bare_init board_init_lowlevel_return(void)
> {
>         uint32_t r;
> 
>         __asm__ __volatile__("1:");
> 
>         /* Setup the stack */
>         r = STACK_BASE + STACK_SIZE - 16;
>         __asm__ __volatile__("mov sp, %0" : : "r"(r));
> 
>         /* Get runtime address of this function */
>         __asm__ __volatile__("adr %0, 1b":"=r"(r));
> [...]
> 
> 
> Is this a problem with the toolchain I use, or should barebox be patched ?

This works with our toolchain, but it may be that I used some 'feature'
which is not supposed to work. Anyway, I like the way you did it above
better as my approach, so how about the following patch which is a
slight modification from yours:


From 84aea4781ec1e99481530b4d5a122ce4e95d2266 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 19 May 2010 13:23:43 +0200
Subject: [PATCH] arm start.c: Make runtime function address calculation tolerant for more compilers

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/start.c |   17 ++++++++++-------
 1 files changed, 10 insertions(+), 7 deletions(-)

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 67d54a6..eea7dcf 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -81,21 +81,24 @@ void __naked __bare_init reset(void)
  */
 void __naked __bare_init board_init_lowlevel_return(void)
 {
-	uint32_t r;
+	uint32_t r, addr;
+
+	/*
+	 * Get runtime address of this function. Do not
+	 * put any code above this.
+	 */
+	__asm__ __volatile__("1: adr %0, 1b":"=r"(addr));
 
 	/* Setup the stack */
 	r = STACK_BASE + STACK_SIZE - 16;
 	__asm__ __volatile__("mov sp, %0" : : "r"(r));
 
-	/* Get runtime address of this function */
-	__asm__ __volatile__("adr %0, 0":"=r"(r));
-
 	/* Get start of binary image */
-	r -= (uint32_t)&board_init_lowlevel_return - TEXT_BASE;
+	addr -= (uint32_t)&board_init_lowlevel_return - TEXT_BASE;
 
 	/* relocate to link address if necessary */
-	if (r != TEXT_BASE)
-		memcpy((void *)TEXT_BASE, (void *)r,
+	if (addr != TEXT_BASE)
+		memcpy((void *)TEXT_BASE, (void *)addr,
 				(unsigned int)&__bss_start - TEXT_BASE);
 
 	/* clear bss */
-- 
1.7.0


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
