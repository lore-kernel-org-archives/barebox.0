Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJAaQ-0004Sf-Rg
 for barebox@lists.infradead.org; Tue, 31 Mar 2020 06:41:24 +0000
Date: Tue, 31 Mar 2020 08:41:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200331064120.GH27288@pengutronix.de>
References: <20200330145717.667403-1-ahmad@a3f.at>
 <20200330145717.667403-13-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200330145717.667403-13-ahmad@a3f.at>
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
Subject: Re: [PATCH 12/12] PWM: add support for STM32
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>

On Mon, Mar 30, 2020 at 04:57:17PM +0200, Ahmad Fatoum wrote:
> From: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> This driver adds support for PWM driver on STM32 platform
> based on the Linux v5.4 support.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/dts/stm32mp151.dtsi     |  12 +
>  drivers/mfd/Kconfig              |   7 +
>  drivers/mfd/Makefile             |   1 +
>  drivers/mfd/stm32-timers.c       |  74 ++++++
>  drivers/pwm/Kconfig              |   6 +
>  drivers/pwm/Makefile             |   1 +
>  drivers/pwm/pwm-stm32.c          | 400 +++++++++++++++++++++++++++++++
>  include/linux/mfd/stm32-timers.h |  97 ++++++++
>  8 files changed, 598 insertions(+)
>  create mode 100644 drivers/mfd/stm32-timers.c
>  create mode 100644 drivers/pwm/pwm-stm32.c
>  create mode 100644 include/linux/mfd/stm32-timers.h
> 
> diff --git a/arch/arm/dts/stm32mp151.dtsi b/arch/arm/dts/stm32mp151.dtsi
> index 2a70a747e76e..a0870c446f45 100644
> --- a/arch/arm/dts/stm32mp151.dtsi
> +++ b/arch/arm/dts/stm32mp151.dtsi
> @@ -21,6 +21,18 @@
>  		mmc0 = &sdmmc1;
>  		mmc1 = &sdmmc2;
>  		mmc2 = &sdmmc3;
> +		pwm1 = &{/soc/timer@44000000/pwm};
> +		pwm2 = &{/soc/timer@40000000/pwm};
> +		pwm3 = &{/soc/timer@40001000/pwm};
> +		pwm4 = &{/soc/timer@40002000/pwm};
> +		pwm5 = &{/soc/timer@40003000/pwm};
> +		pwm8 = &{/soc/timer@44001000/pwm};
> +		pwm12 = &{/soc/timer@40006000/pwm};
> +		pwm13 = &{/soc/timer@40007000/pwm};
> +		pwm14 = &{/soc/timer@40008000/pwm};
> +		pwm15 = &{/soc/timer@44006000/pwm};
> +		pwm16 = &{/soc/timer@44007000/pwm};
> +		pwm17 = &{/soc/timer@44008000/pwm};

The other aliases start counting at 0. Why not the PWMs?

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
