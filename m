Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZybQa-0003n8-Mx
 for barebox@lists.infradead.org; Tue, 17 Nov 2015 08:15:49 +0000
Date: Tue, 17 Nov 2015 09:15:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151117081526.GM8526@pengutronix.de>
References: <1447549279-11694-1-git-send-email-u74147@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1447549279-11694-1-git-send-email-u74147@gmail.com>
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
Subject: Re: [PATCH] lib: readline support ctrl-l to clear screen
To: Du Huanpeng <u74147@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, Nov 15, 2015 at 09:01:19AM +0800, Du Huanpeng wrote:
> maybe it is easier to press ctrl-l to clear the screen than type
> 'clear' command.
> 
> Signed-off-by: Du Huanpeng <u74147@gmail.com>
> ---
>  lib/readline.c | 9 +++++++++
>  1 file changed, 9 insertions(+)

Applied, thanks. Antony is right, please explain the changes to the last
version next time.

Sascha

> 
> diff --git a/lib/readline.c b/lib/readline.c
> index 14dd311..170effb 100644
> --- a/lib/readline.c
> +++ b/lib/readline.c
> @@ -262,6 +262,15 @@ int readline(const char *prompt, char *buf, int len)
>  				eol_num--;
>  			}
>  			break;
> +		case CTL_CH('l'):
> +			printf(ANSI_CLEAR_SCREEN);
> +			buf[eol_num] = 0;
> +			printf("%s%s", prompt, buf);
> +			wlen = eol_num - num;
> +			while (wlen--) {
> +				getcmd_putch(CTL_BACKSPACE);
> +			}
> +			break;
>  		case BB_KEY_ERASE_TO_EOL:
>  			ERASE_TO_EOL();
>  			break;
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
