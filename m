Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1chA4E-0003fn-5V
 for barebox@lists.infradead.org; Fri, 24 Feb 2017 07:13:27 +0000
Date: Fri, 24 Feb 2017 08:13:03 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170224071303.qmah26rlxv5nqknm@pengutronix.de>
References: <20170222103319.4100-1-yegorslists@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170222103319.4100-1-yegorslists@googlemail.com>
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
Subject: Re: [PATCH v2] lib: xz: add support for bcj filters
To: yegorslists@googlemail.com
Cc: hyfinglists@gmail.com, barebox@lists.infradead.org

On Wed, Feb 22, 2017 at 11:33:19AM +0100, yegorslists@googlemail.com wrote:
> From: Yegor Yefremov <yegorslists@googlemail.com>
> 
> Add missing configuration options for various bcj filters. Without
> these options the lib/xz/xz_dec_bcj.c file will be compiled, but all
> filters will be disabled.
> 
> Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>

Applied, thanks

Sascha

> ---
> Changes v1 -> v2:
>   - always select all filters (Sascha Hauer)
> 
>  lib/Kconfig | 24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
> 
> diff --git a/lib/Kconfig b/lib/Kconfig
> index f9f25bdef..8a94ce09f 100644
> --- a/lib/Kconfig
> +++ b/lib/Kconfig
> @@ -21,6 +21,30 @@ config LZ4_DECOMPRESS
>  config XZ_DECOMPRESS
>  	bool "include xz uncompression support"
>  	select UNCOMPRESS
> +	select XZ_DEC_X86
> +	select XZ_DEC_POWERPC
> +	select XZ_DEC_IA64
> +	select XZ_DEC_ARM
> +	select XZ_DEC_ARMTHUMB
> +	select XZ_DEC_SPARC
> +
> +config XZ_DEC_X86
> +        bool
> +
> +config XZ_DEC_POWERPC
> +        bool
> +
> +config XZ_DEC_IA64
> +        bool
> +
> +config XZ_DEC_ARM
> +        bool
> +
> +config XZ_DEC_ARMTHUMB
> +        bool
> +
> +config XZ_DEC_SPARC
> +        bool
>  
>  config REED_SOLOMON
>  	bool
> -- 
> 2.11.0
> 
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
