Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SJ2u6-0007Gu-GY
 for barebox@lists.infradead.org; Sat, 14 Apr 2012 13:20:39 +0000
Date: Sat, 14 Apr 2012 15:20:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120414132033.GX3852@pengutronix.de>
References: <1334325273-1701-1-git-send-email-s.hauer@pengutronix.de>
 <1334325273-1701-7-git-send-email-s.hauer@pengutronix.de>
 <20120414151723.649edcd7@eb-e6520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120414151723.649edcd7@eb-e6520>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 6/7] ARM: initial Freescale i.MX6q Armadillo2 support
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On Sat, Apr 14, 2012 at 03:17:23PM +0200, Eric B=E9nard wrote:
> Hi Sascha,
> =

> Le Fri, 13 Apr 2012 15:54:32 +0200,
> Sascha Hauer <s.hauer@pengutronix.de> a =E9crit :
> > --- /dev/null
> > +++ b/arch/arm/boards/freescale-mx6-arm2/env/config
> > +disk_parts=3D"1M(barebox)ro,1M(bareboxenv),4M(kernel),-(root)"
> > +
> maybe you could increase env's partition size to 3M so that the rootfs
> gets aligned on a 4MB allocation unit which seems to give better
> performances on modern SDCard :

Good idea, will do.

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
