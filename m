Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RPs2t-0001r1-EL
 for barebox@lists.infradead.org; Mon, 14 Nov 2011 08:37:41 +0000
Date: Mon, 14 Nov 2011 09:37:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111114083729.GA27267@pengutronix.de>
References: <8739drj2pf.fsf@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8739drj2pf.fsf@free.fr>
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
Subject: Re: Barebox newbie questions : arch/arm/{plat,mach} split and
 interrupts
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

Hi Robert,

On Sun, Nov 13, 2011 at 07:29:32PM +0100, Robert Jarzmik wrote:
> Hi,
> 
> As I'm a bit new to barebone, and after reading a bit the code for the ARM
> architectures, I have questions :
> 
>  (1) Why is there not anywhere a arch/arm/plat-xxx ?
>      My understanding is that normally, platform generic code (like gpio
>      handling for XScale processors) should go there.
>      The machine specific code (ie. PXA27x, PXA25x, etc ...) would still go to
>      arch/arm/mach-pxa.

We put platform generic code to mach-*. The board files are not under
mach-* anyway, so these directories do not grow too big. No need for
plat-*

> 
>  (2) In arch/arm, I understand that interruptions are never used (do_irq()
>      implementation is quite clear about that). Is that a design decision and
>      why ?

'Design decision' is a strong word, I wouldn't use that here. It's more
the way we derived the code from U-Boot. Anyway, I haven't ever really
felt the need to implement interrupts. Without interrupts the code
becomes simple, no locking needed.

>      If so, I suppose that active polling for each device is required. Am I
>      right here ?

Yes, you're right.

> 
>  (3) MMU: one can enable or not the MMU. AFAIR, the MMU is required to enable
>      both I-Cache and D-Cache on ARM achitectures. Are there any other obvious
>      advantages I'm missing in the case of a bootloader ?

The I-cache works without MMU, but enabling the D-Cache was the main
motivation to turn on the MMU. Another side affect which is not so
obvious but nice to have is that with the MMU you can map SDRAM to
the vector page and can trap exceptions.

> 
>  (4) Is it possible to have 2 outputs as result of compilation of barebox for a
>      board ?
>      Let me be clearer. My board, mioa701, has a disk-on-chip on which it can
>      boot. Barebox will be the SPL (written from barebox.bin). The IPL, which is
>      limited to 2048 bytes, will only initialize RAM, GPIOs, and load the
>      SPL. Is there a way for me to add the generation of a 'mioa701_ipl.bin' out
>      of a 'mioa701_ipl.S' ?

Currently not, no. Maybe it's worth having a look at the i.MX Nand boot
implementation. We have a similar situation there: The initial blob the
ROM Code loads to SRAM is 2k. These 2k are responsible for loading the
rest of the bootloader. On i.MX we use a single binary for this. The
code in arch/arm/mach-imx/internal-nand-boot.c contains the first stage
bootcode and the linker puts this at the start of the image using a
special section (__bare_init). This code is a bit tricky because it must
be written position independent which means that you can't use
statically initialized variables. Another thing worth noting is the
get_pc() function which returns the current program counter on ARM. With
this it's possible to figure out whether we run from SDRAM (so skip
SDRAM setup, do not copy from NAND) or from some place outside the SDRAM
(so setup SDRAM, copy from NAND). As said, it's a bit tricky, but it
makes it possible to start the same image from NOR flash, NAND flash or
even as second stage loader from SDRAM.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
