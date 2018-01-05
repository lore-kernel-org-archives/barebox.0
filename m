Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eXOF2-0002kJ-DK
 for barebox@lists.infradead.org; Fri, 05 Jan 2018 09:24:46 +0000
Date: Fri, 5 Jan 2018 10:24:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180105092431.q75ts3aoted7im4s@pengutronix.de>
References: <20171231083407.GA16645@ravnborg.org>
 <20180101164808.32371-1-sam@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180101164808.32371-1-sam@ravnborg.org>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 01/25] arm: at91: refactor lowlevel_init selection
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Jan 01, 2018 at 05:48:04PM +0100, Sam Ravnborg wrote:
> The aim with this conversion is to drop the dependency
> where the mach-at91/ code call code in the boards file.
> This dependency must be dropepd to enable multi-image builds.
> 
> The selection of lowlevel_init functions are pushed to
> the individual boards.
> 
> Use AT91SAM926X_BOARD_INIT for the boards that share the
> at91sam926x_board_init file, and push this to the
> individual boards.
> 
> bootstrap is likewise pushed out to the individual boards.
> 

[...]

> -lowlevel_init-$(CONFIG_MACH_TNY_A9263) = tny_a9263_lowlevel_init.o
> +# Not used, documented with a lwl-n assignment
> +lwl-n += tny_a9263_lowlevel_init.o

I think this just goes down to a missing "select HAVE_AT91_LOWLEVEL_INIT"
Can we add it instead and keep the existing init code with this series?

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
