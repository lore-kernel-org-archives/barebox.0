Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fEVuL-0004C9-1b
 for barebox@lists.infradead.org; Fri, 04 May 2018 08:17:44 +0000
Date: Fri, 4 May 2018 10:17:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180504081724.wuphf3gr6rmax2os@pengutronix.de>
References: <24f0c042-64a4-eaeb-36eb-6fffe8cdb65d@data-modul.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <24f0c042-64a4-eaeb-36eb-6fffe8cdb65d@data-modul.com>
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
Subject: Re: Dynamic RAM configuration on iMX6 board
To: "Albert, Elmar" <EAlbert@data-modul.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Elmar,

On Fri, May 04, 2018 at 07:57:03AM +0000, Albert, Elmar wrote:
> Hello everybody,
> 
> I'm working on a board using iMX6. There are variants of the board
> differing in iMX6S/DL/D/Q and the size of the memory on CS0. The
> iMX6S/DL/D variants are using 32bit interface to two DDR3 devices (e.g.
> 1GByte), the iMX6Q variant is using 64bit interface to four DDR3 devices
> (e.g. 2GByte). This is leading in at least two different .imxcfg files
> for DRAM-controller initialization.
> The DRAM Density and the number of mounted DDR3 devices can be read from
> the board via GPIO-pins.
> 
> To prevent multiple barebox-images and so multiple pre-programmed
> SPI-Flashes on stock in the factory, I'm looking for a solution to
> configure the DRAM-Controller dynamically during barebox boot.
> 
> Is it possible to have more than one .imxcfg files in one image and if
> so, how can it be selected to configure the DRAM controller depending on
> board-info read from GPIO-pins?

It's not possible to have multiple .imxcfg in one image.

It is however possible to create a barebox with for multiple boards with
different SDRAM setups. Unfortunately it is rather complicated to get
there. First you need a .imxcfg file which doesn't setup the SDRAM and
which loads (the initial part of) the image to the i.MX6 internal SRAM.
In your entry function you must first decide what hardware you are on.
You must be able to get that information during runtime (Some GPIO or
so?). Once you know which machine you are on setup the SDRAM
accordingly. You can do that by either poking a your former .imxcfg
file into the registers or by using mx6dq_dram_iocfg() and friends. Once
your SDRAM is configured use one of the xload functions to load the
whole image into SDRAM. For SPI NOR that would be
imx6_spi_start_image(). Note that the whole image will be started again,
so you need to detect whether you are running from internal SRAM (in
which case you setup SDRAM) or if you are running from SDRAM already (in
which case you call imx6q_barebox_entry()).
Note that you also need a slightly adjusted entry in
images/Makefile.imx to make sure that the ROM only loads the initial
portion of the image to SRAM.

For an example see the wandboard which does exactly this. It's in
arch/arm/boards/technexion-wandboard/

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
