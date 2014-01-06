Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W07Ni-0006F7-OY
 for barebox@lists.infradead.org; Mon, 06 Jan 2014 10:26:03 +0000
Date: Mon, 6 Jan 2014 11:20:40 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140106102039.GD3677@pengutronix.de>
References: <52CA7565.7060808@kosagi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <52CA7565.7060808@kosagi.com>
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
Subject: Re: Porting Barebox to i.MX6QDL "Novena"
To: Sean Cross <xobs@kosagi.com>
Cc: barebox@lists.infradead.org

On Mon, Jan 06, 2014 at 05:20:37PM +0800, Sean Cross wrote:
> Hi,
> 
> After talking with people at 30C3, I've decided to try moving from
> U-Boot to Barebox.  I've got things building to the point where I have a
> single ">" character being printed (after reading an earlier SOM porting
> message),

So the hardest part is already done ;)

> but I'm starting to grasp at straws now when it comes to
> bringing DDR up.
> 
> Novena has an SO-DIMM slot.  In U-Boot, we wrote a hook for setup_ddr()
> that got the SO-DIMM's SPD via I2C, performed calibration, and returned
> with DDR all configured.
> 
> In Barebox, I'm running into some trouble:
> 
>     1) How do I access I2C routines from lowlevel.c?  I need to be able
> to query the EEPROM on the DDR module itself to get its timing parameters.

There is no way to access the regular i2c functions that early. You are
lucky that the mpc85xx has the same i2c controller and the same problem.
See arch/ppc/mach-mpc85xx/fsl_i2c.c, it contains the lowlevel functions
to access the i2c bus. We probably have some SPD EEPROM parsing code
from U-Boot aswell.

> 
>     2) How much character printing can I get in lowlevel.c?  I notice
> putc_ll() works, but puts_ll() doesn't, presumably because I have the
> text offset incorrectly set.

Yes right. only putc_ll and puthex_ll can be used.

> 
>     3) How much functionality can I have in ~96 KiB?  I believe that's
> roughly the amount of space allowed in the OCRAM on an i.MX6DL once you
> allow for code in ROM that's actually doing the loading.
> 
>     4) Failing that, is it possible to load some preboot code to set up
> DDR?  I realize the traditional method is a hardcoded pokefile, but
> since we support DDR3 modules, we can't rely on that.

You have several options here. First option is to compile a small first
stage barebox which runs from OCRAM. This first stage loader would need
i2c support and support for loading the 2nd stage barebox from whatever
medium you boot from. 96KiB should be enough to accomplish this. The good
about this way is that it's relatively straight forward. Also you could
directly start a kernel instead of the 2nd stage barebox which makes
your boot process really fast. The downside is that you have two barebox
binaries and configs to handle. Also the available binary space in the 1st
stage loader probably won't be enough to contain code for bootstrapping
from say MMC and NAND and SPI, so you need additional binaries for each
boot source.
Another option is to do what the phyCORE am335x does, see
arch/arm/boards/pcm051/lowlevel.c. The ROM code loads the binary to
internal SRAM. Then this board calls relocate_to_current_adr() and setup_c()
right after startup. At this point you have a regular C environment and
have everything in place to use fsl_i2c.c and gather information about
your SDRAM. When done call barebox_arm_entry() with the amount of SDRAM
you found. This will then uncompress the regular barebox to SDRAM and
continue from there.

I recommend using the second approch, although it's probably harder to
understand what is going on there. Feel free to ask when you encounter
problems.

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
