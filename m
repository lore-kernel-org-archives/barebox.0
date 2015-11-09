Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zvg1w-00063M-5c
 for barebox@lists.infradead.org; Mon, 09 Nov 2015 06:34:16 +0000
Date: Mon, 9 Nov 2015 07:33:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151109063354.GS8526@pengutronix.de>
References: <1446805968-13337-1-git-send-email-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1446805968-13337-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] usb: mx25: fix bit position of "Host power mask"
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Nov 06, 2015 at 11:32:48AM +0100, Uwe Kleine-K=F6nig wrote:
> The bit MX25_H1_PM_BIT value is handled for port 1 as MX25_OTG_PM_BIT is
> for port 0. The latter is called "OPM: OTG power mask" in the i.MX25
> reference manual. Its description matches the description of "HPM: Host
> power mask" for the host port which is bit 16, not 8.
> =

> The Linux kernel (as of 4.3) also has
> =

> 	#define MX25_H1_PM_BIT                  BIT(16)
> =

> .
> =

> Fixes: a4076ddf6577 ("USB i.MX: Add chipidea driver support")
> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

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
