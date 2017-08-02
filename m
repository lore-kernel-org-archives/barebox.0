Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dczjZ-00036q-Iu
 for barebox@lists.infradead.org; Wed, 02 Aug 2017 19:55:11 +0000
Date: Wed, 2 Aug 2017 21:54:40 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20170802195440.GA12893@ravnborg.org>
References: <20170802193907.4317-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170802193907.4317-1-u.kleine-koenig@pengutronix.de>
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
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Uwe.

On Wed, Aug 02, 2017 at 09:39:05PM +0200, Uwe Kleine-K=F6nig wrote:
> Hello,
> =

> during bringup of an i.MX7 board I am faced with cspi_2_3_xchg_single not
> returning. I don't know yet why this happens, but with this patch set it =
at least
> doesn't block barebox.

Your description reminded me of a similar issue we hit with SPI transfer.
Back then Sascha fixed it but with some open question marks.

See 9da7e18573c725eaa6123c401df57d6a4f6a0ea2
("spi: i.MX: reset controller on init")

But as this is the latest patch to the imx_spi.c file you likely
have already looked at it.
But mentioned just in case..

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
