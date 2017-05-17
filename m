Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dAsp3-0004S6-FY
 for barebox@lists.infradead.org; Wed, 17 May 2017 06:52:39 +0000
Date: Wed, 17 May 2017 08:52:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170517065215.nqed6aswrgwi7urp@pengutronix.de>
References: <20170515171422.1648-1-contact@stefanchrist.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170515171422.1648-1-contact@stefanchrist.eu>
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
Subject: Re: [PATCH 1/5] images: clean *.imx-sram-img files
To: Stefan Lengfeld <contact@stefanchrist.eu>
Cc: barebox@lists.infradead.org

Hi Stefan,

On Mon, May 15, 2017 at 07:14:18PM +0200, Stefan Lengfeld wrote:
> The command
> 
>     make ARCH=arm clean
> 
> should also clean the *.imx-sram-img files.
> 
> Signed-off-by: Stefan Lengfeld <contact@stefanchrist.eu>
> ---
>  images/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Nice fixes, thanks. Applied all.

Sascha

> 
> diff --git a/images/Makefile b/images/Makefile
> index adf950a..c5024f1 100644
> --- a/images/Makefile
> +++ b/images/Makefile
> @@ -145,5 +145,5 @@ $(flash-list): $(image-y-path)
>  clean-files := *.pbl *.pblb *.pblx *.map start_*.imximg *.img barebox.z start_*.kwbimg \
>  	start_*.kwbuartimg *.socfpgaimg *.mlo *.t20img *.t20img.cfg *.t30img \
>  	*.t30img.cfg *.t124img *.t124img.cfg *.mlospi *.mlo *.mxsbs *.mxssd \
> -	start_*.simximg start_*.usimximg
> +	start_*.simximg start_*.usimximg *.imx-sram-img
>  clean-files += pbl.lds
> -- 
> 2.7.4
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
