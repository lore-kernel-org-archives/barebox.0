Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OQ4RL-0004n4-Jk
	for barebox@lists.infradead.org; Sat, 19 Jun 2010 20:14:56 +0000
Date: Sat, 19 Jun 2010 22:14:51 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20100619201451.GA29054@pengutronix.de>
References: <1276508921-3264-1-git-send-email-s.hauer@pengutronix.de>
	<1276508921-3264-8-git-send-email-s.hauer@pengutronix.de>
	<20100617132059.GO20799@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100617132059.GO20799@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 07/11] add a generic default environment
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello Sascha,

On Thu, Jun 17, 2010 at 03:20:59PM +0200, Sascha Hauer wrote:
> diff --git a/defaultenv/bin/boot b/defaultenv/bin/boot
> new file mode 100644
> index 0000000..6a508fb
> --- /dev/null
> +++ b/defaultenv/bin/boot
> @@ -0,0 +1,109 @@
> +#!/bin/sh
> +
> +. /env/config
> +
> +if [ x$1 =3D xnand ]; then
> +	rootfs_loc=3Dnand
> +	kernel_loc=3Dnand
> +elif [ x$1 =3D xnor ]; then
> +	rootfs_loc=3Dnor
> +	kernel_loc=3Dnor
> +elif [ x$1 =3D xnet ]; then
> +	rootfs_loc=3Dnet
> +	kernel_loc=3Dnet
> +fi
I'm not sure if barebox supports the case statement.  Even if not you
can simplify that to

	if [ "x$1" =3D "xnand" ] || [ "x$1" =3D "xnor" ] || [ "x$1" =3D "xnet" ]; =
then
		rootfs_loc=3D"$1";
		kernel_loc=3D"$1";
	fi

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
