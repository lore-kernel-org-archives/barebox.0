Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b8jDQ-0004Ut-GM
 for barebox@lists.infradead.org; Fri, 03 Jun 2016 07:08:21 +0000
Date: Fri, 3 Jun 2016 09:07:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160603070756.GR31666@pengutronix.de>
References: <1464795346-1004-1-git-send-email-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1464795346-1004-1-git-send-email-l.stach@pengutronix.de>
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
Subject: Re: [PATCH] state: select CRC32
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Jun 01, 2016 at 05:35:46PM +0200, Lucas Stach wrote:
> The raw state backend uses crc32 unconditionally, so make
> sure it's present.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  common/Kconfig | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

Sascha

> 
> diff --git a/common/Kconfig b/common/Kconfig
> index a8c1855aab17..c321090de0b3 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -818,6 +818,7 @@ config POLLER
>  
>  config STATE
>  	bool "generic state infrastructure"
> +	select CRC32
>  	select ENVIRONMENT_VARIABLES
>  	select OFTREE
>  	select PARAMETER
> -- 
> 2.8.1
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
