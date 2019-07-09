Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hklse-0008KZ-RO
 for barebox@lists.infradead.org; Tue, 09 Jul 2019 08:53:46 +0000
Date: Tue, 9 Jul 2019 10:53:39 +0200
From: Roland Hieber <rhi@pengutronix.de>
Message-ID: <20190709085339.yvtusun63wqej5w5@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: Re: [PATCH 2/8] ARM: dts: imx6qdl: phycore: Add state framework
To: Stefan Riedmueller <s.riedmueller@phytec.de>, Daniel Schultz <d.schultz@phytec.de>
Cc: Barebox Mailing List <barebox@lists.infradead.org>

<d.schultz@phytec.de>
Cc: barebox@lists.infradead.org
Bcc: 
Subject: Re: [PATCH 2/8] ARM: dts: imx6qdl: phycore: Add state framework
Reply-To: 
In-Reply-To: <1562071065-367410-2-git-send-email-s.riedmueller@phytec.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:41:58 up 1 day, 14:52, 50 users,  load average: 0.08, 0.13, 0.10

Hi Stefan, Daniel,

On Tue, Jul 02, 2019 at 02:37:39PM +0200, Stefan Riedmueller wrote:
> From: Daniel Schultz <d.schultz@phytec.de>
> 
> Add the state framework with EEPROM backend.
> 
> Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
> Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
> ---
>  arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts    |  1 +
>  arch/arm/dts/imx6dl-phytec-phycore-som-lc-emmc.dts |  1 +
>  arch/arm/dts/imx6dl-phytec-phycore-som-lc-nand.dts |  1 +
>  arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts    |  1 +
>  arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts     |  1 +
>  arch/arm/dts/imx6q-phytec-phycore-som-nand.dts     |  1 +
>  arch/arm/dts/imx6qdl-phytec-state.dtsi             | 81 ++++++++++++++++++++++
>  7 files changed, 87 insertions(+)
>  create mode 100644 arch/arm/dts/imx6qdl-phytec-state.dtsi
> 
> diff --git a/arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts b/arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts
> index a04e37f80363..21cbb5f944c9 100644
> --- a/arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts
> +++ b/arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts
> @@ -15,6 +15,7 @@
>  #include <arm/imx6dl.dtsi>
>  #include "imx6dl.dtsi"
>  #include "imx6qdl-phytec-phycore-som.dtsi"
> +#include "imx6qdl-phytec-state.dtsi"
>  
>  / {
>  	model = "Phytec phyCORE-i.MX6 DualLite/SOLO with eMMC";
> diff --git a/arch/arm/dts/imx6dl-phytec-phycore-som-lc-emmc.dts b/arch/arm/dts/imx6dl-phytec-phycore-som-lc-emmc.dts
> index 5d9727ec5b80..b8efb95ee08a 100644
> --- a/arch/arm/dts/imx6dl-phytec-phycore-som-lc-emmc.dts
> +++ b/arch/arm/dts/imx6dl-phytec-phycore-som-lc-emmc.dts
> @@ -9,6 +9,7 @@
>  #include <arm/imx6dl.dtsi>
>  #include "imx6dl.dtsi"
>  #include "imx6qdl-phytec-phycore-som.dtsi"
> +#include "imx6qdl-phytec-state.dtsi"
>  
>  / {
>  	model = "PHYTEC phyCORE-i.MX6 DualLite/SOLO with eMMC low-cost";
> diff --git a/arch/arm/dts/imx6dl-phytec-phycore-som-lc-nand.dts b/arch/arm/dts/imx6dl-phytec-phycore-som-lc-nand.dts
> index e119e4c0d4fc..4d38d1698a48 100644
> --- a/arch/arm/dts/imx6dl-phytec-phycore-som-lc-nand.dts
> +++ b/arch/arm/dts/imx6dl-phytec-phycore-som-lc-nand.dts
> @@ -9,6 +9,7 @@
>  #include <arm/imx6dl.dtsi>
>  #include "imx6dl.dtsi"
>  #include "imx6qdl-phytec-phycore-som.dtsi"
> +#include "imx6qdl-phytec-state.dtsi"
>  
>  / {
>  	model = "PHYTEC phyCORE-i.MX6 Duallite/SOLO with NAND low-cost";
> diff --git a/arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts b/arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts
> index 287d876e41ed..3ad3723d2893 100644
> --- a/arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts
> +++ b/arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts
> @@ -14,6 +14,7 @@
>  #include <arm/imx6dl.dtsi>
>  #include "imx6dl.dtsi"
>  #include "imx6qdl-phytec-phycore-som.dtsi"
> +#include "imx6qdl-phytec-state.dtsi"
>  
>  / {
>  	model = "Phytec phyCORE-i.MX6 Duallite/SOLO with NAND";
> diff --git a/arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts b/arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts
> index 94a70389f084..7a86d5b94daf 100644
> --- a/arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts
> +++ b/arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts
> @@ -14,6 +14,7 @@
>  #include <arm/imx6q.dtsi>
>  #include "imx6q.dtsi"
>  #include "imx6qdl-phytec-phycore-som.dtsi"
> +#include "imx6qdl-phytec-state.dtsi"
>  
>  / {
>  	model = "Phytec phyCORE-i.MX6 Quad with eMMC";
> diff --git a/arch/arm/dts/imx6q-phytec-phycore-som-nand.dts b/arch/arm/dts/imx6q-phytec-phycore-som-nand.dts
> index 6d82ec34d6e5..96d1de224c9e 100644
> --- a/arch/arm/dts/imx6q-phytec-phycore-som-nand.dts
> +++ b/arch/arm/dts/imx6q-phytec-phycore-som-nand.dts
> @@ -14,6 +14,7 @@
>  #include <arm/imx6q.dtsi>
>  #include "imx6q.dtsi"
>  #include "imx6qdl-phytec-phycore-som.dtsi"
> +#include "imx6qdl-phytec-state.dtsi"
>  
>  / {
>  	model = "Phytec phyCORE-i.MX6 Quad with NAND";
> diff --git a/arch/arm/dts/imx6qdl-phytec-state.dtsi b/arch/arm/dts/imx6qdl-phytec-state.dtsi
> new file mode 100644
> index 000000000000..76aa15f3e2f7
> --- /dev/null
> +++ b/arch/arm/dts/imx6qdl-phytec-state.dtsi
> @@ -0,0 +1,81 @@
> +// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
> +/*
> + * Copyright (C) 2019 PHYTEC Messtechnik GmbH,
> + * Author: Daniel Schultz <d.schultz@phytec.de>
> + */
> +
> +/ {
> +	aliases {
> +		state = &state;
> +	};
> +
> +	state: imx6qdl_phytec_boot_state {
> +		magic = <0x883b86a6>;
> +		compatible = "barebox,state";
> +		backend-type = "raw";
> +		backend = <&backend_update_eeprom>;
> +		backend-stridesize = <54>;

In order to be compatible with previous (and possibly future?) userspace
implementations, you should also set the backend-storage-type property.
We had cases in the past where userspace and barebox defaulted to
different storage types and could not understand each other.

(For reference: https://www.barebox.org/doc/2019.06.0/user/state.html )

 - Roland

> +
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		bootstate {
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +			last_chosen {
> +				reg = <0x0 0x4>;
> +				type = "uint32";
> +			};
> +			system0 {
> +				#address-cells = <1>;
> +				#size-cells = <1>;
> +				remaining_attempts {
> +					reg = <0x4 0x4>;
> +					type = "uint32";
> +					default = <3>;
> +				};
> +				priority {
> +					reg = <0x8 0x4>;
> +					type = "uint32";
> +					default = <21>;
> +				};
> +				ok {
> +					reg = <0xc 0x4>;
> +					type = "uint32";
> +					default = <0>;
> +				};
> +			};
> +			system1 {
> +				#address-cells = <1>;
> +				#size-cells = <1>;
> +				remaining_attempts {
> +					reg = <0x10 0x4>;
> +					type = "uint32";
> +					default = <3>;
> +				};
> +				priority {
> +					reg = <0x14 0x4>;
> +					type = "uint32";
> +					default = <20>;
> +				};
> +				ok {
> +					reg = <0x18 0x4>;
> +					type = "uint32";
> +					default = <0>;
> +				};
> +			};
> +		};
> +	};
> +};
> +
> +&eeprom {
> +	status = "okay";
> +	partitions {
> +		compatible = "fixed-partitions";
> +		#size-cells = <1>;
> +		#address-cells = <1>;
> +		backend_update_eeprom: state@0 {
> +			reg = <0x0 0x100>;
> +			label = "update-eeprom";
> +		};
> +	};
> +};
> -- 
> 2.7.4
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Roland Hieber                     | r.hieber@pengutronix.de     |
Pengutronix e.K.                  | https://www.pengutronix.de/ |
Peiner Str. 6-8, 31137 Hildesheim | Phone: +49-5121-206917-5086 |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
