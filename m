Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jnj0a-0003jQ-O3
 for barebox@lists.infradead.org; Tue, 23 Jun 2020 13:30:43 +0000
References: <20200623132521.4727-1-a.fatoum@pengutronix.de>
 <20200623132521.4727-2-a.fatoum@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <8e1b6fed-6161-09b4-bc65-aee57c1de153@pengutronix.de>
Date: Tue, 23 Jun 2020 15:30:39 +0200
MIME-Version: 1.0
In-Reply-To: <20200623132521.4727-2-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 1/4] ARM: vexpress: dts: use direct &phandle instead of
 &{/path}
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>



On 6/23/20 3:25 PM, Ahmad Fatoum wrote:
> 6940ba22c66a ("dts: update to v5.3-rc1") added a label that we can
> reference instead of relying on the path not changing. Make use of it,
> so the compilation doesn't fail along with the v5.8-rc1 dts/ sync.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> [afa: board is still broken, because the "arm,arm-firmware-suite"
> partitioning is unknown to barebox, but at least it's not doubly
> broken.]

I see now that Roland had fixed it for arch/arm/dts/vexpress-v2p-ca9.dts.
Please skip this patch. I send it out again with Roland's fix incorporated. 

> ---
>  arch/arm/dts/vexpress-v2p-ca15.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/dts/vexpress-v2p-ca15.dts b/arch/arm/dts/vexpress-v2p-ca15.dts
> index a4cdc8d1f5f0..d02b8ce523cf 100644
> --- a/arch/arm/dts/vexpress-v2p-ca15.dts
> +++ b/arch/arm/dts/vexpress-v2p-ca15.dts
> @@ -7,7 +7,7 @@
>  	};
>  };
>  
> -&{/bus@8000000/motherboard/flash@0,00000000} {
> +&nor_flash {
>  	#address-cells = <1>;
>  	#size-cells = <1>;
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
