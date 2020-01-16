Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is0XY-00079H-C5
 for barebox@lists.infradead.org; Thu, 16 Jan 2020 08:30:13 +0000
Date: Thu, 16 Jan 2020 09:30:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200116083006.7a72h2opdvn4jcau@pengutronix.de>
References: <20200115103328.24700-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200115103328.24700-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] imx25: drop global over-current setting for USB
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Jan 15, 2020 at 11:33:28AM +0100, Uwe Kleine-K=F6nig wrote:
> There is no mx25 board in mainline that actually uses USB. My
> (out-of-tree) board has active low polarity which makes it necessary to
> have
> =

> 	/delete-property/ over-current-active-high;
> 	over-current-active-low;
> =

> in the board's dts which is ugly.
> =

> In the absence of this property Linux defaults to active-high and
> encourages explicit configuration (see commit 1bf4743f641d ("usb:
> chipidea: imx: Warn if oc polarity isn't specified")), so other external
> board dts files likely already have this setting anyhow. (OK, maybe a
> bit optimistic here :-)
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  arch/arm/dts/imx25.dtsi | 8 --------
>  1 file changed, 8 deletions(-)

Applied, thanks

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
