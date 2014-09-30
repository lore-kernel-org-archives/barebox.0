Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XYt7K-0004jZ-QT
 for barebox@lists.infradead.org; Tue, 30 Sep 2014 08:49:07 +0000
Date: Tue, 30 Sep 2014 10:45:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140930084534.GY4992@pengutronix.de>
References: <1412004776-18993-1-git-send-email-wjatscheslaw.stoljarski@kiwigrid.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1412004776-18993-1-git-send-email-wjatscheslaw.stoljarski@kiwigrid.com>
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
Subject: Re: [PATCH] commands: usb: drop help for force rescan option
To: "Wjatscheslaw Stoljarski (Slawa)" <wjatscheslaw.stoljarski@kiwigrid.com>
Cc: barebox@lists.infradead.org

On Mon, Sep 29, 2014 at 05:32:56PM +0200, Wjatscheslaw Stoljarski (Slawa) wrote:
> From: "Wjatscheslaw Stoljarski" <wjatscheslaw.stoljarski@kiwigrid.com>
> 
> Signed-off-by: Wjatscheslaw Stoljarski <wjatscheslaw.stoljarski@kiwigrid.com>

Applied, thanks

Sascha

> ---
>  commands/usb.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/commands/usb.c b/commands/usb.c
> index a37d503..48c6619 100644
> --- a/commands/usb.c
> +++ b/commands/usb.c
> @@ -138,7 +138,6 @@ BAREBOX_CMD_HELP_START(usb)
>  BAREBOX_CMD_HELP_TEXT("Scan for USB devices.")
>  BAREBOX_CMD_HELP_TEXT("")
>  BAREBOX_CMD_HELP_TEXT("Options:")
> -BAREBOX_CMD_HELP_OPT("-f", "force rescan")
>  BAREBOX_CMD_HELP_OPT("-s", "show devices")
>  BAREBOX_CMD_HELP_OPT("-t", "show USB tree")
>  BAREBOX_CMD_HELP_END
> @@ -146,7 +145,7 @@ BAREBOX_CMD_HELP_END
>  BAREBOX_CMD_START(usb)
>  	.cmd		= do_usb,
>  	BAREBOX_CMD_DESC("(re-)detect USB devices")
> -	BAREBOX_CMD_OPTS("[-fts]")
> +	BAREBOX_CMD_OPTS("[-ts]")
>  	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
>  	BAREBOX_CMD_HELP(cmd_usb_help)
>  	BAREBOX_CMD_COMPLETE(empty_complete)
> -- 
> 1.9.1
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
