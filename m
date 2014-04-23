Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WctLy-0004ux-9Y
 for barebox@lists.infradead.org; Wed, 23 Apr 2014 09:20:30 +0000
Date: Wed, 23 Apr 2014 11:20:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140423092008.GH5858@pengutronix.de>
References: <1397555958-28666-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1397555958-28666-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] commands: loady: fix Y-Modem/G option name in help message
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Apr 15, 2014 at 01:59:18PM +0400, Antony Pavlov wrote:
> Actually loady command uses '-g' option for Y-Modem/G mode
> selection; see loady() function:
> 
>     while ((opt = getopt(argc, argv, "b:t:g")) > 0) {
>         switch (opt) {
>     ...
>         case 'g':
>             is_ymodemg = 1;
>             break;
> 
> By mistake help message show '-y' option for Y-Modem/G mode
> selection.
> 
> This patch fixes the problem.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

Applied, thanks

Sascha

> ---
>  commands/loadxy.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/commands/loadxy.c b/commands/loadxy.c
> index 7a91286..93a423c 100644
> --- a/commands/loadxy.c
> +++ b/commands/loadxy.c
> @@ -241,7 +241,7 @@ BAREBOX_CMD_END
>  
>  static const __maybe_unused char cmd_loady_help[] =
>  	"[OPTIONS]\n"
> -	"  -y        - use Y-Modem/G (only for lossless tty as USB)\n"
> +	"  -g        - use Y-Modem/G (only for lossless tty as USB)\n"
>  	"  -t name   - console device name to use - defaults to current console\n"
>  	"  -b baud   - baudrate at which to download - defaults to console baudrate\n";
>  
> -- 
> 1.9.0
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
