Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wslrh-0006mb-Ug
 for barebox@lists.infradead.org; Fri, 06 Jun 2014 04:34:54 +0000
Date: Fri, 6 Jun 2014 06:34:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140606043430.GN15686@pengutronix.de>
References: <1401976003-30679-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1401976003-30679-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH] 2048: Reset score on startup
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Thu, Jun 05, 2014 at 05:46:43PM +0400, Alexander Shiyan wrote:
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  commands/2048.c | 2 ++
>  1 file changed, 2 insertions(+)

Applied, thanks. I'm considering a stable release for this ;)

Sascha

> 
> diff --git a/commands/2048.c b/commands/2048.c
> index 26c9e6c..5ceb5cf 100644
> --- a/commands/2048.c
> +++ b/commands/2048.c
> @@ -337,6 +337,8 @@ static int do_2048(int argc, char *argv[])
>  		return test();
>  	}
>  
> +	score = 0;
> +
>  	printf("\033[?25l\033[2J\033[H");
>  
>  	memset(board,0,sizeof(board));
> -- 
> 1.8.5.5
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
