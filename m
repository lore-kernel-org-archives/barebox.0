Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bkRcG-0006Ly-B9
 for barebox@lists.infradead.org; Thu, 15 Sep 2016 08:01:54 +0000
Date: Thu, 15 Sep 2016 10:01:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160915080130.xpf2zeylulr7jykw@pengutronix.de>
References: <1473846672.2243.39.camel@pengutronix.de>
 <1473848225-19039-1-git-send-email-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1473848225-19039-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH v2] ARM: imx6: reset PLL2's PFD2 on i.MX6D
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Sep 14, 2016 at 12:17:05PM +0200, Uwe Kleine-K=F6nig wrote:
> The check for is_imx6q was introduced initially in
> =

> 	f1f6d76370b3 ("ARM: i.MX6: correct work flow of PFDs from uboot-sources")
> =

> to differentiate between i.MX6DL+i.MX6SL and i.MX6Q. The i.MX6D must be
> handled like the latter, so drop the check. i.MX6DL+i.MX6SL can be
> ignored here since since
> =

> 	a66596282413 ("imx6: lowlevel_init: Fix workaround for new i.MX6s chips")
> =

> the PFD handling is only done for i.MX6DQ.
> =

> Update the comment to be not only logically correct but also helpful.
> =

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
