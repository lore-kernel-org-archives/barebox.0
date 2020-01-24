Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuzaI-0004FU-Vl
 for barebox@lists.infradead.org; Fri, 24 Jan 2020 14:05:20 +0000
Date: Fri, 24 Jan 2020 15:05:17 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20200124140517.p45vqnpqe5of4bqa@pengutronix.de>
References: <20200124104638.29086-1-u.kleine-koenig@pengutronix.de>
 <20200124120949.khoxcbi5uuwblfxy@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200124120949.khoxcbi5uuwblfxy@pengutronix.de>
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
Subject: Re: [PATCH] usb: udc: don't warn on unused gadget
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Jan 24, 2020 at 01:09:50PM +0100, Sascha Hauer wrote:
> On Fri, Jan 24, 2020 at 11:46:38AM +0100, Uwe Kleine-K=F6nig wrote:
> > Whenever a machine boots but didn't make use of the udc device
> > an error message is emitted. This is hardly useful, so drop the
> > message.
> > =

> > Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> > ---
> >  drivers/usb/gadget/udc-core.c | 2 --
> >  1 file changed, 2 deletions(-)
> =

> On which barebox version did you see the message? Since
> 28b38c1804d761257397f41ae2bbc071cd009935 it should be gone.

For sure on 2018.05, just tested on 2019.07, there it is indeed gone.

So let's drop this patch.

Thanks
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
