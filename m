Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1knIXq-0001SZ-0Y
 for barebox@lists.infradead.org; Thu, 10 Dec 2020 09:47:31 +0000
Date: Thu, 10 Dec 2020 10:47:28 +0100
Message-ID: <20201210094728.GU3977@pengutronix.de>
References: <20201208125825.105879-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201208125825.105879-1-ahmad@a3f.at>
From: Sascha Hauer <sha@pengutronix.de>
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
Subject: Re: [PATCH] fixup! ARM: rpi: Add Raspberry Pi Zero W mini-uart support
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org

On Tue, Dec 08, 2020 at 01:58:26PM +0100, Ahmad Fatoum wrote:
> Fix copy-paste error in comment.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  drivers/of/base.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index 4ff60aa81435..edb0a8e71a0f 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -2567,7 +2567,7 @@ int of_device_disable_path(const char *path)
>  }
>  
>  /**
> - * of_device_disable_path_by_alias - disable a devicenode by alias
> + * of_device_disable_by_alias - disable a devicenode by alias
>   * @alias - the alias of the device tree node to disable
>   */
>  int of_device_disable_by_alias(const char *alias)
> -- 
> 2.28.0
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
