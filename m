Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbIjR-0007nO-0N
 for barebox@lists.infradead.org; Thu, 13 Jun 2019 05:57:06 +0000
Date: Thu, 13 Jun 2019 07:57:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190613055701.w4k5gnqzucms2mkh@pengutronix.de>
References: <20190612094333.8648-1-abbotti@mev.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190612094333.8648-1-abbotti@mev.co.uk>
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
Subject: Re: [PATCH] startup: execute /env/bin/init as part of the initial
 shell
To: Ian Abbott <abbotti@mev.co.uk>
Cc: barebox@lists.infradead.org

On Wed, Jun 12, 2019 at 10:43:33AM +0100, Ian Abbott wrote:
> Commit 90df2a955e3c ("defaultenv: Convert init script to C")
> unintentionally changed the way the legacy "/env/bin/init" script is
> run, so that it runs in a sub-shell context, effectively changing
> `run_command("source /env/bin/init");` to
> `run_command("/env/bin/init");`.  Therefore, any changes to shell
> environment variables made by the script are undone when the script
> exits.  This patch reverts back to the old behavior.
> 
> Fixes: 90df2a955e3c ("defaultenv: Convert init script to C")
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
> ---
>  common/startup.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/common/startup.c b/common/startup.c
> index 9fac0eabb..9345d131b 100644
> --- a/common/startup.c
> +++ b/common/startup.c
> @@ -188,11 +188,12 @@ static bool test_abort(void)
>  	return false;
>  }
>  
> +#define INITFILE "/env/bin/init"
> +
>  static int run_init(void)
>  {
>  	DIR *dir;
>  	struct dirent *d;
> -	const char *initfile = "/env/bin/init";
>  	const char *initdir = "/env/init";
>  	const char *menufile = "/env/menu/mainmenu";
>  	struct stat s;
> @@ -206,10 +207,10 @@ static int run_init(void)
>  	setenv("PATH", "/env/bin");
>  
>  	/* Run legacy /env/bin/init if it exists */
> -	env_bin_init_exists = stat(initfile, &s) == 0;
> +	env_bin_init_exists = stat(INITFILE, &s) == 0;
>  	if (env_bin_init_exists) {
> -		pr_info("running %s...\n", initfile);
> -		run_command(initfile);
> +		pr_info("running %s...\n", INITFILE);
> +		run_command("source " INITFILE);
>  		return 0;
>  	}
>  
> -- 
> 2.20.1
> 
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
