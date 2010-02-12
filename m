Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1Nfpzl-0004Qu-Qx
	for barebox@lists.infradead.org; Fri, 12 Feb 2010 07:31:22 +0000
Date: Fri, 12 Feb 2010 08:31:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100212073115.GS17643@pengutronix.de>
References: <201002111308.50433.jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201002111308.50433.jbe@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] Fix compile time errors when DEBUG is defined
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Feb 11, 2010 at 01:08:49PM +0100, Juergen Beisert wrote:
> If the DEBUG macro is defined the compiler complains about a missing
> 'ipu_base' variable.

Applied

Sascha

> 
> Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
> 
> diff --git a/drivers/video/imx-ipu-fb.c b/drivers/video/imx-ipu-fb.c
> index 4a27009..0bd86b2 100644
> --- a/drivers/video/imx-ipu-fb.c
> +++ b/drivers/video/imx-ipu-fb.c
> @@ -398,7 +398,7 @@ static inline u32 reg_read(struct ipu_fb_info *fbi, unsigned long reg)
>  
>  	val = readl(fbi->regs + reg);
>  
> -	debug("%s: %p 0x%08x\n", __func__, ipu_base + reg, val);
> +	debug("%s: %p 0x%08x\n", __func__, fbi->regs + reg, val);
>  
>  	return val;
>  }
> @@ -406,7 +406,7 @@ static inline u32 reg_read(struct ipu_fb_info *fbi, unsigned long reg)
>  static inline void reg_write(struct ipu_fb_info *fbi, u32 value,
>  		unsigned long reg)
>  {
> -	debug("%s: %p 0x%08x\n", __func__, ipu_base + reg, value);
> +	debug("%s: %p 0x%08x\n", __func__, fbi->regs + reg, value);
>  
>  	writel(value, fbi->regs + reg);
>  }
> 
> -- 
> Pengutronix e.K.                              | Juergen Beisert             |
> Linux Solutions for Science and Industry      | Phone: +49-8766-939 228     |
> Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
> Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |
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
