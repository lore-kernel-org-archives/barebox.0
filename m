Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbMYE-0007su-KI
 for barebox@lists.infradead.org; Wed, 20 May 2020 11:06:20 +0000
Date: Wed, 20 May 2020 13:06:09 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200520110608.GY11869@pengutronix.de>
References: <1589798255-359359-1-git-send-email-r.karszniewicz@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589798255-359359-1-git-send-email-r.karszniewicz@phytec.de>
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
Subject: Re: [PATCH] blspec: Allow the "options" key to be given multiple times
To: Robert Karszniewicz <r.karszniewicz@phytec.de>
Cc: barebox@lists.infradead.org

On Mon, May 18, 2020 at 12:37:35PM +0200, Robert Karszniewicz wrote:
> The Boot Loader Spec says:
> "This key is optional and may appear more than once in which case all
> specified parameters are used in the order they are listed."
> 
> Signed-off-by: Robert Karszniewicz <r.karszniewicz@phytec.de>
> ---
>  common/blspec.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/common/blspec.c b/common/blspec.c
> index 1a6d581..3be26d0 100644
> --- a/common/blspec.c
> +++ b/common/blspec.c
> @@ -298,6 +298,18 @@ static struct blspec_entry *blspec_entry_open(struct bootentries *bootentries,
>  
>  		val = end;
>  
> +		if (!strcmp(name, "options")) {
> +			/* If there was a previous "options" key given, prepend its value
> +			 * (as per spec). */
> +			char *prev_val = blspec_entry_var_get(entry, name);
> +			if (prev_val) {
> +				char *opts = xasprintf("%s %s", prev_val, val);
> +				blspec_entry_var_set(entry, name, opts);
> +				free(opts);
> +				continue;
> +			}
> +		}
> +
>  		blspec_entry_var_set(entry, name, val);
>  	}
>  
> -- 
> 2.7.4
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
