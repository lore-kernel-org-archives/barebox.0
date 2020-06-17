Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jleAr-0006f0-2h
 for barebox@lists.infradead.org; Wed, 17 Jun 2020 19:56:42 +0000
Date: Wed, 17 Jun 2020 21:56:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200617195639.GF11869@pengutronix.de>
References: <20200617081126.5683-1-s.hauer@pengutronix.de>
 <20200617081126.5683-3-s.hauer@pengutronix.de>
 <0a1a4dcb-b8c9-ee15-8f5b-0e292a9a84bc@emlix.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0a1a4dcb-b8c9-ee15-8f5b-0e292a9a84bc@emlix.com>
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
Subject: Re: [PATCH 02/19] Add workqueues
To: Daniel =?iso-8859-15?Q?Gl=F6ckner?= <dg@emlix.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Jun 17, 2020 at 08:30:27PM +0200, Daniel Gl=F6ckner wrote:
> Hello Sascha,
> =

> Am 17.06.20 um 10:11 schrieb Sascha Hauer:
> > +static inline void wq_cancel_work(struct work_queue *wq)
> > +{
> > +	struct work_struct *work, *tmp;
> > +
> > +	list_for_each_entry_safe(work, tmp, &wq->work, list) {
> > +		list_del(&work->list);
> > +		wq->cancel(work);
> > +	}
> > +}
> =

> Why is this function in the header?
> So far it is called only from wq_unregister.

Right, we can move it there. I think my original intention was that
the user calls wq_cancel_work() before calling wq_unregister().

Regards,
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
