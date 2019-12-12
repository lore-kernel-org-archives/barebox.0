Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifLdf-0003JJ-6C
 for barebox@lists.infradead.org; Thu, 12 Dec 2019 10:24:08 +0000
Message-ID: <f67d5b7fec7c354a8d632dc8e20d15e5c273030f.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 12 Dec 2019 11:24:04 +0100
In-Reply-To: <c0e44a15-802d-b008-36b3-3b3d6007e587@data-modul.com>
References: <c0e44a15-802d-b008-36b3-3b3d6007e587@data-modul.com>
MIME-Version: 1.0
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
Subject: Re: imx-usb-loader on imx8mq/mm
To: "Yazdani, Reyhaneh" <RYazdani@data-modul.com>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Reyhaneh,

On Do, 2019-12-12 at 10:13 +0000, Yazdani, Reyhaneh wrote:
> Hello everyone,
> 
> I am trying to load Barebox to the imx8mm board via imx-usb-loader, but it stops
> in the middle. I think maybe it is because we do not have a flash-header file
> with the static RAM configuration. Does someone have any idea about that?

Currently it's impossible to load Barebox on the i.MX8M via the imx-
usb-loader. The basic issue is that the DRAM setup happens in the PBL,
so there is no way to play the DCD and load a complete Barebox image
into DRAM like we do on the older SoCs.

For boards that do the DRAM setup in the PBL we would need to implement
a 2 step loading approach in imx-usb-loader:
First load the PBL part (max_load_size in the flash-header) into SRAM,
execute the DRAM setup, then have a implementation of the imx serial
load USB protocol in the PBL, so imx-usb-loader can load the complete
image into DRAM.

There's quite a bit of implementation work to be done here, but it
would be a very welcome addition to Barebox.

Regards,
Lucas


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
