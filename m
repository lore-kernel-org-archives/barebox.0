Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-gx0-f175.google.com ([209.85.161.175])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R3wAv-0000Yp-N8
	for barebox@lists.infradead.org; Wed, 14 Sep 2011 20:35:18 +0000
Received: by gxk4 with SMTP id 4so2264765gxk.20
	for <barebox@lists.infradead.org>; Wed, 14 Sep 2011 13:35:15 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1313960937-15271-1-git-send-email-h.feurstein@gmail.com>
References: <1313960937-15271-1-git-send-email-h.feurstein@gmail.com>
Date: Wed, 14 Sep 2011 22:35:14 +0200
Message-ID: <CAFfN3gX8b=33=p1eP_EwX7U_nbkBObwQjxaPpDAz5A3W10S8=A@mail.gmail.com>
From: Hubert Feurstein <h.feurstein@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] at91: add missing clkdev changes for at91sam9g45
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>

Hi Sascha,

please apply this patch to 'master', if you don't mind. Otherwise the
at91sam9g45-based boards
can _not_ be built anymore.

Thanks.

Regards
Hubert

2011/8/21 Hubert Feurstein <h.feurstein@gmail.com>:
> This fixes the following compile errors
> =A0arch/arm/mach-at91/at91sam9g45.c:185:3: error: 'ohci_clk' undeclared h=
ere (not in a function)
> =A0arch/arm/mach-at91/at91sam9g45.c:186:3: error: 'tcb1_clk' undeclared h=
ere (not in a function)
> =A0arch/arm/mach-at91/at91sam9g45_devices.c: In function 'at91_add_device=
_mci':
> =A0arch/arm/mach-at91/at91sam9g45_devices.c:258:2: warning: implicit decl=
aration of function 'at91_clock_associate'
> =A0 =A0[...]
> =A0arch/arm/mach-at91/built-in.o: In function `at91_add_device_mci':
> =A0sam9_smc.c:(.text.at91_add_device_mci+0x1d0): undefined reference to `=
at91_clock_associate'
> which were introduced in commit:
> =A0"at91: swtich to clkdev" (ae19fe26cc230bc38238c2d66b8f464761286316)
>
> Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
> Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
> =A0arch/arm/mach-at91/at91sam9g45.c =A0 =A0 =A0 =A0 | =A0 =A03 ---
> =A0arch/arm/mach-at91/at91sam9g45_devices.c | =A0 =A07 +------
> =A02 files changed, 1 insertions(+), 9 deletions(-)
>
> diff --git a/arch/arm/mach-at91/at91sam9g45.c b/arch/arm/mach-at91/at91sa=
m9g45.c
> index d4c27f8..f1139da 100644
> --- a/arch/arm/mach-at91/at91sam9g45.c
> +++ b/arch/arm/mach-at91/at91sam9g45.c
> @@ -181,9 +181,6 @@ static struct clk *periph_clocks[] __initdata =3D {
> =A0 =A0 =A0 =A0&isi_clk,
> =A0 =A0 =A0 =A0&udphs_clk,
> =A0 =A0 =A0 =A0&mmc1_clk,
> - =A0 =A0 =A0 // irq0
> - =A0 =A0 =A0 &ohci_clk,
> - =A0 =A0 =A0 &tcb1_clk,
> =A0};
>
> =A0static struct clk_lookup periph_clocks_lookups[] =3D {
> diff --git a/arch/arm/mach-at91/at91sam9g45_devices.c b/arch/arm/mach-at9=
1/at91sam9g45_devices.c
> index f6e1eb4..022f3e1 100644
> --- a/arch/arm/mach-at91/at91sam9g45_devices.c
> +++ b/arch/arm/mach-at91/at91sam9g45_devices.c
> @@ -188,8 +188,6 @@ void at91_register_uart(unsigned id, unsigned pins)
> =A0void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data =
*data)
> =A0{
> =A0 =A0 =A0 =A0resource_size_t start;
> - =A0 =A0 =A0 struct device_d *dev;
> - =A0 =A0 =A0 char* clk_name;
>
> =A0 =A0 =A0 =A0if (!data)
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0return;
> @@ -209,7 +207,6 @@ void at91_add_device_mci(short mmc_id, struct atmel_m=
ci_platform_data *data)
>
> =A0 =A0 =A0 =A0if (mmc_id =3D=3D 0) { =A0 =A0 =A0 =A0 =A0 =A0 =A0/* MCI0 =
*/
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0start =3D AT91SAM9G45_BASE_MCI0;
> - =A0 =A0 =A0 =A0 =A0 =A0 =A0 clk_name =3D "mci0_clk";
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0/* CLK */
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0at91_set_A_periph(AT91_PIN_PA0, 0);
>
> @@ -231,7 +228,6 @@ void at91_add_device_mci(short mmc_id, struct atmel_m=
ci_platform_data *data)
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0}
> =A0 =A0 =A0 =A0} else { =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0/*=
 MCI1 */
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0start =3D AT91SAM9G45_BASE_MCI1;
> - =A0 =A0 =A0 =A0 =A0 =A0 =A0 clk_name =3D "mci1_clk";
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0/* CLK */
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0at91_set_A_periph(AT91_PIN_PA31, 0);
>
> @@ -253,9 +249,8 @@ void at91_add_device_mci(short mmc_id, struct atmel_m=
ci_platform_data *data)
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0}
> =A0 =A0 =A0 =A0}
>
> - =A0 =A0 =A0 dev =3D add_generic_device("atmel_mci", mmc_id, NULL, start=
, 4096,
> + =A0 =A0 =A0 add_generic_device("atmel_mci", mmc_id, NULL, start, 4096,
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 IORESOURCE_MEM, data);
> - =A0 =A0 =A0 at91_clock_associate(clk_name, dev, "mci_clk");
> =A0}
> =A0#else
> =A0void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data =
*data) {}
> --
> 1.7.4.1
>
>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
