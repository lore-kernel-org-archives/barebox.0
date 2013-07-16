Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uyz4p-0002Dz-61
 for barebox@lists.infradead.org; Tue, 16 Jul 2013 06:49:35 +0000
Date: Tue, 16 Jul 2013 08:49:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130716064913.GX14452@pengutronix.de>
References: <1373918206-9978-1-git-send-email-s.hauer@pengutronix.de>
 <1373929582.540362958@f323.i.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1373929582.540362958@f323.i.mail.ru>
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
Subject: Re: [PATCH] bus: Add imx-weim support
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Tue, Jul 16, 2013 at 03:06:22AM +0400, Alexander Shiyan wrote:
> > Mostly taken from the kernel with support for other SoCs from
> > Alexander Shiyan.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > Cc: Alexander Shiyan <shc_work@mail.ru>
> > ---
> ...
> > +struct imx_weim {
> > +	struct device_d *dev;
> > +	void __iomem *base;
> > +	struct imx_weim_devtype *devtype;
> > +};
> > +
> > +#define CS_TIMING_LEN 6
> > +#define CS_REG_RANGE  0x18
> 
> ???

Ah, missed these. These are leftovers from the initial version. Removed,
thanks.

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
