Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1biFGE-0007il-T8
 for barebox@lists.infradead.org; Fri, 09 Sep 2016 06:26:03 +0000
Date: Fri, 9 Sep 2016 08:25:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160909062541.s4pgmxefhgq7rlge@pengutronix.de>
References: <20160908192752.dshheqp2qntzmon6@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20160908192752.dshheqp2qntzmon6@pengutronix.de>
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
Subject: Re: barebox crashes with CONFIG_CMD_MAGICVAR=y and
 CONFIG_CMD_MAGICVAR_HELP unset
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Sep 08, 2016 at 09:27:52PM +0200, Uwe Kleine-K=F6nig wrote:
> Hello,
> =

> with
> =

> 	CONFIG_CMD_MAGICVAR=3Dy
> 	# CONFIG_CMD_MAGICVAR_HELP is not set
> =

> calling magicvar results in
> =

> 	md->description =3D xstrdup(description)
> =

> in line 64 of commands/magicvar.c. As CONFIG_CMD_MAGICVAR_HELP is not
> set, description is NULL which makes xstrdup fail.
> =

> I fixed it here doing
> =

> -       md->description =3D xstrdup(description);
> +       md->description =3D description ? xstrdup(description) : NULL;
> =

> but I can imagine other variants:
> =

> 	if (IS_ENABLED(CONFIG_CMD_MAGICVAR_HELP))
> 		md->description =3D xstrdup(description);
> =

> or fixing xstrdup to not choke on NULL.
> =

> What do you prefer?

kstrdup in the kernel tests for NULL and xstrdup in busybox does also.
Let's just add the test.

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
