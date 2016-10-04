Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1brIrF-0004W4-Ed
 for barebox@lists.infradead.org; Tue, 04 Oct 2016 06:05:42 +0000
Date: Tue, 4 Oct 2016 08:05:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161004060517.kgswt2fj5qnmpxty@pengutronix.de>
References: <20160928185017.25002-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20160928185017.25002-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH 0/7] scripts: kwboot: various improvements
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Sep 28, 2016 at 08:50:10PM +0200, Uwe Kleine-K=F6nig wrote:
> Hello,
> =

> this series is the result of my efforts to make UART booting on an
> Netgear ReadyNAS 2120 work.
> =

> Best regards
> Uwe

Applied, thanks

Sascha

> =

> Uwe Kleine-K=F6nig (7):
>   scripts: kwboot: try to resync on packet boundary after receiving a
>     NAK
>   scripts: kwboot: flush input and output only once
>   scripts: kwboot: improve diagnostic output
>   scripts: kwboot: shorten delay between two boot messages
>   scripts: kwboot: simplify kwboot_mmap_image
>   scripts: kwboot: set boot source to UART before sending
>   images: mvebu: don't generate uart images
> =

>  images/Makefile.mvebu |  29 ---------------
>  scripts/kwboot.c      | 101 +++++++++++++++++++++++++++++++++++++++-----=
------
>  2 files changed, 80 insertions(+), 50 deletions(-)
> =

> -- =

> 2.9.3
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
