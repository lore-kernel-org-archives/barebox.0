Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1ONl3i-0005yU-1U
	for barebox@lists.infradead.org; Sun, 13 Jun 2010 11:08:59 +0000
Date: Sun, 13 Jun 2010 13:08:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100613110854.GV20799@pengutronix.de>
References: <20100612155121.0909adf8@surf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100612155121.0909adf8@surf>
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
Subject: Re: ARM/AT91 build failure: Error: symbol *ABS* is in a different
	section
To: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: barebox@lists.infradead.org

Hi Thomas,

On Sat, Jun 12, 2010 at 03:51:21PM +0200, Thomas Petazzoni wrote:
> Hello,
> 
> In barebox 2010.05, the at91sam9263ek defconfig was building properly
> with my 2009q1 CodeSourcery ARM toolchain. Barebox 2010.06 no longer
> builds with the same defconfig/toolchain. The build failure is:
> 
>   CC      arch/arm/cpu/start.o
> {standard input}: Assembler messages:
> {standard input}:37: Error: symbol *ABS* is in a different section
> 
> The commit that introduced the regression is
> 78104ae181f78d83664fdc7522eb632d9c3b2ec9 (i.e "arm: reimplement startup
> code in C").
> 
> The part causing the problem is in board_init_lowlevel_return(), more
> precisely
> 
>     /* Get runtime address of this function */
>     __asm__ __volatile__("adr %0, 0":"=r"(r));
> 
> I have investigated further for the moment.

This was mentioned before and the result was the following patch. Sorry,
somehow I forgot to check it in. It's now in the master branch.

Sascha

commit c21a7fb9f15ee1fb213e22c0e7a9d0f53b274cb2
Author: Sascha Hauer <s.hauer@pengutronix.de>
Date:   Wed May 19 13:23:43 2010 +0200

    arm start.c: Make runtime function address calculation tolerant for more compilers
    
    Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

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
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
