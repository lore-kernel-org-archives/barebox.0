Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Ts8vW-0006hl-Fc
 for barebox@lists.infradead.org; Mon, 07 Jan 2013 09:23:27 +0000
Date: Mon, 7 Jan 2013 10:23:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130107092324.GH1906@pengutronix.de>
References: <1357315992-18896-1-git-send-email-J.Kilb@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1357315992-18896-1-git-send-email-J.Kilb@phytec.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ARM omap hsmmc: Fix adding iobase for OMAP3
To: Juergen Kilb <J.Kilb@phytec.de>
Cc: barebox@lists.infradead.org

Hi J=FCrgen,

On Fri, Jan 04, 2013 at 05:13:12PM +0100, Juergen Kilb wrote:
> Only the OMAP4 hsmmc module has an offset of 0x100 from its register
> base address. With commit 416a991 the offset was added for all SOCs
> which use the omap_hsmmc driver.

The offset was present before 416a991 aswell. It seems that the device
convenience functions introduced with bc872dbe79 did it wrong for OMAP3.
When then the boards started using the convenience functions with
5a12f45 it became broken.

> This has broken the driver for OMAP3/AM33xx platforms.
> =

> Signed-off-by: Juergen Kilb <J.Kilb@phytec.de>
> ---
>  drivers/mci/omap_hsmmc.c |    6 +++++-
>  1 files changed, 5 insertions(+), 1 deletions(-)
> =

> diff --git a/drivers/mci/omap_hsmmc.c b/drivers/mci/omap_hsmmc.c
> index 6471ea6..68fb3e1 100644
> --- a/drivers/mci/omap_hsmmc.c
> +++ b/drivers/mci/omap_hsmmc.c
> @@ -577,8 +577,12 @@ static int omap_mmc_probe(struct device_d *dev)
>  	hsmmc->mci.hw_dev =3D dev;
>  =

>  	hsmmc->iobase =3D dev_request_mem_region(dev, 0);
> -	hsmmc->base =3D hsmmc->iobase + 0x100;
>  =

> +#if defined(CONFIG_ARCH_OMAP4)
> +	hsmmc->base =3D hsmmc->iobase + 0x100;
> +#else
> +	hsmmc->base =3D hsmmc->iobase;
> +#endif
>  	hsmmc->mci.voltages =3D MMC_VDD_32_33 | MMC_VDD_33_34;
>  =

>  	hsmmc->mci.f_min =3D 400000;

I prefer to fix this properly. Does the following fix it for you?


From 666677b0e954bf70760c17f9ebe56bda4b4ee34a Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 7 Jan 2013 10:09:22 +0100
Subject: [PATCH] ARM omap / mci: Fix register offsets

Only the OMAP4 has a register offset of 0x100 in the register space. Fix
this by using the device id mechanism. This became broken when the device
register convenience functions were introduced.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/include/mach/devices.h       |    3 --
 arch/arm/mach-omap/include/mach/omap3-devices.h |    9 ++++--
 arch/arm/mach-omap/include/mach/omap4-devices.h |    9 ++++--
 arch/arm/mach-omap/omap_devices.c               |    7 -----
 drivers/mci/omap_hsmmc.c                        |   34 +++++++++++++++++++=
+++-
 5 files changed, 45 insertions(+), 17 deletions(-)

diff --git a/arch/arm/mach-omap/include/mach/devices.h b/arch/arm/mach-omap=
/include/mach/devices.h
index 6cbb25e..adae01b 100644
--- a/arch/arm/mach-omap/include/mach/devices.h
+++ b/arch/arm/mach-omap/include/mach/devices.h
@@ -9,9 +9,6 @@ void omap_add_sram0(resource_size_t base, resource_size_t s=
ize);
 =

 struct device_d *omap_add_uart(int id, unsigned long base);
 =

-struct device_d *omap_add_mmc(int id, unsigned long base,
-		struct omap_hsmmc_platform_data *pdata);
-
 struct device_d *omap_add_i2c(int id, unsigned long base, void *pdata);
 =

 #endif /* __MACH_OMAP_DEVICES_H */
diff --git a/arch/arm/mach-omap/include/mach/omap3-devices.h b/arch/arm/mac=
h-omap/include/mach/omap3-devices.h
index 2e8e06f..de67ea0 100644
--- a/arch/arm/mach-omap/include/mach/omap3-devices.h
+++ b/arch/arm/mach-omap/include/mach/omap3-devices.h
@@ -59,17 +59,20 @@ static inline struct device_d *omap3_add_uart3(void)
 =

 static inline struct device_d *omap3_add_mmc1(struct omap_hsmmc_platform_d=
ata *pdata)
 {
-	return omap_add_mmc(0, OMAP3_MMC1_BASE, pdata);
+	return add_generic_device("omap3-hsmmc", 0, NULL,
+			OMAP3_MMC1_BASE, SZ_4K, IORESOURCE_MEM, pdata);
 }
 =

 static inline struct device_d *omap3_add_mmc2(struct omap_hsmmc_platform_d=
ata *pdata)
 {
-	return omap_add_mmc(1, OMAP3_MMC2_BASE, pdata);
+	return add_generic_device("omap3-hsmmc", 1, NULL,
+			OMAP3_MMC2_BASE, SZ_4K, IORESOURCE_MEM, pdata);
 }
 =

 static inline struct device_d *omap3_add_mmc3(struct omap_hsmmc_platform_d=
ata *pdata)
 {
-	return omap_add_mmc(2, OMAP3_MMC3_BASE, pdata);
+	return add_generic_device("omap3-hsmmc", 2, NULL,
+			OMAP3_MMC3_BASE, SZ_4K, IORESOURCE_MEM, pdata);
 }
 =

 static inline struct device_d *omap3_add_i2c1(void *pdata)
diff --git a/arch/arm/mach-omap/include/mach/omap4-devices.h b/arch/arm/mac=
h-omap/include/mach/omap4-devices.h
index 5aba72d..2f78ab8 100644
--- a/arch/arm/mach-omap/include/mach/omap4-devices.h
+++ b/arch/arm/mach-omap/include/mach/omap4-devices.h
@@ -30,17 +30,20 @@ static inline struct device_d *omap44xx_add_uart3(void)
 =

 static inline struct device_d *omap44xx_add_mmc1(struct omap_hsmmc_platfor=
m_data *pdata)
 {
-	return omap_add_mmc(0, OMAP44XX_MMC1_BASE, pdata);
+	return add_generic_device("omap4-hsmmc", 0, NULL,
+			OMAP44XX_MMC1_BASE, SZ_4K, IORESOURCE_MEM, pdata);
 }
 =

 static inline struct device_d *omap44xx_add_mmc2(struct omap_hsmmc_platfor=
m_data *pdata)
 {
-	return omap_add_mmc(1, OMAP44XX_MMC2_BASE, pdata);
+	return add_generic_device("omap4-hsmmc", 1, NULL,
+			OMAP44XX_MMC2_BASE, SZ_4K, IORESOURCE_MEM, pdata);
 }
 =

 static inline struct device_d *omap44xx_add_mmc3(struct omap_hsmmc_platfor=
m_data *pdata)
 {
-	return omap_add_mmc(2, OMAP44XX_MMC3_BASE, pdata);
+	return add_generic_device("omap4-hsmmc", 2, NULL,
+			OMAP44XX_MMC3_BASE, SZ_4K, IORESOURCE_MEM, pdata);
 }
 =

 static inline struct device_d *omap44xx_add_mmc4(struct omap_hsmmc_platfor=
m_data *pdata)
diff --git a/arch/arm/mach-omap/omap_devices.c b/arch/arm/mach-omap/omap_de=
vices.c
index e83ac85..056cba5 100644
--- a/arch/arm/mach-omap/omap_devices.c
+++ b/arch/arm/mach-omap/omap_devices.c
@@ -25,13 +25,6 @@ struct device_d *omap_add_uart(int id, unsigned long bas=
e)
 			IORESOURCE_MEM_8BIT, &serial_plat);
 }
 =

-struct device_d *omap_add_mmc(int id, unsigned long base,
-		struct omap_hsmmc_platform_data *pdata)
-{
-	return add_generic_device("omap-hsmmc", id, NULL,
-			base, SZ_4K, IORESOURCE_MEM, pdata);
-}
-
 struct device_d *omap_add_i2c(int id, unsigned long base, void *pdata)
 {
 	return add_generic_device("i2c-omap", id, NULL, base, SZ_4K,
diff --git a/drivers/mci/omap_hsmmc.c b/drivers/mci/omap_hsmmc.c
index 888cba9..ffcb4ae 100644
--- a/drivers/mci/omap_hsmmc.c
+++ b/drivers/mci/omap_hsmmc.c
@@ -59,6 +59,18 @@ struct hsmmc {
 	unsigned int capa;		/* 0x140 */
 };
 =

+struct omap_mmc_driver_data {
+	unsigned long reg_ofs;
+};
+
+static struct omap_mmc_driver_data omap3_data =3D {
+	.reg_ofs =3D 0,
+};
+
+static struct omap_mmc_driver_data omap4_data =3D {
+	.reg_ofs =3D 0x100,
+};
+
 /*
  * OMAP HS MMC Bit definitions
  */
@@ -566,6 +578,13 @@ static int omap_mmc_probe(struct device_d *dev)
 {
 	struct omap_hsmmc *hsmmc;
 	struct omap_hsmmc_platform_data *pdata;
+	struct omap_mmc_driver_data *drvdata;
+	unsigned long reg_ofs =3D 0;
+	int ret;
+
+	ret =3D dev_get_drvdata(dev, (unsigned long *)&drvdata);
+	if (!ret)
+		reg_ofs =3D drvdata->reg_ofs;
 =

 	hsmmc =3D xzalloc(sizeof(*hsmmc));
 =

@@ -577,7 +596,7 @@ static int omap_mmc_probe(struct device_d *dev)
 	hsmmc->mci.hw_dev =3D dev;
 =

 	hsmmc->iobase =3D dev_request_mem_region(dev, 0);
-	hsmmc->base =3D hsmmc->iobase + 0x100;
+	hsmmc->base =3D hsmmc->iobase + reg_ofs;
 =

 	hsmmc->mci.voltages =3D MMC_VDD_32_33 | MMC_VDD_33_34;
 =

@@ -594,9 +613,22 @@ static int omap_mmc_probe(struct device_d *dev)
 	return 0;
 }
 =

+static struct platform_device_id omap_mmc_ids[] =3D {
+	{
+		.name =3D "omap3-hsmmc",
+		.driver_data =3D (unsigned long)&omap3_data,
+	}, {
+		.name =3D "omap4-hsmmc",
+		.driver_data =3D (unsigned long)&omap4_data,
+	}, {
+		/* sentinel */
+	},
+};
+
 static struct driver_d omap_mmc_driver =3D {
 	.name  =3D "omap-hsmmc",
 	.probe =3D omap_mmc_probe,
+	.id_table =3D omap_mmc_ids,
 };
 =

 static int omap_mmc_init_driver(void)
-- =

1.7.10.4

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
