Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Slc46-0003Ls-Lg
 for barebox@lists.infradead.org; Mon, 02 Jul 2012 08:33:03 +0000
Date: Mon, 2 Jul 2012 10:33:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120702083300.GI2698@pengutronix.de>
References: <1341028561-13963-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1341028561-13963-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH] commands: uncompress: fix description
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Sat, Jun 30, 2012 at 07:56:01AM +0400, Alexander Shiyan wrote:
> Command "uncompress" can handle not only with LZO-format, so we just
> changed description for command.
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Applied, thanks

Sascha

> ---
>  commands/uncompress.c |    4 ++--
>  1 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/commands/uncompress.c b/commands/uncompress.c
> index e96928b..179d525 100644
> --- a/commands/uncompress.c
> +++ b/commands/uncompress.c
> @@ -1,5 +1,5 @@
>  /*
> - * uncompress.c - uncompress a lzo compressed file
> + * uncompress.c - uncompress a compressed file
>   *
>   * Copyright (c) 2010 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
>   *
> @@ -64,7 +64,7 @@ static const __maybe_unused char cmd_uncompress_help[] =
>  
>  BAREBOX_CMD_START(uncompress)
>          .cmd            = do_uncompress,
> -        .usage          = "lzop <infile> <outfile>",
> +        .usage          = "uncompress a compressed file",
>          BAREBOX_CMD_HELP(cmd_uncompress_help)
>  BAREBOX_CMD_END
>  
> -- 
> 1.7.3.4
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
