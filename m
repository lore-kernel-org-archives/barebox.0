Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TKoMs-0004hh-7h
 for barebox@lists.infradead.org; Sun, 07 Oct 2012 10:45:55 +0000
Date: Sun, 7 Oct 2012 12:45:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121007104550.GG1322@pengutronix.de>
References: <1349354221-28409-3-git-send-email-shc_work@mail.ru>
 <20121005121204.GP1322@pengutronix.de>
 <20121007140337.b778f85b.shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121007140337.b778f85b.shc_work@mail.ru>
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
Subject: Re: [PATCH 3/3] ARM: Add CLPS711X architecture
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Sun, Oct 07, 2012 at 02:03:37PM +0400, Alexander Shiyan wrote:
> On Fri, 5 Oct 2012 14:12:04 +0200
> Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> ...
> > > +void __naked __bare_init board_init_lowlevel(void)
> > > +{
> ...
> > > +	/* Enable SDQM pins */
> > > +	tmp = readl(SYSCON3);
> > > +	tmp &= ~SYSCON3_ENPD67;
> > > +	writel(tmp, SYSCON3);
> > > +
> > > +	/* Setup Refresh Rate (64ms 8K Blocks) */
> > > +	writel(SDRAM_REFRESH_RATE, SDRFPR);
> > > +
> > > +	/* Setup SDRAM (32MB, 16Bit*2, CAS=3) */
> > > +	writel(SDCONF_CASLAT_3 | SDCONF_SIZE_256 | SDCONF_WIDTH_16 |
> > > +	       SDCONF_CLKCTL | SDCONF_ACTIVE, SDCONF);
> > 
> > This is board specific, right? Then this should be done in a board file.
> > BTW board_init_lowlevel no longer exists. Rename this function to reset
> > and call common_reset() on entry.
> We should setup SDRAM before relocate code to it. In the board code we are
> alredy work in the RAM. So, we can not do this in board file.
> In any case in this proc we are setup maximux SDRAM size, then in board file
> we are calculate real memory size and setup it for bb & kernel.

If you think the above code can work on all boards with this SoC then
it's fine the way it is. Otherwise normally the board_init_lowlevel()
(now reset()) is board specific, so every board has it's own. Then
common code can be called from there.

> > > +
> > > +#include <mach/clps711x.h>
> > 
> > Please drop this include and specify the registers as offsets to the
> > base address here.
> It is very strange for me. You mean that we should separate all definitions?

Experience shows that it's best to have a SoC file which contains the
base addresses to the different units of the SoC, but to keep the
unit specific register offsets out of there. Silicon vendors tend to
reuse the different controllers on the next SoC. In this case you would
end up in adding the same register definitions in every SoC file again.

Take the following example:

	u32 syscon = cdev->dev->id ? SYSCON2 : SYSCON1;

A future SoC might have three of the same UARTs at different addresses
in which case you'd have to adjust the driver for it. So instead of
doing this:

#define SYSCON2                        (REGS_BASE + 0x1100)
#define SYSCON1                        (REGS_BASE + 0x0100)

Do a:

#define CLPS711X_UART1_BASE	(REGS_BASE + 0x0)
#define CLPS711X_UART2_BASE	(REGS_BASE + 0x1000)

	add_clps711x_uart(CLPS711X_UART1_BASE);


And in the driver:

#define SYSCON		0x100

	...
	writel(0xdeadbeef, base + SYSCON);
	...


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
