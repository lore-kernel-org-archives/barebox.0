Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h1nPW-0004Ey-2O
 for barebox@lists.infradead.org; Thu, 07 Mar 2019 07:25:48 +0000
Date: Thu, 7 Mar 2019 08:25:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190307072544.ge4mhmalitn6kr5o@pengutronix.de>
References: <98063d5d-7da8-0034-bb66-223318d1f1a2@phytec.de>
 <20190219130302.12412-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190219130302.12412-1-u.kleine-koenig@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v3] ARM: dts: imx6*phytec*: switch to new partitioning
 scheme
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org, Stefan Riedmueller <s.riedmueller@phytec.de>

On Tue, Feb 19, 2019 at 02:03:02PM +0100, Uwe Kleine-K=F6nig wrote:
> Both Linux and barebox support this new scheme and it's the actually
> the recommended one.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---

Applied, thanks

Sascha

> Hello,
> =

> On Tue, Feb 19, 2019 at 11:54:07AM +0100, Stefan Riedm=FCller wrote:
> > On 19.02.19 11:28, Uwe Kleine-K=F6nig wrote:
> > > Both Linux and barebox support this new scheme and it's the actually
> > > the recommended one.
> > > =

> > > Signed-off-by: Uwe Kleine-K=F6nig<u.kleine-koenig@pengutronix.de>
> > > ---
> > > On Tue, Feb 19, 2019 at 11:08:56AM +0100, Stefan Riedm=FCller wrote:
> > > > thanks for the patch.
> > > > =

> > > > In arch/arm/dts/imx6qdl-phytec-pfla02.dtsi and
> > > > arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi are additional gpmi pa=
rtitions.
> > > > Did you leave them out for a reason. I think they can be matched to=
 the new
> > > > scheme too.
> > > I didn't skip something on purpose. I just didn't notice there are two
> > > partitioned devices. Fixed here in v2.
> > =

> > Sorry to bother you again, but it seems the gpmi partitions on the
> > arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi were missed again.
> =

> On rereading your mail I was really surprised you wrote about two device
> trees. I only noticed one, and so I only fixed one. So it's not you who
> need to be sorry ... :-|
> =

> Best regards
> Uwe
> =

>  .../dts/imx6dl-phytec-phycore-som-emmc.dts    | 21 +++---
>  .../dts/imx6dl-phytec-phycore-som-nand.dts    | 21 +++---
>  arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi        | 30 ++++----
>  .../arm/dts/imx6q-phytec-phycore-som-emmc.dts | 21 +++---
>  .../arm/dts/imx6q-phytec-phycore-som-nand.dts | 25 ++++---
>  arch/arm/dts/imx6qdl-phytec-pfla02.dtsi       | 74 +++++++++---------
>  arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi  | 75 ++++++++++---------
>  .../dts/imx6qp-phytec-phycore-som-nand.dts    | 21 +++---
>  arch/arm/dts/imx6ul-phytec-phycore-som.dtsi   | 29 +++----
>  9 files changed, 176 insertions(+), 141 deletions(-)
> =

> diff --git a/arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts b/arch/arm/d=
ts/imx6dl-phytec-phycore-som-emmc.dts
> index 7e4a5aba2a77..e602b77e9940 100644
> --- a/arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts
> +++ b/arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts
> @@ -52,17 +52,20 @@
>  &usdhc1 {
>  	status =3D "okay";
>  =

> -	#address-cells =3D <1>;
> -	#size-cells =3D <1>;
> +	partitions {
> +		compatible =3D "fixed-partitions";
> +		#address-cells =3D <1>;
> +		#size-cells =3D <1>;
>  =

> -	partition@0 {
> -		label =3D "barebox";
> -		reg =3D <0x0 0xe0000>;
> -	};
> +		partition@0 {
> +			label =3D "barebox";
> +			reg =3D <0x0 0xe0000>;
> +		};
>  =

> -	partition@e0000 {
> -		label =3D "barebox-environment";
> -		reg =3D <0xe0000 0x20000>;
> +		partition@e0000 {
> +			label =3D "barebox-environment";
> +			reg =3D <0xe0000 0x20000>;
> +		};
>  	};
>  };
>  =

> diff --git a/arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts b/arch/arm/d=
ts/imx6dl-phytec-phycore-som-nand.dts
> index ffcbdc213471..77f143438b50 100644
> --- a/arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts
> +++ b/arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts
> @@ -47,16 +47,19 @@
>  &usdhc1 {
>  	status =3D "okay";
>  =

> -	#address-cells =3D <1>;
> -	#size-cells =3D <1>;
> +	partitions {
> +		compatible =3D "fixed-partitions";
> +		#address-cells =3D <1>;
> +		#size-cells =3D <1>;
>  =

> -	partition@0 {
> -		label =3D "barebox";
> -		reg =3D <0x0 0xe0000>;
> -	};
> +		partition@0 {
> +			label =3D "barebox";
> +			reg =3D <0x0 0xe0000>;
> +		};
>  =

> -	partition@e0000 {
> -		label =3D "barebox-environment";
> -		reg =3D <0xe0000 0x20000>;
> +		partition@e0000 {
> +			label =3D "barebox-environment";
> +			reg =3D <0xe0000 0x20000>;
> +		};
>  	};
>  };
> diff --git a/arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi b/arch/arm/dts/imx6q-=
phytec-pcaaxl3.dtsi
> index 63dd966b8746..66b547ad8eef 100644
> --- a/arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi
> +++ b/arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi
> @@ -131,22 +131,26 @@
>  	pinctrl-0 =3D <&pinctrl_gpmi_nand>;
>  	nand-on-flash-bbt;
>  	status =3D "okay";
> -	#address-cells =3D <1>;
> -	#size-cells =3D <1>;
>  =

> -	partition@0 {
> -		label =3D "barebox";
> -		reg =3D <0x0 0x400000>;
> -	};
> +	partitions {
> +		compatible =3D "fixed-partitions";
> +		#address-cells =3D <1>;
> +		#size-cells =3D <1>;
>  =

> -	environment_nand: partition@400000 {
> -		label =3D "barebox-environment";
> -		reg =3D <0x400000 0x20000>;
> -	};
> +		partition@0 {
> +			label =3D "barebox";
> +			reg =3D <0x0 0x400000>;
> +		};
>  =

> -	partition@420000 {
> -		label =3D "root";
> -		reg =3D <0x420000 0x0>;
> +		environment_nand: partition@400000 {
> +			label =3D "barebox-environment";
> +			reg =3D <0x400000 0x20000>;
> +		};
> +
> +		partition@420000 {
> +			label =3D "root";
> +			reg =3D <0x420000 0x0>;
> +		};
>  	};
>  };
>  =

> diff --git a/arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts b/arch/arm/dt=
s/imx6q-phytec-phycore-som-emmc.dts
> index 6e12b26d38a2..94a70389f084 100644
> --- a/arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts
> +++ b/arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts
> @@ -51,17 +51,20 @@
>  &usdhc1 {
>  	status =3D "okay";
>  =

> -	#address-cells =3D <1>;
> -	#size-cells =3D <1>;
> +	partitions {
> +		compatible =3D "fixed-partitions";
> +		#address-cells =3D <1>;
> +		#size-cells =3D <1>;
>  =

> -	partition@0 {
> -		label =3D "barebox";
> -		reg =3D <0x0 0xe0000>;
> -	};
> +		partition@0 {
> +			label =3D "barebox";
> +			reg =3D <0x0 0xe0000>;
> +		};
>  =

> -	partition@e0000 {
> -		label =3D "barebox-environment";
> -		reg =3D <0xe0000 0x20000>;
> +		partition@e0000 {
> +			label =3D "barebox-environment";
> +			reg =3D <0xe0000 0x20000>;
> +		};
>  	};
>  };
>  =

> diff --git a/arch/arm/dts/imx6q-phytec-phycore-som-nand.dts b/arch/arm/dt=
s/imx6q-phytec-phycore-som-nand.dts
> index d9e37b7fcafc..6d82ec34d6e5 100644
> --- a/arch/arm/dts/imx6q-phytec-phycore-som-nand.dts
> +++ b/arch/arm/dts/imx6q-phytec-phycore-som-nand.dts
> @@ -56,16 +56,19 @@
>  &usdhc1 {
>  	status =3D "okay";
>  =

> -	#address-cells =3D <1>;
> -	#size-cells =3D <1>;
> -
> -	partition@0 {
> -		label =3D "barebox";
> -		reg =3D <0x0 0xe0000>;
> -	};
> -
> -	partition@e0000 {
> -		label =3D "barebox-environment";
> -		reg =3D <0xe0000 0x20000>;
> +	partitions {
> +		compatible =3D "fixed-partitions";
> +		#address-cells =3D <1>;
> +		#size-cells =3D <1>;
> +
> +		partition@0 {
> +			label =3D "barebox";
> +			reg =3D <0x0 0xe0000>;
> +		};
> +
> +		partition@e0000 {
> +			label =3D "barebox-environment";
> +			reg =3D <0xe0000 0x20000>;
> +		};
>  	};
>  };
> diff --git a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi b/arch/arm/dts/imx6q=
dl-phytec-pfla02.dtsi
> index 8bb9ec8db7c6..aba86a3ec1c4 100644
> --- a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
> +++ b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
> @@ -58,27 +58,30 @@
>  =

>  &ecspi3 {
>  	flash: flash@0 {
> -		#address-cells =3D <1>;
> -		#size-cells =3D <1>;
> -
> -		partition@0 {
> -			label =3D "barebox";
> -			reg =3D <0x0 0x100000>;
> -		};
> -
> -		partition@100000 {
> -			label =3D "barebox-environment";
> -			reg =3D <0x100000 0x20000>;
> -		};
> -
> -		partition@120000 {
> -			label =3D "oftree";
> -			reg =3D <0x120000 0x20000>;
> -		};
> -
> -		partition@140000 {
> -			label =3D "kernel";
> -			reg =3D <0x140000 0x0>;
> +		partitions {
> +			compatible =3D "fixed-partitions";
> +			#address-cells =3D <1>;
> +			#size-cells =3D <1>;
> +
> +			partition@0 {
> +				label =3D "barebox";
> +				reg =3D <0x0 0x100000>;
> +			};
> +
> +			partition@100000 {
> +				label =3D "barebox-environment";
> +				reg =3D <0x100000 0x20000>;
> +			};
> +
> +			partition@120000 {
> +				label =3D "oftree";
> +				reg =3D <0x120000 0x20000>;
> +			};
> +
> +			partition@140000 {
> +				label =3D "kernel";
> +				reg =3D <0x140000 0x0>;
> +			};
>  		};
>  	};
>  };
> @@ -101,22 +104,25 @@
>  };
>  =

>  &gpmi {
> -	#address-cells =3D <1>;
> -	#size-cells =3D <1>;
> +	partitions {
> +		compatible =3D "fixed-partitions";
> +		#address-cells =3D <1>;
> +		#size-cells =3D <1>;
>  =

> -	partition@0 {
> -		label =3D "barebox";
> -		reg =3D <0x0 0x400000>;
> -	};
> +		partition@0 {
> +			label =3D "barebox";
> +			reg =3D <0x0 0x400000>;
> +		};
>  =

> -	partition@400000 {
> -		label =3D "barebox-environment";
> -		reg =3D <0x400000 0x100000>;
> -	};
> +		partition@400000 {
> +			label =3D "barebox-environment";
> +			reg =3D <0x400000 0x100000>;
> +		};
>  =

> -	partition@500000 {
> -		label =3D "root";
> -		reg =3D <0x500000 0x0>;
> +		partition@500000 {
> +			label =3D "root";
> +			reg =3D <0x500000 0x0>;
> +		};
>  	};
>  };
>  =

> diff --git a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi b/arch/arm/dts/=
imx6qdl-phytec-phycore-som.dtsi
> index 3c197ddf018b..8fde27bd0c17 100644
> --- a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
> +++ b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
> @@ -76,27 +76,30 @@
>  		reg =3D <0>;
>  		status =3D "disabled";
>  =

> -		#address-cells =3D <1>;
> -		#size-cells =3D <1>;
> -
> -		partition@0 {
> -			label =3D "barebox";
> -			reg =3D <0x0 0x100000>;
> -		};
> -
> -		partition@100000 {
> -			label =3D "barebox-environment";
> -			reg =3D <0x100000 0x20000>;
> -		};
> -
> -		partition@120000 {
> -			label =3D "oftree";
> -			reg =3D <0x120000 0x20000>;
> -		};
> -
> -		partition@140000 {
> -			label =3D "kernel";
> -			reg =3D <0x140000 0x0>;
> +		partitions {
> +			compatible =3D "fixed-partitions";
> +			#address-cells =3D <1>;
> +			#size-cells =3D <1>;
> +
> +			partition@0 {
> +				label =3D "barebox";
> +				reg =3D <0x0 0x100000>;
> +			};
> +
> +			partition@100000 {
> +				label =3D "barebox-environment";
> +				reg =3D <0x100000 0x20000>;
> +			};
> +
> +			partition@120000 {
> +				label =3D "oftree";
> +				reg =3D <0x120000 0x20000>;
> +			};
> +
> +			partition@140000 {
> +				label =3D "kernel";
> +				reg =3D <0x140000 0x0>;
> +			};
>  		};
>  	};
>  };
> @@ -126,22 +129,26 @@
>  	pinctrl-0 =3D <&pinctrl_gpmi_nand>;
>  	nand-on-flash-bbt;
>  	status =3D "disabled";
> -	#address-cells =3D <1>;
> -	#size-cells =3D <1>;
>  =

> -	partition@0 {
> -		label =3D "barebox";
> -		reg =3D <0x0 0x400000>;
> -	};
> +	partitions {
> +		compatible =3D "fixed-partitions";
> +		#address-cells =3D <1>;
> +		#size-cells =3D <1>;
>  =

> -	partition@400000 {
> -		label =3D "barebox-environment";
> -		reg =3D <0x400000 0x100000>;
> -	};
> +		partition@0 {
> +			label =3D "barebox";
> +			reg =3D <0x0 0x400000>;
> +		};
>  =

> -	partition@500000 {
> -		label =3D "root";
> -		reg =3D <0x500000 0x0>;
> +		partition@400000 {
> +			label =3D "barebox-environment";
> +			reg =3D <0x400000 0x100000>;
> +		};
> +
> +		partition@500000 {
> +			label =3D "root";
> +			reg =3D <0x500000 0x0>;
> +		};
>  	};
>  };
>  =

> diff --git a/arch/arm/dts/imx6qp-phytec-phycore-som-nand.dts b/arch/arm/d=
ts/imx6qp-phytec-phycore-som-nand.dts
> index c2756142b535..437457ce7522 100644
> --- a/arch/arm/dts/imx6qp-phytec-phycore-som-nand.dts
> +++ b/arch/arm/dts/imx6qp-phytec-phycore-som-nand.dts
> @@ -54,16 +54,19 @@
>  &usdhc1 {
>  	status =3D "okay";
>  =

> -	#address-cells =3D <1>;
> -	#size-cells =3D <1>;
> +	partitions {
> +		compatible =3D "fixed-partitions";
> +		#address-cells =3D <1>;
> +		#size-cells =3D <1>;
>  =

> -	partition@0 {
> -		label =3D "barebox";
> -		reg =3D <0x0 0xe0000>;
> -	};
> +		partition@0 {
> +			label =3D "barebox";
> +			reg =3D <0x0 0xe0000>;
> +		};
>  =

> -	partition@e0000 {
> -		label =3D "barebox-environment";
> -		reg =3D <0xe0000 0x20000>;
> +		partition@e0000 {
> +			label =3D "barebox-environment";
> +			reg =3D <0xe0000 0x20000>;
> +		};
>  	};
>  };
> diff --git a/arch/arm/dts/imx6ul-phytec-phycore-som.dtsi b/arch/arm/dts/i=
mx6ul-phytec-phycore-som.dtsi
> index 398546d7b92e..964f91950d93 100644
> --- a/arch/arm/dts/imx6ul-phytec-phycore-som.dtsi
> +++ b/arch/arm/dts/imx6ul-phytec-phycore-som.dtsi
> @@ -51,22 +51,25 @@
>  	nand-on-flash-bbt;
>  	status =3D "disabled";
>  =

> -	#address-cells =3D <1>;
> -	#size-cells =3D <1>;
> +	partitions {
> +		compatible =3D "fixed-partitions";
> +		#address-cells =3D <1>;
> +		#size-cells =3D <1>;
>  =

> -	partition@0 {
> -		label =3D "barebox";
> -		reg =3D <0x0 0x400000>;
> -	};
> +		partition@0 {
> +			label =3D "barebox";
> +			reg =3D <0x0 0x400000>;
> +		};
>  =

> -	partition@400000 {
> -		label =3D "barebox-environment";
> -		reg =3D <0x400000 0x100000>;
> -	};
> +		partition@400000 {
> +			label =3D "barebox-environment";
> +			reg =3D <0x400000 0x100000>;
> +		};
>  =

> -	partition@500000 {
> -		label =3D "root";
> -		reg =3D <0x500000 0x0>;
> +		partition@500000 {
> +			label =3D "root";
> +			reg =3D <0x500000 0x0>;
> +		};
>  	};
>  };
>  =

> -- =

> 2.20.1
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
