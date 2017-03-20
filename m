Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cps6E-0007My-EC
 for barebox@lists.infradead.org; Mon, 20 Mar 2017 07:51:32 +0000
Date: Mon, 20 Mar 2017 08:51:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170320075108.inju2dj7xi5b6rfe@pengutronix.de>
References: <20170320030802.10493-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170320030802.10493-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] fixup! clk: at91: Port at91 DT clock code
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, Mar 19, 2017 at 08:08:02PM -0700, Andrey Smirnov wrote:
> ---
> 
> Sascha:
> 
> Here's a a bunch of fixes for "clk: at91: Port at91 DT clock code"
> 
>  - arch/arm/Kconfig to prevent breaking the build for AT91
>    targets that don't use DT based clock
> 
>  - arch/arm/mach-at91/Makefile is need to avoid building non DT clock
>    code for targets that do use DT (I accidentaly put put that change
>    into a differnet, not yet submitted, patch by mistake)
> 
>  - The rest is whitespace damage removal
> 
> Let me know if it'd be more convenient to drop the original patch and
> re-spin a v2 of it.

I like --fixup patches because they tell me (or git) exactly what to do.

And thanks for the fix before I was complaining. The autobuilder already
detected this build failure ;)

Applied, thanks

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
