Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TaMmF-0003Ux-T2
 for barebox@lists.infradead.org; Mon, 19 Nov 2012 08:32:24 +0000
Date: Mon, 19 Nov 2012 09:32:21 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121119083221.GA10369@pengutronix.de>
References: <alpine.DEB.2.02.1211181240360.32651@oneiric>
 <alpine.DEB.2.02.1211181326250.704@oneiric>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.02.1211181326250.704@oneiric>
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
Subject: Re: shouldn't asm-generic/barebox.lds.h be arch-independent?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Sun, Nov 18, 2012 at 01:31:06PM -0500, Robert P. J. Day wrote:
> 
>   there is one more oddity(?) with the way the linker "lds" files are
> set up.  if i read this correctly (and i could be wrong), here's
> arch/x86/lib/barebox.lds.S:
> 
> #undef i386
> #include <asm-generic/barebox.lds.h>
> 
>   which gets us to that included file, which contains:
> 
> #if defined CONFIG_ARCH_IMX25 || \
>         defined CONFIG_ARCH_IMX35 || \
>         defined CONFIG_ARCH_IMX51 || \
>         defined CONFIG_ARCH_IMX53 || \
>         defined CONFIG_ARCH_IMX6 || \
>         defined CONFIG_X86 || \       <-- that will be true, correct?
>         defined CONFIG_ARCH_EP93XX
> #include <mach/barebox.lds.h>
> #endif

Instead of having this the users should include asm/barebox.lds.h which
then in turn includes asm-generic/barebox.lds.h.

> 
>   which finally takes us to
> arch/x86/mach-i386/include/mach/barebox.lds.h, which is nothing more
> than a collection of macro definitions.  there's no "pre-image"
> content to be incorporated into the final image -- it's just
> preprocessor content.  so why isn't all that simply at the beginning
> of the main x86 barebox.lds.S file?

I don't know. It should probably be moved there.

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
