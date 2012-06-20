Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ShGOO-00076M-GO
 for barebox@lists.infradead.org; Wed, 20 Jun 2012 08:36:01 +0000
Date: Wed, 20 Jun 2012 10:35:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120620083552.GM28394@pengutronix.de>
References: <1339756099-17774-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1339756099-17774-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] poweroff: fix cmd_poweroff() arguments type
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Jun 15, 2012 at 02:28:19PM +0400, Antony Pavlov wrote:
> This fixes a bug introduced with:
> 
> commit d5efef69b6449edcf44f45372c42dba861c35537
> Author: Antony Pavlov <antonynpavlov@gmail.com>
> Date:   Wed Jun 13 23:43:07 2012 +0400

Squashed into the commit breaking it.

Thanks
 Sascha

> 
>     add 'poweroff' command
> 
>     Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
>     Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  commands/poweroff.c |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/commands/poweroff.c b/commands/poweroff.c
> index cd5542b..ebb146c 100644
> --- a/commands/poweroff.c
> +++ b/commands/poweroff.c
> @@ -23,7 +23,7 @@
>  #include <common.h>
>  #include <command.h>
>  
> -static int cmd_poweroff(struct command *cmdtp, int argc, char *argv[])
> +static int cmd_poweroff(int argc, char *argv[])
>  {
>  	poweroff();
>  
> -- 
> 1.7.10
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
