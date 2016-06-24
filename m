Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bGKXW-0002QP-7h
 for barebox@lists.infradead.org; Fri, 24 Jun 2016 06:24:31 +0000
Date: Fri, 24 Jun 2016 08:24:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160624062407.GK20657@pengutronix.de>
References: <1466690790-12107-1-git-send-email-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1466690790-12107-1-git-send-email-l.stach@pengutronix.de>
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
Subject: Re: [PATCH 1/2] defaultenv-2: select BOOTM
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Jun 23, 2016 at 04:06:29PM +0200, Lucas Stach wrote:
> defualtenv-2 selects CMD_BOOT, which in turn needs BOOTM.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  common/Kconfig | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

Sascha

> 
> diff --git a/common/Kconfig b/common/Kconfig
> index 679954e4db2e..e17e54b6fe5d 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -830,6 +830,7 @@ config DEFAULT_ENVIRONMENT_GENERIC_NEW
>  	bool
>  	depends on DEFAULT_ENVIRONMENT
>  	depends on SHELL_HUSH
> +	select BOOTM
>  	select COMMAND_SUPPORT
>  	select CMD_GETOPT
>  	select GLOB
> -- 
> 2.8.1
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
