Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1egPrT-0005oQ-Hi
 for barebox@lists.infradead.org; Tue, 30 Jan 2018 06:57:45 +0000
Date: Tue, 30 Jan 2018 07:57:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180130065731.dmaouhu6ko6k5ap3@pengutronix.de>
References: <20180128212959.14319-1-aleksander@aleksander.es>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180128212959.14319-1-aleksander@aleksander.es>
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
Subject: Re: [PATCH] ratp: rename global context variable
To: Aleksander Morgado <aleksander@aleksander.es>
Cc: barebox@lists.infradead.org

On Sun, Jan 28, 2018 at 10:29:59PM +0100, Aleksander Morgado wrote:
> The 'ratp_command_ctx' seems to specify that this variable is only
> used to process command operations, but it really is used in every
> async operation (e.g. also in FS), so just rename it to a more generic
> name for clarity.
> 
> Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
> ---
>  common/ratp.c | 18 +++++++++---------
>  1 file changed, 9 insertions(+), 9 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/common/ratp.c b/common/ratp.c
> index 7be86d49a..c5eae2e2c 100644
> --- a/common/ratp.c
> +++ b/common/ratp.c
> @@ -204,7 +204,7 @@ static int ratp_bb_send_getenv_return(struct ratp_ctx *ctx, const char *val)
>  }
>  
>  static char *ratp_command;
> -static struct ratp_ctx *ratp_command_ctx;
> +static struct ratp_ctx *ratp_ctx;
>  
>  static int ratp_bb_dispatch(struct ratp_ctx *ctx, const void *buf, int len)
>  {
> @@ -220,7 +220,7 @@ static int ratp_bb_dispatch(struct ratp_ctx *ctx, const void *buf, int len)
>  			return 0;
>  
>  		ratp_command = xmemdup_add_zero(&rbb->data, dlen);
> -		ratp_command_ctx = ctx;
> +		ratp_ctx = ctx;
>  		pr_debug("got command: %s\n", ratp_command);
>  
>  		break;
> @@ -337,7 +337,7 @@ void ratp_run_command(void)
>  	free(ratp_command);
>  	ratp_command = NULL;
>  
> -	ratp_bb_send_command_return(ratp_command_ctx, ret);
> +	ratp_bb_send_command_return(ratp_ctx, ret);
>  }
>  
>  static const char *ratpfs_mount_path;
> @@ -400,7 +400,7 @@ out:
>  
>  int barebox_ratp_fs_call(struct ratp_bb_pkt *tx, struct ratp_bb_pkt **rx)
>  {
> -	struct ratp_ctx *ctx = ratp_command_ctx;
> +	struct ratp_ctx *ctx = ratp_ctx;
>  	struct ratp_bb *rbb;
>  	int len;
>  	u64 start;
> @@ -446,11 +446,11 @@ int barebox_ratp(struct console_device *cdev)
>  	if (!cdev->getc || !cdev->putc)
>  		return -EINVAL;
>  
> -	if (ratp_command_ctx) {
> -		ctx = ratp_command_ctx;
> +	if (ratp_ctx) {
> +		ctx = ratp_ctx;
>  	} else {
>  		ctx = xzalloc(sizeof(*ctx));
> -		ratp_command_ctx = ctx;
> +		ratp_ctx = ctx;
>  		ctx->ratp.send = console_send;
>  		ctx->ratp.recv = console_recv;
>  		ctx->console_recv_fifo = kfifo_alloc(512);
> @@ -494,7 +494,7 @@ out:
>  
>  static void barebox_ratp_close(void)
>  {
> -	if (ratp_command_ctx && ratp_command_ctx->cdev)
> -		ratp_console_unregister(ratp_command_ctx);
> +	if (ratp_ctx && ratp_ctx->cdev)
> +		ratp_console_unregister(ratp_ctx);
>  }
>  predevshutdown_exitcall(barebox_ratp_close);
> -- 
> 2.15.1
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
