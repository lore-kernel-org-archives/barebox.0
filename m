Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fdrRj-0001MN-A7
 for barebox@lists.infradead.org; Fri, 13 Jul 2018 06:20:52 +0000
Date: Fri, 13 Jul 2018 08:20:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180713062039.2xge5low7aj5u2d6@pengutronix.de>
References: <20180608110747.23789-1-l.stach@pengutronix.de>
 <20180611064652.ed4hf6zeubxx7foo@pengutronix.de>
 <1531320757.3163.57.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1531320757.3163.57.camel@pengutronix.de>
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
Subject: Re: [PATCH] scripts: imx-image: fix build with OpenSSL 1.1.x
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Jul 11, 2018 at 04:52:37PM +0200, Lucas Stach wrote:
> Am Montag, den 11.06.2018, 08:46 +0200 schrieb Sascha Hauer:
> > On Fri, Jun 08, 2018 at 01:07:47PM +0200, Lucas Stach wrote:
> > > OpenSSL 1.1.x made some of the types opaque, so peeking inside
> > > directly
> > > doesn't work anymore. Use the correct accessors instead.
> > > =

> > > I've dropped the algorithm check, as EVP_PKEY_get0_RSA() already
> > > verifies
> > > that the pubkey is RSA and returns NULL if it isn't.
> > > =

> > > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> > > ---
> > > This is compile tested only, so I would appreciate some testing
> > > and/or
> > > a close look at this change.
> > > ---
> > > =A0scripts/imx/imx-image.c | 40 ++++++++++++++++++++-----------------
> > > ---
> > > =A01 file changed, 20 insertions(+), 20 deletions(-)
> > =

> > Applied, thanks
> =

> It seems this has been lost in the -next cracks.

Oops, indeed. Applied now. For real.

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
