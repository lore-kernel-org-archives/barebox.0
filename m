Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gZA5J-0005zL-F3
 for barebox@lists.infradead.org; Tue, 18 Dec 2018 07:46:35 +0000
Date: Tue, 18 Dec 2018 08:46:21 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181218074621.apvx6h32aqh5hje5@pengutronix.de>
References: <20181214141730.26181-1-s.hauer@pengutronix.de>
 <20181214141730.26181-15-s.hauer@pengutronix.de>
 <1545053877.6213.14.camel@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1545053877.6213.14.camel@phytec.de>
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
Subject: Re: [PATCH 14/23] ARM: omap: dmtimer: Turn into a driver
To: Teresa Remmet <t.remmet@phytec.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Dec 17, 2018 at 02:37:57PM +0100, Teresa Remmet wrote:
> Hello Sascha,
> =

> > =A0	/* Enable counter */
> > =A0	writel(0x3, base + TCLR);
> > =A0
> > -	return init_clock(&dmtimer_cs);
> > +	init_clock(&dmtimer_cs);
> > +
> > +	return 0;
> =

> is there any reason why you always return 0 now?

No particular reason. Fixed it.

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
