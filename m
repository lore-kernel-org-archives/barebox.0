Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fDoyh-0004o2-F6
 for barebox@lists.infradead.org; Wed, 02 May 2018 10:27:17 +0000
Date: Wed, 2 May 2018 12:27:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180502102703.r4vs4fyssdm2aaz6@pengutronix.de>
References: <20180501064714.11780-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180501064714.11780-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v2] ARM: VFxxx: Record cpu boot source as a part of startup
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Apr 30, 2018 at 11:47:14PM -0700, Andrey Smirnov wrote:
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
> 
> Same as original patch, but with fixed subject line.
> 
>  arch/arm/mach-imx/vf610.c | 2 ++
>  1 file changed, 2 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-imx/vf610.c b/arch/arm/mach-imx/vf610.c
> index df8cfcd6b..3ac7c356f 100644
> --- a/arch/arm/mach-imx/vf610.c
> +++ b/arch/arm/mach-imx/vf610.c
> @@ -35,6 +35,8 @@ int vf610_init(void)
>  	const char *cputypestr;
>  	void __iomem *src = IOMEM(VF610_SRC_BASE_ADDR);
>  
> +	vf610_boot_save_loc();
> +
>  	switch (vf610_cpu_type()) {
>  	case VF610_CPUTYPE_VF610:
>  		cputypestr = "VF610";
> -- 
> 2.14.3
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
