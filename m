Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fnIZL-0007CQ-9X
 for barebox@lists.infradead.org; Wed, 08 Aug 2018 07:07:44 +0000
Date: Wed, 8 Aug 2018 09:07:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180808070731.w5cqboji6wfjhr2a@pengutronix.de>
References: <20180730111437.23453-1-r.hieber@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180730111437.23453-1-r.hieber@pengutronix.de>
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
Subject: Re: [PATCH 1/4] ARM: i.MX: HAB: fix missing include for EPERM
To: Roland Hieber <r.hieber@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Jul 30, 2018 at 01:14:34PM +0200, Roland Hieber wrote:
> Signed-off-by: Roland Hieber <r.hieber@pengutronix.de>
> ---
>  include/hab.h | 2 ++
>  1 file changed, 2 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/include/hab.h b/include/hab.h
> index fb7149ef53..78c2b865ba 100644
> --- a/include/hab.h
> +++ b/include/hab.h
> @@ -18,6 +18,8 @@
>  #ifndef __HABV4_H
>  #define __HABV4_H
>  
> +#include <errno.h>
> +
>  #ifdef CONFIG_HABV4
>  int imx28_hab_get_status(void);
>  int imx6_hab_get_status(void);
> -- 
> 2.18.0
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
