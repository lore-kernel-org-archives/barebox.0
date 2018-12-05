Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gUS08-0004KM-Bx
 for barebox@lists.infradead.org; Wed, 05 Dec 2018 07:53:45 +0000
Date: Wed, 5 Dec 2018 08:53:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181205075332.xulu6usobqtujcjg@pengutronix.de>
References: <20181204091631.18775-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181204091631.18775-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH] common/parser.c: s/%d/%zu/ when printing size_t
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Dec 04, 2018 at 10:16:32AM +0100, Ahmad Fatoum wrote:
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/parser.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

Applied, thanks

Sascha

> diff --git a/common/parser.c b/common/parser.c
> index 6136dbf36f5f..397d268da1c9 100644
> --- a/common/parser.c
> +++ b/common/parser.c
> @@ -70,7 +70,7 @@ static void process_macros (const char *input, char *output)
>  	/* 3 = waiting for '''  */
>  	char __maybe_unused *output_start = output;
>  
> -	pr_debug("[PROCESS_MACROS] INPUT len %d: \"%s\"\n", strlen (input),
> +	pr_debug("[PROCESS_MACROS] INPUT len %zu: \"%s\"\n", strlen (input),
>  		input);
>  
>  	prev = '\0';		/* previous character   */
> @@ -158,7 +158,7 @@ static void process_macros (const char *input, char *output)
>  	if (outputcnt)
>  		*output = 0;
>  
> -	pr_debug("[PROCESS_MACROS] OUTPUT len %d: \"%s\"\n",
> +	pr_debug("[PROCESS_MACROS] OUTPUT len %zu: \"%s\"\n",
>  		strlen (output_start), output_start);
>  }
>  
> -- 
> 2.19.1
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
