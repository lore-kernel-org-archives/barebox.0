Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XcTpC-00055h-I6
 for barebox@lists.infradead.org; Fri, 10 Oct 2014 06:37:15 +0000
Date: Fri, 10 Oct 2014 08:36:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141010063651.GK4992@pengutronix.de>
References: <1412846368-32118-1-git-send-email-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1412846368-32118-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH] commands: firmwareload: add CMD_GROUP
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Oct 09, 2014 at 11:19:28AM +0200, Steffen Trumtrar wrote:
> To be able to build the documentation the CMD_GROUP macro needs
> to be defined. Without this the firmwareload command breaks "make docs".
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Applied, thanks

Sascha

> ---
>  commands/firmwareload.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/commands/firmwareload.c b/commands/firmwareload.c
> index a2596951a795..071f25be99b5 100644
> --- a/commands/firmwareload.c
> +++ b/commands/firmwareload.c
> @@ -62,5 +62,6 @@ BAREBOX_CMD_HELP_END
>  BAREBOX_CMD_START(firmwareload)
>  	.cmd = do_firmwareload,
>  	BAREBOX_CMD_DESC("Program a firmware file into a device")
> +	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
>  	BAREBOX_CMD_HELP(cmd_firmwareload_help)
>  BAREBOX_CMD_END
> -- 
> 2.1.0
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
