Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XoTDh-0006Dh-Ot
 for barebox@lists.infradead.org; Wed, 12 Nov 2014 08:24:06 +0000
Date: Wed, 12 Nov 2014 09:23:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141112082344.GL30369@pengutronix.de>
References: <1415778114-41864-1-git-send-email-j.weitzel@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1415778114-41864-1-git-send-email-j.weitzel@phytec.de>
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
Subject: Re: [PATCH 1/2] xymodem: select CRC16 from lib
To: Jan Weitzel <j.weitzel@phytec.de>
Cc: barebox@lists.infradead.org

On Wed, Nov 12, 2014 at 08:41:53AM +0100, Jan Weitzel wrote:
> Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
> ---
>  commands/Kconfig | 1 -
>  lib/Kconfig      | 1 +
>  2 files changed, 1 insertion(+), 1 deletion(-)

Applied this one, thanks

Sascha

> 
> diff --git a/commands/Kconfig b/commands/Kconfig
> index bef5847..494a019 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -481,7 +481,6 @@ config CMD_LOADS
>  	  Load S-Record file over serial line with offset OFFS.
>  
>  config CMD_LOADY
> -	select CRC16
>  	select XYMODEM
>  	depends on !CONSOLE_NONE
>  	tristate
> diff --git a/lib/Kconfig b/lib/Kconfig
> index d4095fd..62695f1 100644
> --- a/lib/Kconfig
> +++ b/lib/Kconfig
> @@ -41,6 +41,7 @@ config QSORT
>  
>  config XYMODEM
>  	bool
> +	select CRC16
>  
>  config LIBSCAN
>  	bool
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
