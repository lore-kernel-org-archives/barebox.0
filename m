Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kOCl5-0001mi-Th
 for barebox@lists.infradead.org; Fri, 02 Oct 2020 04:33:28 +0000
Date: Fri, 2 Oct 2020 06:33:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201002043326.GV11648@pengutronix.de>
References: <20201001094820.21931-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201001094820.21931-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 1/2] ARM: stm32mp: revision: make CPU type accessible to
 PBL
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Oct 01, 2020 at 11:48:20AM +0200, Ahmad Fatoum wrote:
> There is nothing holding holding us back from reading SoC type in
> the PBL. Migrate the necessary definitions to the header to allow
> for this.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/mach-stm32mp/include/mach/revision.h | 51 ++++++++++++++++++
>  arch/arm/mach-stm32mp/init.c                  | 53 +------------------
>  2 files changed, 53 insertions(+), 51 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-stm32mp/include/mach/revision.h b/arch/arm/mach-stm32mp/include/mach/revision.h
> index 2eb4d44b3368..2ef8ef30c3ae 100644
> --- a/arch/arm/mach-stm32mp/include/mach/revision.h
> +++ b/arch/arm/mach-stm32mp/include/mach/revision.h
> @@ -6,6 +6,9 @@
>  #ifndef __MACH_CPUTYPE_H__
>  #define __MACH_CPUTYPE_H__
>  
> +#include <mach/bsec.h>
> +#include <asm/io.h>
> +#include <mach/stm32.h>
>  
>  /* ID = Device Version (bit31:16) + Device Part Number (RPN) (bit7:0)
>   * 157X: 2x Cortex-A7, Cortex-M4, CAN FD, GPU, DSI
> @@ -45,4 +48,52 @@ int stm32mp_package(void);
>  #define cpu_is_stm32mp151c() (stm32mp_cputype() == CPU_STM32MP151Cxx)
>  #define cpu_is_stm32mp151a() (stm32mp_cputype() == CPU_STM32MP151Axx)
>  
> +/* DBGMCU register */
> +#define DBGMCU_APB4FZ1		(STM32_DBGMCU_BASE + 0x2C)
> +#define DBGMCU_IDC		(STM32_DBGMCU_BASE + 0x00)
> +#define DBGMCU_IDC_DEV_ID_MASK	GENMASK(11, 0)
> +#define DBGMCU_IDC_DEV_ID_SHIFT	0
> +#define DBGMCU_IDC_REV_ID_MASK	GENMASK(31, 16)
> +#define DBGMCU_IDC_REV_ID_SHIFT	16
> +
> +#define RCC_DBGCFGR		(STM32_RCC_BASE + 0x080C)
> +#define RCC_DBGCFGR_DBGCKEN	BIT(8)
> +
> +/* BSEC OTP index */
> +#define BSEC_OTP_RPN	1
> +#define BSEC_OTP_PKG	16
> +
> +/* Device Part Number (RPN) = OTP_DATA1 lower 8 bits */
> +#define RPN_SHIFT	0
> +#define RPN_MASK	GENMASK(7, 0)
> +
> +static inline u32 stm32mp_read_idc(void)
> +{
> +	setbits_le32(RCC_DBGCFGR, RCC_DBGCFGR_DBGCKEN);
> +	return readl(IOMEM(DBGMCU_IDC));
> +}
> +
> +/* Get Device Part Number (RPN) from OTP */
> +static inline int __stm32mp_get_cpu_rpn(u32 *rpn)
> +{
> +	int ret = bsec_read_field(BSEC_OTP_RPN, rpn);
> +	if (ret)
> +		return ret;
> +
> +	*rpn = (*rpn >> RPN_SHIFT) & RPN_MASK;
> +	return 0;
> +}
> +
> +static inline int __stm32mp_get_cpu_type(u32 *type)
> +{
> +	u32 id;
> +	int ret = __stm32mp_get_cpu_rpn(type);
> +	if (ret)
> +		return ret;
> +
> +	id = (stm32mp_read_idc() & DBGMCU_IDC_DEV_ID_MASK) >> DBGMCU_IDC_DEV_ID_SHIFT;
> +	*type |= id << 16;
> +	return 0;
> +}
> +
>  #endif /* __MACH_CPUTYPE_H__ */
> diff --git a/arch/arm/mach-stm32mp/init.c b/arch/arm/mach-stm32mp/init.c
> index 7094e0e7dd08..5d8d111f9f5a 100644
> --- a/arch/arm/mach-stm32mp/init.c
> +++ b/arch/arm/mach-stm32mp/init.c
> @@ -15,26 +15,6 @@
>  #include <bootsource.h>
>  #include <dt-bindings/pinctrl/stm32-pinfunc.h>
>  
> -/* DBGMCU register */
> -#define DBGMCU_IDC		(STM32_DBGMCU_BASE + 0x00)
> -#define DBGMCU_APB4FZ1		(STM32_DBGMCU_BASE + 0x2C)
> -#define DBGMCU_APB4FZ1_IWDG2	BIT(2)
> -#define DBGMCU_IDC_DEV_ID_MASK	GENMASK(11, 0)
> -#define DBGMCU_IDC_DEV_ID_SHIFT	0
> -#define DBGMCU_IDC_REV_ID_MASK	GENMASK(31, 16)
> -#define DBGMCU_IDC_REV_ID_SHIFT	16
> -
> -#define RCC_DBGCFGR		(STM32_RCC_BASE + 0x080C)
> -#define RCC_DBGCFGR_DBGCKEN	BIT(8)
> -
> -/* BSEC OTP index */
> -#define BSEC_OTP_RPN	1
> -#define BSEC_OTP_PKG	16
> -
> -/* Device Part Number (RPN) = OTP_DATA1 lower 8 bits */
> -#define RPN_SHIFT	0
> -#define RPN_MASK	GENMASK(7, 0)
> -
>  /* Package = bit 27:29 of OTP16
>   * - 100: LBGA448  (FFI) => AA = LFBGA 18x18mm 448 balls p. 0.8mm
>   * - 011: LBGA354  (LCI) => AB = LFBGA 16x16mm 359 balls p. 0.8mm
> @@ -140,38 +120,9 @@ int stm32mp_package(void)
>  	return __stm32mp_package;
>  }
>  
> -static inline u32 read_idc(void)
> -{
> -	setbits_le32(RCC_DBGCFGR, RCC_DBGCFGR_DBGCKEN);
> -	return readl(IOMEM(DBGMCU_IDC));
> -}
> -
> -/* Get Device Part Number (RPN) from OTP */
> -static int get_cpu_rpn(u32 *rpn)
> -{
> -	int ret = bsec_read_field(BSEC_OTP_RPN, rpn);
> -	if (ret)
> -		return ret;
> -
> -	*rpn = (*rpn >> RPN_SHIFT) & RPN_MASK;
> -	return 0;
> -}
> -
>  static u32 get_cpu_revision(void)
>  {
> -	return (read_idc() & DBGMCU_IDC_REV_ID_MASK) >> DBGMCU_IDC_REV_ID_SHIFT;
> -}
> -
> -static int get_cpu_type(u32 *type)
> -{
> -	u32 id;
> -	int ret = get_cpu_rpn(type);
> -	if (ret)
> -		return ret;
> -
> -	id = (read_idc() & DBGMCU_IDC_DEV_ID_MASK) >> DBGMCU_IDC_DEV_ID_SHIFT;
> -	*type |= id << 16;
> -	return 0;
> +	return (stm32mp_read_idc() & DBGMCU_IDC_REV_ID_MASK) >> DBGMCU_IDC_REV_ID_SHIFT;
>  }
>  
>  static int get_cpu_package(u32 *pkg)
> @@ -238,7 +189,7 @@ static int setup_cpu_type(void)
>  	u32 pkg;
>  	int ret;
>  
> -	get_cpu_type(&__stm32mp_cputype);
> +	__stm32mp_get_cpu_type(&__stm32mp_cputype);
>  	switch (__stm32mp_cputype) {
>  	case CPU_STM32MP157Fxx:
>  		cputypestr = "157F";
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
