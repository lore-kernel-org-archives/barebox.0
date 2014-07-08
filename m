Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X4ODp-0008Rz-Nm
 for barebox@lists.infradead.org; Tue, 08 Jul 2014 05:45:46 +0000
Date: Tue, 8 Jul 2014 07:45:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140708054522.GR23235@pengutronix.de>
References: <1404722708-4623-1-git-send-email-Herve.CODINA@celad.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1404722708-4623-1-git-send-email-Herve.CODINA@celad.com>
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
Subject: Re: [PATCH 1/1] hush: Fix error code returned value
To: Herve Codina <Herve.CODINA@celad.com>
Cc: barebox@lists.infradead.org

On Mon, Jul 07, 2014 at 10:45:08AM +0200, Herve Codina wrote:
> Just returns error code instead of 0 or 1.
> 
> With this fix, $? is set to child exit code in all cases.
> Without this fix, /child $PATH;echo $? displays 1 even if
> child script calls exit with a specific non zero error code.
> 
> Signed-off-by: Herve Codina <Herve.CODINA@celad.com>

Applied, thanks

Sascha

> ---
>  common/hush.c |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/common/hush.c b/common/hush.c
> index 6be43cf..f6aaa03 100644
> --- a/common/hush.c
> +++ b/common/hush.c
> @@ -1724,7 +1724,7 @@ static int parse_stream_outer(struct p_context *ctx, struct in_str *inp, int fla
>  		b_free(&temp);
>  	} while (rcode != -1 && !(flag & FLAG_EXIT_FROM_LOOP));   /* loop on syntax errors, return on EOF */
>  
> -	return (code != 0) ? 1 : 0;
> +	return code;
>  }
>  
>  static int parse_string_outer(struct p_context *ctx, const char *s, int flag)
> -- 
> 1.7.9.5
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
