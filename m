Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SVIhu-0007l2-77
 for barebox@lists.infradead.org; Fri, 18 May 2012 08:38:42 +0000
Date: Fri, 18 May 2012 10:38:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120518083835.GN30400@pengutronix.de>
References: <1337088040-24138-1-git-send-email-agalakhov@gmail.com>
 <20120517175244.GH30400@pengutronix.de>
 <CA+LT+-RAgWNppoAc44pBHJe7ik-nKgM6tRsJmCAwmMm7J_DbNw@mail.gmail.com>
 <201205172149.21791.jbe@pengutronix.de>
 <CA+LT+-QJift5r5cBk6KruuXA1WBZKfTRGpv0Grr83+npmw+jUw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+LT+-QJift5r5cBk6KruuXA1WBZKfTRGpv0Grr83+npmw+jUw@mail.gmail.com>
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
Subject: Re: [PATCH 2/7] Split S3C generic and S3C24xx specific code
To: Alexey Galakhov <agalakhov@gmail.com>
Cc: barebox@lists.infradead.org, Juergen Beisert <jbe@pengutronix.de>

On Fri, May 18, 2012 at 12:49:25PM +0600, Alexey Galakhov wrote:
> > Mostly a matter of taste. But sometimes these functions should use a common
> > name: when they are used by a shared driver.
> > If you call a S3C2440 related function by a S3C2440 related driver or board
> > file, we should use a SoC specific name. When we call a function from a
> > driver used for S3C2440 *and* S3C6410 it should use a non SoC specific name.
> > This is a "should" and I fear my S3C24xx code is not perfect in this way.
> 
> What if...
> 
> int s3c24xx_get_pclk(void);
> int s3c64xx_get_pclk_msys(void);
> int s3c64xx_get_pclk_psys(void);
> 
> And in some driver:
> 
> #ifdef ...
>     x = s3c24xx_get_pclk();
> #else
>     x = s3c64xx_get_pclk_msys();
> #endif
> 
> In some other driver:
> 
> #ifdef ...
>     x = s3c24xx_get_pclk();
> #else
>     x = s3c64xx_get_pclk_psys();
> #endif
> 
> Ho to do that correctly? Right now I prefer that way:
> 
> int s3c_get_some_driver_clk(void);
> defined somewhere in arch/***

Me too. As said, ideally we would have a clk_get(dev, id), but we don't
have this atm. (We have it on Atmel, you could do the same, but I don't
ask you to do this if you don't want to)

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
