Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs10.datenmanufaktur-hosting.net ([185.138.26.202]
 helo=vs81.iboxed.net)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fTtKb-0001TR-I9
 for barebox@lists.infradead.org; Fri, 15 Jun 2018 18:20:19 +0000
Date: Fri, 15 Jun 2018 18:20:10 +0000 (UTC)
From: Alexander Kurz <akurz@blala.de>
In-Reply-To: <20180606075912.2470-3-o.rempel@pengutronix.de>
Message-ID: <alpine.DEB.2.20.1806151813280.24953@blala.de>
References: <20180606075912.2470-1-o.rempel@pengutronix.de>
 <20180606075912.2470-3-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH v4 2/3] add basic ELF parser
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Oleksij,
when compiling for some random arm platform, next currently rasises this
warning: (BOOTM) selects ELF which has unmet direct dependencies (MIPS)

Neither ELF nor BOOTM are MIPS specific.

This issue was resolved with v3, and with v4 it's back?

Regards, Alexander

On Wed, 6 Jun 2018, Oleksij Rempel wrote:

> This parser is needed for kernel boot support on MIPS
> and can potentially reused on other platforms.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
...
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
> +
>  config FILETYPE
>  	bool
>  
> @@ -548,6 +552,7 @@ config TIMESTAMP
>  	  automatically enabled when you select CFG_CMD_DATE .
>  
>  menuconfig BOOTM
> +	select ELF
>  	select UIMAGE
>  	default y if COMMAND_SUPPORT
>  	bool "bootm support"

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
