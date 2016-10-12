Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1buDL8-0003Lh-4z
 for barebox@lists.infradead.org; Wed, 12 Oct 2016 06:48:35 +0000
Date: Wed, 12 Oct 2016 08:48:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161012064808.qp5vz7vqjcukvebb@pengutronix.de>
References: <1476085720-2752-1-git-send-email-yegorslists@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1476085720-2752-1-git-send-email-yegorslists@googlemail.com>
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
Subject: Re: [PATCH] boot: add '-w' parameter to usage help text
To: yegorslists@googlemail.com
Cc: barebox@lists.infradead.org

On Mon, Oct 10, 2016 at 09:48:40AM +0200, yegorslists@googlemail.com wrote:
> From: Yegor Yefremov <yegorslists@googlemail.com>
> 
> Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
> ---
>  commands/boot.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/commands/boot.c b/commands/boot.c
> index 102ca07..5d81d79 100644
> --- a/commands/boot.c
> +++ b/commands/boot.c
> @@ -141,7 +141,7 @@ BAREBOX_CMD_HELP_END
>  BAREBOX_CMD_START(boot)
>  	.cmd	= do_boot,
>  	BAREBOX_CMD_DESC("boot from script, device, ...")
> -	BAREBOX_CMD_OPTS("[-vdlmt] [BOOTSRC...]")
> +	BAREBOX_CMD_OPTS("[-vdlmwt] [BOOTSRC...]")
>  	BAREBOX_CMD_GROUP(CMD_GRP_BOOT)
>  	BAREBOX_CMD_HELP(cmd_boot_help)
>  BAREBOX_CMD_END
> -- 
> 2.1.4
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
