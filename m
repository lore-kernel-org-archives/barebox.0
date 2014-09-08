Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XQs7p-0005q2-O1
 for barebox@lists.infradead.org; Mon, 08 Sep 2014 06:08:30 +0000
Date: Mon, 8 Sep 2014 08:08:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140908060807.GK5352@pengutronix.de>
References: <1409838437-3625-1-git-send-email-s.trumtrar@pengutronix.de>
 <1409838437-3625-3-git-send-email-s.trumtrar@pengutronix.de>
 <20140908060348.GJ5352@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140908060348.GJ5352@pengutronix.de>
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
Subject: Re: [PATCH v3 2/4] Firmware: provide a handler to program Altera FPGAs
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org, Juergen Beisert <jbe@pengutronix.de>

On Mon, Sep 08, 2014 at 08:03:48AM +0200, Sascha Hauer wrote:
> On Thu, Sep 04, 2014 at 03:47:15PM +0200, Steffen Trumtrar wrote:
> > +/*
> > + * Physical requirements:
> > + * - three free GPIOs for the signals nCONFIG, CONFIGURE_DONE, nSTATUS
> > + * - 32 bit per word, LSB first capable SPI master (MOSI + clock)
> > + *
> > + * Example how to configure this driver via device tree
> > + *
> > + *	fpga@0 {
> > + *		compatible = "altr,fpga-passive-serial";
> > + *		nstat-gpio = <&gpio4 18 0>;
> > + *		confd-gpio = <&gpio4 19 0>;
> > + *		nconfig-gpio = <&gpio4 20 0>;
> > + *		spi-max-frequency = <10000000>;
> > + *		reg = <0>;
> > + *	};
> 
> We have Documentation/devicetree/bindings/. Please add a document there.

Oh, you did in 3/4.

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
