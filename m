Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1O3mkO-0004Jq-U2
	for barebox@lists.infradead.org; Mon, 19 Apr 2010 08:54:29 +0000
Date: Mon, 19 Apr 2010 10:54:27 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20100419085427.GB32752@pengutronix.de>
References: <1271665698-23163-1-git-send-email-w.sang@pengutronix.de>
	<1271665698-23163-3-git-send-email-w.sang@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1271665698-23163-3-git-send-email-w.sang@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/7] imx/gpio: make gpio_get_value actually work
To: Wolfram Sang <w.sang@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello,

On Mon, Apr 19, 2010 at 10:28:13AM +0200, Wolfram Sang wrote:
> From: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> =

> Newer i.MX-variants can route the content of the Sample Status Register t=
o the
> Data Register, but older ones can't. So, use the Sample Register to be ge=
neric.
> As a drawback, the ability to read back the values of output GPIOs is los=
t.
AFAIK the last sentence (that was authored by Wolfram, though the patch
is mine) is wrong.  I checked mx27 and mx35 specs and both the overview
and the actual description suggest that reading output values works
(using PSR aka SSR) when the iomuxer is configured for GPIO.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
