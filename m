Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from fmmailgate02.web.de ([217.72.192.227])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1NUdQX-0002Dg-37
	for barebox@lists.infradead.org; Tue, 12 Jan 2010 09:52:45 +0000
Date: Tue, 12 Jan 2010 10:52:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100112095233.GD6923@pengutronix.de>
References: <20100109232838.GB14051@darwin>
	<20100111094902.GR6923@pengutronix.de>
	<20100111103700.GH14051@darwin>
	<20100111112557.GU6923@pengutronix.de>
	<20100111213112.GJ14051@darwin>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100111213112.GJ14051@darwin>
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
Subject: Re: [PATCH] Add support for EDB93xx boards [rev2]
To: Matthias Kaehlcke <matthias@kaehlcke.net>
Cc: barebox@lists.infradead.org

Hi Matthias,

On Mon, Jan 11, 2010 at 10:31:12PM +0100, Matthias Kaehlcke wrote:
> diff --git a/arch/arm/mach-ep93xx/Kconfig b/arch/arm/mach-ep93xx/Kconfig
> index 139b08d..ed6e986 100644
> --- a/arch/arm/mach-ep93xx/Kconfig
> +++ b/arch/arm/mach-ep93xx/Kconfig
> @@ -39,7 +39,6 @@ config MACH_EDB9301
>  	bool "Cirrus Logic EDB9301"
>  	select EP93XX_SDCE3_SYNC_PHYS_OFFSET
>  	select MACH_HAS_LOWLEVEL_INIT
> -	select BOARD_LINKER_SCRIPT
>  	help

Something went wrong here, this seems to be a fixup patch, at least
these hunks.
The rest of the patches is ok now. Can you please resend the whole
series? It's easier to apply when it's clear that the original messages
are the patches than to dig through the thread and look for patches in
replies.

Thanks
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
