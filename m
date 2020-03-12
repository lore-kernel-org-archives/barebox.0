Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx1.emlix.com ([188.40.240.192])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCJym-0001fa-Hu
 for barebox@lists.infradead.org; Thu, 12 Mar 2020 09:18:14 +0000
Date: Thu, 12 Mar 2020 10:18:10 +0100
From: Daniel =?iso-8859-1?Q?Gl=F6ckner?= <dg@emlix.com>
Message-ID: <20200312091809.GA13611@emlix.com>
References: <20200311142757.25263-1-s.hauer@pengutronix.de>
 <20200311142757.25263-6-s.hauer@pengutronix.de>
 <20200311235154.GA28876@emlix.com>
 <20200312082459.GC4638@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200312082459.GC4638@pengutronix.de>
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
Subject: Re: [PATCH 05/16] Introduce slices
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>, Edmund Henniges <eh@emlix.com>

On Thu, Mar 12, 2020 at 09:24:59AM +0100, Sascha Hauer wrote:
> On Thu, Mar 12, 2020 at 12:51:54AM +0100, Daniel Gl=F6ckner wrote:
> > Hello Sascha,
> > =

> > On Wed, Mar 11, 2020 at 03:27:46PM +0100, Sascha Hauer wrote:
> > > +/**
> > > + * slice_acquired: test if a slice is acquired
> > > + * @slice: The slice to test
> > > + *
> > > + * This tests if a slice is acquired. Returns true if it is, false o=
therwise
> > > + */
> > > +bool slice_acquired(struct slice *slice)
> > > +{
> > > +	struct slice_entry *se;
> > > +	int acquired =3D slice->acquired;
> > > +	bool ret =3D false;
> > > +
> > > +	if (acquired > 0)
> > > +		return true;
> > > +
> > > +	if (acquired < 0) {
> > > +		pr_err("Recursive dependency detected in slice %s\n",
> > > +		       slice_name(slice));
> > > +		panic("Cannot continue");
> > > +	}
> > > +
> > > +	slice->acquired =3D -1;
> > > +
> > > +	list_for_each_entry(se, &slice->deps, list)
> > > +		if (slice_acquired(se->slice)) {
> > > +			ret =3D true;
> > > +			break;
> > > +		}
> > > +
> > > +	slice->acquired =3D acquired;
> > =

> > no need to restore slice->acquire from acquired since
> > acquired must have been zero if we reach this line.
> =

> Hm, no. Nothing changes slice->acquired in this function besides
> ourselves. It is still -1 how we have set it previously.

What I wanted to say is that you can simply use
	slice->acquired =3D 0;
at the end.

Best regards,

  Daniel


-- =

Dipl.-Math. Daniel Gl=F6ckner, emlix GmbH, http://www.emlix.com
Fon +49 551 30664-0, Fax +49 551 30664-11,
Gothaer Platz 3, 37083 G=F6ttingen, Germany
Sitz der Gesellschaft: G=F6ttingen, Amtsgericht G=F6ttingen HR B 3160
Gesch=E4ftsf=FChrung: Heike Jordan, Dr. Uwe Kracke
Ust-IdNr.: DE 205 198 055

emlix - your embedded linux partner

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
