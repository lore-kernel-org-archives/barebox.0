Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T6GaP-0002w5-WE
 for barebox@lists.infradead.org; Tue, 28 Aug 2012 07:51:46 +0000
Date: Tue, 28 Aug 2012 09:51:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120828075142.GZ26594@pengutronix.de>
References: <1345464595-14688-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1345464595-14688-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] arm: do not enable the previous bootz command
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Aug 20, 2012 at 02:09:55PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> as we now support via bootm
> 
> on ixp4xx we still need it so keep it so far.
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Applied, thanks

Sascha

> ---
>  commands/Kconfig |    1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/commands/Kconfig b/commands/Kconfig
> index 92a8152..9e1c957 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -406,7 +406,6 @@ config CMD_UIMAGE
>  
>  config CMD_BOOTZ
>  	tristate
> -	default y
>  	depends on ARM
>  	prompt "bootz"
>  	help
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
