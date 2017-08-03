Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ddC6e-0004Y4-I2
 for barebox@lists.infradead.org; Thu, 03 Aug 2017 09:07:50 +0000
Date: Thu, 3 Aug 2017 11:07:25 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20170803090725.knqzwxxroyvgcvwn@pengutronix.de>
References: <20170802193907.4317-1-u.kleine-koenig@pengutronix.de>
 <20170802195440.GA12893@ravnborg.org>
 <20170802201923.yq34mtr25ki3j25c@pengutronix.de>
 <20170802203240.GA21641@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170802203240.GA21641@ravnborg.org>
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
Subject: Re: [PATCH 0/2] spi: imx: don't loop endlessly
To: Sam Ravnborg <sam@ravnborg.org>
Cc: barebox@lists.infradead.org

On Wed, Aug 02, 2017 at 10:32:40PM +0200, Sam Ravnborg wrote:
> Hi Uwe.
> > I havn't looked at it, but it is included in my barebox as I'm using
> > 2017.08.0 + some patches.
> And I did not expect it to solve your problem, only to give you
> inspiration what could be the issue.
> =

> > =

> > Reading through the patch description, it doesn't match my situation.
> OK
> =

> > I'm doing USB-Booting because when I made eMMC work all my available
> > remote hands already called it a day. So unless the boot ROM does
> > something strange (impossible!) barebox is the first spi user.
> > =

> > What seems to be similar is that TESTREG.TXCNT is !=3D 0. For me this
> > smells clk-related. On i.MX6 I recently identified a problem (but didn't
> > come around yet to mainline a fix) that might match at least your
> > problem.
> > =

> > Can you still reproduce?
> We have used the patch from Sascha for a long time now (from before it
> hit barebox-next, and on our proprietary IMX6 target we never
> saw the SPI related error since.
> =

> 	Sam
> =

> > How does your clk-tree look like (clk_dump)?
> =

> This is with:
> $ version
> barebox 2017.03.0-1 #1 Sun May 14 16:17:24 CEST 2017
> + some of our own patches (nothing clk related).

Which SoC are you using? Doesn't seem to match my problem. I don't know
what Sascha did, I'd route ecspi_root to cko2 and check if there is a
clk in the failing situation. (Assuming that pin is accessible on your
machine of course.)

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
