Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOICa-0001Un-HT
 for barebox@lists.infradead.org; Tue, 14 Apr 2020 09:49:59 +0000
Date: Tue, 14 Apr 2020 11:49:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200414094954.GF27288@pengutronix.de>
References: <20200406055435.2330-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200406055435.2330-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH] commands: remove CONFIG_ prefix from Kconfig symbol
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Apr 06, 2020 at 07:54:35AM +0200, Ahmad Fatoum wrote:
> Kconfig symbols, unlike their preprocessor counterparts, don't have this
> prefix. Drop it.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  commands/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/commands/Kconfig b/commands/Kconfig
> index 7784966282ac..a0c28289834b 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -1871,7 +1871,7 @@ config CMD_SMC
>  	bool
>  	depends on ARM_SMCCC
>  	prompt "PSCI test command"
> -	default CONFIG_ARM_PSCI_DEBUG
> +	default ARM_PSCI_DEBUG
>  	help
>  	  Secure monitor code test command
>  
> -- 
> 2.26.0.rc2
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
