Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cRLQk-0001EJ-5G
 for barebox@lists.infradead.org; Wed, 11 Jan 2017 16:07:19 +0000
Date: Wed, 11 Jan 2017 17:06:56 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20170111160656.hx3k6a4frs32gm76@pengutronix.de>
References: <20161223094549.3311-1-u.kleine-koenig@pengutronix.de>
 <20161223095046.xnvd2taafojhrjgd@pengutronix.de>
 <20170109085336.x47typrhxwajq3fg@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170109085336.x47typrhxwajq3fg@pengutronix.de>
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
Subject: Re: [PATCH] ata: pata-imx: simplify assignment of device name
To: Sascha Hauer <s.hauer@pengutronix.de>, Michel Stam <m.stam@fugro.nl>
Cc: barebox@lists.infradead.org

On Mon, Jan 09, 2017 at 09:53:36AM +0100, Sascha Hauer wrote:
> On Fri, Dec 23, 2016 at 10:50:46AM +0100, Uwe Kleine-K=F6nig wrote:
> > Hello,
> > =

> > On Fri, Dec 23, 2016 at 10:45:49AM +0100, Uwe Kleine-K=F6nig wrote:
> > >  	dev->detect =3D pata_imx_detect;
> > =

> > BTW, another thing I noticed while reading through this driver is:
> > =

> > pata_imx_detect is a wrapper around ata_port_detect. Later in
> > imx_pata_probe the function ide_port_register is called which also calls
> > ata_port_detect.
> > =

> > I don't have a machine handy where I could test, but I guess
> > pata_imx_detect could be dropped. (Or alternatively ide_port_register
> > could be reworked and all callers fixed to setup a detect call.)
> =

> =

> ide_port_register() has:
> =

> 	ret =3D ata_port_register(&ide->port);
> 	if (!ret)
> 		ata_port_detect(&ide->port);
> =

> The call to ata_port_detect() goes back to:
> =

> commit 9c8f73ba86884026f4bbfc6f593d73741cfebcdc
> Author: Michel Stam <m.stam@fugro.nl>
> Date:   Mon Apr 7 12:01:21 2014 +0200
> =

> The hunk adding ata_port_detect() is wrong as it shortcircuits the
> optional detection mechanism.

Who fixes this? /me looks at Michel who was added to Cc: :-)

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
