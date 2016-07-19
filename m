Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bPN0H-0008Eq-Gz
 for barebox@lists.infradead.org; Tue, 19 Jul 2016 04:51:35 +0000
Date: Tue, 19 Jul 2016 06:51:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160719045110.GN20657@pengutronix.de>
References: <1468854889-6057-1-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1468854889-6057-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v2 1/7] Revert "syscon: Decrease driver registration
 priority"
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Jul 18, 2016 at 08:14:43AM -0700, Andrey Smirnov wrote:
> Fixing the i.MX6 specific issue this way breaks things on CLPS711x
> target. Better fix for the problem is to follow this patch.
> 
> This reverts commit c203958f3bbf25fc3d612497057b962e96ad1c52.
> 
> Reported-by: Alexander Shiyan <shc_work@mail.ru>
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---

Applied the first two patches to master and the rest for next.

Sascha

>  drivers/mfd/syscon.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/mfd/syscon.c b/drivers/mfd/syscon.c
> index ee62da0..9589a03 100644
> --- a/drivers/mfd/syscon.c
> +++ b/drivers/mfd/syscon.c
> @@ -111,7 +111,7 @@ static int __init syscon_init(void)
>  {
>  	return platform_driver_register(&syscon_driver);
>  }
> -device_initcall(syscon_init);
> +core_initcall(syscon_init);
>  
>  MODULE_AUTHOR("Dong Aisheng <dong.aisheng@linaro.org>");
>  MODULE_DESCRIPTION("System Control driver");
> -- 
> 2.5.5
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
