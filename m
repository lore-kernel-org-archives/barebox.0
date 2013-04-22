Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f229.mail.ru ([217.69.138.229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UUAiZ-0007ht-Jn
 for barebox@lists.infradead.org; Mon, 22 Apr 2013 06:59:17 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Mon, 22 Apr 2013 10:59:12 +0400
Message-ID: <1366613952.633427022@f229.mail.ru>
In-Reply-To: <20130422064649.GG32299@pengutronix.de>
References: <1366431532-29121-1-git-send-email-shc_work@mail.ru>
 <1366431532-29121-4-git-send-email-shc_work@mail.ru>
 <20130422064649.GG32299@pengutronix.de>
Reply-To: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
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
Subject: =?UTF-8?B?UmVbMl06IFtQQVRDSCAzLzVdIEdQSU86IGkuTVg6IFJld3JpdGUgZHJpdmVy?=
 =?UTF-8?B?IGZvciB1c2luZyBnZW5lcmljIEdQSU8gY29kZQ==?=
To: =?UTF-8?B?U2FzY2hhIEhhdWVy?= <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

> On Sat, Apr 20, 2013 at 08:18:50AM +0400, Alexander Shiyan wrote:
> > 
> > Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> > ---
> >  arch/arm/Kconfig        |   1 -
> >  drivers/gpio/Kconfig    |   1 +
> >  drivers/gpio/gpio-imx.c | 125 ++++++++++++------------------------------------
> >  3 files changed, 31 insertions(+), 96 deletions(-)
> > 
> > diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> > index bb9b47b..5607754 100644
> > --- a/arch/arm/Kconfig
> > +++ b/arch/arm/Kconfig
> > @@ -72,7 +72,6 @@ config ARCH_HIGHBANK
> >  
> >  config ARCH_IMX
> >  	bool "Freescale iMX-based"
> > -	select GENERIC_GPIO
> >  	select GPIOLIB
> >  	select COMMON_CLK
> >  	select CLKDEV_LOOKUP
> > diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
> > index 74a4baa..5ccd35b 100644
> > --- a/drivers/gpio/Kconfig
> > +++ b/drivers/gpio/Kconfig
> > @@ -29,6 +29,7 @@ config GPIO_GENERIC_PLATFORM
> >  
> >  config GPIO_IMX
> >  	def_bool ARCH_IMX
> > +	select GPIO_GENERIC
> 
> I'm not convinced by this change. Indeed this makes for smaller
> sourcecode, but the binary gets over 1kb bigger. I think this is too
> much for no additional gain.

The main idea of this change is reuse code if we can have multiple
targets in barebox. Probably, now is too early for this.

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
