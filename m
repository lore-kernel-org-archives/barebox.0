Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo2.mail-out.ovh.net ([87.98.172.75]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VjvMW-0006uw-Gn
 for barebox@lists.infradead.org; Fri, 22 Nov 2013 18:21:53 +0000
Received: from mail437.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 74076FF8E07
 for <barebox@lists.infradead.org>; Fri, 22 Nov 2013 19:21:27 +0100 (CET)
Date: Fri, 22 Nov 2013 19:23:46 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20131122182346.GF7965@ns203013.ovh.net>
References: <1385132083-7484-1-git-send-email-s.hauer@pengutronix.de>
 <1385132083-7484-16-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1385132083-7484-16-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [SPAM] [PATCH 15/16] ARM: am33xx: compile SoC files for pbl aswell
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 15:54 Fri 22 Nov     , Sascha Hauer wrote:
> This is necessary for successful pbl compilation on am33xx.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/mach-omap/Makefile | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm/mach-omap/Makefile b/arch/arm/mach-omap/Makefile
> index cf2d5ee..ed44cb8 100644
> --- a/arch/arm/mach-omap/Makefile
> +++ b/arch/arm/mach-omap/Makefile
> @@ -24,6 +24,7 @@ pbl-$(CONFIG_ARCH_OMAP3) += omap3_generic.o auxcr.o
>  obj-$(CONFIG_ARCH_OMAP4) += omap4_generic.o omap4_clock.o
>  pbl-$(CONFIG_ARCH_OMAP4) += omap4_generic.o omap4_clock.o
>  obj-$(CONFIG_ARCH_AM33XX) += am33xx_generic.o am33xx_clock.o am33xx_mux.o
> +pbl-$(CONFIG_ARCH_AM33XX) += am33xx_generic.o am33xx_clock.o am33xx_mux.o
so use lwl-
>  obj-$(CONFIG_OMAP3_CLOCK_CONFIG) += omap3_clock.o
>  pbl-$(CONFIG_OMAP3_CLOCK_CONFIG) += omap3_clock.o
>  obj-$(CONFIG_OMAP_GPMC) += gpmc.o devices-gpmc-nand.o
> -- 
> 1.8.4.2
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
