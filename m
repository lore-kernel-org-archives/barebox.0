Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yx0-f177.google.com ([209.85.213.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QmhA2-0004Ef-U3
	for barebox@lists.infradead.org; Fri, 29 Jul 2011 07:07:08 +0000
Received: by yxj20 with SMTP id 20so2363782yxj.36
	for <barebox@lists.infradead.org>; Fri, 29 Jul 2011 00:07:01 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1311918777-26719-6-git-send-email-plagnioj@jcrosoft.com>
References: <1311918777-26719-1-git-send-email-plagnioj@jcrosoft.com>
	<1311918777-26719-6-git-send-email-plagnioj@jcrosoft.com>
Date: Fri, 29 Jul 2011 09:07:01 +0200
Message-ID: <CAJfOKBwDVwExXnqFss8gC0EkwG9qzdJhEB8qHuK2oCwjwuvrCQ@mail.gmail.com>
From: Franck JULLIEN <franck.jullien@gmail.com>
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
Subject: Re: [PATCH 6/7] omap: switch to add_generic_device
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Hi Jean-Christophe,

2011/7/29 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
> =A0arch/arm/boards/omap/board-beagle.c =A0 =A0| =A0 30 ++++++------------=
------------
> =A0arch/arm/boards/omap/board-sdp343x.c =A0 | =A0 =A01 -
> =A0arch/arm/mach-omap/devices-gpmc-nand.c | =A0 13 +++----------
> =A03 files changed, 9 insertions(+), 35 deletions(-)
>
> diff --git a/arch/arm/boards/omap/board-beagle.c b/arch/arm/boards/omap/b=
oard-beagle.c
> index adf0b94..8f868ad 100644
> --- a/arch/arm/boards/omap/board-beagle.c
> +++ b/arch/arm/boards/omap/board-beagle.c
> @@ -242,14 +242,6 @@ static struct NS16550_plat serial_plat =3D {
> =A0 =A0 =A0 =A0.reg_write =3D omap_uart_write,
> =A0};
>
> -static struct device_d beagle_serial_device =3D {
> - =A0 =A0 =A0 .id =3D -1,
> - =A0 =A0 =A0 .name =3D "serial_ns16550",
> - =A0 =A0 =A0 .map_base =3D OMAP_UART3_BASE,
> - =A0 =A0 =A0 .size =3D 1024,
> - =A0 =A0 =A0 .platform_data =3D (void *)&serial_plat,
> -};
> -
> =A0/**
> =A0* @brief UART serial port initialization - remember to enable COM cloc=
ks in
> =A0* arch
> @@ -259,7 +251,8 @@ static struct device_d beagle_serial_device =3D {
> =A0static int beagle_console_init(void)
> =A0{
> =A0 =A0 =A0 =A0/* Register the serial port */
> - =A0 =A0 =A0 return register_device(&beagle_serial_device);
> + =A0 =A0 =A0 return !!add_generic_device("serial_ns16550", -1, NULL, OMA=
P_UART3_BASE, 1024,

Is this a double "!" in front of add_generic_device ??

> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0IORESOURCE_MEM, &ser=
ial_plat);
> =A0}
> =A0console_initcall(beagle_console_init);
> =A0#endif /* CONFIG_DRIVER_SERIAL_NS16550 */
> @@ -280,25 +273,12 @@ static struct ehci_platform_data ehci_pdata =3D {
> =A0};
> =A0#endif /* CONFIG_USB_EHCI_OMAP */
>
> -static struct device_d i2c_dev =3D {
> - =A0 =A0 =A0 .id =A0 =A0 =A0 =A0 =A0 =A0 =3D -1,
> - =A0 =A0 =A0 .name =A0 =A0 =A0 =A0 =A0 =3D "i2c-omap",
> - =A0 =A0 =A0 .map_base =A0 =A0 =A0 =3D OMAP_I2C1_BASE,
> -};
> -
> =A0static struct i2c_board_info i2c_devices[] =3D {
> =A0 =A0 =A0 =A0{
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0I2C_BOARD_INFO("twl4030", 0x48),
> =A0 =A0 =A0 =A0},
> =A0};
>
> -static struct device_d hsmmc_dev =3D {
> - =A0 =A0 =A0 .id =3D -1,
> - =A0 =A0 =A0 .name =3D "omap-hsmmc",
> - =A0 =A0 =A0 .map_base =3D 0x4809C000,
> - =A0 =A0 =A0 .size =3D SZ_4K,
> -};
> -
> =A0static int beagle_devices_init(void)
> =A0{
> =A0 =A0 =A0 =A0struct device_d *sdram_dev;
> @@ -310,7 +290,8 @@ static int beagle_devices_init(void)
> =A0 =A0 =A0 =A0armlinux_add_dram(sdram_dev);
>
> =A0 =A0 =A0 =A0i2c_register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_dev=
ices));
> - =A0 =A0 =A0 register_device(&i2c_dev);
> + =A0 =A0 =A0 add_generic_device("i2c-omap", -1, NULL, 0x4809C000, SZ_4K,
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0IORESOURCE_MEM, NULL=
);
>
> =A0#ifdef CONFIG_USB_EHCI_OMAP
> =A0 =A0 =A0 =A0if (ehci_omap_init(&omap_ehci_pdata) >=3D 0)
> @@ -323,7 +304,8 @@ static int beagle_devices_init(void)
> =A0#endif
> =A0 =A0 =A0 =A0gpmc_generic_nand_devices_init(0, 16, OMAP_ECC_HAMMING_COD=
E_HW_ROMCODE);
>
> - =A0 =A0 =A0 register_device(&hsmmc_dev);
> + =A0 =A0 =A0 add_generic_device("omap-hsmmc", -1, NULL, OMAP_I2C1_BASE, =
0,
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0IORESOURCE_MEM, NULL=
);
>
> =A0 =A0 =A0 =A0armlinux_set_bootparams((void *)0x80000100);
> =A0 =A0 =A0 =A0armlinux_set_architecture(MACH_TYPE_OMAP3_BEAGLE);
> diff --git a/arch/arm/boards/omap/board-sdp343x.c b/arch/arm/boards/omap/=
board-sdp343x.c
> index 04aa302..360766a 100644
> --- a/arch/arm/boards/omap/board-sdp343x.c
> +++ b/arch/arm/boards/omap/board-sdp343x.c
> @@ -647,7 +647,6 @@ static int sdp3430_flash_init(void)
> =A0static int sdp3430_devices_init(void)
> =A0{
> =A0 =A0 =A0 =A0struct device_d *sdram_dev;
> - =A0 =A0 =A0 int ret;
>
> =A0 =A0 =A0 =A0sdram_dev =3D add_mem_device("ram0", 0x80000000, 128 * 102=
4 * 1024,
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 IORES=
OURCE_MEM_WRITEABLE);
> diff --git a/arch/arm/mach-omap/devices-gpmc-nand.c b/arch/arm/mach-omap/=
devices-gpmc-nand.c
> index c2a2b0d..bf409a7 100644
> --- a/arch/arm/mach-omap/devices-gpmc-nand.c
> +++ b/arch/arm/mach-omap/devices-gpmc-nand.c
> @@ -70,15 +70,6 @@ static struct gpmc_nand_platform_data nand_plat =3D {
> =A0 =A0 =A0 =A0.priv =3D (void *)&nand_cfg,
> =A0};
>
> -/** NAND device definition */
> -static struct device_d gpmc_generic_nand_nand_device =3D {
> - =A0 =A0 =A0 .id =3D -1,
> - =A0 =A0 =A0 .name =3D "gpmc_nand",
> - =A0 =A0 =A0 .map_base =3D OMAP_GPMC_BASE,
> - =A0 =A0 =A0 .size =3D 1024 * 4, =A0 =A0 =A0 /* GPMC size */
> - =A0 =A0 =A0 .platform_data =3D (void *)&nand_plat,
> -};
> -
> =A0/**
> =A0* @brief gpmc_generic_nand_devices_init - init generic nand device
> =A0*
> @@ -99,5 +90,7 @@ int gpmc_generic_nand_devices_init(int cs, int width,
>
> =A0 =A0 =A0 =A0/* Configure GPMC CS before register */
> =A0 =A0 =A0 =A0gpmc_cs_config(nand_plat.cs, &nand_cfg);
> - =A0 =A0 =A0 return register_device(&gpmc_generic_nand_nand_device);
> +
> + =A0 =A0 =A0 return !!add_generic_device("gpmc_nand", -1, NULL, OMAP_GPM=
C_BASE, 1024 * 4,
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0IORESOURCE_MEM, &nan=
d_plat);
> =A0}
> --
> 1.7.5.4
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
