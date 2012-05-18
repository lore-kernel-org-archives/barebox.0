Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lpp01m010-f49.google.com ([209.85.215.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SVJ9C-0000Zw-Ct
 for barebox@lists.infradead.org; Fri, 18 May 2012 09:06:55 +0000
Received: by laap9 with SMTP id p9so2415487laa.36
 for <barebox@lists.infradead.org>; Fri, 18 May 2012 02:06:52 -0700 (PDT)
Message-ID: <4FB61128.80701@gmail.com>
Date: Fri, 18 May 2012 15:06:48 +0600
From: Alexey Galakhov <agalakhov@gmail.com>
MIME-Version: 1.0
References: <1337088040-24138-1-git-send-email-agalakhov@gmail.com>
 <20120517175244.GH30400@pengutronix.de>
 <CA+LT+-RAgWNppoAc44pBHJe7ik-nKgM6tRsJmCAwmMm7J_DbNw@mail.gmail.com>
 <201205172149.21791.jbe@pengutronix.de>
 <CA+LT+-QJift5r5cBk6KruuXA1WBZKfTRGpv0Grr83+npmw+jUw@mail.gmail.com>
 <20120518083835.GN30400@pengutronix.de>
In-Reply-To: <20120518083835.GN30400@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Juergen Beisert <jbe@pengutronix.de>

On 18.05.2012 14:38, Sascha Hauer wrote:
> On Fri, May 18, 2012 at 12:49:25PM +0600, Alexey Galakhov wrote:
>> Ho to do that correctly? Right now I prefer that way:
>>
>> int s3c_get_some_driver_clk(void);
>> defined somewhere in arch/***
> 
> Me too. As said, ideally we would have a clk_get(dev, id), but we don't
> have this atm. (We have it on Atmel, you could do the same, but I don't
> ask you to do this if you don't want to)
> 
> Sascha

Ok. I thought about introducing such an API too, but probably not yet. I
think it's better to add 6410 and maybe Exynos first and then refactor.
Newer Samsung chips are poorly documented, so it's hard to decide what's
common and what's specific. (In fact, there are even errors in datasheets!)

I.e., it turned out that s3c24x0_disable_wd() fits s5pv210 perfectly too
without any change.  (Just writing 0 into the first watchdog register
disables the watchdog). This probably should be s3c_disable_watchdog().
I didn't touch it yet since I don't disable WD and I'm not sure about
other CPUs.

Regards,
--
Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
