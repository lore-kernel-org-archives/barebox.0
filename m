Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by bombadil.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OO9IZ-0005No-8Y
	for barebox@lists.infradead.org; Mon, 14 Jun 2010 13:01:56 +0000
Received: by wwb17 with SMTP id 17so137911wwb.36
	for <barebox@lists.infradead.org>; Mon, 14 Jun 2010 06:01:53 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <a2ce7c2796ea62c9ff75eeb6e72a8a36c2675337.1276065824.git.baruch@tkos.co.il>
References: <cover.1276065824.git.baruch@tkos.co.il>
	<a2ce7c2796ea62c9ff75eeb6e72a8a36c2675337.1276065824.git.baruch@tkos.co.il>
Date: Mon, 14 Jun 2010 15:01:48 +0200
Message-ID: <AANLkTimRyz5AGQltJB8G1_J5RkXZBt9lL8xHIGurAyJC@mail.gmail.com>
From: Ivo Clarysse <ivo.clarysse@gmail.com>
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
Subject: Re: [PATCH 6/8] mx25 3ds: add support for i2c master and PMIC
To: Baruch Siach <baruch@tkos.co.il>
Cc: barebox@lists.infradead.org

On barebox-next, I get:

board/freescale-mx25-3-stack/built-in.o: In function `go':
3stack.c:(.flash_header_start+0x0): undefined reference to `_start'
board/freescale-mx25-3-stack/built-in.o: In function `imx25_3ds_fec_init':
3stack.c:(.text.imx25_3ds_fec_init+0x4): undefined reference to `mc34704_ge=
t'
3stack.c:(.text.imx25_3ds_fec_init+0x1c): undefined reference to
`mc34704_reg_write'


I guess this change also needs:

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index afd8cae..18a9cbc 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -140,6 +140,8 @@ config MACH_FREESCALE_MX25_3STACK
        bool "Freescale MX25 3stack"
        select HAS_CFI
        select MACH_HAS_LOWLEVEL_INIT
+       select I2C
+       select DRIVER_I2C_MC34704
        help
          Say Y here if you are using the Freescale MX25 3stack board equip=
ped
          with a Freescale i.MX25 Processor



On Wed, Jun 9, 2010 at 9:05 AM, Baruch Siach <baruch@tkos.co.il> wrote:
> Signed-off-by: Baruch Siach <baruch@tkos.co.il>
> ---
> =A0board/freescale-mx25-3-stack/3stack.c | =A0 18 ++++++++++++++++++
> =A01 files changed, 18 insertions(+), 0 deletions(-)
>
> diff --git a/board/freescale-mx25-3-stack/3stack.c b/board/freescale-mx25=
-3-stack/3stack.c
> index 6659185..316a2bc 100644
> --- a/board/freescale-mx25-3-stack/3stack.c
> +++ b/board/freescale-mx25-3-stack/3stack.c
> @@ -36,6 +36,8 @@
> =A0#include <nand.h>
> =A0#include <mach/imx-flash-header.h>
> =A0#include <mach/iomux-mx25.h>
> +#include <i2c/i2c.h>
> +#include <i2c/mc34704.h>
>
> =A0extern unsigned long _stext;
>
> @@ -183,8 +185,18 @@ static struct device_d usbh2_dev =3D {
> =A0};
> =A0#endif
>
> +static struct i2c_board_info i2c_devices[] =3D {
> + =A0 =A0 =A0 {
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 I2C_BOARD_INFO("mc34704", 0x54),
> + =A0 =A0 =A0 },
> +};
> =A0#define IOMUXC_BASE_ADDR =A0 =A0 =A0 =A00x43FAC000
>
> +static struct device_d i2c_dev =3D {
> + =A0 =A0 =A0 .name =A0 =A0 =3D "i2c-imx",
> + =A0 =A0 =A0 .map_base =3D IMX_I2C1_BASE,
> +};
> +
> =A0static int imx25_devices_init(void)
> =A0{
> =A0 =A0 =A0 =A0ulong val;
> @@ -256,6 +268,9 @@ static int imx25_devices_init(void)
> =A0 =A0 =A0 =A0register_device(&sdram0_dev);
> =A0 =A0 =A0 =A0register_device(&sram0_dev);
>
> + =A0 =A0 =A0 i2c_register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_devi=
ces));
> + =A0 =A0 =A0 register_device(&i2c_dev);
> +
> =A0 =A0 =A0 =A0armlinux_set_bootparams((void *)0x80000100);
> =A0 =A0 =A0 =A0armlinux_set_architecture(MACH_TYPE_MX25_3DS);
>
> @@ -303,6 +318,9 @@ static struct pad_desc imx25_pads[] =3D {
> =A0 =A0 =A0 =A0MX25_PAD_VSYNC__USBH2_DATA5,
> =A0 =A0 =A0 =A0MX25_PAD_LSCLK__USBH2_DATA6,
> =A0 =A0 =A0 =A0MX25_PAD_OE_ACD__USBH2_DATA7,
> + =A0 =A0 =A0 /* i2c */
> + =A0 =A0 =A0 MX25_PAD_I2C1_CLK__SCL,
> + =A0 =A0 =A0 MX25_PAD_I2C1_DAT__SDA,
> =A0};
>
> =A0static int imx25_console_init(void)
> --
> 1.7.1
>
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
