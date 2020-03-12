Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCJ9K-0000OJ-2k
 for barebox@lists.infradead.org; Thu, 12 Mar 2020 08:25:03 +0000
Date: Thu, 12 Mar 2020 09:24:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200312082459.GC4638@pengutronix.de>
References: <20200311142757.25263-1-s.hauer@pengutronix.de>
 <20200311142757.25263-6-s.hauer@pengutronix.de>
 <20200311235154.GA28876@emlix.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200311235154.GA28876@emlix.com>
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
Subject: Re: [PATCH 05/16] Introduce slices
To: Daniel =?iso-8859-15?Q?Gl=F6ckner?= <dg@emlix.com>
Cc: Barebox List <barebox@lists.infradead.org>, Edmund Henniges <eh@emlix.com>

On Thu, Mar 12, 2020 at 12:51:54AM +0100, Daniel Gl=F6ckner wrote:
> Hello Sascha,
> =

> On Wed, Mar 11, 2020 at 03:27:46PM +0100, Sascha Hauer wrote:
> > +/**
> > + * slice_acquired: test if a slice is acquired
> > + * @slice: The slice to test
> > + *
> > + * This tests if a slice is acquired. Returns true if it is, false oth=
erwise
> > + */
> > +bool slice_acquired(struct slice *slice)
> > +{
> > +	struct slice_entry *se;
> > +	int acquired =3D slice->acquired;
> > +	bool ret =3D false;
> > +
> > +	if (acquired > 0)
> > +		return true;
> > +
> > +	if (acquired < 0) {
> > +		pr_err("Recursive dependency detected in slice %s\n",
> > +		       slice_name(slice));
> > +		panic("Cannot continue");
> > +	}
> > +
> > +	slice->acquired =3D -1;
> > +
> > +	list_for_each_entry(se, &slice->deps, list)
> > +		if (slice_acquired(se->slice)) {
> > +			ret =3D true;
> > +			break;
> > +		}
> > +
> > +	slice->acquired =3D acquired;
> =

> no need to restore slice->acquire from acquired since
> acquired must have been zero if we reach this line.

Hm, no. Nothing changes slice->acquired in this function besides
ourselves. It is still -1 how we have set it previously.

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
