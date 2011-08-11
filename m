Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QrOhn-00019X-4A
	for barebox@lists.infradead.org; Thu, 11 Aug 2011 06:25:24 +0000
Date: Thu, 11 Aug 2011 08:25:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110811062518.GZ31404@pengutronix.de>
References: <CAA4bVAH7aOUcCC0aHWLorE_FAaeBdnUvQcj8d3ZCH4W+ko7adA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA4bVAH7aOUcCC0aHWLorE_FAaeBdnUvQcj8d3ZCH4W+ko7adA@mail.gmail.com>
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
Subject: Re: [RFC] add Tegra support to barebox
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox <barebox@lists.infradead.org>

On Thu, Aug 11, 2011 at 12:24:27AM +0400, Antony Pavlov wrote:
> Hi!
> 
> I have a Toshiba AC100 smartbook. It is based on Nvidia Tegra 250 T20 chip.
> I want to port barebox to it.
> 
> I have successfully built and run u-boot for AC100 from
> https://github.com/chpec/uboot-ac100.git. This u-boot version has lcd,
> serial port and USB support.
> There is another tegra support u-boot branch:
> https://github.com/muromec/uboot-tegra.git
> Also linux has satisfactory tegra support.
> 
> I want to discuss source file organization for Tegra and AC100 support
> in the barebox.
> AFAIK tegra is not resemble to current arm machines, supported by barebox.
> 
> For example, this is the comment from barebox tegra source code:
> 
> /*
>  * Tegra2 uses 2 separate CPUs - the AVP (ARM7TDMI) and the CPU (dual A9s).
>  * U-Boot runs on the AVP first, setting things up for the CPU (PLLs,
>  * muxes, clocks, clamps, etc.). Then the AVP halts, and expects the CPU
>  * to pick up its reset vector, which points here.
>  */

Does this mean you have to build two U-Boot binaries? How big is the
code that runs on the AVP?

> 
> I propose such file structure:
> 
>   arch/arm/
>   arch/arm/boards/toshiba_ac100
>   arch/arm/mach-tegra
> 
> Has anybody any objections or comments?

This is the standard file structure, so no objections here.

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
