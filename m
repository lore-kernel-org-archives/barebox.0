Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dytKU-0002CX-Ly
 for barebox@lists.infradead.org; Mon, 02 Oct 2017 05:31:48 +0000
Date: Mon, 2 Oct 2017 07:31:23 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20171002053123.tphz7c44xofordvk@pengutronix.de>
References: <20170802193907.4317-1-u.kleine-koenig@pengutronix.de>
 <alpine.DEB.2.00.1709291955001.32464@blala.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.00.1709291955001.32464@blala.de>
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
To: Alexander Kurz <akurz@blala.de>
Cc: barebox@lists.infradead.org

On Fri, Sep 29, 2017 at 08:08:28PM +0200, Alexander Kurz wrote:
> Hi,
> during xchg_single 32 bits will be sent and received:
> 2x32 bits / 10 Microseconds =3D 6.4MHz Clock.

why 2x?

> Hence, a 10 Microseconds timeout will break SPI communication for
> boards with SPI frequencies less then 6.4MHz.
> On some boards spi-max-frequency is limited due to improper communication
> at higher frequencies, e.g. for the kindle4 it is 1MHz and there =

> also exists one board with 100kHz.
> =

> Before sending a patch calculating the timeout from spi-max-frequency,
> is 640 Microseconds (to fit imx28-cfa10049.dts 100kHz) acceptable?

I would expect that the hardware and software add some latency, so maybe
round it up to 1 ms?

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
