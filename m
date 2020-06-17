Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlS45-0007Vy-Qx
 for barebox@lists.infradead.org; Wed, 17 Jun 2020 07:00:55 +0000
Date: Wed, 17 Jun 2020 09:00:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200617070051.GX11869@pengutronix.de>
References: <cover.1592241105.git.dg@emlix.com>
 <ffa4bbca43e0cb290710535f13b657fbda2b9801.1592241105.git.dg@emlix.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ffa4bbca43e0cb290710535f13b657fbda2b9801.1592241105.git.dg@emlix.com>
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
Subject: Re: [PATCH v3 10/14] poller: Allow to run pollers inside of pollers
To: Daniel =?iso-8859-15?Q?Gl=F6ckner?= <dg@emlix.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Jun 15, 2020 at 07:20:43PM +0200, Daniel Gl=F6ckner wrote:
> From: Sascha Hauer <s.hauer@pengutronix.de>
> =

> This adds a slice to each poller which is acquired before the poller is
> executed. This allows us to run pollers inside of other pollers.

Letting pollers run inside of pollers is only necessary when pollers
have dependencies to other pollers. I don't think anymore that we should
allow this. Dependencies between pollers make the whole think more
complicated. Also pollers should be short lived and adding dependencies
between them contradicts this.
Therefore I want to make another suggestion how we can solve this. The
series should be ready later this day.

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
