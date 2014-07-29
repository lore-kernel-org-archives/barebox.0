Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XC0oU-0002wT-UE
 for barebox@lists.infradead.org; Tue, 29 Jul 2014 06:23:07 +0000
Date: Tue, 29 Jul 2014 08:22:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140729062244.GE23235@pengutronix.de>
References: <1406579115-3955-1-git-send-email-mpa@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1406579115-3955-1-git-send-email-mpa@pengutronix.de>
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
Subject: Re: [PATCH] include/bbu: Add missing include errno.h
To: Markus Pargmann <mpa@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Jul 28, 2014 at 10:25:15PM +0200, Markus Pargmann wrote:
> Signed-off-by: Markus Pargmann <mpa@pengutronix.de>

Applied, thanks

Sascha

> ---
>  include/bbu.h | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/include/bbu.h b/include/bbu.h
> index 095eebcf4afa..adb52b0dec42 100644
> --- a/include/bbu.h
> +++ b/include/bbu.h
> @@ -1,6 +1,8 @@
>  #ifndef __INCLUDE_BBU_H
>  #define __INCLUDE_BBU_H
>  
> +#include <asm-generic/errno.h>
> +
>  struct bbu_data {
>  #define BBU_FLAG_FORCE	(1 << 0)
>  #define BBU_FLAG_YES	(1 << 1)
> -- 
> 2.0.1
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
