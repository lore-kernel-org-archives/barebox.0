Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.21])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKduP-0001l9-Ud
 for barebox@lists.infradead.org; Wed, 16 Oct 2019 07:39:51 +0000
References: <1571210705-18315-1-git-send-email-sendpatch@qq.com>
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <e8cdac6a-dc25-57c2-f6e1-c2238ba2e6eb@rempel-privat.de>
Date: Wed, 16 Oct 2019 09:39:01 +0200
MIME-Version: 1.0
In-Reply-To: <1571210705-18315-1-git-send-email-sendpatch@qq.com>
Content-Language: en-US
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
Subject: Re: [PATCH v3] readline: make ctrl-u to work like linux console
To: sendpatch@qq.com, barebox@lists.infradead.org
Cc: DU HUANPENG <u74147@gmail.com>

Am 16.10.19 um 09:25 schrieb sendpatch@qq.com:
> From: DU HUANPENG <u74147@gmail.com>
>
> currtly, the ctrl-u discards the whole line, in most linux
> boxes, ctrl-u just erase characters before cursor to the
> begginning of the line. this patch make ctrl-u to do this.
>
> Signed-off-by: DU HUANPENG <u74147@gmail.com>
> ---
>  lib/readline.c | 26 ++++++++++++++++++++++++--
>  1 file changed, 24 insertions(+), 2 deletions(-)
>
> diff --git a/lib/readline.c b/lib/readline.c
> index d026af1..3d5fafd 100644
> --- a/lib/readline.c
> +++ b/lib/readline.c
> @@ -188,9 +188,10 @@ int readline(const char *prompt, char *buf, int len)
>  	unsigned wlen;
>  	int ichar;
>  	int insert = 1;
> +	int i;
>  #ifdef CONFIG_AUTO_COMPLETE
>  	char tmp;
> -	int reprint, i;
> +	int reprint;
>  	char *completestr;
>
>  	complete_reset();
> @@ -290,10 +291,31 @@ int readline(const char *prompt, char *buf, int len)
>  			insert = !insert;
>  			break;
>  		case BB_KEY_ERASE_LINE:
> -		case CTL_CH('u'):
>  			BEGINNING_OF_LINE();
>  			ERASE_TO_EOL();
>  			break;
> +		case CTL_CH('u'):
> +			if (num <= eol_num) {

i doubt num can be ever bigger then eol_num. or do i missing some thing?

> +				for (i = num; i < eol_num; i++)
> +					buf[i-num] = buf[i];
> +				buf[i] = '\0';
> +
> +				for (i = 0; i < num; i++)
> +					getcmd_putch(CTL_BACKSPACE);
> +				for (i = 0; i < eol_num; i++)
> +					getcmd_putch(' ');
> +				for (i = 0; i < eol_num; i++)
> +					getcmd_putch(CTL_BACKSPACE);
> +
> +				eol_num -= num;
> +				num = 0;
> +
> +				for (i = 0 ; i < eol_num; i++)
> +					getcmd_putch(buf[i]);
> +				for (i = 0; i < eol_num; i++)
> +					getcmd_putch(CTL_BACKSPACE);
> +			}
> +			break;
>  		case DEL:
>  		case BB_KEY_DEL7:
>  		case 8:
>


--
Regards,
Oleksij

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
