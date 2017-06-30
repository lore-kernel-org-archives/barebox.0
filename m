Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dQsEe-00087Q-Fo
 for barebox@lists.infradead.org; Fri, 30 Jun 2017 09:29:10 +0000
Date: Fri, 30 Jun 2017 11:28:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170630092842.pbqnivkw4kuau67h@pengutronix.de>
References: <20170627190317.19253-1-uwe@kleine-koenig.org>
 <20170627194002.GB675@sill.h.stcim.de>
 <20170630063547.cji5g7inho5efioo@pengutronix.de>
 <4d6d133a-7d6e-4bb7-2c06-8d68b0dbd734@kleine-koenig.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4d6d133a-7d6e-4bb7-2c06-8d68b0dbd734@kleine-koenig.org>
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
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>
Cc: Stefan Lengfeld <contact@stefanchrist.eu>, barebox@lists.infradead.org

On Fri, Jun 30, 2017 at 11:06:11AM +0200, Uwe Kleine-K=F6nig wrote:
> Hello Sascha,
> =

> On 06/30/2017 08:35 AM, Sascha Hauer wrote:
> > Adding this information is a good idea. In this case the values come
> > from:
> > =

> > /*
> >  * These values are taken from:
> >  * repository: https://github.com/UDOOboard/uboot-imx
> >  * branch: udoo/2015.04.imx
> >  * file: board/udoo/udoo_neo/udoo_neo_basic.cfg
> >  */
> > =

> > I was about to apply Uwes patch along with this comment, but I just
> > realized that the values are from udoo_neo_basic whereas the patch
> > seems to support the udoo_neo_full. The udoo neo full has slightly
> > different calibration values in the branch above, but probably they
> > work on both boards. Uwe, do you know which hardware we actually have
> > and support?
> =

> The patch I submitted is tested only on a udoo neo full. Does this
> answer your question?

Then we should probably use the register values for the udoo neo full,
not for the udoo neo basic.

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
