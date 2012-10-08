Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TLKGn-0001Fq-Te
 for barebox@lists.infradead.org; Mon, 08 Oct 2012 20:49:46 +0000
Received: by mail-lb0-f177.google.com with SMTP id gi11so3125897lbb.36
 for <barebox@lists.infradead.org>; Mon, 08 Oct 2012 13:49:42 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1349725459-20226-6-git-send-email-s.hauer@pengutronix.de>
References: <1349725459-20226-1-git-send-email-s.hauer@pengutronix.de>
 <1349725459-20226-6-git-send-email-s.hauer@pengutronix.de>
From: Roberto Nibali <rnibali@gmail.com>
Date: Mon, 8 Oct 2012 22:49:21 +0200
Message-ID: <CAONxwYMpwB32gJi892ed301r9A9fVEHiHRfZv2=HSYcPOLr1-g@mail.gmail.com>
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
Subject: Re: [PATCH 05/10] ARM i.MX25: Enable all needed clocks during startup
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi

>  arch/arm/mach-imx/clk-imx25.c |   16 +++++++++++++---
>  1 file changed, 13 insertions(+), 3 deletions(-)
>
> diff --git a/arch/arm/mach-imx/clk-imx25.c b/arch/arm/mach-imx/clk-imx25.c
> index 3b9588c..3a141c2 100644
> --- a/arch/arm/mach-imx/clk-imx25.c
> +++ b/arch/arm/mach-imx/clk-imx25.c
> @@ -76,9 +76,19 @@ static int imx25_ccm_probe(struct device_d *dev)
>
>         base = dev_request_mem_region(dev, 0);
>
> -       writel(0x10e88578, base + CCM_CGCR0);
> -       writel(0x0478e1e0, base + CCM_CGCR0);
> -       writel(0x0007c400, base + CCM_CGCR0);
> +       writel((1 << 3) | (1 << 4) | (1 << 5) | (1 << 6) | (1 << 8) | (1 << 9) |
> +                       (1 << 10) | (1 << 15) | (1 << 19) | (1 << 21) | (1 << 22) |
> +                       (1 << 22) | (1 << 23) | (1 << 24) | (1 << 28),

(1<<22) does not need to be written twice, I'm sure the bit is safe in
silicon :).

> +                       base + CCM_CGCR0);
> +
> +       writel((1 << 5) | (1 << 6) | (1 << 7) | (1 << 8) | (1 << 13) | (1 << 14) |
> +                       (1 << 15) | (1 << 19) | (1 << 20) | (1 << 21) | (1 << 22) |
> +                       (1 << 26) | (1 << 29) | (1 << 31),
> +                       base + CCM_CGCR1);
> +
> +       writel((1 << 0) | (1 << 1) | (1 << 2) | (1 << 10) | (1 << 13) | (1 << 14) |
> +                       (1 << 15) | (1 << 16) | (1 << 17) | (1 << 18),
> +                       base + CCM_CGCR2);

Quite a change from writing 0x15692B58 (sum) to CGCR0, enabling PER
clocks esdhc1, esdhc2, i2c, nfc, owire, sim1, ssi1, and AHB clocks
ata, emi, esdhc1, esdhc2, lcdc, sdma, usbotg, to now enabling the
following clocks:

PER: esdhc1, esdhc2, i2c, nfc, owire, pwm(!), uart (!)
AHB: emi, esdhc1, esdhc2, fec, lcdc, usbotg

Why not enable all clocks (i.e. sim1, sim2, ssi1, ssi2)? Maybe because
we have no drivers (yet)? Or does it not matter, because each platform
driver is required to set the clocks anyway in the init routine?

With regard to CGCR1 and CGCR2, the following clock outputs get
enabled (maybe for changelog):

IPG: cspi1, cspi2, cspi3, esdhc1, esdhc2, fec, gpt1, gpt2, gpt3, gpt4,
iim, LCDC_EN, pwm1, pwm2, pwm3, pwm4, spba, tsc, uart1, uart2, uart3,
uart4, uart5.

Cheers
Roberto

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
