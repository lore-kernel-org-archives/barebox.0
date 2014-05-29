Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo4.mail-out.ovh.net ([188.165.36.253]
 helo=mo4.mail-out.ovh.net)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WpzKg-00065F-NS
 for barebox@lists.infradead.org; Thu, 29 May 2014 12:21:19 +0000
Received: from mail186.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id BF10CFFC668
 for <barebox@lists.infradead.org>; Thu, 29 May 2014 14:11:53 +0200 (CEST)
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.2\))
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
In-Reply-To: <1401357333-6426-1-git-send-email-matteo.fortini@gmail.com>
Date: Thu, 29 May 2014 20:11:41 +0800
Message-Id: <08875C68-8986-4E67-A4ED-2C3F9C203A73@jcrosoft.com>
References: <1401357333-6426-1-git-send-email-matteo.fortini@gmail.com>
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
Subject: Re: [PATCH] sama5d3x: fix AT91_SMC_CS offset stride
To: Matteo Fortini <matteo.fortini@gmail.com>
Cc: barebox@lists.infradead.org


On May 29, 2014, at 5:55 PM, Matteo Fortini <matteo.fortini@gmail.com> wrote:

> 
> Acked-by: Bo Shen <voice.shen@atmel.com>
> ---
> arch/arm/mach-at91/sam9_smc.c | 4 ++++
> 1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm/mach-at91/sam9_smc.c b/arch/arm/mach-at91/sam9_smc.c
> index a137da4..65c4558 100644
> --- a/arch/arm/mach-at91/sam9_smc.c
> +++ b/arch/arm/mach-at91/sam9_smc.c
> @@ -16,7 +16,11 @@
> 
> #include <mach/at91sam9_smc.h>
> 
> +#ifdef CONFIG_ARCH_SAMA5D3
> +#define AT91_SMC_CS(id, n)	(smc_base_addr[id] + ((n) * 0x14))
> +#else
> #define AT91_SMC_CS(id, n)	(smc_base_addr[id] + ((n) * 0x10))
> +#endif
NACK no ifdef

this need to be runtime

and you need to put our SOB
> 
> static void __iomem *smc_base_addr[2];
> 
> -- 
> 2.0.0.rc2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
