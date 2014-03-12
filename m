Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WNq7D-0003mu-WF
 for barebox@lists.infradead.org; Wed, 12 Mar 2014 20:51:04 +0000
Date: Wed, 12 Mar 2014 21:50:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140312205041.GN17250@pengutronix.de>
References: <1394487281-10462-1-git-send-email-antonynpavlov@gmail.com>
 <1394487281-10462-2-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1394487281-10462-2-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 1/8] clocksource: add dummy software-only clocksource
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Mar 11, 2014 at 01:34:34AM +0400, Antony Pavlov wrote:
> This driver is very handy for initial barebox porting.
> It was used for running barebox on DiGiC2-based camera
> and initial porting barebox to Loongson-1 and ar9331.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Reported-by: Alexander Aring <alex.aring@gmail.com>
> Reported-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  drivers/clocksource/Kconfig  |  9 +++++++
>  drivers/clocksource/Makefile |  1 +
>  drivers/clocksource/dummy.c  | 56 ++++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 66 insertions(+)
> 
> diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
> index 4ef25ec..f9e00ff 100644
> --- a/drivers/clocksource/Kconfig
> +++ b/drivers/clocksource/Kconfig
> @@ -14,6 +14,15 @@ config CLOCKSOURCE_CLPS711X
>  	bool
>  	depends on ARCH_CLPS711X
>  
> +config CLOCKSOURCE_DUMMY
> +	bool "Enable dummy software-only clocksource"
> +	default n

You can drop the default n, no is the default already. Could you add
some help text mentioning that this clocksource is for early bringup
only and doesn't provide correct timing?

> +
> +config CLOCKSOURCE_DUMMY_RATE
> +	int "compile loglevel"

copy/paste ;) ?

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
