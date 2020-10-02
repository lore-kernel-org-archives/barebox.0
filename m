Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kOCaq-0000vS-B8
 for barebox@lists.infradead.org; Fri, 02 Oct 2020 04:22:53 +0000
Date: Fri, 2 Oct 2020 06:22:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201002042251.GT11648@pengutronix.de>
References: <20200930135603.8250-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200930135603.8250-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH master] ARM: psci: fix NULL pointer dereference on CPU idle
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, lst@pengutronix.de, jbe@pengutronix.de

On Wed, Sep 30, 2020 at 03:56:03PM +0200, Ahmad Fatoum wrote:
> We guard against cpu_off being NULL, but dereference cpu_suspend
> instead.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> Cc: lst@pengutronix.de
> Cc: jbe@pengutronix.de
> Cc: jlu@pengutronix.de
> ---
>  arch/arm/cpu/psci.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/cpu/psci.c b/arch/arm/cpu/psci.c
> index 436561f8649f..d1056e0659da 100644
> --- a/arch/arm/cpu/psci.c
> +++ b/arch/arm/cpu/psci.c
> @@ -89,7 +89,7 @@ static unsigned long psci_cpu_suspend(u32 power_state, unsigned long entry,
>  {
>  	psci_printf("%s\n", __func__);
>  
> -	if (psci_ops->cpu_off)
> +	if (psci_ops->cpu_suspend)
>  		return psci_ops->cpu_suspend(power_state, entry, context_id);
>  
>  	return ARM_PSCI_RET_NOT_SUPPORTED;
> -- 
> 2.28.0
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
