Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W3Mti-0000Zi-FK
 for barebox@lists.infradead.org; Wed, 15 Jan 2014 09:36:31 +0000
Received: from ptx.hi.pengutronix.de ([2001:6f8:1178:2:5054:ff:fec0:8e10]
 ident=Debian-exim) by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1W3MtL-0003FL-Nx
 for barebox@lists.infradead.org; Wed, 15 Jan 2014 10:36:07 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1W3MtL-0004pe-MA
 for barebox@lists.infradead.org; Wed, 15 Jan 2014 10:36:07 +0100
Date: Wed, 15 Jan 2014 10:36:07 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140115093607.GP16215@pengutronix.de>
References: <1389770794-20487-1-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1389770794-20487-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 1/2] ARM: dts: rename imx6q-dmo-realq7.dts to
 imx6q-dmo-edmqmx6.dts
To: barebox@lists.infradead.org

On Wed, Jan 15, 2014 at 08:26:33AM +0100, Sascha Hauer wrote:
> As this name is used in the Kernel.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/dts/Makefile                                        | 4 ++--
>  arch/arm/dts/{imx6q-dmo-realq7.dts => imx6q-dmo-edmqmx6.dts} | 0
>  2 files changed, 2 insertions(+), 2 deletions(-)
>  rename arch/arm/dts/{imx6q-dmo-realq7.dts => imx6q-dmo-edmqmx6.dts} (100%)
> 
> diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
> index add4dc0..67804ab 100644
> --- a/arch/arm/dts/Makefile
> +++ b/arch/arm/dts/Makefile
> @@ -9,7 +9,7 @@ dtb-$(CONFIG_ARCH_IMX53) += imx53-qsb.dtb \
>  dtb-$(CONFIG_ARCH_IMX6) += imx6q-gk802.dtb \
>  	imx6dl-dfi-fs700-m60-6s.dtb \
>  	imx6q-dfi-fs700-m60-6q.dtb \
> -	imx6q-dmo-realq7.dtb \
> +	imx6q-dmo-edmqmx6.dtb \
>  	imx6q-sabrelite.dtb \
>  	imx6dl-sabrelite.dtb \
>  	imx6q-sabresd.dtb \
> @@ -37,7 +37,7 @@ pbl-$(CONFIG_MACH_FREESCALE_MX53_VMX53) += imx53-voipac-bsb.dtb.o
>  pbl-$(CONFIG_MACH_DFI_FS700_M60) += imx6q-dfi-fs700-m60-6q.dtb.o imx6dl-dfi-fs700-m60-6s.dtb.o
>  pbl-$(CONFIG_MACH_PCM051) += am335x-phytec-phycore.dtb.o
>  pbl-$(CONFIG_MACH_PHYTEC_PFLA02) += imx6q-phytec-pbab01.dtb.o
> -pbl-$(CONFIG_MACH_REALQ7) += imx6q-dmo-realq7.dtb.o
> +pbl-$(CONFIG_MACH_REALQ7) += imx6q-dmo-edmqmx6.dtb.o
>  pbl-$(CONFIG_MACH_SOLIDRUN_CUBOX) += dove-cubox.dtb.o
>  pbl-$(CONFIG_MACH_GK802) += imx6q-gk802.dtb.o
>  pbl-$(CONFIG_MACH_TORADEX_COLIBRI_T20_IRIS) += tegra20-colibri-iris.dtb.o
> diff --git a/arch/arm/dts/imx6q-dmo-realq7.dts b/arch/arm/dts/imx6q-dmo-edmqmx6.dts
> similarity index 100%
> rename from arch/arm/dts/imx6q-dmo-realq7.dts
> rename to arch/arm/dts/imx6q-dmo-edmqmx6.dts

As just reported by Lucas: This lacks:

diff --git a/arch/arm/boards/dmo-mx6-realq7/lowlevel.c b/arch/arm/boards/dmo-mx6-realq7/lowlevel.c
index f47575e..8d7df69 100644
--- a/arch/arm/boards/dmo-mx6-realq7/lowlevel.c
+++ b/arch/arm/boards/dmo-mx6-realq7/lowlevel.c
@@ -138,7 +138,7 @@ static void sdram_init(void)
 	writel(0x00000001, 0x021e8080);
 }
 
-extern char __dtb_imx6q_dmo_realq7_start[];
+extern char __dtb_imx6q_dmo_edmqmx6_start[];
 
 ENTRY_FUNCTION(start_imx6_realq7, r0, r1, r2)
 {
@@ -155,7 +155,7 @@ ENTRY_FUNCTION(start_imx6_realq7, r0, r1, r2)
 		mmdc_do_dqs_calibration();
 	}
 
-	fdt = (uint32_t)__dtb_imx6q_dmo_realq7_start - get_runtime_offset();
+	fdt = (uint32_t)__dtb_imx6q_dmo_edmqmx6_start - get_runtime_offset();
 
 	barebox_arm_entry(0x10000000, SZ_2G, fdt);
 }

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
