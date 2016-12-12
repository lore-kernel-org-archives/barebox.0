Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cGJQl-0004hm-Mq
 for barebox@lists.infradead.org; Mon, 12 Dec 2016 05:45:44 +0000
Date: Mon, 12 Dec 2016 06:45:21 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161212054521.ndohkuminlx7a75u@pengutronix.de>
References: <20161208102050.7617-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20161208102050.7617-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] spi: mvebu: use wait_on_timeout instead of a loop with
 udelay.
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Dec 08, 2016 at 11:20:50AM +0100, Uwe Kleine-K=F6nig wrote:
> This looks nicer and reduces the time to transfer 40 MB at 50 MHz from
> 203 seconds to 87 seconds.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
> Side note:
> =

> When using
> =

> 	while(!(readl(p->base + SPI_IF_CTRL) & IF_READ_READY))
> 		;
> 	return 0;
> =

> instead, the time goes down to 24 seconds.

Have you tried how many loop iterations it takes to complete? Maybe it's
worth it to try a few times and only after that start a real timeout
loop.

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
