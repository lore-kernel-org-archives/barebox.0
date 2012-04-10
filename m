Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SHVzF-0005Tr-Lb
 for barebox@lists.infradead.org; Tue, 10 Apr 2012 07:59:38 +0000
Date: Tue, 10 Apr 2012 09:59:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120410075931.GT3852@pengutronix.de>
References: <20120406153652.GA621@greenwood>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120406153652.GA621@greenwood>
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
Subject: Re: [PATCH] Remove EXPERIMENTAL flag from loady.
To: Uwe Hermann <uwe@hermann-uwe.de>
Cc: barebox@lists.infradead.org

On Fri, Apr 06, 2012 at 05:36:52PM +0200, Uwe Hermann wrote:
> From bd6c5c884337ae2d4ef41d85d59c2d5ec525f8a5 Mon Sep 17 00:00:00 2001
> From: Uwe Hermann <uwe@hermann-uwe.de>
> Date: Fri, 6 Apr 2012 17:30:01 +0200
> 
> The loady command seems to work just fine (tested on an S3C2440 target).
> 
> Also, mark it as TRISTATE like loadb and loads.
> 
> Signed-off-by: Uwe Hermann <uwe@hermann-uwe.de>

Applied, thanks

Sascha

> ---
>  commands/Kconfig |    3 +--
>  1 files changed, 1 insertions(+), 2 deletions(-)
> 
> diff --git a/commands/Kconfig b/commands/Kconfig
> index 7a8811e..d7fdf04 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -222,8 +222,7 @@ config CMD_LOADB
>  
>  config CMD_LOADY
>  	select CRC16
> -	depends on EXPERIMENTAL
> -	bool
> +	tristate
>  	prompt "loady"
>  
>  config CMD_LOADS
> -- 
> 1.7.6.3
> 
> 
> -- 
> http://hermann-uwe.de     | http://sigrok.org
> http://randomprojects.org | http://unmaintained-free-software.org
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
