Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1Nhdmu-0005WR-Ph
	for barebox@lists.infradead.org; Wed, 17 Feb 2010 06:53:33 +0000
Date: Wed, 17 Feb 2010 07:53:29 +0100
From: Sascha Hauer <sha@pengutronix.de>
Message-ID: <20100217065329.GW17643@pengutronix.de>
References: <4B7B0393.2090907@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4B7B0393.2090907@pengutronix.de>
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
Subject: Re: problem with env in NOR
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox mailing list <barebox@lists.infradead.org>

On Tue, Feb 16, 2010 at 09:44:03PM +0100, Marc Kleine-Budde wrote:
> Hello,
> 
> on my PXA270 I put a splash image into the environment. The env image
> with the splash image covers more than one flash sector. (The flash
> sector size is 256 KiB.)
> 
> Loading the environment fails:
> 
> uboot:/ loadenv /dev/env0
> loading environment from /dev/env0
> read: error -262116
> 
> (This fails during boot, too.)
> 
> [frogger@hardanger:barebox (dev/pxa270)]$ grep CFI .config
> CONFIG_HAS_CFI=y
> CONFIG_DRIVER_CFI=y
> # CONFIG_DRIVER_CFI_NEW is not set
> CONFIG_DRIVER_CFI_OLD=y
> CONFIG_CFI_BUFFER_WRITE=y
> 
> Sascha it's probably the problem we discussed the other day, that the
> cfi driver doesn't handle the offset correct. I haven't looked at the
> code though.

Yes, saveenv probably saves the whole environment with one write call
whereas other writes usually don't cross sector boundaries and so the
bug never showed up

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
