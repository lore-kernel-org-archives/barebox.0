Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XPnN3-0007nw-K0
 for barebox@lists.infradead.org; Fri, 05 Sep 2014 06:51:46 +0000
Date: Fri, 5 Sep 2014 08:51:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140905065122.GB5352@pengutronix.de>
References: <1409813440-9512-1-git-send-email-t.gamez@phytec.de>
 <20140905053733.GW5352@pengutronix.de>
 <20140905063158.GA23258@omega>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140905063158.GA23258@omega>
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
Subject: Re: [PATCH 1/5] ARM: phyCORE-AM335x: Updated SPI NOR dts entries
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Sep 05, 2014 at 08:32:00AM +0200, Alexander Aring wrote:
> Hi Sascha,
> =

> On Fri, Sep 05, 2014 at 07:37:33AM +0200, Sascha Hauer wrote:
> > Hi Teresa,
> > =

> > On Thu, Sep 04, 2014 at 08:50:36AM +0200, Teresa G=E1mez wrote:
> > > Updated the SPI NOR flash entries. NOR flash got
> > > detected but did not work.
> > > =

> > > - Updated muxing
> > > - Fixed frequency
> > > - Fixed CS
> > > - Removed first compatible entry (the flashes used is changing freque=
ntly)
> > > =

> > > Signed-off-by: Teresa G=E1mez <t.gamez@phytec.de>
> > =

> > Applied up to 4/5. The Root partition start seems indeed wrong.
> > =

> =

> yea. But sometimes you also do a "fixed while applying". Why not now?
> Okay, maybe on the "good" days.

Maybe because you didn't write the correct start offset and I didn't
feel like doing maths before the first coffee ;)

> =

> Nevertheless, isn't there any mechanism to check on conflicts while
> creating partitions like request memory mapped regions?

No. Right now creating multiple conflicting partitions is a feature, see
for example /dev/env0 and /dev/nor0.bareboxenv. Those are two
partitions which both conflict but must both exist.

I must admit it's a misfeature though and I wish we could do without it
as it really can hide problems.

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
