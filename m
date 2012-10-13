Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TN6LE-0001OT-1S
 for barebox@lists.infradead.org; Sat, 13 Oct 2012 18:21:40 +0000
Date: Sat, 13 Oct 2012 20:21:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121013182138.GA27665@pengutronix.de>
References: <1350130276-24333-1-git-send-email-carlo.caione@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1350130276-24333-1-git-send-email-carlo.caione@gmail.com>
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
Subject: Re: [PATCH] cosmetic: extra new line in automount usage command
To: Carlo Caione <carlo.caione@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, Oct 13, 2012 at 02:11:16PM +0200, Carlo Caione wrote:
> Signed-off-by: Carlo Caione <carlo.caione@gmail.com>

Applied, thanks

Sascha

> ---
>  commands/automount.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/commands/automount.c b/commands/automount.c
> index 4f7aa0e..4713932 100644
> --- a/commands/automount.c
> +++ b/commands/automount.c
> @@ -65,7 +65,7 @@ BAREBOX_CMD_HELP_END
>  
>  BAREBOX_CMD_START(automount)
>  	.cmd		= do_automount,
> -	.usage		= "automount [OPTIONS] <PATH> <cmd>\n",
> +	.usage		= "automount [OPTIONS] <PATH> <cmd>",
>  	BAREBOX_CMD_HELP(cmd_automount_help)
>  BAREBOX_CMD_END
>  
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
