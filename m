Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ju802-0006c5-W2
 for barebox@lists.infradead.org; Sat, 11 Jul 2020 05:24:35 +0000
References: <20200703054147.2990-1-a.fatoum@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <563cf039-6577-d5da-dd1a-6e2331195c5d@pengutronix.de>
Date: Sat, 11 Jul 2020 07:24:33 +0200
MIME-Version: 1.0
In-Reply-To: <20200703054147.2990-1-a.fatoum@pengutronix.de>
Content-Language: en-US
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
Subject: Re: [PATCH] fixup! clk: at91: sync with Linux v5.8-rc1
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>



On 7/3/20 7:41 AM, Ahmad Fatoum wrote:
> syscon_node_to_regmap() will make the created regmap get and enable the
> first clock it can parse from the device tree. This clock is not needed to
> access the registers and should not be enabled at that time.
> 
> Use the device_node_to_regmap to solve that as it looks up the regmap in
> the same list but doesn't care about the clocks.
> 
> This fix already happened upstream in 6956eb33abb5 ("clk: at91: fix
> possible deadlock") for the drivers that had been migrated to the new
> clk binding back then and was imported into barebox.
> This does the same for the new drivers as well. A patch for this is
> under way for Linux.

FTR: I posted this upstream as well:
https://lore.kernel.org/linux-clk/20200703073236.23923-1-a.fatoum@pengutronix.de/

> 
> Without this patch, the sama5d3 is _very_ slow, whenever it tries to get
> the regmap.
> 
> [afa: please squash, I missed to do so when i sent out the series]
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/clk/at91/at91sam9g45.c | 2 +-
>  drivers/clk/at91/at91sam9n12.c | 2 +-
>  drivers/clk/at91/sam9x60.c     | 2 +-
>  drivers/clk/at91/sama5d3.c     | 2 +-
>  4 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/clk/at91/at91sam9g45.c b/drivers/clk/at91/at91sam9g45.c
> index af623cc7f0b6..a00a6a434284 100644
> --- a/drivers/clk/at91/at91sam9g45.c
> +++ b/drivers/clk/at91/at91sam9g45.c
> @@ -110,7 +110,7 @@ static void __init at91sam9g45_pmc_setup(struct device_node *np)
>  		return;
>  	mainxtal_name = of_clk_get_parent_name(np, i);
>  
> -	regmap = syscon_node_to_regmap(np);
> +	regmap = device_node_to_regmap(np);
>  	if (IS_ERR(regmap))
>  		return;
>  
> diff --git a/drivers/clk/at91/at91sam9n12.c b/drivers/clk/at91/at91sam9n12.c
> index 5ed4aeed4a97..f06058febd52 100644
> --- a/drivers/clk/at91/at91sam9n12.c
> +++ b/drivers/clk/at91/at91sam9n12.c
> @@ -131,7 +131,7 @@ static void __init at91sam9n12_pmc_setup(struct device_node *np)
>  		return;
>  	mainxtal_name = of_clk_get_parent_name(np, i);
>  
> -	regmap = syscon_node_to_regmap(np);
> +	regmap = device_node_to_regmap(np);
>  	if (IS_ERR(regmap))
>  		return;
>  
> diff --git a/drivers/clk/at91/sam9x60.c b/drivers/clk/at91/sam9x60.c
> index 09f3e6e06977..9d54fa7fe1f4 100644
> --- a/drivers/clk/at91/sam9x60.c
> +++ b/drivers/clk/at91/sam9x60.c
> @@ -182,7 +182,7 @@ static void __init sam9x60_pmc_setup(struct device_node *np)
>  		return;
>  	mainxtal_name = of_clk_get_parent_name(np, i);
>  
> -	regmap = syscon_node_to_regmap(np);
> +	regmap = device_node_to_regmap(np);
>  	if (IS_ERR(regmap))
>  		return;
>  
> diff --git a/drivers/clk/at91/sama5d3.c b/drivers/clk/at91/sama5d3.c
> index 24aec6a71a3f..3f305ea5dd00 100644
> --- a/drivers/clk/at91/sama5d3.c
> +++ b/drivers/clk/at91/sama5d3.c
> @@ -127,7 +127,7 @@ static void __init sama5d3_pmc_setup(struct device_node *np)
>  		return;
>  	mainxtal_name = of_clk_get_parent_name(np, i);
>  
> -	regmap = syscon_node_to_regmap(np);
> +	regmap = device_node_to_regmap(np);
>  	if (IS_ERR(regmap))
>  		return;
>  
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
