Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RTiP2-00009S-V6
 for barebox@lists.infradead.org; Thu, 24 Nov 2011 23:08:26 +0000
Date: Fri, 25 Nov 2011 00:08:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111124230813.GD27267@pengutronix.de>
References: <1322103764-6265-1-git-send-email-robert.jarzmik@free.fr>
 <1322103764-6265-10-git-send-email-robert.jarzmik@free.fr>
 <20111124094525.GB27267@pengutronix.de> <87zkflw70f.fsf@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87zkflw70f.fsf@free.fr>
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
Subject: Re: [PATCH 9/9] arm/mach-pxa: add mioa701 board
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

On Thu, Nov 24, 2011 at 10:22:08PM +0100, Robert Jarzmik wrote:
> Sascha Hauer <s.hauer@pengutronix.de> writes:
> > Are the defines in this file used by generic code? If not, please put
> > them into a board specific include file (or remove them if they are
> > unused)
> I intended to use these values in lowlevel_init.S. Isn't that the right place ?

config.h in the board file is included by common.h and thus in nearly
every compiled file. It is the config.h derived from U-Boot. Ideally
this file should be empty. Creating some other include file in your
board directory is just fine though.
BTW the generic lowlevel code in barebox is written in C and it also is
for several boards. So when you can spare some bytes of SRAM I recommend
to do it C. You can have a look for example at the pcm038 board. We also
have a get_pc() function to determine whether we already run from SDRAM
and thus should skip its initialization.

> 
> >> diff --git a/arch/arm/boards/mioa701/lowlevel_init.S b/arch/arm/boards/mioa701/lowlevel_init.S
> >> +	.section ".text_bare_init","ax"
> >> +.global board_init_lowlevel
> >> +board_init_lowlevel:
> >> +	mov	r10, lr
> >> +	/*
> >> +	 * This piece of code should ensure at least:
> >> +	 *  - getting SDRAM out of self-refresh, and/or setup SDRAM timings
> >> +	 *  - putting the GPIO logic into a usable state
> >> +	bl	stabilize_reset
> >> +	bl	setup_sdram
> >> +	bl	setup_gpios

You should only initialize the barest minimum in lowlevel code. So when
setup_gpios is not needed for initializing SDRAM you should not do it
here.

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
