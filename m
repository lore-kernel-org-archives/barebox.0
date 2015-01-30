Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YH69a-0004lr-9Y
 for barebox@lists.infradead.org; Fri, 30 Jan 2015 07:38:10 +0000
Date: Fri, 30 Jan 2015 08:37:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150130073747.GO12209@pengutronix.de>
References: <20150129094720.GG12209@pengutronix.de>
 <201838670.425159504.1422540063764.JavaMail.root@zimbra1-e1.priv.proxad.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201838670.425159504.1422540063764.JavaMail.root@zimbra1-e1.priv.proxad.net>
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
Subject: Re: [PATCH 1/3] net: smc1111: allow platform specific accessors
To: robert.jarzmik@free.fr
Cc: barebox@lists.infradead.org

On Thu, Jan 29, 2015 at 03:01:03PM +0100, robert.jarzmik@free.fr wrote:
> ----- Mail original -----
> De: "Sascha Hauer" <s.hauer@pengutronix.de>
> =C0: "Robert Jarzmik" <robert.jarzmik@free.fr>
> Cc: barebox@lists.infradead.org
> Envoy=E9: Jeudi 29 Janvier 2015 10:47:20
> Objet: Re: [PATCH 1/3] net: smc1111: allow platform specific accessors
> =

> > Yeah I know, connecting the 91c111 inspired the board designers to many
> > funny things. Passing function pointers in platform_data is not very
> > future proof since this doesn't work with device tree. I see that the
> > Linux driver has device tree support. Does this binding work for you?
> =

> Well, it can't, because lubbock doesn't support device-tree yet, it's on
> my todo list for the kernel (and barebox of course). That means there is
> no way to even build a device-tree enabled kernel for lubbock ... yet.
> =

> Now the binding would work with :
>  - the address shift being declared (as in kernel driver)
>  - a set of 16 bit accessors being declared in barebox's smcs9111.c
>    driver (and not in platform specific accessors)
> =

> Would you rather have me change the approach with a new set of accessor
> in smcs9111.c, and the shift as a parameter (both platform_data and devic=
e-
> tree) ?

That sounds better. Using accessors in platform_data really is more
flexible, but when switching to device tree we'll need a width/shift
approach anyway.

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
