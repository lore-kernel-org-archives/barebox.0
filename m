Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22e.google.com ([2a00:1450:400c:c05::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XCpiZ-0002NW-Sz
 for barebox@lists.infradead.org; Thu, 31 Jul 2014 12:44:24 +0000
Received: by mail-wi0-f174.google.com with SMTP id d1so9315274wiv.1
 for <barebox@lists.infradead.org>; Thu, 31 Jul 2014 05:44:00 -0700 (PDT)
Message-ID: <53DA3A0D.7090700@gmail.com>
Date: Thu, 31 Jul 2014 14:43:57 +0200
From: Matteo Fortini <matteo.fortini@gmail.com>
MIME-Version: 1.0
References: <1405959207-21839-1-git-send-email-matteo.fortini@gmail.com>
 <assp.027999675f.1405959207-21839-2-git-send-email-matteo.fortini@gmail.com>
 <20140731123943.GK23282@pengutronix.de>
In-Reply-To: <20140731123943.GK23282@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] sama5d3x: fix HSMC MODE register offset and add
 TIMINGS register
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Yes confirmed Sascha, bag of paper for me for not checking it all.

I renamed AT91_SMC_MODE->AT91_SAM9_SMC_MODE because I introduced 
AT91_SAMA5_SMC_MODE and AT91_SMC_MODE was ambiguous.

Thank you and my apologies,
Matteo

Il 31/07/2014 14:39, Sascha Hauer ha scritto:
> Hi Matteo,
>
> On Mon, Jul 21, 2014 at 06:13:26PM +0200, Matteo Fortini wrote:
>> As stated in section 29.19.35 of SAMA5D3 Series Datasheet,
>> MODE register has offset 0x10 and at offset 0x0C there is
>> a TIMINGS register.
>>
>> Signed-off-by: Matteo Fortini <matteo.fortini@gmail.com>
> I had to fix up this patch with:
>
>  From 43a67c4260488beefa8fab8181bf342048b083f2 Mon Sep 17 00:00:00 2001
> From: Sascha Hauer <s.hauer@pengutronix.de>
> Date: Thu, 31 Jul 2014 14:37:29 +0200
> Subject: [PATCH] fixup! sama5d3x: fix HSMC MODE register offset and add
>   TIMINGS register
>
> ---
>   arch/arm/mach-at91/at91sam926x_lowlevel_init.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm/mach-at91/at91sam926x_lowlevel_init.c b/arch/arm/mach-at91/at91sam926x_lowlevel_init.c
> index 985203a..e69e4a8 100644
> --- a/arch/arm/mach-at91/at91sam926x_lowlevel_init.c
> +++ b/arch/arm/mach-at91/at91sam926x_lowlevel_init.c
> @@ -130,7 +130,7 @@ void __bare_init at91sam926x_lowlevel_init(struct at91sam926x_lowlevel_cfg *cfg)
>   	at91_sys_write(cfg->matrix_csa, cfg->ebi_csa);
>   
>   	/* flash */
> -	at91_smc_write(cfg->smc_cs, AT91_SMC_MODE, cfg->smc_mode);
> +	at91_smc_write(cfg->smc_cs, AT91_SAM9_SMC_MODE, cfg->smc_mode);
>   
>   	at91_smc_write(cfg->smc_cs, AT91_SMC_CYCLE, cfg->smc_cycle);
>   
>
> Otherwise several boards fail with:
>
> arch/arm/mach-at91/at91sam926x_lowlevel_init.c: In function 'at91sam926x_lowlevel_init':
> arch/arm/mach-at91/at91sam926x_lowlevel_init.c:133:2: error: 'AT91_SMC_MODE' undeclared (first use in this function)
> arch/arm/mach-at91/at91sam926x_lowlevel_init.c:133:2: note: each undeclared identifier is reported only once for each function it appears in
> scripts/Makefile.build:245: recipe for target 'arch/arm/mach-at91/pbl-at91sam926x_lowlevel_init.o' failed
> make[1]: *** [arch/arm/mach-at91/pbl-at91sam926x_lowlevel_init.o] Error 1
> make[1]: *** Waiting for unfinished jobs....
> Makefile:769: recipe for target 'arch/arm/mach-at91' failed
> make: *** [arch/arm/mach-at91] Error 2
> make: *** Waiting for unfinished jobs....
>
> Can you confirm my fix is correct?
>
> Sascha
>


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
