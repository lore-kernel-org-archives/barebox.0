Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ju7Qw-0005DF-Aq
 for barebox@lists.infradead.org; Sat, 11 Jul 2020 04:48:19 +0000
Date: Sat, 11 Jul 2020 06:48:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200711044817.GO15485@pengutronix.de>
References: <20200619074427.17289-1-s.hauer@pengutronix.de>
 <20200619074427.17289-18-s.hauer@pengutronix.de>
 <70810c58-b4f1-945d-fffa-c79083a03c48@emlix.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <70810c58-b4f1-945d-fffa-c79083a03c48@emlix.com>
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
Subject: Re: [PATCH 17/21] fastboot net: implement fastboot over UDP
To: Daniel =?iso-8859-15?Q?Gl=F6ckner?= <dg@emlix.com>
Cc: Barebox List <barebox@lists.infradead.org>, Edmund Henniges <eh@emlix.com>

Hi Daniel,

On Mon, Jun 29, 2020 at 09:50:51PM +0200, Daniel Gl=F6ckner wrote:
> Hello Sascha,
> =

> > +{
> > +	struct fastboot_net *fbn =3D container_of(poller, struct fastboot_net,
> > +					       poller);
> > +
> > +	if (fbn->active_download && is_timeout(fbn->last_download_pkt, 5 * SE=
COND)) {
> =

> Should pollers prefer is_timeout_non_interruptible over is_timeout?
> =

> I can make a new patch set where all issues are fixed, if you don't insist
> on doing it yourself.

Should have read this mail up to the end. I was about to tell you that I
won't find time in the next weeks to fix your valid review points, so
indeed I'd be happy if you could do this.

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
