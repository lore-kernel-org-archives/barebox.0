Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UjPoc-0008Oc-3J
 for barebox@lists.infradead.org; Mon, 03 Jun 2013 08:08:30 +0000
Date: Mon, 3 Jun 2013 10:08:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130603080800.GD32299@pengutronix.de>
References: <1370245593-68520-1-git-send-email-monaka@monami-ya.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1370245593-68520-1-git-send-email-monaka@monami-ya.jp>
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
Subject: Re: [PATCH] Fix typo.
To: Masaki Muranaka <monaka@monami-ya.jp>
Cc: barebox@lists.infradead.org

On Mon, Jun 03, 2013 at 04:46:33PM +0900, Masaki Muranaka wrote:
> This fix is harmless and obvious.
> 
> Signed-off-by: Masaki Muranaka <monaka@monami-ya.jp>

Applied, thanks

Sascha

> ---
>  include/stdio.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/include/stdio.h b/include/stdio.h
> index 5c091a8..0eacdfc 100644
> --- a/include/stdio.h
> +++ b/include/stdio.h
> @@ -70,7 +70,7 @@ static inline int ctrlc (void)
>  {
>  	return 0;
>  }
> -#endif /* ARCH_HAS_CTRC */
> +#endif /* ARCH_HAS_CTRLC */
>  
>  #endif
>  
> -- 
> 1.8.3
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
