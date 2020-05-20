Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbJvL-00045E-GS
 for barebox@lists.infradead.org; Wed, 20 May 2020 08:18:00 +0000
Date: Wed, 20 May 2020 10:17:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200520081757.GU11869@pengutronix.de>
References: <cover.1589477005.git.dg@emlix.com>
 <a5f6a082fd56438a26117d206920aebb5aa16051.1589477005.git.dg@emlix.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a5f6a082fd56438a26117d206920aebb5aa16051.1589477005.git.dg@emlix.com>
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
Subject: Re: [PATCH v2 09/10] fastboot net: implement fastboot over UDP
To: Daniel =?iso-8859-15?Q?Gl=F6ckner?= <dg@emlix.com>
Cc: barebox@lists.infradead.org, Edmund Henniges <eh@emlix.com>

On Thu, May 14, 2020 at 08:21:57PM +0200, Daniel Gl=F6ckner wrote:
> From: Edmund Henniges <eh@emlix.com>
> =

> This implements the UDP variant of the fastboot protocol. The only way to
> start the service for now is to compile with CONFIG_FASTBOOT_NET_ON_BOOT.
> The service will bind to the network interface that provides the IPv4
> gateway.
> =

> Sending an OKAY packet before performing a restart is necessary since
> contrary to USB the host will not notice when a UDP server disappears.
> =

> Signed-off-by: Edmund Henniges <eh@emlix.com>
> Signed-off-by: Daniel Gl=F6ckner <dg@emlix.com>
> ---
> +
> +#ifdef CONFIG_FASTBOOT_NET_ON_BOOT
> +static struct fastboot_net *fastboot_net_obj;
> +
> +static int fastboot_on_boot(void)
> +{
> +	struct fastboot_net *fbn;
> +
> +	ifup_all(0);
> +	fbn =3D fastboot_net_init(NULL);
> +
> +	if (IS_ERR(fbn))
> +		return PTR_ERR(fbn);
> +
> +	fastboot_net_obj =3D fbn;
> +	return 0;
> +}
> +
> +static void fastboot_net_exit(void)
> +{
> +	if (fastboot_net_obj)
> +		fastboot_net_free(fastboot_net_obj);
> +}

fastboot_net_obj won't be NULL here, the check should be if(!IS_ERR())
instead.

Sascha

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
