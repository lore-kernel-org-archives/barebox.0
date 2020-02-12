Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1mT9-0001jF-56
 for barebox@lists.infradead.org; Wed, 12 Feb 2020 07:30:00 +0000
Date: Wed, 12 Feb 2020 08:29:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200212072955.xinxpw5hne4ekpk3@pengutronix.de>
References: <20200210130545.6161-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200210130545.6161-1-ahmad@a3f.at>
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
Subject: Re: [PATCH] ARM: stm32mp: dk2: barebox_set_model to shorter name
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org

On Mon, Feb 10, 2020 at 02:05:45PM +0100, Ahmad Fatoum wrote:
> The full "STMicroelectronics STM32MP157C-DK2 Discovery Board" is a tad
> too long. Abbreviate it to STM32MP157C-DK2 instead.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  arch/arm/boards/stm32mp157c-dk2/board.c | 2 ++
>  1 file changed, 2 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/stm32mp157c-dk2/board.c b/arch/arm/boards/stm32mp157c-dk2/board.c
> index 9cd5b4ee1ff4..6da99d9353ac 100644
> --- a/arch/arm/boards/stm32mp157c-dk2/board.c
> +++ b/arch/arm/boards/stm32mp157c-dk2/board.c
> @@ -14,6 +14,8 @@ static int dk2_postcore_init(void)
>  	stm32mp_bbu_mmc_register_handler("sd", "/dev/mmc0.ssbl",
>  					 BBU_HANDLER_FLAG_DEFAULT);
>  
> +	barebox_set_model("STM32MP157C-DK2");
> +
>  	return 0;
>  }
>  postcore_initcall(dk2_postcore_init);
> -- 
> 2.20.1
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
