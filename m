Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-oa0-f54.google.com ([209.85.219.54])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U6Ips-0001CQ-2L
 for barebox@lists.infradead.org; Fri, 15 Feb 2013 10:48:08 +0000
Received: by mail-oa0-f54.google.com with SMTP id n12so3590963oag.13
 for <barebox@lists.infradead.org>; Fri, 15 Feb 2013 02:48:07 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <1360924870-13979-2-git-send-email-fabio.porcedda@gmail.com>
References: <1360924870-13979-1-git-send-email-fabio.porcedda@gmail.com>
 <1360924870-13979-2-git-send-email-fabio.porcedda@gmail.com>
From: Fabio Porcedda <fabio.porcedda@gmail.com>
Date: Fri, 15 Feb 2013 11:47:47 +0100
Message-ID: <CAHkwnC_QypHu_YcmSn1KaRvnuuBuRobDBC5v=fDmXjhn1j6SDg@mail.gmail.com>
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
Subject: Re: [PATCH 1/2] at91sam9260/9g20ek: use IS_ENABLED instead of
 #if/#ifdef
To: barebox@lists.infradead.org

On Fri, Feb 15, 2013 at 11:41 AM, Fabio Porcedda
<fabio.porcedda@gmail.com> wrote:
> Using IS_ENABLED instead of #if/#ifdef the compiler can check
> all the code.
> Using IS_ENABLED for configuring smc->mode is an optimization,
> reduce init.o text from 905 to 877.
>
> Signed-off-by: Fabio Porcedda <fabio.porcedda@gmail.com>
> Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  arch/arm/boards/at91sam9260ek/init.c | 19 ++++++++++---------
>  1 file changed, 10 insertions(+), 9 deletions(-)
>
> diff --git a/arch/arm/boards/at91sam9260ek/init.c b/arch/arm/boards/at91sam9260ek/init.c
> index 06a53f2..bb0025d 100644
> --- a/arch/arm/boards/at91sam9260ek/init.c
> +++ b/arch/arm/boards/at91sam9260ek/init.c
> @@ -37,9 +37,8 @@ static void ek_set_board_type(void)
>  {
>         if (machine_is_at91sam9g20ek()) {
>                 armlinux_set_architecture(MACH_TYPE_AT91SAM9G20EK);
> -#ifdef CONFIG_AT91_HAVE_2MMC
> -               armlinux_set_revision(HAVE_2MMC);
> -#endif
> +               if (IS_ENABLED(CONFIG_AT91_HAVE_2MMC))
> +                       armlinux_set_revision(HAVE_2MMC);
>         } else {
>                 armlinux_set_architecture(MACH_TYPE_AT91SAM9260EK);
>         }
> @@ -107,10 +106,12 @@ static void ek_add_device_nand(void)
>                 smc = &ek_9260_nand_smc_config;
>
>         /* setup bus-width (8 or 16) */
> -       if (nand_pdata.bus_width_16)
> +       if (IS_ENABLED(CONFIG_MTD_NAND_ATMEL_BUSWIDTH_16)) {
> +               nand_pdata.bus_width_16 = 1;
>                 smc->mode |= AT91_SMC_DBW_16;
> -       else
> +       } else {
>                 smc->mode |= AT91_SMC_DBW_8;
> +       }

I will push a v2 because the nand_pdata.bus_width_16 must be removed
in the struct definition.

>
>         /* configure chip-select 3 (NAND) */
>         sam9_smc_configure(0, 3, smc);
> @@ -209,10 +210,10 @@ static void __init ek_add_led(void)
>  {
>         int i;
>
> -#ifdef CONFIG_AT91_HAVE_2MMC
> -       leds[0].gpio = AT91_PIN_PB8;
> -       leds[1].gpio = AT91_PIN_PB9;
> -#endif
> +       if (IS_ENABLED(CONFIG_AT91_HAVE_2MMC)) {
> +               leds[0].gpio = AT91_PIN_PB8;
> +               leds[1].gpio = AT91_PIN_PB9;
> +       }
>
>         for (i = 0; i < ARRAY_SIZE(leds); i++) {
>                 at91_set_gpio_output(leds[i].gpio, leds[i].active_low);
> --
> 1.8.1.1
>



--
Fabio Porcedda

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
