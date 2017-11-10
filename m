Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eD3Il-0003Xo-PQ
 for barebox@lists.infradead.org; Fri, 10 Nov 2017 07:00:38 +0000
Date: Fri, 10 Nov 2017 08:00:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171110070008.p6gsmknadybwq6ug@pengutronix.de>
References: <20171108150517.130503-1-g.schenk@eckelmann.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171108150517.130503-1-g.schenk@eckelmann.de>
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
Subject: Re: [PATCH] Configure network device for nfsboot via nv var
To: Gavin Schenk <g.schenk@eckelmann.de>
Cc: barebox@lists.infradead.org

On Wed, Nov 08, 2017 at 04:05:17PM +0100, Gavin Schenk wrote:
> When you have a static network environment but more than one network
> device on your machine it is necessary to provide the <device> parameter
> to the ip parameter at kernel cmd line.
> =

> The device name assigned by Linux cannot in general be predicted as it
> depends on driver bind order.
> =

> This patch introduces a new global variable
> "global.linux.nfsroot.device" which when set is feed to the ip=3D
> kernel parameter as device name.

Maybe we should rather add a linuxname property to the ethernet device
instead. That way we could specify multiple names in case we have
multiple ethernet devices in barebox aswell.

Sascha


> =

> Signed-off-by: Gavin Schenk <g.schenk@eckelmann.de>
> ---
>  net/ifup.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> =

> diff --git a/net/ifup.c b/net/ifup.c
> index 5113d138329a..bdb7cf0e6d0a 100644
> --- a/net/ifup.c
> +++ b/net/ifup.c
> @@ -109,16 +109,19 @@ int ifup(const char *name, unsigned flags)
>  		dev_set_param(dev, "linux.bootargs", "ip=3Ddhcp");
>  	} else if (!strcmp(ip, "static")) {
>  		char *bootarg;
> +		const char *env_linux_nfsroot_device =3D =

> +			getenv("global.linux.nfsroot.device");
>  		for (i =3D 0; i < ARRAY_SIZE(vars); i++) {
>  			ret =3D eth_set_param(dev, vars[i]);
>  			if (ret)
>  				goto out;
>  		}
> -		bootarg =3D basprintf("ip=3D%pI4:%pI4:%pI4:%pI4:::",
> +		bootarg =3D basprintf("ip=3D%pI4:%pI4:%pI4:%pI4::%s:",
>  				&edev->ipaddr,
>  				&edev->serverip,
>  				&edev->gateway,
> -				&edev->netmask);
> +				&edev->netmask,
> +				env_linux_nfsroot_device ?: "");
>  		dev_set_param(dev, "linux.bootargs", bootarg);
>  		free(bootarg);
>  	} else {
> -- =

> 2.15.0
> =

> =

> Eckelmann AG
> Vorstand: Dipl.-Ing. Peter Frankenbach (Sprecher) Dipl.-Wi.-Ing. Philipp =
Eckelmann
> Dr.-Ing. Marco M=FCnchhof Dr.-Ing. Frank Uhlemann
> Vorsitzender des Aufsichtsrats: Hubertus G. Krossa
> Stv. Vorsitzender des Aufsichtsrats: Dr.-Ing. Gerd Eckelmann
> Sitz der Gesellschaft: Berliner Str. 161, 65205 Wiesbaden, Amtsgericht Wi=
esbaden HRB 12636
> http://www.eckelmann.de =

> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> =


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
