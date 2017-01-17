Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cTNjB-00051i-9g
 for barebox@lists.infradead.org; Tue, 17 Jan 2017 06:58:47 +0000
Date: Tue, 17 Jan 2017 07:58:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170117065823.a2uki76qfa7jyf6r@pengutronix.de>
References: <20170116104546.21842-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170116104546.21842-1-l.stach@pengutronix.de>
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
Subject: Re: [PATCH 1/3] defaultenv: select COMMAND_SUPPORT and GLOBALVAR
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Jan 16, 2017 at 11:45:44AM +0100, Lucas Stach wrote:
> To satisfy the direct dependencies of the selected commands.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  common/Kconfig | 2 ++
>  1 file changed, 2 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/common/Kconfig b/common/Kconfig
> index 74e973999a3a..2383b772f8c5 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -856,6 +856,8 @@ config DEFAULT_ENVIRONMENT_GENERIC
>  	depends on DEFAULT_ENVIRONMENT
>  	depends on !DEFAULT_ENVIRONMENT_GENERIC_NEW
>  	depends on SHELL_HUSH
> +	select COMMAND_SUPPORT
> +	select GLOBALVAR
>  	select CMD_GETOPT
>  	select CMD_CRC
>  	select CMD_CRC_CMP
> -- 
> 2.11.0
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
