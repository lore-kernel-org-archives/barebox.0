Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gpSVJ-0001IW-9Z
 for barebox@lists.infradead.org; Fri, 01 Feb 2019 06:40:47 +0000
Date: Fri, 1 Feb 2019 07:40:40 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190201064040.2ygmhlwm3vmua73y@pengutronix.de>
References: <20190130013050.3834-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190130013050.3834-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v2] ARM: aarch64: Avoid relocations in runtime-offset.S
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Jan 29, 2019 at 05:30:50PM -0800, Andrey Smirnov wrote:
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---

Applied, thanks

Sascha

> 
> Changes since [v1]:
> 
>     - Added a comment explaining the reasoning "a" specifier is
>       missing
> 
> [v1] http://lists.infradead.org/pipermail/barebox/2019-January/036779.html
> 
>  arch/arm/lib64/runtime-offset.S | 14 +++++++++++++-
>  1 file changed, 13 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/lib64/runtime-offset.S b/arch/arm/lib64/runtime-offset.S
> index 177ca6478..6624fdfa1 100644
> --- a/arch/arm/lib64/runtime-offset.S
> +++ b/arch/arm/lib64/runtime-offset.S
> @@ -1,7 +1,19 @@
>  #include <linux/linkage.h>
>  #include <asm/assembler.h>
>  
> -.section ".text_bare_init","ax"
> +/*
> + * The .section directive below intentionally omits "a", since that
> + * appears to be the simplest way to force assembler to not generate
> + * R_AARCH64_RELATIVE relocation for
> + *
> + * linkadr:
> + *	.quad get_runtime_offset
> + *
> + * statement below. While having that relocating was relatively
> + * harmless with GCC8, builging the code with GCC5 resulted in
> + * "linkaddr" being initialized to 0 causing complete boot breakdown
> + */
> +.section ".text_bare_init","x"
>  
>  /*
>   * Get the offset between the link address and the address
> -- 
> 2.20.1
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
