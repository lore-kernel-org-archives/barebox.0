Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TMb0k-00040j-25
 for barebox@lists.infradead.org; Fri, 12 Oct 2012 08:54:26 +0000
Date: Fri, 12 Oct 2012 10:54:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121012085424.GQ27665@pengutronix.de>
References: <1349993669-27959-1-git-send-email-carlo.caione@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1349993669-27959-1-git-send-email-carlo.caione@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] cosmetic: improve command list display
To: Carlo Caione <carlo.caione@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Oct 12, 2012 at 12:14:29AM +0200, Carlo Caione wrote:
> Following from the Frank Jullien's patch, here is the same cosmetic correction
> when the list of commands is printed (the problem was that the commands for
> gpio_* were too long for the %10s alignment)
> 
> Signed-off-by: Carlo Caione <carlo.caione@gmail.com>

Applied, thanks.

Other than my reply to Franck I think here it makes sense as we have two
columns to print and thus really need alignment.

Sascha

> ---
>  commands/help.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/commands/help.c b/commands/help.c
> index 72b0bef..a12d9c3 100644
> --- a/commands/help.c
> +++ b/commands/help.c
> @@ -28,12 +28,17 @@
>  static int do_help(int argc, char *argv[])
>  {
>  	struct command *cmdtp;
> +	int max_length = 0;
>  
>  	if (argc == 1) {	/* show list of commands */
> +		for_each_command(cmdtp)
> +			if(strlen(cmdtp->name) > max_length)
> +				max_length = strlen(cmdtp->name);
> +
>  		for_each_command(cmdtp) {
>  			if (!cmdtp->usage)
>  				continue;
> -			printf("%10s - %s\n", cmdtp->name, cmdtp->usage);
> +			printf("%*s - %s\n", max_length, cmdtp->name, cmdtp->usage);
>  		}
>  		return 0;
>  	}
> -- 
> 1.7.12.3
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
