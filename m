Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1avn0s-0008Bg-FN
 for barebox@lists.infradead.org; Thu, 28 Apr 2016 14:33:55 +0000
Date: Thu, 28 Apr 2016 16:33:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160428143332.GC7860@pengutronix.de>
References: <1461766897-23903-1-git-send-email-Andreas.Geisenhainer@atsonline.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1461766897-23903-1-git-send-email-Andreas.Geisenhainer@atsonline.de>
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
Subject: Re: [PATCH 1/1] documentation: i2c_read() does not expect any "DATA".
To: Andreas Geisenhainer <Andreas.Geisenhainer@atsonline.de>
Cc: barebox@lists.infradead.org

On Wed, Apr 27, 2016 at 04:21:37PM +0200, Andreas Geisenhainer wrote:
> Remove information about DATA from help text.
> 
> Signed-off-by: Andreas Geisenhainer <Andreas.Geisenhainer@atsonline.de>
> ---
>  commands/i2c.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/commands/i2c.c b/commands/i2c.c
> index e6750e3..ae7f7fc 100644
> --- a/commands/i2c.c
> +++ b/commands/i2c.c
> @@ -243,7 +243,7 @@ BAREBOX_CMD_HELP_END
>  BAREBOX_CMD_START(i2c_read)
>  	.cmd		= do_i2c_read,
>  	BAREBOX_CMD_DESC("read from an i2c device")
> -	BAREBOX_CMD_OPTS("[-bacrwv] DATA...")
> +	BAREBOX_CMD_OPTS("[-bacrwv]")
>  	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
>  	BAREBOX_CMD_HELP(cmd_i2c_read_help)
>  BAREBOX_CMD_END
> -- 
> 2.8.1
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
