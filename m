Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cRELO-00059D-IS
 for barebox@lists.infradead.org; Wed, 11 Jan 2017 08:33:20 +0000
Date: Wed, 11 Jan 2017 09:32:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170111083254.hndsbxkeh7c5x3gt@pengutronix.de>
References: <12b302f6-75ae-bf83-370b-abaf0aef9d29@mev.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <12b302f6-75ae-bf83-370b-abaf0aef9d29@mev.co.uk>
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
Subject: Re: Problem loading environment from spi-nor flash partition since
 barebox 2017.01.0
To: Ian Abbott <abbotti@mev.co.uk>
Cc: barebox@lists.infradead.org

On Tue, Jan 10, 2017 at 04:01:40PM +0000, Ian Abbott wrote:
> Hi!
> 
> I thought I'd try updating my custom SoCFPGA-based board from barebox
> 2016.11.0 to 2017.01.0, and have only run into one problem, which is that it
> is no longer loading the barebox environment during boot:
> 
> &qspi {
> 	status = "okay";
> 
> 	flash: flash@0 {
> 		#address-cells = <1>;
> 		#size-cells = <1>;
> 		compatible = "n25q00";
> 		reg = <0>;
> 		spi-max-frequency = <100000000>;
> 		m25p,fast-read;
> 		cdns,page-size = <256>;
> 		cdns,block-size = <16>;
> 		cdns,read-delay = <4>;
> 		cdns,tshsl-ns = <50>;
> 		cdns,tsd2d-ns = <50>;
> 		cdns,tchsh-ns = <4>;
> 		cdns,tslch-ns = <4>;

The problem is that your environment path points to the flash node which
does not have a driver as the corresponding device is not registered
properly.

With (real) SPI this is a little different and works as expected: If the
qspi node would be handled by the SPI layer then the SPI core would
register the child nodes as devices on a SPI bus. The normal probe
mechanism would then bind the device and the driver together.

With the cadence-quadspi driver a device is registered in
cqspi_setup_flash(), but there is never a driver attached to it, thus
the dev->driver test fails.

The proper way if probably to register the n25q00 device on a qspi bus
and to provide a qspi-nor-flash driver which gets probed then.
The not-so-proper, faster way could be to just create a dummy driver
struct and attach it to the device allocated in cqspi_setup_flash().

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
