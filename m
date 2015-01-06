Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Y8Uf5-0004UW-Is
 for barebox@lists.infradead.org; Tue, 06 Jan 2015 13:59:08 +0000
Date: Tue, 6 Jan 2015 14:58:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150106135845.GH17225@pengutronix.de>
References: <20150105121150.GC4544@pengutronix.de>
 <1822252708.362857815.1420474608722.JavaMail.root@zimbra1-e1.priv.proxad.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1822252708.362857815.1420474608722.JavaMail.root@zimbra1-e1.priv.proxad.net>
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
Subject: Re: [PATCH] net: smc1111: fix memory congestions
To: robert.jarzmik@free.fr
Cc: barebox@lists.infradead.org

On Mon, Jan 05, 2015 at 05:16:48PM +0100, robert.jarzmik@free.fr wrote:
> =

> ----- Mail original -----
> De: "Sascha Hauer" <s.hauer@pengutronix.de>
> =C0: "Robert Jarzmik" <robert.jarzmik@free.fr>
> Cc: barebox@lists.infradead.org
> Envoy=E9: Lundi 5 Janvier 2015 13:11:50
> Objet: Re: [PATCH] net: smc1111: fix memory congestions
> =

> > I don't know the hardware (not anymore, fortunately ;), but isn't it
> > possible to dedicate one bucket for transmitting only, so that it will
> > never be occupied by a received packet?
> None I'm aware of.
> I've been through the specification many times, and my understanding is
> that :
>  - the MMU allocation is symmetric (either from CPU for TX or from NIC
>    for RX)
>  - there is no configurable threshold or limit
>  - first customer is first served from the MMU point of view

Ok then, applied.

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
