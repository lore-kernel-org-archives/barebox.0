Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lAUHz-0006jG-0M
 for barebox@lists.infradead.org; Fri, 12 Feb 2021 08:59:00 +0000
Date: Fri, 12 Feb 2021 09:58:57 +0100
Message-ID: <20210212085857.GI19583@pengutronix.de>
References: <20210211213052.791336-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210211213052.791336-1-ahmad@a3f.at>
From: Sascha Hauer <sha@pengutronix.de>
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
Subject: Re: [PATCH] commands: Kconfig: setenv: fix reference to unknown symbol
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org

On Thu, Feb 11, 2021 at 10:30:52PM +0100, Ahmad Fatoum wrote:
> In Kconfig files, the symbols don't have a CONFIG_ prefix. Fix this.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  commands/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/commands/Kconfig b/commands/Kconfig
> index b672f0c16a85..520ad4b1dea3 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -746,7 +746,7 @@ config CMD_SAVEENV
>  config CMD_SETENV
>  	tristate
>  	default y
> -	depends on !CONFIG_SHELL_NONE
> +	depends on !SHELL_NONE
>  	prompt "setenv"
>  	help
>  	  Set environment variable
> -- 
> 2.30.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
