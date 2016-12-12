Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cGIyU-0001Ch-3V
 for barebox@lists.infradead.org; Mon, 12 Dec 2016 05:16:30 +0000
Date: Mon, 12 Dec 2016 06:16:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161212051608.a4jdtxrfntczftca@pengutronix.de>
References: <20161208093922.23194-1-u.kleine-koenig@pengutronix.de>
 <20161208094955.4k66mbkpqvdaxqpn@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20161208094955.4k66mbkpqvdaxqpn@pengutronix.de>
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
Subject: Re: [PATCH] spi: mvebu: only read from bus when data is needed
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Dec 08, 2016 at 10:49:55AM +0100, Uwe Kleine-K=F6nig wrote:
> On Thu, Dec 08, 2016 at 10:39:22AM +0100, Uwe Kleine-K=F6nig wrote:
> > This optimization reduced the time to transfer 40 MB at 50 Hz from
> This should be MHz ------------------------------------------^^

Fixed while applying

Sascha

> =

> Best regards
> Uwe
> > 214 seconds to 203 seconds.
> =

> -- =

> Pengutronix e.K.                           | Uwe Kleine-K=F6nig          =
  |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> =


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
