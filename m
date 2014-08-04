Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XEMwG-0005iQ-D4
 for barebox@lists.infradead.org; Mon, 04 Aug 2014 18:24:56 +0000
Date: Mon, 4 Aug 2014 20:24:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140804182430.GF23235@pengutronix.de>
References: <1406985146-11245-1-git-send-email-ezequiel.garcia@free-electrons.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1406985146-11245-1-git-send-email-ezequiel.garcia@free-electrons.com>
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
Subject: Re: [PATCH] trivial: Correct word spelling,
 s/miscelleanous/miscellaneous
To: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Cc: barebox@lists.infradead.org

On Sat, Aug 02, 2014 at 10:12:26AM -0300, Ezequiel Garcia wrote:
> Signed-off-by: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
> ---
>  Documentation/commands.rst | 2 +-
>  commands/Kconfig           | 4 ++--
>  2 files changed, 3 insertions(+), 3 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/Documentation/commands.rst b/Documentation/commands.rst
> index 0dc9e1b..261af2a 100644
> --- a/Documentation/commands.rst
> +++ b/Documentation/commands.rst
> @@ -73,7 +73,7 @@ Hardware Manipulation
>  
>     commands/hwmanip/*
>  
> -Miscelleanous
> +Miscellaneous
>  -------------
>  .. toctree::
>     :titlesonly:
> diff --git a/commands/Kconfig b/commands/Kconfig
> index 0765de8..3a49baf 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -1881,7 +1881,7 @@ endmenu
>  
>  
>  
> -menu "Miscelleanous"
> +menu "Miscellaneous"
>  
>  config CMD_2048
>  	tristate
> @@ -1998,7 +1998,7 @@ config CMD_TIME
>  	  Note: This command depends on COMMAND being interruptible,
>  	  otherwise the timer may overrun resulting in incorrect results
>  
> -# end Miscelleanous commands
> +# end Miscellaneous commands
>  endmenu
>  
>  
> -- 
> 2.0.1
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
