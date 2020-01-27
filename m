Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw4Di-0004J2-Bp
 for barebox@lists.infradead.org; Mon, 27 Jan 2020 13:14:27 +0000
Date: Mon, 27 Jan 2020 14:14:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200127131424.kbw7vsc4jys6cxa5@pengutronix.de>
References: <20200127114453.366-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200127114453.366-1-uwe@kleine-koenig.org>
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
Subject: Re: [PATCH 0/2] gpiolib: minor optimization
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>
Cc: barebox@lists.infradead.org, Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>

On Mon, Jan 27, 2020 at 12:44:51PM +0100, Uwe Kleine-K=F6nig wrote:
> From: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> =

> Hello,
> =

> while working on gpiolib I noticed that gpio_request_one() repeatedly
> checks the validity of the gpio_info obtained by gpio_to_desc().
> =

> This series introduces some helper functions (prefixed gpioinfo_) that
> take an gpio_info instead of a plain gpio number and assume this pointer
> to be valid.
> =

> The saved runtime is probably too small to measure, so I didn't even
> try. Semantically there is no change intended.
> =

> Best regards
> Uwe
> =

> Uwe Kleine-K=F6nig (2):
>   gpiolib: reorder functions
>   gpiolib: introduce helper functions working on gpio_info structs
> =

>  drivers/gpio/gpiolib.c | 243 +++++++++++++++++++++++++----------------
>  1 file changed, 150 insertions(+), 93 deletions(-)

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
