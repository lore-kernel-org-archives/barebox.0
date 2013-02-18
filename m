Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U7LwV-00048F-SM
 for barebox@lists.infradead.org; Mon, 18 Feb 2013 08:19:20 +0000
Date: Mon, 18 Feb 2013 09:19:16 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130218081916.GH1906@pengutronix.de>
References: <1361123977-18443-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1361123977-18443-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH] commands: automount: Added help string about "-d" option
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Sun, Feb 17, 2013 at 09:59:37PM +0400, Alexander Shiyan wrote:
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Applied, thanks

Sascha

> ---
>  commands/automount.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/commands/automount.c b/commands/automount.c
> index 4713932..511d18b 100644
> --- a/commands/automount.c
> +++ b/commands/automount.c
> @@ -60,6 +60,7 @@ BAREBOX_CMD_HELP_START(automount)
>  BAREBOX_CMD_HELP_USAGE("automount [OPTIONS] <PATH> <cmd>\n")
>  BAREBOX_CMD_HELP_SHORT("execute <cmd> when <PATH> is first accessed\n")
>  BAREBOX_CMD_HELP_OPT("-l", "List currently registered automountpoints\n")
> +BAREBOX_CMD_HELP_OPT("-d", "Create the mount path\n")
>  BAREBOX_CMD_HELP_OPT("-r <PATH>", "remove an automountpoint\n")
>  BAREBOX_CMD_HELP_END
>  
> -- 
> 1.7.12.4
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
