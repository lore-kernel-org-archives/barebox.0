Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gqz6W-0005db-DD
 for barebox@lists.infradead.org; Tue, 05 Feb 2019 11:41:30 +0000
Date: Tue, 5 Feb 2019 12:41:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190205114125.46salcm6mxpfm4sp@pengutronix.de>
References: <1549025215-39413-1-git-send-email-r.karszniewicz@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1549025215-39413-1-git-send-email-r.karszniewicz@phytec.de>
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
Subject: Re: [PATCH] readline: add ctrl-u (unix-line-discard)
To: Robert Karszniewicz <r.karszniewicz@phytec.de>
Cc: barebox@lists.infradead.org

On Fri, Feb 01, 2019 at 01:46:55PM +0100, Robert Karszniewicz wrote:
> Signed-off-by: Robert Karszniewicz <r.karszniewicz@phytec.de>
> ---
>  lib/readline.c | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

Sascha

> 
> diff --git a/lib/readline.c b/lib/readline.c
> index 904a77639..d026af110 100644
> --- a/lib/readline.c
> +++ b/lib/readline.c
> @@ -290,6 +290,7 @@ int readline(const char *prompt, char *buf, int len)
>  			insert = !insert;
>  			break;
>  		case BB_KEY_ERASE_LINE:
> +		case CTL_CH('u'):
>  			BEGINNING_OF_LINE();
>  			ERASE_TO_EOL();
>  			break;
> -- 
> 2.11.0
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
