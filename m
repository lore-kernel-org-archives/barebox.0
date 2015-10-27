Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zr6SB-0003WC-Ho
 for barebox@lists.infradead.org; Tue, 27 Oct 2015 15:46:28 +0000
Date: Tue, 27 Oct 2015 16:46:05 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151027154605.GM25308@pengutronix.de>
References: <1445883029-23173-1-git-send-email-alex.aring@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1445883029-23173-1-git-send-email-alex.aring@gmail.com>
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
Subject: Re: [PATCH 1/3] loadb: add missing brackets in help
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Oct 26, 2015 at 07:10:27PM +0100, Alexander Aring wrote:
> This patch adds missing brackets in the help text of loadb command.
> 
> Signed-off-by: Alexander Aring <alex.aring@gmail.com>

Applied, thanks

Sascha

> ---
>  commands/loadb.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/commands/loadb.c b/commands/loadb.c
> index be5830d..aabb00a 100644
> --- a/commands/loadb.c
> +++ b/commands/loadb.c
> @@ -681,9 +681,9 @@ static int do_load_serial_bin(int argc, char *argv[])
>  BAREBOX_CMD_HELP_START(loadb)
>  BAREBOX_CMD_HELP_TEXT("")
>  BAREBOX_CMD_HELP_TEXT("Options:")
> -BAREBOX_CMD_HELP_OPT("-f FILE", "download to FILE (default image.bin")
> +BAREBOX_CMD_HELP_OPT("-f FILE", "download to FILE (default image.bin)")
>  BAREBOX_CMD_HELP_OPT("-o OFFS", "destination file OFFSet (default 0)")
> -BAREBOX_CMD_HELP_OPT("-b BAUD", "baudrate for download (default: console baudrate")
> +BAREBOX_CMD_HELP_OPT("-b BAUD", "baudrate for download (default: console baudrate)")
>  BAREBOX_CMD_HELP_END
>  
>  BAREBOX_CMD_START(loadb)
> -- 
> 2.6.1
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
