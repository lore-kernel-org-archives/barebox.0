Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kx5hJ-0005mw-Rw
 for barebox@lists.infradead.org; Wed, 06 Jan 2021 10:05:46 +0000
Date: Wed, 6 Jan 2021 11:05:43 +0100
Message-ID: <20210106100543.GO19063@pengutronix.de>
References: <20201221003251.83042-1-ahmad@a3f.at>
 <20201221003251.83042-2-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201221003251.83042-2-ahmad@a3f.at>
From: Sascha Hauer <sha@pengutronix.de>
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
Subject: Re: [PATCH 1/2] fixup! usb: dwc2: Add support for optional usb phy
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org, mgr@pengutronix.de

On Mon, Dec 21, 2020 at 01:32:50AM +0100, Ahmad Fatoum wrote:
> Linux doesn't seem to enforce a fixed order between phy_init and
> phy_power_on. The Linux dwc2 driver does power_on and then phy_init,
> which is the inverse of what barebox is currently doing.
> 
> The PHYs normally used with dwc2 are written with this in mind.
> For example, our stm32-usbphyc driver fails to disable:
> 
>   ERROR: stm32-usbphyc 5a006000.usbphyc@5a006000.of: PLL not reset
>   ERROR: phy1: phy exit failed --> -5
> 
> Because Linux does exit -> power_off, but barebox does power_off ->
> exit.
> 
> Issue was raised upstream:
> https://lore.kernel.org/lkml/6cd01e79-fdc0-3bd4-32b5-a85142533f8a@pengutronix.de/T/#t
> 
> Until this is settled, swap the order to follow what Linux does.
> This is suboptimal, because it means controller drivers have different
> order of the operations and that you can't combine arbitrary PHYs and
> controllers, but it seems unlikely we will support combinations that
> aren't supported by Linux in the first place anyway.

This is valuable information and I don't want it to be lost, so instead
of applying this as a fixup I rewrote the subject to:

usb: dwc2: swap order of phy_init and phy_power_on to what Linux does

and applied it as a separate patch.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
