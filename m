Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X0FHK-0005if-UP
 for barebox@lists.infradead.org; Thu, 26 Jun 2014 19:24:19 +0000
Date: Thu, 26 Jun 2014 21:23:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140626192352.GG14257@pengutronix.de>
References: <1403772557-28482-5-git-send-email-holgerschurig@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1403772557-28482-5-git-send-email-holgerschurig@gmail.com>
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
Subject: Re: [PATCH 4/4] sandbox: allow "make ARCH=sandbox allyesconfig"
To: Holger Schurig <holgerschurig@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Jun 26, 2014 at 10:49:17AM +0200, Holger Schurig wrote:
> Compiling the tree with allyesconfig is helpful because different
> compilers (gcc, clang) or static checkers (e.g. clang's scan-build)
> can then process and check more code.
> 
> This patch introduces two new configuration symbols that Kconfig files
> can depend on. That way, code that is only working where a cache or DMA
> implementation exists can be opted out.
> 
> Signed-off-by: Holger Schurig <holgerschurig@gmail.com>
> ---
>  common/Kconfig                   |   21 +++++++++++++++++++++
>  drivers/ata/Kconfig              |    1 +
>  drivers/input/Kconfig            |    2 +-
>  drivers/net/Kconfig              |    4 ++++
>  drivers/regulator/Kconfig        |    1 +
>  drivers/usb/host/Kconfig         |    1 +
>  drivers/video/imx-ipu-v3/Kconfig |    1 +
>  7 files changed, 30 insertions(+), 1 deletion(-)
> 
> diff --git a/common/Kconfig b/common/Kconfig
> index 1afee93..0bf5d2c 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -25,6 +25,26 @@ config ENV_HANDLING
>  	select CRC32
>  	bool
>  
> +config HAS_CACHE
> +	bool
> +	default n if SANDBOX
> +	default y
> +	help
> +	  This allows you do run "make ARCH=sandbox allyesconfig".
> +
> +	  Drivers that depend on a cache implementation can depend on this
> +	  config, so that you don't get a compilation error.
> +
> +config HAS_DMA
> +	bool
> +	default n if SANDBOX
> +	default y
> +	help
> +	  This allows you do run "make ARCH=sandbox allyesconfig".
> +
> +	  Drivers that depend on a DMA implementation can depend on this
> +	  config, so that you don't get a compilation error.

Only ARM implements the dma_* functions. Can we skip the 'default x'
here and select HAS_DMA from the ARM Kconfig file?

Same with HAS_CACHE. The functions are implemented by ppc, nios2 and
openrisc.

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
