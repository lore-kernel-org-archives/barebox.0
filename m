Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cRZ7u-00071W-0L
 for barebox@lists.infradead.org; Thu, 12 Jan 2017 06:44:48 +0000
Date: Thu, 12 Jan 2017 07:44:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170112064424.b3gmgi5yy5sqdogp@pengutronix.de>
References: <20161208090544.10267-1-u.kleine-koenig@pengutronix.de>
 <20161212051514.tn6ufcxvmabrbln6@pengutronix.de>
 <20170111163331.ywejwzr3lv3a54yy@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170111163331.ywejwzr3lv3a54yy@pengutronix.de>
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
Subject: Re: [PATCH 1/3] spi: mvebu: fix register macros for Armada 370/XP
 clock divider
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Jan 11, 2017 at 05:33:31PM +0100, Uwe Kleine-K=F6nig wrote:
> On Mon, Dec 12, 2016 at 06:15:14AM +0100, Sascha Hauer wrote:
> > On Thu, Dec 08, 2016 at 10:05:42AM +0100, Uwe Kleine-K=F6nig wrote:
> > > Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> > > ---
> > >  drivers/spi/mvebu_spi.c | 4 ++--
> > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > =

> > Applied, thanks
> =

> I cannot find this patch neither in the barebox repo's next branch nor
> in its master branch.

Look again ;)

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
