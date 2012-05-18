Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-gh0-f177.google.com ([209.85.160.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SVH0B-000849-L2
 for barebox@lists.infradead.org; Fri, 18 May 2012 06:49:28 +0000
Received: by ghbf11 with SMTP id f11so74194ghb.36
 for <barebox@lists.infradead.org>; Thu, 17 May 2012 23:49:25 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <201205172149.21791.jbe@pengutronix.de>
References: <1337088040-24138-1-git-send-email-agalakhov@gmail.com>
 <20120517175244.GH30400@pengutronix.de>
 <CA+LT+-RAgWNppoAc44pBHJe7ik-nKgM6tRsJmCAwmMm7J_DbNw@mail.gmail.com>
 <201205172149.21791.jbe@pengutronix.de>
Date: Fri, 18 May 2012 12:49:25 +0600
Message-ID: <CA+LT+-QJift5r5cBk6KruuXA1WBZKfTRGpv0Grr83+npmw+jUw@mail.gmail.com>
From: Alexey Galakhov <agalakhov@gmail.com>
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
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

> Mostly a matter of taste. But sometimes these functions should use a common
> name: when they are used by a shared driver.
> If you call a S3C2440 related function by a S3C2440 related driver or board
> file, we should use a SoC specific name. When we call a function from a
> driver used for S3C2440 *and* S3C6410 it should use a non SoC specific name.
> This is a "should" and I fear my S3C24xx code is not perfect in this way.

What if...

int s3c24xx_get_pclk(void);
int s3c64xx_get_pclk_msys(void);
int s3c64xx_get_pclk_psys(void);

And in some driver:

#ifdef ...
    x = s3c24xx_get_pclk();
#else
    x = s3c64xx_get_pclk_msys();
#endif

In some other driver:

#ifdef ...
    x = s3c24xx_get_pclk();
#else
    x = s3c64xx_get_pclk_psys();
#endif

Ho to do that correctly? Right now I prefer that way:

int s3c_get_some_driver_clk(void);
defined somewhere in arch/***

Regards.
--
Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
