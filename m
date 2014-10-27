Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XiceG-0003FD-Cb
 for barebox@lists.infradead.org; Mon, 27 Oct 2014 05:15:21 +0000
Date: Mon, 27 Oct 2014 06:14:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141027051453.GV14443@pengutronix.de>
References: <1414104361-15956-1-git-send-email-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1414104361-15956-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH 0/3] fixes and sanity checks for mxs pinmuxing
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Oct 24, 2014 at 12:45:58AM +0200, Uwe Kleine-K=F6nig wrote:
> Hello,
> =

> this series helped me to find pinmuxing problems on an i.MX28 machine.
> =

> The pins either have a pull up, a bit keeper or neither. For example the =
pin
> ENET0_RXD2 has a bit keeper, and so doing
> =

> 	imx_gpio_mode(ENET0_RXD2 | VE_3_3V | STRENGTH(S8MA) | PULLUP(1))
> =

> obviously couldn't enable the pull up as requested. Instead it enabled th=
e bit
> keeper. With this series the above call results in a message that the mod=
e is
> invalid and the pullup and bitkeeper register settings are not touched.
> =

> Note that I didn't test on i.MX23 even though this SoC is affected, too. I
> currently don't have an i.MX23 handy, so I couldn't test this part.
> =

> Uwe Kleine-K=F6nig (3):
>   mxs: iomux-imx28: Fix keeper/pullup/drive strength/voltage flags
>   mxs: iomux-imx23/imx28: unify mode definition
>   mxs: iomux-imx23/imx28: add additional checks on mode

Applied, thanks

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
