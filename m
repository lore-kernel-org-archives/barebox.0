Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kiZeW-00033C-2L
 for barebox@lists.infradead.org; Fri, 27 Nov 2020 09:02:52 +0000
Date: Fri, 27 Nov 2020 10:02:49 +0100
Message-ID: <20201127090249.GF11843@pengutronix.de>
References: <20201126183154.348024-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201126183154.348024-1-ahmad@a3f.at>
From: Sascha Hauer <sha@pengutronix.de>
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
Subject: Re: [PATCH 1/4] hush: remove non-functional code
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org

On Thu, Nov 26, 2020 at 07:31:51PM +0100, Ahmad Fatoum wrote:
> name is unused except for printing and value is modified, but never read
> back. They currently serve no purpose, so drop them. The actual
> splitting by '=' happens in set_local_var later.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  common/hush.c | 9 +--------
>  1 file changed, 1 insertion(+), 8 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/common/hush.c b/common/hush.c
> index ec0d5129b70d..a6fc4485bf52 100644
> --- a/common/hush.c
> +++ b/common/hush.c
> @@ -798,16 +798,9 @@ static int run_pipe_real(struct p_context *ctx, struct pipe *pi)
>  			 * This junk is all to decide whether or not to export this
>  			 * variable. */
>  			int export_me = 0;
> -			char *name, *value;
>  
> -			name = xstrdup(child->argv[i]);
> -			hush_debug("Local environment set: %s\n", name);
> -			value = strchr(name, '=');
> +			hush_debug("Local environment set: %s\n", child->argv[i]);
>  
> -			if (value)
> -				*value = 0;
> -
> -			free(name);
>  			p = insert_var_value(child->argv[i]);
>  			rcode = set_local_var(p, export_me);
>  			if (rcode)
> -- 
> 2.28.0
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
