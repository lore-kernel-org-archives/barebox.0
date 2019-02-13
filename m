Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gtnp3-0000A2-T5
 for barebox@lists.infradead.org; Wed, 13 Feb 2019 06:15:08 +0000
Date: Wed, 13 Feb 2019 07:14:59 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <20190213061459.fp643qeqyk447ddo@pengutronix.de>
References: <20190206184122.14423-1-christian.hemp@posteo.de>
 <1549882858.2546.3.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1549882858.2546.3.camel@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ARM: phyCORE-i.MX8M SOM support
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org, Christian Hemp <christian.hemp@posteo.de>

Hi Christian,

On Mon, Feb 11, 2019 at 12:00:58PM +0100, Lucas Stach wrote:
> Hi Christian,
> =

> Am Mittwoch, den 06.02.2019, 19:41 +0100 schrieb Christian Hemp:
> > The phyCORE-i.MX8M aka PCL-066 is a SoM containing a i.MX8M SoC.
> > =

> > phyCORE-i.MX8M:
> > =A0- 1GB LPDDR4 RAM
> > =A0- eMMC
> > =A0- microSD
> > =A0- Ethernet
> > =

> > Signed-off-by: Christian Hemp <christian.hemp@posteo.de>
> > ---
> > =A0arch/arm/boards/Makefile=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 |=A0=A0 1 +
> > =A0arch/arm/boards/phytec-som-imx8m/.gitignore=A0=A0 |=A0=A0 1 +
> > =A0arch/arm/boards/phytec-som-imx8m/Makefile=A0=A0=A0=A0 |=A0=A0 2 +
> > =A0arch/arm/boards/phytec-som-imx8m/board.c=A0=A0=A0=A0=A0 |=A0 55 +
> > =A0arch/arm/boards/phytec-som-imx8m/ddr.h=A0=A0=A0=A0=A0=A0=A0 |=A0 28 +
> > =A0arch/arm/boards/phytec-som-imx8m/ddr_init.c=A0=A0 | 225 +++++
> > =A0.../boards/phytec-som-imx8m/ddrphy_train.c=A0=A0=A0 | 947 ++++++++++=
++++++++
> > =A0.../flash-header-phycore-imx8mq.imxcfg=A0=A0=A0=A0=A0=A0=A0 |=A0=A0 =
5 +
> > =A0arch/arm/boards/phytec-som-imx8m/lowlevel.c=A0=A0 | 127 +++
> > =A0arch/arm/configs/imx_v8_defconfig=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 |=A0=A0 2 +
> > =A0arch/arm/dts/Makefile=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0 |=A0=A0 1 +
> > =A0arch/arm/dts/imx8mq-phytec-phycore-som.dts=A0=A0=A0 | 328 ++++++
> > =A0arch/arm/mach-imx/Kconfig=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 |=A0=A0 7 +
> > =A0images/Makefile.imx=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 |=A0=A0 5 +
> > =A014 files changed, 1734 insertions(+)
> > =A0create mode 100644 arch/arm/boards/phytec-som-imx8m/.gitignore
> > =A0create mode 100644 arch/arm/boards/phytec-som-imx8m/Makefile
> > =A0create mode 100644 arch/arm/boards/phytec-som-imx8m/board.c
> > =A0create mode 100644 arch/arm/boards/phytec-som-imx8m/ddr.h
> > =A0create mode 100644 arch/arm/boards/phytec-som-imx8m/ddr_init.c
> > =A0create mode 100644 arch/arm/boards/phytec-som-imx8m/ddrphy_train.c
> > =A0create mode 100644 arch/arm/boards/phytec-som-imx8m/flash-header-phy=
core-imx8mq.imxcfg
> > =A0create mode 100644 arch/arm/boards/phytec-som-imx8m/lowlevel.c
> > =A0create mode 100644 arch/arm/dts/imx8mq-phytec-phycore-som.dts
> =

> The other supported i.MX8M boards are using a "imx8mq" name tag. I
> would really like to see some consistency here, as the i.MX8 naming in
> general is already confusing in itself, so we shouldn't add to this
> confusion by calling the same SoC both mx8m and mx8mq.

I tested your patch and needed following changes to make it work with
latest barebox:

diff --git a/arch/arm/boards/phytec-som-imx8m/ddr.h b/arch/arm/boards/phyte=
c-som-imx8m/ddr.h
index 7d195e6002..58a1c91be3 100644
--- a/arch/arm/boards/phytec-som-imx8m/ddr.h
+++ b/arch/arm/boards/phytec-som-imx8m/ddr.h
@@ -20,9 +20,8 @@
 void phytec_imx8mq_phycore_ddr_init(void);
 void phytec_imx8mq_phycore_ddr_cfg_phy(void);
 =

-#define FW_1D_IMAGE	imx_lpddr4_pmu_train_1d_imem_bin, \
-			imx_lpddr4_pmu_train_1d_dmem_bin
-#define FW_2D_IMAGE	imx_lpddr4_pmu_train_2d_imem_bin, \
-			imx_lpddr4_pmu_train_2d_dmem_bin
-
+#define FW_1D_IMAGE	lpddr4_pmu_train_1d_imem_bin, \
+			lpddr4_pmu_train_1d_dmem_bin
+#define FW_2D_IMAGE	lpddr4_pmu_train_2d_imem_bin, \
+			lpddr4_pmu_train_2d_dmem_bin
 =

diff --git a/arch/arm/boards/phytec-som-imx8m/flash-header-phycore-imx8mq.i=
mxcfg b/arch/arm/boards/phytec-som-imx8m/flash-header-phycore-imx8mq.imxcfg
index aff8321b9a..eabc9426c7 100644
--- a/arch/arm/boards/phytec-som-imx8m/flash-header-phycore-imx8mq.imxcfg
+++ b/arch/arm/boards/phytec-som-imx8m/flash-header-phycore-imx8mq.imxcfg
@@ -3,3 +3,4 @@ soc imx8mq
 loadaddr 0x007E1000
 max_load_size 0x3F000
 dcdofs 0x400
+signed_hdmi_firmware firmware/signed_hdmi_imx8m.bin
diff --git a/arch/arm/boards/phytec-som-imx8m/lowlevel.c b/arch/arm/boards/=
phytec-som-imx8m/lowlevel.c
index 4a1054a5eb..bd13fd1860 100644
--- a/arch/arm/boards/phytec-som-imx8m/lowlevel.c
+++ b/arch/arm/boards/phytec-som-imx8m/lowlevel.c
@@ -115,7 +115,7 @@ ENTRY_FUNCTION(start_phytec_phycore_imx8mq, r0, r1, r2)
 		const u8 *bl31;
 		size_t bl31_size;
 =

-		get_builtin_firmware(imx_imx8m_bl31_bin, &bl31, &bl31_size);
+		get_builtin_firmware(imx8mq_bl31_bin, &bl31, &bl31_size);
 		imx8mq_atf_load_bl31(bl31, bl31_size);
 	}
 =


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
