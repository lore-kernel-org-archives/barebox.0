Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g7F1k-0000X5-A1
 for barebox@lists.infradead.org; Tue, 02 Oct 2018 07:23:30 +0000
Date: Tue, 2 Oct 2018 09:23:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181002072316.rmwwor5i2tdfrzyv@pengutronix.de>
References: <20180928104206.17764-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180928104206.17764-1-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH 1/6] dts: achilles: add state for bootchooser
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>, Enrico Jorns <ejo@pengutronix.de>

On Fri, Sep 28, 2018 at 12:42:01PM +0200, Steffen Trumtrar wrote:
> From: Enrico Jorns <ejo@pengutronix.de>
> 
> Signed-off-by: Enrico Jorns <ejo@pengutronix.de>
> ---

Applied, thanks

Sascha

>  arch/arm/dts/socfpga_arria10_achilles.dts | 90 +++++++++++++++++++++++
>  1 file changed, 90 insertions(+)
> 
> diff --git a/arch/arm/dts/socfpga_arria10_achilles.dts b/arch/arm/dts/socfpga_arria10_achilles.dts
> index c03982ef5672..fc75afc79516 100644
> --- a/arch/arm/dts/socfpga_arria10_achilles.dts
> +++ b/arch/arm/dts/socfpga_arria10_achilles.dts
> @@ -23,6 +23,7 @@
>  
>  	aliases {
>  		serial0 = &uart0;
> +		state = &state;
>  	};
>  
>  	chosen {
> @@ -40,6 +41,90 @@
>  		reg = <0x0 0xc0000000>;
>  	};
>  
> +	state: state {
> +		magic = <0x4d433230>;
> +		compatible = "barebox,state";
> +		backend-type = "raw";
> +		backend = <&state_mmc>;
> +		backend-stridesize = <1024>;
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +
> +		bootstate {
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +
> +			system0 {
> +				#address-cells = <1>;
> +				#size-cells = <1>;
> +
> +				remaining_attempts {
> +					reg = <0x0 0x4>;
> +					type = "uint32";
> +					default = <3>;
> +				};
> +				priority {
> +					reg = <0x4 0x4>;
> +					type = "uint32";
> +					default = <20>;
> +				};
> +			};
> +
> +			system1 {
> +				#address-cells = <1>;
> +				#size-cells = <1>;
> +
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
> +			};
> +			factory {
> +				#address-cells = <1>;
> +				#size-cells = <1>;
> +
> +				remaining_attempts {
> +					reg = <0x20 0x4>;
> +					type = "uint32";
> +					default = <3>;
> +				};
> +				priority {
> +					reg = <0x24 0x4>;
> +					type = "uint32";
> +					default = <10>;
> +				};
> +			};
> +			last_chosen {
> +				reg = <0x2C 0x4>;
> +				type = "uint32";
> +			};
> +		};
> +	};
> +
> +	bootstate: bootstate {
> +		compatible = "barebox,bootstate";
> +		backend-type = "state"; // or "nv", or "efivar"
> +		backend = <&state>;
> +
> +		system0 {
> +			default_attempts = <3>;
> +		};
> +
> +		system1 {
> +			default_attempts = <3>;
> +		};
> +
> +		factory {
> +			default_attempts = <3>;
> +		};
> +	};
> +
>  	soc {
>  		clkmgr@ffd04000 {
>  			clocks {
> @@ -120,6 +205,11 @@
>  		label = "environment";
>  		reg = <0x178000 0x8000>;
>  	};
> +
> +	state_mmc: partition@180000 {
> +		label = "state";
> +		reg = <0x180000 0xC00>;
> +	};
>  };
>  
>  &uart0 {
> -- 
> 2.19.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
