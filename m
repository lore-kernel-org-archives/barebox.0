Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k2fyh-0001t7-Bu
 for barebox@lists.infradead.org; Mon, 03 Aug 2020 19:18:32 +0000
Date: Mon, 3 Aug 2020 21:18:29 +0200
From: Sascha Hauer <sha@pengutronix.de>
Message-ID: <20200803191829.GD31536@pengutronix.de>
References: <20200729111240.24702-1-mkl@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200729111240.24702-1-mkl@pengutronix.de>
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
Subject: Re: [PATCH] scripts/rsatoc: fix printing of error message, if
 environment variable doen't contain a path
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org, lst@pengutronix.de

On Wed, Jul 29, 2020 at 01:12:40PM +0200, Marc Kleine-Budde wrote:
> Fixes: 128ad3cbe043 ("scripts: Add rsatoc tool")
> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
> ---
>  scripts/rsatoc.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)

Applied to master, thanks

Sascha

> 
> diff --git a/scripts/rsatoc.c b/scripts/rsatoc.c
> index 647380214092..9410f33a654f 100644
> --- a/scripts/rsatoc.c
> +++ b/scripts/rsatoc.c
> @@ -471,10 +471,12 @@ int main(int argc, char *argv[])
>  		path++;
>  
>  		if (!strncmp(path, "__ENV__", 7)) {
> -			path = getenv(path + 7);
> +			const char *orig_path = path;
> +			
> +			path = getenv(orig_path + 7);
>  			if (!path) {
>  				fprintf(stderr, "%s doesn't contain a path\n",
> -					path + 7);
> +					orig_path + 7);
>  				exit(1);
>  			}
>  		}
> -- 
> 2.20.1
> 
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
