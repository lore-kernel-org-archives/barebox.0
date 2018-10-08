Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g9Qj7-0001fP-87
 for barebox@lists.infradead.org; Mon, 08 Oct 2018 08:17:19 +0000
Date: Mon, 8 Oct 2018 10:17:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181008081702.2gu6aywkiw4sqlk7@pengutronix.de>
References: <20181008063542.18709-1-andrew.smirnov@gmail.com>
 <20181008063542.18709-3-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181008063542.18709-3-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 02/16] clocksource: Add ARM global timer support
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, Oct 07, 2018 at 11:35:28PM -0700, Andrey Smirnov wrote:
> Port corresponding Linux kernel driver. Currently VFxxx SoC is the
> intended consumer because it doesn't include common i.MX GPT block
> used as clocksource by other i.MX SoCs.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  drivers/clocksource/Kconfig            |   4 +
>  drivers/clocksource/Makefile           |   1 +
>  drivers/clocksource/arm_global_timer.c | 113 +++++++++++++++++++++++++
>  3 files changed, 118 insertions(+)
>  create mode 100644 drivers/clocksource/arm_global_timer.c
> 
> diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
> index 3d63f7ff1..2be5a76b3 100644
> --- a/drivers/clocksource/Kconfig
> +++ b/drivers/clocksource/Kconfig
> @@ -70,3 +70,7 @@ config CLOCKSOURCE_ARMV8_TIMER
>  	bool
>  	default y
>  	depends on ARM && CPU_64v8
> +
> +config CLOCKSOURCE_ARM_GLOBAL_TIMER
> +        def_bool y
> +	depends on ARM

Can you add a 'select' of this option to the VFxxx Kconfig instead?
Having this on all Arm systems is not so nice.

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
