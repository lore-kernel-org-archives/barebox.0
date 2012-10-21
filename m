Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TPr0g-0004lo-6H
 for barebox@lists.infradead.org; Sun, 21 Oct 2012 08:35:50 +0000
Date: Sun, 21 Oct 2012 10:35:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121021083548.GY27665@pengutronix.de>
References: <1350550735-25666-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1350550735-25666-1-git-send-email-antonynpavlov@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] commands/Kconfig: move 'ln' to the 'file commands' section
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Oct 18, 2012 at 12:58:55PM +0400, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

Applied, thanks

Sascha

> ---
>  commands/Kconfig |    8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/commands/Kconfig b/commands/Kconfig
> index d89cda9..546e58e 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -57,10 +57,6 @@ config CMD_READLINE
>  	tristate
>  	prompt "readline"
>  
> -config CMD_LN
> -	tristate
> -	prompt "ln"
> -
>  config CMD_TRUE
>  	tristate
>  	default y
> @@ -216,6 +212,10 @@ config CMD_DIRNAME
>  	  Strip last component of file name and store the result in a
>  	  environment variable
>  
> +config CMD_LN
> +	tristate
> +	prompt "ln"
> +
>  config CMD_READLINK
>  	tristate
>  	prompt "readlink"
> -- 
> 1.7.10.4
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
