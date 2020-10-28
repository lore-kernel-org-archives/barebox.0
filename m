Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kXmE8-0001g4-L4
 for barebox@lists.infradead.org; Wed, 28 Oct 2020 14:15:01 +0000
Received: by mail-qt1-x842.google.com with SMTP id m9so3600968qth.7
 for <barebox@lists.infradead.org>; Wed, 28 Oct 2020 07:15:00 -0700 (PDT)
Received: from beer.tkernel.org ([108.171.96.25])
 by smtp.gmail.com with ESMTPSA id q3sm2837748qkf.24.2020.10.28.07.14.55
 for <barebox@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 28 Oct 2020 07:14:58 -0700 (PDT)
Date: Wed, 28 Oct 2020 22:14:51 +0800
From: Du Huanpeng <u74147@gmail.com>
Message-ID: <20201028141448.GA27980@beer.tkernel.org>
References: <1603887359-12609-1-git-send-email-u74147@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1603887359-12609-1-git-send-email-u74147@gmail.com>
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
Subject: Re: [PATCH] ls1b200: dts: add serials and nand nodes
To: barebox@lists.infradead.org

sorry, please hold. I will send a v2 patch.

On Wed, Oct 28, 2020 at 08:15:59PM +0800, Du Huanpeng wrote:
> add all serials and sort them by base address.
>  UART0_1, UART0_2, UART0_3 renamed to
>  serial6, serial7, serial8.
>  UART1_1, UART1_2, UART1_3 renamed to
>  serial9, serial10, serial11.
> 
> because the nand and pll share the some base
> address, so add it as well.
> 
> Signed-off-by: Du Huanpeng <u74147@gmail.com>
> ---
>  arch/mips/dts/ls1b.dtsi | 158 ++++++++++++++++++++++++++++++++++++++----------
>  1 file changed, 125 insertions(+), 33 deletions(-)
> 
> diff --git a/arch/mips/dts/ls1b.dtsi b/arch/mips/dts/ls1b.dtsi
> index 8b772af..0bd3d08 100644
> --- a/arch/mips/dts/ls1b.dtsi
> +++ b/arch/mips/dts/ls1b.dtsi
> @@ -11,43 +11,135 @@
>  		device_type = "soc";
>  		ranges;
>  
> -		serial0: serial@1fe40000 {
> -			compatible = "ns16550a";
> -			reg = <0x1fe40000 0x8>;
> -			reg-shift = <0>;
> -			clock-frequency = <83000000>;
> -			status = "disabled";
> -		};
> +		xbar {
> +			compatible = "loongson,xbar-bus", "simple-bus";
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +			ranges;
>  
> -		serial1: serial@1fe44000 {
> -			compatible = "ns16550a";
> -			reg = <0x1fe44000 0x8>;
> -			reg-shift = <0>;
> -			clock-frequency = <83000000>;
> -			status = "disabled";
> -		};
> +			axi-mux {
> +				compatible = "loongson,axi-mux", "simple-bus";
> +				#address-cells = <1>;
> +				#size-cells = <1>;
> +				ranges;
>  
> -		serial2: serial@1fe48000 {
> -			compatible = "ns16550a";
> -			reg = <0x1fe48000 0x8>;
> -			reg-shift = <0>;
> -			clock-frequency = <83000000>;
> -			status = "disabled";
> -		};
>  
> -		serial3: serial@1fe4c000 {
> -			compatible = "ns16550a";
> -			reg = <0x1fe4c000 0x8>;
> -			reg-shift = <0>;
> -			clock-frequency = <83000000>;
> -			status = "disabled";
> -		};
> +				apb@0x1fe40000 {
> +					compatible = "loongson,apb-bus", "simple-bus";
> +					#address-cells = <1>;
> +					#size-cells = <1>;
> +					ranges;
> +
> +					serial0: serial@1fe40000 {
> +						compatible = "ns16550a";
> +						reg = <0x1fe40000 0x8>;
> +						reg-shift = <0>;
> +						clocks = <&pll LS1B_CLK_APB_DIV>;
> +						status = "disabled";
> +					};
> +
> +					serial6: serial@1fe41000 {
> +						compatible = "ns16550a";
> +						reg = <0x1fe41000 0x8>;
> +						reg-shift = <0>;
> +						clocks = <&pll LS1B_CLK_APB_DIV>;
> +						status = "disabled";
> +					};
> +
> +					serial7: serial@1fe42000 {
> +						compatible = "ns16550a";
> +						reg = <0x1fe42000 0x8>;
> +						reg-shift = <0>;
> +						clocks = <&pll LS1B_CLK_APB_DIV>;
> +						status = "disabled";
> +					};
> +
> +					serial8: serial@1fe43000 {
> +						compatible = "ns16550a";
> +						reg = <0x1fe43000 0x8>;
> +						reg-shift = <0>;
> +						clocks = <&pll LS1B_CLK_APB_DIV>;
> +						status = "disabled";
> +					};
> +
> +					serial1: serial@1fe44000 {
> +						compatible = "ns16550a";
> +						reg = <0x1fe44000 0x8>;
> +						reg-shift = <0>;
> +						clocks = <&pll LS1B_CLK_APB_DIV>;
> +						status = "disabled";
> +					};
> +
> +					serial9: serial@1fe45000 {
> +						compatible = "ns16550a";
> +						reg = <0x1fe45000 0x8>;
> +						reg-shift = <0>;
> +						clocks = <&pll LS1B_CLK_APB_DIV>;
> +						status = "disabled";
> +					};
> +
> +					serial10: serial@1fe46000 {
> +						compatible = "ns16550a";
> +						reg = <0x1fe46000 0x8>;
> +						reg-shift = <0>;
> +						clocks = <&pll LS1B_CLK_APB_DIV>;
> +						status = "disabled";
> +					};
> +
> +					serial11: serial@1fe47000 {
> +						compatible = "ns16550a";
> +						reg = <0x1fe47000 0x8>;
> +						reg-shift = <0>;
> +						clocks = <&pll LS1B_CLK_APB_DIV>;
> +						status = "disabled";
> +					};
> +
> +					serial2: serial@1fe48000 {
> +						compatible = "ns16550a";
> +						reg = <0x1fe48000 0x8>;
> +						reg-shift = <0>;
> +						clocks = <&pll LS1B_CLK_APB_DIV>;
> +						status = "disabled";
> +					};
> +
> +					serial3: serial@1fe4c000 {
> +						compatible = "ns16550a";
> +						reg = <0x1fe4c000 0x8>;
> +						reg-shift = <0>;
> +						clocks = <&pll LS1B_CLK_APB_DIV>;
> +						status = "disabled";
> +					};
> +
> +					serial4: serial@1fe6c000 {
> +						compatible = "ns16550a";
> +						reg = <0x1fe6c000 0x8>;
> +						reg-shift = <0>;
> +						clocks = <&pll LS1B_CLK_APB_DIV>;
> +						status = "disabled";
> +					};
> +
> +					serial5: serial@1fe7c000 {
> +						compatible = "ns16550a";
> +						reg = <0x1fe7c000 0x8>;
> +						reg-shift = <0>;
> +						clocks = <&pll LS1B_CLK_APB_DIV>;
> +						status = "disabled";
> +					};
> +
> +					nand: nand@1fe78000 {
> +						compatible = "loongson,ls1b-nand";
> +						reg = <0x1fe78000 0x30>, <0x1fe78040 0x8>;
> +						reg-names = "ctrl", "dma";
> +				       };
>  
> -		pll: pll@1fe78030 {
> -			compatible = "loongson,ls1b-pll";
> -			#clock-cells = <1>;
> -			reg = <0x1fe78030 0x8>;
> -			clocks = <&oscillator>;
> +					pll: pll@1fe78030 {
> +						compatible = "loongson,ls1b-pll";
> +						#clock-cells = <1>;
> +						reg = <0x1fe78030 0x8>;
> +						clocks = <&oscillator>;
> +					};
> +				};
> +			};
>  		};
>  	};
>  };
> -- 
> 2.7.4
> 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
