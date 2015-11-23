Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a0l0Q-0003pH-En
 for barebox@lists.infradead.org; Mon, 23 Nov 2015 06:53:43 +0000
Date: Mon, 23 Nov 2015 07:53:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151123065320.GO11966@pengutronix.de>
References: <20151120114515.GA3731@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20151120114515.GA3731@gmail.com>
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
Subject: Re: [PATCH] readline: Kconfig: fix typo
To: Wjatscheslaw Stoljarski <wjatscheslaw.stoljarski@kiwigrid.com>
Cc: barebox@lists.infradead.org

On Fri, Nov 20, 2015 at 12:45:25PM +0100, Wjatscheslaw Stoljarski wrote:
> Signed-off-by: Wjatscheslaw Stoljarski <wjatscheslaw.stoljarski@kiwigrid.com>
> ---
>  commands/Kconfig | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/commands/Kconfig b/commands/Kconfig
> index 0853ffd..1743670 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -1493,9 +1493,9 @@ config CMD_SPLASH
>  
>  config CMD_READLINE
>  	tristate
> -	prompt "Readline"
> +	prompt "readline"
>  	help
> -	  rompt for user input
> +	  Prompt for user input
>  
>  	  Usage: readline PROMPT VAR
>  
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
