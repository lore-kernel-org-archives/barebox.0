Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hFveT-0003kN-Id
 for barebox@lists.infradead.org; Mon, 15 Apr 2019 07:03:39 +0000
References: <20190413084928.27923-1-r.czerwinski@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <d3680052-5383-a954-25e0-4901be74afc1@pengutronix.de>
Date: Mon, 15 Apr 2019 09:03:32 +0200
MIME-Version: 1.0
In-Reply-To: <20190413084928.27923-1-r.czerwinski@pengutronix.de>
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
Subject: Re: [PATCH] ARM: imx: disable IPU QoS setup for i.MX6 UL/ULL
To: barebox@lists.infradead.org
Cc: lst@pengutronix.de

Hello Rouven,

On 13/4/19 10:49, Rouven Czerwinski wrote:
> Neither of the two devices has an IPU, disable the setup for both SoCs.
> 
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> ---
>  arch/arm/mach-imx/imx6.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
> index 01b4274ed3..6c08f22b7a 100644
> --- a/arch/arm/mach-imx/imx6.c
> +++ b/arch/arm/mach-imx/imx6.c
> @@ -117,7 +117,8 @@ static void imx6_setup_ipu_qos(void)
>  	uint32_t val;
>  
>  	if (!cpu_mx6_is_mx6q() && !cpu_mx6_is_mx6d() &&
> -	    !cpu_mx6_is_mx6dl() && cpu_mx6_is_mx6s())
> +	    !cpu_mx6_is_mx6dl() && (cpu_mx6_is_mx6s() || cpu_mx6_is_mx6ul() ||
> +				    cpu_is_mx6ull()))

That looks wrong to me. The patch that introduced it was 4e6e8f73e9
("ARM: imx6: don't execute IPU QoS setup on MX6 SX/SL"), but instead
it bails at the Solo, not the SX and SL.

It seems to me, the original intent was
  	if (!cpu_mx6_is_mx6q() && !cpu_mx6_is_mx6d() &&
 	    !cpu_mx6_is_mx6dl() && !cpu_mx6_is_mx6s())

which would be correct and solve your issue with the UL(L) as well.
Applying such a change however would break backwards-compatibility,
but it was agreed[1] that fixing these quriky conditionals at the
cost of backwards-compatibility is acceptable.


Generally, you should always explicitly list the _affected_ SoC variants in
such conditionals, not the one which _aren't currently_ affected.
Otherwise you risk inconsistencies when code is updated to support newer
SoC variants.

[1]: Message-Id:<bbe97cb3-2e21-2eb2-a727-5b1014d3fd73@pengutronix.de>


Cheers
Ahmad
 


>  		return;
>  
>  	val = readl(iomux + IOMUXC_GPR4);
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
