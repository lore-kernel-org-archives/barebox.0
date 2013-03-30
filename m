Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ULtDQ-0003ty-BC
 for barebox@lists.infradead.org; Sat, 30 Mar 2013 10:40:52 +0000
Date: Sat, 30 Mar 2013 11:40:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130330104050.GW1906@pengutronix.de>
References: <1364559028-5177-1-git-send-email-h.feurstein@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1364559028-5177-1-git-send-email-h.feurstein@gmail.com>
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
Subject: Re: [PATCH] ARM: sabresd: move config-board out of /env/init
To: Hubert Feurstein <h.feurstein@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Mar 29, 2013 at 01:10:28PM +0100, Hubert Feurstein wrote:
> Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>

Applied, thanks

Sascha

> ---
>  arch/arm/boards/freescale-mx6-sabresd/env/config-board      | 7 +++++++
>  arch/arm/boards/freescale-mx6-sabresd/env/init/config-board | 7 -------
>  2 files changed, 7 insertions(+), 7 deletions(-)
>  create mode 100644 arch/arm/boards/freescale-mx6-sabresd/env/config-board
>  delete mode 100644 arch/arm/boards/freescale-mx6-sabresd/env/init/config-board
> 
> diff --git a/arch/arm/boards/freescale-mx6-sabresd/env/config-board b/arch/arm/boards/freescale-mx6-sabresd/env/config-board
> new file mode 100644
> index 0000000..cf936fb
> --- /dev/null
> +++ b/arch/arm/boards/freescale-mx6-sabresd/env/config-board
> @@ -0,0 +1,7 @@
> +#!/bin/sh
> +
> +# board defaults, do not change in running system. Change /env/config
> +# instead
> +
> +global.hostname=SabreSD
> +global.linux.bootargs.base="console=ttymxc0,115200"
> diff --git a/arch/arm/boards/freescale-mx6-sabresd/env/init/config-board b/arch/arm/boards/freescale-mx6-sabresd/env/init/config-board
> deleted file mode 100644
> index cf936fb..0000000
> --- a/arch/arm/boards/freescale-mx6-sabresd/env/init/config-board
> +++ /dev/null
> @@ -1,7 +0,0 @@
> -#!/bin/sh
> -
> -# board defaults, do not change in running system. Change /env/config
> -# instead
> -
> -global.hostname=SabreSD
> -global.linux.bootargs.base="console=ttymxc0,115200"
> -- 
> 1.8.1.3
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
