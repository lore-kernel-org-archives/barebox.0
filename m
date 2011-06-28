Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QbVBg-0005p9-TC
	for barebox@lists.infradead.org; Tue, 28 Jun 2011 10:06:33 +0000
Date: Tue, 28 Jun 2011 12:06:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110628100629.GJ6069@pengutronix.de>
References: <1309194834-2292-1-git-send-email-antonynpavlov@gmail.com>
	<1309194834-2292-2-git-send-email-antonynpavlov@gmail.com>
	<20110628051134.GN17355@game.jcrosoft.org>
	<BANLkTim9Dx3uuE-3v33PdmpSpv9K30zhcA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BANLkTim9Dx3uuE-3v33PdmpSpv9K30zhcA@mail.gmail.com>
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
Subject: Re: [PATCH 2/2] Add MIPS arch support to barebox
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Jun 28, 2011 at 01:37:46PM +0400, Antony Pavlov wrote:
> On 28/06/2011, Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> wrote:
> > On 21:13 Mon 27 Jun     , Antony Pavlov wrote:
> >> Only supported board is qemu malta:
> >>   * barebox works in uncached memory;
> >>   * no peripherals support, but serial port.
> >
> > please take a look on here
> > http://git.jcrosoft.org/git?p=barebox.git;a=shortlog;h=refs/heads/mips
> >
> > the work start by Shinya Kuribayashi to support mips and barebox
> >
> > maybe you can merge both
> >
> 
> I took a look on it.
> 
> I can build 'qemu' target with default config, but I can't see
> any output in emulator.
> 
> I can't even build 'malta' target with default config.
> 
> Is it runnable at all?
> 
> I think, that Shinya's concepts can be used in the future, but they
> are very complex for initial mips support.
> 
> IMHO, the Shinya's code is redundant (> 200K ) --- initial support
> must be as small as possible.

+1 for starting small.

> 
> The file Kconfig is overcomplicated. Many variables are really unused:
>  DMA_NONCOHERENT,
>  SWAP_IO_SPACE
>  HW_HAS_PCI
>  SYS_SUPPORTS_{32,64}BIT_KERNEL
>  SYS_SUPPORTS_ARBIT_HZ
>   and others
> 
> In other hand the options ARCH_TEXT_BASE and CPU_BIG_ENDIAN are useful
> just now, but I have missed them.
> 
> But now I see, that I can make my mips support better --- split big
> patch and make some parts of code configurable.

I forgot to say, it's good to split the board support and the
architecture support.

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
