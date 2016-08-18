Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1baHX2-00061Q-8B
 for barebox@lists.infradead.org; Thu, 18 Aug 2016 07:14:28 +0000
Date: Thu, 18 Aug 2016 09:13:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160818071340.GI20657@pengutronix.de>
References: <1471424671-13315-1-git-send-email-rndfax@yandex.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1471424671-13315-1-git-send-email-rndfax@yandex.ru>
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
Subject: Re: [PATCH] properly remove menu entry
To: Aleksey Kuleshov <rndfax@yandex.ru>
Cc: barebox@lists.infradead.org

On Wed, Aug 17, 2016 at 12:04:31PM +0300, Aleksey Kuleshov wrote:
> Signed-off-by: Aleksey Kuleshov <rndfax@yandex.ru>
> ---
>  common/boot.c | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

Sascha

> 
> diff --git a/common/boot.c b/common/boot.c
> index 52e181d..5f2e5cf 100644
> --- a/common/boot.c
> +++ b/common/boot.c
> @@ -322,6 +322,7 @@ void bootsources_menu(struct bootentries *bootentries, int timeout)
>  
>  	menu_show(bootentries->menu);
>  
> +	menu_remove_entry(bootentries->menu, back_entry);
>  	free(back_entry);
>  }
>  
> -- 
> 2.8.0.rc3
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
