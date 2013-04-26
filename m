Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UVbCI-00021A-Um
 for barebox@lists.infradead.org; Fri, 26 Apr 2013 05:27:51 +0000
Date: Fri, 26 Apr 2013 07:27:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130426052749.GN32299@pengutronix.de>
References: <1366902742-30993-1-git-send-email-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1366902742-30993-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH] of: property: fix error message
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Apr 25, 2013 at 05:12:22PM +0200, Steffen Trumtrar wrote:
> At least in standard oxford english one not is enough.

:)

Applied, thanks

Sascha

> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  commands/of_property.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/commands/of_property.c b/commands/of_property.c
> index 6311b70..44bb388 100644
> --- a/commands/of_property.c
> +++ b/commands/of_property.c
> @@ -62,7 +62,7 @@ static int of_parse_prop_cells(char * const *newval, int count, char *data, int
>  
>  		/* If the ptr didn't advance, something went wrong */
>  		if ((newp - cp) <= 0) {
> -			printf("cannot not convert \"%s\"\n", cp);
> +			printf("cannot convert \"%s\"\n", cp);
>  			return -EINVAL;
>  		}
>  
> @@ -105,7 +105,7 @@ static int of_parse_prop_stream(char * const *newval, int count, char *data, int
>  
>  		/* If the ptr didn't advance, something went wrong */
>  		if ((newp - cp) <= 0) {
> -			printf("cannot not convert \"%s\"\n", cp);
> +			printf("cannot convert \"%s\"\n", cp);
>  			return -EINVAL;
>  		}
>  	}
> -- 
> 1.8.2.rc2
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
