Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dQpXI-00078Y-Uq
 for barebox@lists.infradead.org; Fri, 30 Jun 2017 06:36:15 +0000
Date: Fri, 30 Jun 2017 08:35:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170630063547.cji5g7inho5efioo@pengutronix.de>
References: <20170627190317.19253-1-uwe@kleine-koenig.org>
 <20170627194002.GB675@sill.h.stcim.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170627194002.GB675@sill.h.stcim.de>
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
Subject: Re: [PATCH] ARM: imx: add support for Udoo Neo full
To: Stefan Lengfeld <contact@stefanchrist.eu>
Cc: barebox@lists.infradead.org, Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>

On Tue, Jun 27, 2017 at 09:40:02PM +0200, Stefan Lengfeld wrote:
> Hi Uwe,
> =

> Just my too cents:
> =

> On Tue, Jun 27, 2017 at 09:03:17PM +0200, Uwe Kleine-K=F6nig wrote:
> > From: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> > =

> > Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> > +++ b/arch/arm/boards/udoo-neo/flash-header-mx6sx-udoo-neo_full.imxcfg
> > @@ -0,0 +1,124 @@
> > +loadaddr 0x80000000
> > +soc imx6
> > +dcdofs 0x400
> =

> I'm always wondering where the magic values in the flash headers are
> coming from. Whether they are copied from u-boot or another
> variant/board or completely self-made or provided by a friendly hardware
> engineer in an Excel sheet ;-) Maybe you can add a comment here or in
> the commit message. But this would be a new convention, because I have
> not seen it in other flash headers yet.

Adding this information is a good idea. In this case the values come
from:

/*
 * These values are taken from:
 * repository: https://github.com/UDOOboard/uboot-imx
 * branch: udoo/2015.04.imx
 * file: board/udoo/udoo_neo/udoo_neo_basic.cfg
 */

I was about to apply Uwes patch along with this comment, but I just
realized that the values are from udoo_neo_basic whereas the patch
seems to support the udoo_neo_full. The udoo neo full has slightly
different calibration values in the branch above, but probably they
work on both boards. Uwe, do you know which hardware we actually have
and support?

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
