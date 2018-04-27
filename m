Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fBzxF-0002If-4O
 for barebox@lists.infradead.org; Fri, 27 Apr 2018 09:46:15 +0000
Date: Fri, 27 Apr 2018 11:45:59 +0200
From: Roland Hieber <r.hieber@pengutronix.de>
Message-ID: <20180427094559.paxm7wqtaxsizonp@pengutronix.de>
References: <20180427053105.9874-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180427053105.9874-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] ARM: VFxxx: Recort cpu boot source as a part of startup
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

In the subject: s/Record/Report/ ?

 - Roland

On Thu, Apr 26, 2018 at 10:31:05PM -0700, Andrey Smirnov wrote:
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  arch/arm/mach-imx/vf610.c | 2 ++
>  1 file changed, 2 insertions(+)
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
Roland Hieber                     | r.hieber@pengutronix.de     |
Pengutronix e.K.                  | https://www.pengutronix.de/ |
Peiner Str. 6-8, 31137 Hildesheim | Phone: +49-5121-206917-5086 |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
