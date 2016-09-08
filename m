Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bi4ze-0000cz-Gc
 for barebox@lists.infradead.org; Thu, 08 Sep 2016 19:28:15 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <ukl@pengutronix.de>) id 1bi4zI-0000dk-CL
 for barebox@lists.infradead.org; Thu, 08 Sep 2016 21:27:52 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.84_2)
 (envelope-from <ukl@pengutronix.de>) id 1bi4zI-00045v-5w
 for barebox@lists.infradead.org; Thu, 08 Sep 2016 21:27:52 +0200
Date: Thu, 8 Sep 2016 21:27:52 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20160908192752.dshheqp2qntzmon6@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: barebox crashes with CONFIG_CMD_MAGICVAR=y and
 CONFIG_CMD_MAGICVAR_HELP unset
To: barebox@lists.infradead.org

Hello,

with

	CONFIG_CMD_MAGICVAR=3Dy
	# CONFIG_CMD_MAGICVAR_HELP is not set

calling magicvar results in

	md->description =3D xstrdup(description)

in line 64 of commands/magicvar.c. As CONFIG_CMD_MAGICVAR_HELP is not
set, description is NULL which makes xstrdup fail.

I fixed it here doing

-       md->description =3D xstrdup(description);
+       md->description =3D description ? xstrdup(description) : NULL;

but I can imagine other variants:

	if (IS_ENABLED(CONFIG_CMD_MAGICVAR_HELP))
		md->description =3D xstrdup(description);

or fixing xstrdup to not choke on NULL.

What do you prefer?

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
