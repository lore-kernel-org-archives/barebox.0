Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l6Uka-0001tG-PS
 for barebox@lists.infradead.org; Mon, 01 Feb 2021 08:40:01 +0000
Date: Mon, 1 Feb 2021 09:39:59 +0100
Message-ID: <20210201083959.GJ19583@pengutronix.de>
References: <20210128210022.31841-1-rhi@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210128210022.31841-1-rhi@pengutronix.de>
From: Sascha Hauer <sha@pengutronix.de>
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
Subject: Re: [PATCH] common: Kconfig: improve defaultenv help texts
To: Roland Hieber <rhi@pengutronix.de>
Cc: Barebox Mailing List <barebox@lists.infradead.org>

On Thu, Jan 28, 2021 at 10:00:22PM +0100, Roland Hieber wrote:
> Signed-off-by: Roland Hieber <rhi@pengutronix.de>
> ---
>  common/Kconfig | 28 ++++++++++++++++++++++------
>  1 file changed, 22 insertions(+), 6 deletions(-)

Applied to master, thanks

Sascha

> 
> diff --git a/common/Kconfig b/common/Kconfig
> index b350f5c355fa..c62c70fb27eb 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -874,6 +874,13 @@ config DEFAULT_ENVIRONMENT_GENERIC_NEW
>  	select NET_CMD_IFUP if NET
>  	select CMD_IP_ROUTE_GET if NET
>  	select CMD_HOST if NET
> +	help
> +	  With this option barebox will use the files found under
> +	  defaultenv/defaultenv-2-base/ in the source tree as a template for
> +	  the defaultenv. The directories specified in DEFAULT_ENVIRONMENT_PATH
> +	  will be added to the default environment. If a file is present in
> +	  both locations, the file from DEFAULT_ENVIRONMENT_PATH will overwrite
> +	  that from the template.
>  
>  config DEFAULT_ENVIRONMENT_GENERIC
>  	bool "Generic environment template (old version)"
> @@ -887,9 +894,12 @@ config DEFAULT_ENVIRONMENT_GENERIC
>  	select CMD_CRC_CMP
>  	select CMD_GLOBAL
>  	help
> -	  With this option barebox will use the generic default
> -	  environment found under defaultenv/ in the src tree.
> -	  The Directory given with DEFAULT_ENVIRONMENT_PATH
> +	  Note: this option is not recommended for new boards; use
> +	  DEFAULT_ENVIRONMENT_GENERIC_NEW instead.
> +
> +	  With this option barebox will use the old generic default environment
> +	  found under defaultenv/defaultenv-1/ in the source tree.
> +	  The directory given with DEFAULT_ENVIRONMENT_PATH
>  	  will be added to the default environment. This should
>  	  at least contain a /env/config file.
>  	  This will be able to overwrite the files from defaultenv.
> @@ -899,21 +909,27 @@ config DEFAULT_ENVIRONMENT_GENERIC_NEW_MENU
>  	depends on DEFAULT_ENVIRONMENT_GENERIC_NEW
>  	depends on CMD_MENUTREE
>  	default y
> +	help
> +	  Extend the defaultenv template with a menu that is displayed at boot.
> +	  The menu files are taken from defaultenv/defaultenv-2-menu/.
>  
>  config DEFAULT_ENVIRONMENT_GENERIC_NEW_DFU
>  	bool
>  	depends on DEFAULT_ENVIRONMENT_GENERIC_NEW
>  	depends on USB_GADGET_DFU
>  	default y
> +	help
> +	  Extend the defaultenv template with the 'dfu' boot entry, which
> +	  allows uploading the kernel and oftree over USB via the dfu protocol.
>  
>  config DEFAULT_ENVIRONMENT_PATH
>  	string
>  	depends on DEFAULT_ENVIRONMENT
>  	prompt "Default environment path"
>  	help
> -	  Space separated list of paths the default environment will be taken from.
> -	  Relative paths will be relative to the barebox Toplevel dir, but absolute
> -	  paths are fine as well.
> +	  Space separated list of paths from which the default environment will
> +	  be taken. Relative paths will be relative to the barebox top-level
> +	  directory, but absolute paths are fine as well.
>  
>  config BAREBOXENV_TARGET
>  	bool
> -- 
> 2.30.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
