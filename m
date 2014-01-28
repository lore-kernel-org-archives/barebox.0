Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W86v8-000311-Bv
 for barebox@lists.infradead.org; Tue, 28 Jan 2014 11:33:36 +0000
Date: Tue, 28 Jan 2014 12:33:11 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140128113311.GB16215@pengutronix.de>
References: <loom.20140128T004554-598@post.gmane.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <loom.20140128T004554-598@post.gmane.org>
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
Subject: Re: i.mx21 ads nor flash
To: Cristiano De Alti <cristiano_dealti@hotmail.com>
Cc: barebox@lists.infradead.org

On Mon, Jan 27, 2014 at 11:46:12PM +0000, Cristiano De Alti wrote:
> Hi,
>   I'm trying to revive an old i.mx21 ads board.
> I've flashed barebox-2014.01.0 and the board boots.
> Ethernet works and I'm able to boot Linux via tftp.
> Adding CONFIG_NAND=y in the .config enables the 64MB NAND flash (why is it
> not set in the board defconfig?) and I can erase it.

Amazing! I think this hasn't been tested for longer, I'm surprised that
still so many things work :)

> Nice work, Barebox!
> My question is about the NOR flash. The board has two banks of 8Mx16bit NOR
> flash paralleled. So the data bus width is 32 bit and the capacity is 32MB.
> The NOR is detected by Barebox:
> 
> cfi_flash cfi_flash0: found cfi flash at c8000000, size 33554432
> 
> and I can see the /dev/nor0 device:
> 
> crw-------   33554432 /dev/nor0
> 
> I can erase it but only up to 16M. For example, this works:
> 
> erase /dev/nor0 10M+6M
> 
> Anyway if I try to erase an area above 16M, e.g.:
> 
> erase /dev/nor0 16M+1k
> 
> or the whole device, e.g.:
> 
> erase /dev/nor0
> 
> the command fails with:
> 
> erase: Invalid argument
> 
> I've added printouts and the area I want to delete is past the last eraseregion.
> 
> So I wonder how the units of the erase command are meant. If the unit is
> byte, the command:
> 
> erase /dev/nor0 0+16M
> 
> should obviously mean "erase the first half of the whole flash".
> But then the above commands shouldn't fail.
> 
> Alternatively, given that there are 2 16MB banks in parallel it could also
> mean "erase 16MB in each bank" i.e. the whole flash.
> 
> I'm not sure what's happening.

erase /dev/nor0 0+32M
or
erase /dev/nor0

should both erase the whole flash and should both work for you. erase
/dev/nor0 0+16M should erase the first half of the flash. You have
encountered a bug somewhere.

Could you paste the output of 'devinfo cfi_flash0'? Also you could
#define DEBUG ontop of drivers/mtd/nor/cfi_flash*.c. Please also use
'md -s /dev/nor0' and 'md -s /dev/nor 16M' which show a hexdump of the
beginning of the flash and at 16MiB into the flash. you can write
something to the flash using

memcpy -s /env/config -d /dev/nor0 0 0 1K
(beginning of flash)

and

memcpy -s /env/config -d /dev/nor0 0 16M 1K
(middle of flash)

Do these work and show a sane result on the flash?
There may be a bug in the cfi flash driver, but it could also be
that the Chipselect is misconfigured, check
imx21_setup_eimcs(0, 0x00003E00, 0x00000E01);

I have no idea what's happening exactly, but I can say that the commands
you used should behave as you expect.

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
