Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Y8TkD-0008Tc-Ns
 for barebox@lists.infradead.org; Tue, 06 Jan 2015 13:00:22 +0000
Date: Tue, 6 Jan 2015 13:59:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150106125959.GE17225@pengutronix.de>
References: <20150106113227.GC4563@ns203013.ovh.net>
 <1420544226-30497-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1420544226-30497-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/2] arm: at91: fix ecc_mode on non atmel boards
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org, =?iso-8859-15?Q?Rapha=EBl?= Poggi <poggi.raph@gmail.com>

On Tue, Jan 06, 2015 at 12:37:05PM +0100, Jean-Christophe PLAGNIOL-VILLARD =
wrote:
> since
> commit 54bccadddd52cb4cbbecd1403b9091fe651bd0fd
> Author: Rapha=EBl Poggi <poggi.raph@gmail.com>
> =

>     mtd: atmel_nand: retrieve ecc_mode from pdata
> =

> break most of the non atmel AT91 boards that did not provide a ecc_mode
> params in the nand pdata
> =

> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> Cc: Rapha=EBl Poggi <poggi.raph@gmail.com>

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
