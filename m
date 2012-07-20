Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Ss8K4-0006VW-Do
 for barebox@lists.infradead.org; Fri, 20 Jul 2012 08:12:38 +0000
Date: Fri, 20 Jul 2012 10:11:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120720081136.GQ30009@pengutronix.de>
References: <1342711817-866-1-git-send-email-shc_work@mail.ru>
 <20120719175512.GD30009@pengutronix.de>
 <1342771521.408579760@f31.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1342771521.408579760@f31.mail.ru>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/6] mc13xxx: Define maximum SPI clock frequency global
 to driver
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Fri, Jul 20, 2012 at 12:05:21PM +0400, Alexander Shiyan wrote:
> > 
> >  The values indeed look quite arbitrary, but it may be that a hardware
> >  design does not support such high frequencies. Maybe better
> > 
> >  if (!mc_dev->spi->max_speed_hz)
> >  mc_dev->spi->max_speed_hz = 20000000
> > 
> >  ?
> On my opinion, tests for supported speed, is work for SPI-driver, not for device driver.
> Is not it?

So you mean that the i.MX spi drivers platform data should have a
maximum speed field instead of the client drivers? Sounds good.
In this case we can apply the patch.

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
