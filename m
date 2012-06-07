Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ScZE2-0004qS-Hw
 for barebox@lists.infradead.org; Thu, 07 Jun 2012 09:41:55 +0000
Date: Thu, 7 Jun 2012 11:41:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120607094151.GF30400@pengutronix.de>
References: <1338919119-22581-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1338919119-22581-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH] PCM038: Added support for boot from NOR-flash
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Tue, Jun 05, 2012 at 09:58:39PM +0400, Alexander Shiyan wrote:
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  arch/arm/boards/pcm038/env/boot/nor |    9 +++++++++
>  1 files changed, 9 insertions(+), 0 deletions(-)
>  create mode 100644 arch/arm/boards/pcm038/env/boot/nor
> 
> diff --git a/arch/arm/boards/pcm038/env/boot/nor b/arch/arm/boards/pcm038/env/boot/nor
> new file mode 100644
> index 0000000..5dfca6f
> --- /dev/null
> +++ b/arch/arm/boards/pcm038/env/boot/nor
> @@ -0,0 +1,9 @@
> +#!/bin/sh
> +
> +if [ "$1" = menu ]; then
> +	boot-menu-add-entry "$0" "nor"
> +	exit
> +fi
> +
> +global.bootm.image="/dev/nor0.kernel"
> +global.linux.bootargs.root="root=/dev/mtdblock3"

This should be nor0.root instead. The raw mtdblock number depends on the
initialization order in the kernel and whether or not the Kernel has
nand support.

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
