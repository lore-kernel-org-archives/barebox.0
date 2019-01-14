Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gj1FG-00089n-PE
 for barebox@lists.infradead.org; Mon, 14 Jan 2019 12:21:36 +0000
Date: Mon, 14 Jan 2019 13:21:30 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20190114122130.dsfqagod6rrpqv2x@pengutronix.de>
References: <20180918052122.12248-1-andrew.smirnov@gmail.com>
 <20180918052122.12248-8-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180918052122.12248-8-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 7/7] net: fec_imx: Do not use DMA coherent memory for Rx
 buffers
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

Hello,

On Mon, Sep 17, 2018 at 10:21:22PM -0700, Andrey Smirnov wrote:
> Trying to do unaligned access of coherent memory on AArch64 will lead
> to an abort and some parts of our IP stack will do exactly that with
> received packet buffer by using memcpy() to extracts parts of it.
> =

> Convert the driver to use regular memory for received data buffers to
> prevent the issue from happening.

I didn't spend time yet to debug, but this commit is pointed out to
break nfs booting on an mx28evk board.

Maybe someone spots the obvious problem before I come around to fix
this.

Best regards
Uwe


-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
