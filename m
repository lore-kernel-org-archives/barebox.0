Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kVV2V-0003by-N2
 for barebox@lists.infradead.org; Thu, 22 Oct 2020 07:29:36 +0000
Date: Thu, 22 Oct 2020 09:29:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201022072934.GM26805@pengutronix.de>
References: <1603331776-10429-1-git-send-email-u74147@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1603331776-10429-1-git-send-email-u74147@gmail.com>
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
Subject: Re: [PATCH] MIPS: dtb: remove unused variable ``root''
To: Du Huanpeng <u74147@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Oct 22, 2020 at 09:56:16AM +0800, Du Huanpeng wrote:
> the ``root'' is not used and cause a warning.
> 
> Signed-off-by: Du Huanpeng <u74147@gmail.com>
> ---
>  arch/mips/boot/dtb.c | 1 -
>  1 file changed, 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/mips/boot/dtb.c b/arch/mips/boot/dtb.c
> index 2aff4ad..6fce470 100644
> --- a/arch/mips/boot/dtb.c
> +++ b/arch/mips/boot/dtb.c
> @@ -35,7 +35,6 @@ extern char __dtb_start[];
>  
>  static int of_mips_init(void)
>  {
> -	struct device_node *root;
>  	void *fdt;
>  
>  	fdt = glob_fdt;
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
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
