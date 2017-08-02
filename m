Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dd07R-00022p-Ny
 for barebox@lists.infradead.org; Wed, 02 Aug 2017 20:19:50 +0000
Date: Wed, 2 Aug 2017 22:19:23 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20170802201923.yq34mtr25ki3j25c@pengutronix.de>
References: <20170802193907.4317-1-u.kleine-koenig@pengutronix.de>
 <20170802195440.GA12893@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170802195440.GA12893@ravnborg.org>
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

On Wed, Aug 02, 2017 at 09:54:40PM +0200, Sam Ravnborg wrote:
> Hi Uwe.
> =

> On Wed, Aug 02, 2017 at 09:39:05PM +0200, Uwe Kleine-K=F6nig wrote:
> > Hello,
> > =

> > during bringup of an i.MX7 board I am faced with cspi_2_3_xchg_single n=
ot
> > returning. I don't know yet why this happens, but with this patch set i=
t at least
> > doesn't block barebox.
> =

> Your description reminded me of a similar issue we hit with SPI transfer.
> Back then Sascha fixed it but with some open question marks.
> =

> See 9da7e18573c725eaa6123c401df57d6a4f6a0ea2
> ("spi: i.MX: reset controller on init")
> =

> But as this is the latest patch to the imx_spi.c file you likely
> have already looked at it.

I havn't looked at it, but it is included in my barebox as I'm using
2017.08.0 + some patches.

Reading through the patch description, it doesn't match my situation.
I'm doing USB-Booting because when I made eMMC work all my available
remote hands already called it a day. So unless the boot ROM does
something strange (impossible!) barebox is the first spi user.

What seems to be similar is that TESTREG.TXCNT is !=3D 0. For me this
smells clk-related. On i.MX6 I recently identified a problem (but didn't
come around yet to mainline a fix) that might match at least your
problem.

Can you still reproduce? How does your clk-tree look like (clk_dump)?

Thanks for your attention
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
