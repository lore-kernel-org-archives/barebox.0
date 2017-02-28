Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cibbQ-0000MO-UH
 for barebox@lists.infradead.org; Tue, 28 Feb 2017 06:49:48 +0000
Date: Tue, 28 Feb 2017 07:49:19 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170228064919.qmkrtkqks26zgq6l@pengutronix.de>
References: <20170225204022.12815-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170225204022.12815-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH v2 3+0/3] retry on simplification of init code flow
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Sat, Feb 25, 2017 at 09:40:19PM +0100, Uwe Kleine-K=F6nig wrote:
> Hello,
> =

> this series is v2 of [4-6]/3 from Feb 15 and is supposed to superseed
> (implicit) v1 which is already in next.
> =

> The difference is that patch "mvebu: Fix fixup of mbus device-tree
> ranges" is squashed into them and the commit log adapted accordingly.

Ok, applied. Please check if the result is correct in -next.

Sascha

> =

> Best regards
> Uwe
> =

> Uwe Kleine-K=F6nig (3):
>   mvebu: armada-370-xp: simplify soc init code flow
>   mvebu: dove: simplify soc init code flow
>   mvebu: kirkwood: simplify soc init code flow
> =

>  arch/arm/mach-mvebu/armada-370-xp.c | 31 ++++++++-----------------------
>  arch/arm/mach-mvebu/dove.c          | 13 ++-----------
>  arch/arm/mach-mvebu/kirkwood.c      | 11 ++---------
>  drivers/bus/mvebu-mbus.c            | 22 +++++++++++++++++++++-
>  4 files changed, 33 insertions(+), 44 deletions(-)
> =

> -- =

> 2.11.0
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
