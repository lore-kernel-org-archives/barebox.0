Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SIPzi-0004rP-Pv
 for barebox@lists.infradead.org; Thu, 12 Apr 2012 19:47:51 +0000
Date: Thu, 12 Apr 2012 21:47:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120412194743.GA3852@pengutronix.de>
References: <1334247624-24896-1-git-send-email-shc_work@mail.ru>
 <1334247624-24896-2-git-send-email-shc_work@mail.ru>
 <20120412210415.3a0313e2@eb-e6520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120412210415.3a0313e2@eb-e6520>
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
Subject: Re: [PATCH 2/7] i.MX53: Move specific i.MX53 silicon definitions to
 imx53-regs.h
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On Thu, Apr 12, 2012 at 09:04:15PM +0200, Eric B=E9nard wrote:
> Le Thu, 12 Apr 2012 20:20:19 +0400,
> Alexander Shiyan <shc_work@mail.ru> a =E9crit :
> =

> >  =

> > +/* silicon revisions specific to i.MX53 */
> > +#define MX53_CHIP_REV_1_0	0x10
> > +#define MX53_CHIP_REV_2_0	0x20
> > +#define MX53_CHIP_REV_2_1	0x21
> > +
> >  #endif /* __MACH_IMX53_REGS_H */
> >  =

> =

> The goal was to move chip revision to imx-regs.h and remove them from
> other files (as MX25/35/51/53 seems to share the same pattern for chip
> revision)

Or to put it differently you should instead let i.MX51 use the
IMX_CHIP_REV_* macros instead of MX51_CHIP_REV_*

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
