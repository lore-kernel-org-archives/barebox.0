Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
	(helo=metis.ext.pengutronix.de)
	by casper.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NMeeG-0008EV-6u
	for barebox@lists.infradead.org; Mon, 21 Dec 2009 09:33:53 +0000
Date: Mon, 21 Dec 2009 10:32:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20091221093248.GT15126@pengutronix.de>
References: <alpine.LFD.2.00.0912200705560.18199@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.LFD.2.00.0912200705560.18199@localhost>
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
Subject: Re: more CONFIG oddities in the current barebox tree
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Sun, Dec 20, 2009 at 07:08:02AM -0500, Robert P. J. Day wrote:
> 
>   here's a short list of Makefile CONFIG tests that test for
> non-existent CONFIG variables -- not strictly an error, just valueless
> and can be removed if there's no compelling reason to keep them.  (as
> always, could be trivial false positives).
> 
> ===== CMD_I2C =====
> ./commands/Makefile:obj-$(CONFIG_CMD_I2C)		+= i2c.o

This can be removed.

> ===== LOGO =====
> ./scripts/Makefile:hostprogs-$(CONFIG_LOGO)         += pnmtologo

Ditto

> ===== MODULE =====
> ./common/Makefile:obj-$(CONFIG_MODULE)		+= module.o
> ./arch/ppc/Makefile:ifndef CONFIG_MODULE

Ditto. This is a duplicate of CONFIG_MODULES.

> ===== MODVERSIONS =====
> ./Makefile:  KBUILD_BUILTIN := $(if $(CONFIG_MODVERSIONS),1)
> ./scripts/Makefile:#subdir-$(CONFIG_MODVERSIONS) += genksyms


> ===== PROM_CONSOLE =====
> ./scripts/Makefile:hostprogs-$(CONFIG_PROM_CONSOLE) += conmakehash

Can be removed.

> ===== SIMPLE_PARSER =====
> ./commands/Makefile:obj-$(CONFIG_SIMPLE_PARSER)	+= setenv.o

should be CONFIG_SHELL_SIMPLE instead.

> ===== USE_IRQ =====
> ./arch/ppc/mach-mpc5xxx/Makefile:obj-$(CONFIG_USE_IRQ)	+=
> interrupts.o
> ./arch/ppc/lib/Makefile:obj-$(CONFIG_USE_IRQ) += interrupts.o

The IRQ stuff is an area for some more cleanup. So far I do not use
interrupts at all and I doubt they are working anywhere. Maybe it's best
to keep it like it is until somebody is willing to think about irqs and
has some suggestions in which direction we want to go.

> ===== VT =====
> ./scripts/Makefile:hostprogs-$(CONFIG_VT)           += conmakehash

Can be removed.

> 
>   if any of that can be obviously deleted, let me know and i can
> submit the appropriate patches.

That would be great. Your scripts really put the eyes on some long
forgotten things ;)

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
