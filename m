Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UjPKn-0007kR-Mf
 for barebox@lists.infradead.org; Mon, 03 Jun 2013 07:37:42 +0000
Date: Mon, 3 Jun 2013 09:37:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130603073717.GA32299@pengutronix.de>
References: <1370135333-79633-1-git-send-email-monaka@monami-ya.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1370135333-79633-1-git-send-email-monaka@monami-ya.com>
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
To: monaka@monami-ya.jp
Cc: barebox@lists.infradead.org

On Sun, Jun 02, 2013 at 10:08:53AM +0900, monaka@monami-ya.jp wrote:
> From: Masaki Muranaka <monaka@monami-ya.com>

Could you resend this with a proper signed-off-by?

Thanks
 Sascha

> 
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
