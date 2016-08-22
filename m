Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bbi62-0003Z4-9d
 for barebox@lists.infradead.org; Mon, 22 Aug 2016 05:48:30 +0000
Date: Mon, 22 Aug 2016 07:48:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160822054808.GW20657@pengutronix.de>
References: <1471519743-22664-1-git-send-email-rndfax@yandex.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1471519743-22664-1-git-send-email-rndfax@yandex.ru>
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
Subject: Re: [PATCH] clarify strim function description
To: Aleksey Kuleshov <rndfax@yandex.ru>
Cc: barebox@lists.infradead.org

On Thu, Aug 18, 2016 at 02:29:03PM +0300, Aleksey Kuleshov wrote:
> Signed-off-by: Aleksey Kuleshov <rndfax@yandex.ru>
> ---
>  lib/string.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/lib/string.c b/lib/string.c
> index a3e9fd8..1d491c9 100644
> --- a/lib/string.c
> +++ b/lib/string.c
> @@ -641,7 +641,7 @@ char *skip_spaces(const char *str)
>  }
>  
>  /**
> - * strim - Removes leading and trailing whitespace from @s.
> + * strim - Removes trailing whitespace from @s.
>   * @s: The string to be stripped.
>   *
>   * Note that the first trailing whitespace is replaced with a %NUL-terminator
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
