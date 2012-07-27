Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.eu ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SufVo-0004no-3b
 for barebox@lists.infradead.org; Fri, 27 Jul 2012 08:03:06 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 17B0DBF0E0
 for <barebox@lists.infradead.org>; Fri, 27 Jul 2012 10:02:43 +0200 (CEST)
From: Jan Weitzel <J.Weitzel@phytec.de>
In-Reply-To: <1343375551-9176-1-git-send-email-j.weitzel@phytec.de>
References: <1343375551-9176-1-git-send-email-j.weitzel@phytec.de>
Date: Fri, 27 Jul 2012 10:02:42 +0200
Message-ID: <1343376162.3793.4.camel@lws-weitzel>
Mime-Version: 1.0
Reply-To: J.Weitzel@phytec.de
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
Subject: Re: [PATCH] OMAP4: cleanup
To: barebox@lists.infradead.org

Am Freitag, den 27.07.2012, 09:52 +0200 schrieb Jan Weitzel:
> use rev to check revision
> 

sorry didn't apply on master, will rework

> Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
> ---
>  arch/arm/mach-omap/omap4_generic.c |    9 ++++-----
>  1 files changed, 4 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm/mach-omap/omap4_generic.c b/arch/arm/mach-omap/omap4_generic.c
> index c6fb91f..f44fa4b 100644
> --- a/arch/arm/mach-omap/omap4_generic.c
> +++ b/arch/arm/mach-omap/omap4_generic.c
> @@ -23,7 +23,7 @@
>  #define MIDR_CORTEX_A9_R1P3	0x411FC093
>  #define MIDR_CORTEX_A9_R2P10	0x412FC09A
>  
> -#define CONTROL_ID_CODE         0x4A002204
> +#define CONTROL_ID_CODE	  0x4A002204
>  
>  #define OMAP4_CONTROL_ID_CODE_ES1_0     0x0B85202F
>  #define OMAP4_CONTROL_ID_CODE_ES2_0     0x1B85202F
> @@ -278,8 +278,7 @@ static void reset_phy(unsigned int base)
>  void omap4_ddr_init(const struct ddr_regs *ddr_regs,
>  		const struct dpll_param *core)
>  {
> -	unsigned int rev;
> -	rev = omap4_revision();
> +	unsigned int rev = omap4_revision();
>  
>  	if (rev == OMAP4430_ES2_0) {
>  		writel(0x9e9e9e9e, 0x4A100638);
> @@ -302,7 +301,7 @@ void omap4_ddr_init(const struct ddr_regs *ddr_regs,
>  	*(volatile int*)(OMAP44XX_DMM_BASE + DMM_LISA_MAP_2) = 0x00000000;
>  	*(volatile int*)(OMAP44XX_DMM_BASE + DMM_LISA_MAP_3) = 0xFF020100;
>  
> -	if (omap4_revision() >= OMAP4460_ES1_0) {
> +	if (rev >= OMAP4460_ES1_0) {
>  		writel(0x80640300, OMAP44XX_MA_BASE + DMM_LISA_MAP_0);
>  
>  		*(volatile int*)(OMAP44XX_MA_BASE + DMM_LISA_MAP_2) = 0x00000000;
> @@ -351,7 +350,7 @@ void omap4_ddr_init(const struct ddr_regs *ddr_regs,
>  	*(volatile int*)(OMAP44XX_EMIF1_BASE + EMIF_PWR_MGMT_CTRL) = 0x80000000;
>  	*(volatile int*)(OMAP44XX_EMIF2_BASE + EMIF_PWR_MGMT_CTRL) = 0x80000000;
>  
> -	if (omap4_revision() >= OMAP4460_ES1_0) {
> +	if (rev >= OMAP4460_ES1_0) {
>  		writel(EMIF_L3_CONFIG_VAL_SYS_10_MPU_3_LL_0,
>  				OMAP44XX_EMIF1_BASE + EMIF_L3_CONFIG);
>  		writel(EMIF_L3_CONFIG_VAL_SYS_10_MPU_3_LL_0,



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
