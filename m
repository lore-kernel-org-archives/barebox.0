Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cQVCE-0004CC-5j
 for barebox@lists.infradead.org; Mon, 09 Jan 2017 08:20:52 +0000
Date: Mon, 9 Jan 2017 09:20:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170109082025.xijkeym5rqdgfv37@pengutronix.de>
References: <1483800326-14277-1-git-send-email-opentkernel@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1483800326-14277-1-git-send-email-opentkernel@163.com>
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
Subject: Re: [PATCH] arm: decalare div0 as weak function
To: DU HUANPENG <opentkernel@163.com>
Cc: barebox@lists.infradead.org, Du Huanpeng <u74147@gmail.com>

Hi,

On Sat, Jan 07, 2017 at 10:45:26PM +0800, DU HUANPENG wrote:
> From: Du Huanpeng <u74147@gmail.com>
> 
> Signed-off-by: Du Huanpeng <u74147@gmail.com>
> ---
>  arch/arm/lib/div0.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/lib/div0.c b/arch/arm/lib/div0.c
> index 852cb72..d4f3b6c 100644
> --- a/arch/arm/lib/div0.c
> +++ b/arch/arm/lib/div0.c
> @@ -17,11 +17,11 @@
>   *
>   */
>  #include <common.h>
> +#include <linux/compiler.h>
>  
>  extern void __div0(void);
>  
> -/* Replacement (=dummy) for GNU/Linux division-by zero handler */
> -void __div0 (void)
> +__weak void __div0 (void)

Could you explain why and in which situations you need this?

Sascha

>  {
>  	panic("division by zero\n");
>  }
> -- 
> 2.7.4
> 
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
