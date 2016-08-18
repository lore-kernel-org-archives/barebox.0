Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1baGva-0004Bj-Gg
 for barebox@lists.infradead.org; Thu, 18 Aug 2016 06:35:47 +0000
Date: Thu, 18 Aug 2016 08:35:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160818063524.GF20657@pengutronix.de>
References: <1471420687-14367-1-git-send-email-rndfax@yandex.ru>
 <1471420687-14367-2-git-send-email-rndfax@yandex.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1471420687-14367-2-git-send-email-rndfax@yandex.ru>
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
Subject: Re: [PATCH 1/2] hush: do not do anything if string is zero length
To: Aleksey Kuleshov <rndfax@yandex.ru>
Cc: barebox@lists.infradead.org

Hi Aleksey,

On Wed, Aug 17, 2016 at 10:58:06AM +0300, Aleksey Kuleshov wrote:
> Signed-off-by: Aleksey Kuleshov <rndfax@yandex.ru>
> ---
>  common/hush.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/common/hush.c b/common/hush.c
> index d3f7bf3..d8fd64b 100644
> --- a/common/hush.c
> +++ b/common/hush.c
> @@ -1655,6 +1655,9 @@ char *shell_expand(char *str)
>  	o_string o = {};
>  	char *res, *parsed;
>  
> +	if (strlen(str) == 0)
> +		return xstrdup("");
> +

Can you explain why this is necessary? What happens with an empty string
without this patch?

Sascha

>  	remove_quotes_in_str(str);
>  
>  	o.quote = 1;
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
