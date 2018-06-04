Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fPjb4-0003SC-1L
 for barebox@lists.infradead.org; Mon, 04 Jun 2018 07:08:07 +0000
Date: Mon, 4 Jun 2018 09:07:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180604070753.p2xohnnl5ygd36jw@pengutronix.de>
References: <20180603062314.26960-1-o.rempel@pengutronix.de>
 <20180603062314.26960-3-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180603062314.26960-3-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH v2 2/4] add basic ELF parser
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Sun, Jun 03, 2018 at 08:23:12AM +0200, Oleksij Rempel wrote:
> This parser is needed for kernel boot support on MIPS
> and can potentially reused on other platforms.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  common/Kconfig  |   5 ++
>  common/Makefile |   1 +
>  common/elf.c    | 145 ++++++++++++++++++++++++++++++++++++++++++++++++
>  include/elf.h   |  10 ++++
>  4 files changed, 161 insertions(+)
>  create mode 100644 common/elf.c
> 
> diff --git a/common/Kconfig b/common/Kconfig
> index b7000c4d7..b9adc4c39 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -46,6 +46,10 @@ config BLOCK
>  config BLOCK_WRITE
>  	bool
>  
> +config ELF
> +	bool
> +	depends on MIPS

The ELF parser itself has nothing MIPS specific in it, so drop this
dependency here.

> +
>  config FILETYPE
>  	bool
>  
> @@ -548,6 +552,7 @@ config TIMESTAMP
>  	  automatically enabled when you select CFG_CMD_DATE .
>  
>  menuconfig BOOTM
> +	select ELF

The bootm code doesn't need ELF, only the MIPS specific bootm code does,
so this should be selected somewhere in arch/mips/

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
