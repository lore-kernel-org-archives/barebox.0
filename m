Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SVIeh-0007gt-0t
 for barebox@lists.infradead.org; Fri, 18 May 2012 08:35:24 +0000
Date: Fri, 18 May 2012 10:35:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120518083520.GM30400@pengutronix.de>
References: <1337088040-24138-1-git-send-email-agalakhov@gmail.com>
 <1337088040-24138-3-git-send-email-agalakhov@gmail.com>
 <20120517175244.GH30400@pengutronix.de>
 <CA+LT+-RAgWNppoAc44pBHJe7ik-nKgM6tRsJmCAwmMm7J_DbNw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+LT+-RAgWNppoAc44pBHJe7ik-nKgM6tRsJmCAwmMm7J_DbNw@mail.gmail.com>
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
Cc: barebox@lists.infradead.org

On Fri, May 18, 2012 at 12:33:20AM +0600, Alexey Galakhov wrote:
> 2012/5/17 Sascha Hauer <s.hauer@pengutronix.de>:
> > Still you convert two different functions to a common name. Once again:
> > Please keep s3c24xx_get_memory_size and add a s5p_get_memory_size
> > function for the s5p SoC.
> > It turned out to be useful when functions (or defines) have a spcific
> > SoC name in them. This way you always know in which context a function
> > is valid. Also it makes it possible to compile in all (in this case memory
> > setup) functions in a single binary.
> > I know that we do not follow this rule very strictly in barebox, but I
> > won't accept patches that change places that do it right already.
> 
> Ok. Sorry.
> 
> BTW, there are functions like s3c_get_pclk(), and they are much worse
> than get_memory_size regarding their portability. Newer S3Cs have
> multiple clock domains, so there is more than one PCLK (i.e.,
> MSYS-PCLK and HSYS-PCLK). These functions are declared publilc, not
> static, in a header file. They all are used in S3C24x0-specific code
> only. Should they be renamed like s3c24xx_get_pclk() ? Should some of
> them become static?

I think in this case you have to make sure that s3c24xx-clocks.c is not
compiled into the binary when s5p is enabled. Ideally we would have some
debloated clk framework version from the kernel, but we are not there
yet. We have the same situation on i.MX where imx_get_uartclk is
implemented in each SoC. This is not very clean, but (still) does its
job. I'm not asking you to make your port perfect in this regard, just
please don't change things for worse which are already implemented the
way they are supposed to be.

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
