Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gn1Lf-0007zu-9W
 for barebox@lists.infradead.org; Fri, 25 Jan 2019 13:16:45 +0000
From: Christian Hemp <c.hemp@phytec.de>
Date: Fri, 25 Jan 2019 14:16:40 +0100
Message-ID: <4561415.JmzvUQDMJA@llp-hemp>
In-Reply-To: <20190111111316.i4sbti24awp2in3e@pengutronix.de>
References: <1b58b623-806b-7e15-7419-7fdd97a85f2a@data-modul.com>
 <20190111111316.i4sbti24awp2in3e@pengutronix.de>
MIME-Version: 1.0
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
Subject: Re: build barebox for imx8mqevk
To: barebox@lists.infradead.org

Hello Sascha,

Am Freitag, 11. Januar 2019, 12:13:16 CET schrieb Sascha Hauer:
> You have to pass ARCH=arm as environment variable. It seems that you
> pass ARCH=arm64.
> 
> In barebox both ARM 32bit and 64bit are handled under arch/arm,
> nevertheless you have to pass a suitable toolchain.

Is there a specific reason why ARM 32bit and 64bit are handled under arch/arm 
and not separate?

Regards
Christian

> 
> Regards,
>   Sascha
> 
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox





_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
