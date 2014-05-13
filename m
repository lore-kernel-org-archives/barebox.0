Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wk9WG-0007Ky-Gc
 for barebox@lists.infradead.org; Tue, 13 May 2014 10:01:10 +0000
Date: Tue, 13 May 2014 12:00:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140513100044.GO5858@pengutronix.de>
References: <CAOpc7mEUPrZtvd6uVApfcs4Wap42EhxLzGiD=8GaJWW8an8wkQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOpc7mEUPrZtvd6uVApfcs4Wap42EhxLzGiD=8GaJWW8an8wkQ@mail.gmail.com>
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
Subject: Re: Question about SPI NOR flash
To: Holger Schurig <holgerschurig@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, May 13, 2014 at 10:55:33AM +0200, Holger Schurig wrote:
> Hi,
> 
> my device has an SPI NOR flash Micron N25Q512A13G124F. With the patch
> below it get's detected by barebox and I can at least dump it ("md -s
> /dev/m25p0).
> 
> Before submitting that patch with signed-off, I want however first
> test SPI. It works a but, but only so far:
> 
> barebox:/ unprotect /dev/m25p0
> barebox:/ erase /dev/m25p0
> barebox:/ erase /dev/m25p0.barebox-environment
> barebox:/ saveenv
> saving environment
> could not open /dev/env0: Read-only file system
> saveenv: Read-only file system
> 
> So, what am I missing to connect /dev/env0 by default?
> 
> And, when I do this:
> 
> barebox:/ saveenv /dev/m25p0.barebox-environment
> saving environment
> 
> it seems that it just wrote 00's (before it was FF's, because of the erase):
> 
> barebox:/ md -s /dev/m25p0.barebox-environment
> 00000000: 00000000 00000000 00000000 00000000                ................
> 00000010: 00000000 00000000 00000000 00000000                ................
> 00000020: 00000000 00000000 00000000 00000000                ................
> 00000030: 00000000 00000000 00000000 00000000                ................
> 00000040: 00000000 00000000 00000000 00000000                ................
> 00000050: 00000000 00000000 00000000 00000000                ................
> 00000060: 00000000 00000000 00000000 00000000                ................
> 00000070: 00000000 00000000 00000000 00000000                ................
> 00000080: 00000000 00000000 00000000 00000000                ................
> 00000090: 00000000 00000000 00000000 00000000                ................
> 000000a0: 00000000 00000000 00000000 00000000                ................
> 000000b0: 00000000 00000000 00000000 00000000                ................
> 000000c0: 00000000 00000000 00000000 00000000                ................
> 000000d0: 00000000 00000000 00000000 00000000                ................
> 000000e0: 00000000 00000000 00000000 00000000                ................
> 000000f0: 00000000 00000000 00000000 00000000                ................
> 
> Now, perhaps I must add something to the device tree? When I do ...
> 
> chosen {
>    # ...
>    environment@0 {
>       compatible = "barebox,environment";
>       device-path = &flash, "partname:barebox-environment";
>     };
> };
> 
> &ecspi3 {
>   flash: spiflash@0 {
>     #address-cells = <1>;
>     #size-cells = <1>;
>     compatible = "m25p80";
>     spi-max-frequency = <20000000>;
>     reg = <0>;
> 
>     partition@0 {
>       label = "barebox-environment";
>       reg = <0x0 0x40000>;
>     };
>   };
> };

This looks perfectly fine.

> 
> then I get a backtrace at boot:
> 
> detected i.MX6 Quad revision 1.2
> mdio_bus: miibus0: probed
> m25p80 spiflash@00: mr25h256 (32 Kbytes)

This is your problem. Your device is detected as a 32KB mr25h256 instead
of the n25q512 you really have. Have you seen
http://lists.infradead.org/pipermail/linux-mtd/2014-January/051382.html?

> partition m25p0.barebox-environment not completely inside device m25p0

You define a 256k environment partition in the devicetree, but your
(wrongly detected) device has only 32k.

> unable to handle paging request at address 0xfffffff2

Of course barebox shouldn't crash here, that seems to be a bug.

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
