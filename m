Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z56yi-0006rO-Qe
 for barebox@lists.infradead.org; Wed, 17 Jun 2015 06:37:41 +0000
Date: Wed, 17 Jun 2015 08:37:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150617063717.GF6325@pengutronix.de>
References: <CADwFkYdH9ox+PxLk6Y+b03owqud_Y=+RKfQVrrraOPRrseiFyw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CADwFkYdH9ox+PxLk6Y+b03owqud_Y=+RKfQVrrraOPRrseiFyw@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: parallel lcd on i.mx6
To: Yi Qingliang <niqingliang2003@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Yi Qingliang,

On Tue, Jun 16, 2015 at 08:29:44AM +0000, Yi Qingliang wrote:
> hello,
>     I'm using imx6 (on embedsky e9 board).
>    does barebox support parallel lcd on it?

No, it currently does not.

>    I found 'imx-parallel-display' in barebox's dts, but cannot find
> the driver, how can i use it?

You found this because we use the dts files from the kernel. Just
because we have the dts file or compatible entry for something does
not necessarily mean we have support for it.

> 
>    in driver/video/imx-ipu-v3/, only hdmi and ldb, there is no
> parallel lcd, isn't it?

Yes, right. You would have to add support for the parallel display if
you want to use it.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
