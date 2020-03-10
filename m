Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBbps-0008Fq-Vc
 for barebox@lists.infradead.org; Tue, 10 Mar 2020 10:10:06 +0000
Date: Tue, 10 Mar 2020 11:10:03 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200310101003.GZ3335@pengutronix.de>
References: <20200306193406.20531-1-s.hauer@pengutronix.de>
 <20200306193406.20531-2-s.hauer@pengutronix.de>
 <96699dd6-b00b-79e2-943d-52892e91cebf@emlix.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <96699dd6-b00b-79e2-943d-52892e91cebf@emlix.com>
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
Subject: Re: [PATCH 1/8] Introduce slices
To: Daniel =?iso-8859-15?Q?Gl=F6ckner?= <dg@emlix.com>
Cc: Barebox List <barebox@lists.infradead.org>, Edmund Henniges <eh@emlix.com>

On Mon, Mar 09, 2020 at 03:49:53PM +0100, Daniel Gl=F6ckner wrote:
> Hello Sascha,
> =

> Am 03/06/20 um 20:33 schrieb Sascha Hauer:
> > +static void __slice_acquire(struct slice *slice, int add)
> > +{
> > +	struct slice_entry *se;
> > +
> > +	slice->acquired +=3D add;
> > +
> > +	if (slice->acquired < 0) {
> > +		pr_err("Slice %s acquired count drops below zero\n",
> > +			slice_name(slice));
> > +		dump_stack();
> > +		slice->acquired =3D 0;
> > +		return;
> > +	}
> > +
> > +	list_for_each_entry(se, &slice->deps, list)
> > +		__slice_acquire(se->slice, add);
> =

> I don't think we need that loop. slice_acquired will already recurse into
> the dependency tree. That loop would also mark resources as used which
> are still unused. The network packet handlers can safely do MDIO transfers
> because the network stack does not talk to the PHY while checking for
> received packets.

Agreed.

> =

> > +bool slice_acquired(struct slice *slice)
> > +{
> > +	struct slice_entry *se;
> > +
> > +	if (slice->acquired)
> > +		return true;
> > +
> > +	list_for_each_entry(se, &slice->deps, list)
> > +		if (slice_acquired(se->slice))
> > +			return true;
> > +
> > +	return false;
> > +}
> =

> It would be nice if this function was able to detect cyclic dependencies
> if DEBUG. This can be done by setting slice->acquired to INT_MIN while
> recursing and checking if any of the values found are negative.

Yes, good idea.

I'll send an update for this.

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
