Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY3N3-0004yr-01
 for barebox@lists.infradead.org; Tue, 04 Jun 2019 06:56:35 +0000
Date: Tue, 4 Jun 2019 08:56:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190604065631.xjvyua5soolae66u@pengutronix.de>
References: <20190531102939.26054-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190531102939.26054-1-l.stach@pengutronix.de>
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
Subject: Re: [PATCH] ARM: zii-common: add missing stddef.h include
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, May 31, 2019 at 12:29:39PM +0200, Lucas Stach wrote:
> It's required for size_t types.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  arch/arm/boards/zii-common/pn-fixup.h | 2 ++
>  1 file changed, 2 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/zii-common/pn-fixup.h b/arch/arm/boards/zii-common/pn-fixup.h
> index 39b848bd00d3..925e8ad63491 100644
> --- a/arch/arm/boards/zii-common/pn-fixup.h
> +++ b/arch/arm/boards/zii-common/pn-fixup.h
> @@ -15,6 +15,8 @@
>  #ifndef __ZII_PN_FIXUP__
>  #define __ZII_PN_FIXUP__
>  
> +#include <linux/stddef.h>
> +
>  struct zii_pn_fixup {
>  	const char *pn;
>  	void (*callback) (const struct zii_pn_fixup *fixup);
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
