Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UFA6r-00068U-Vg
 for barebox@lists.infradead.org; Mon, 11 Mar 2013 21:18:19 +0000
Date: Mon, 11 Mar 2013 22:18:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130311211815.GL1906@pengutronix.de>
References: <1362994003-22653-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1362994003-22653-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH 01/13] ARM: clep7212: Migrate to config-board
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Mon, Mar 11, 2013 at 01:26:31PM +0400, Alexander Shiyan wrote:
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Applied, thanks

Sascha

> ---
>  arch/arm/boards/clep7212/env/config       |   20 --------------------
>  arch/arm/boards/clep7212/env/config-board |   14 ++++++++++++++
>  2 files changed, 14 insertions(+), 20 deletions(-)
>  delete mode 100644 arch/arm/boards/clep7212/env/config
>  create mode 100644 arch/arm/boards/clep7212/env/config-board
> 
> diff --git a/arch/arm/boards/clep7212/env/config b/arch/arm/boards/clep7212/env/config
> deleted file mode 100644
> index e8f2c3a..0000000
> --- a/arch/arm/boards/clep7212/env/config
> +++ /dev/null
> @@ -1,20 +0,0 @@
> -#!/bin/sh
> -
> -global.hostname=clps711x
> -
> -# set to false if you do not want to have colors
> -global.allow_color=true
> -
> -# user (used for network filenames)
> -global.user=anonymous
> -
> -# timeout in seconds before the default boot entry is started
> -global.autoboot_timeout=2
> -
> -# default boot entry (one of /env/boot/*)
> -if [ -e /dev/nor0 ]; then
> -	global.boot.default=nor
> -fi
> -
> -# default bootargs
> -global.linux.bootargs.base="earlyprintk console=ttyCL0,57600n8"
> diff --git a/arch/arm/boards/clep7212/env/config-board b/arch/arm/boards/clep7212/env/config-board
> new file mode 100644
> index 0000000..3cf699a
> --- /dev/null
> +++ b/arch/arm/boards/clep7212/env/config-board
> @@ -0,0 +1,14 @@
> +#!/bin/sh
> +
> +global.hostname=clps711x
> +
> +# Timeout in seconds before the default boot entry is started
> +global.autoboot_timeout=2
> +
> +# Default boot entry (one of /env/boot/*)
> +if [ -e /dev/nor0 ]; then
> +	global.boot.default=nor
> +fi
> +
> +# Board bootargs
> +global.linux.bootargs.base="earlyprintk console=ttyCL0,57600n8"
> -- 
> 1.7.3.4
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
