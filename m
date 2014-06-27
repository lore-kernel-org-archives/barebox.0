Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X0fcw-0002uI-Pc
 for barebox@lists.infradead.org; Fri, 27 Jun 2014 23:32:19 +0000
Date: Sat, 28 Jun 2014 01:31:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140627233152.GU14257@pengutronix.de>
References: <53AC8965.4020806@web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <53AC8965.4020806@web.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: AM335x NAND
To: Stefan =?iso-8859-15?Q?M=FCller-Klieser?= <stefan.mueller-klieser@web.de>
Cc: barebox@lists.infradead.org

Hi Stefan,

On Thu, Jun 26, 2014 at 10:58:13PM +0200, Stefan M=FCller-Klieser wrote:
> Dear list,
> =

> I am working on TI's AM335x SoCs and want to add support for the missing
> NAND controller features in the driver. As the NAND interface of the
> barebox is not in sync with the kernel, it is difficult for me to decide
> which way to go. Is there already work going on to update the barebox
> NAND driver? I suppose the barebox nand_omap_gpmc is a port of the
> u-boot NAND driver. So, should I port the features from the u-boot
> driver into barebox, e.g. ELM and HW BCH16 support, or are there
> different plans from the maintainer?

I have no further plans with nand_omap_gpmc. Note the driver can switch
the ecc correction type during runtime. We have to do this since the
boot ROM needs a different ecc layout than the rest of the NAND does.
I don't want to lose this feature. Other than that feel free to update
the driver with new features.

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
