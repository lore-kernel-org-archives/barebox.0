Delivery-date: Mon, 20 Feb 2023 09:39:42 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pU1i2-00CXRO-9A
	for lore@lore.pengutronix.de; Mon, 20 Feb 2023 09:39:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pU1i1-0003X6-2M
	for lore@pengutronix.de; Mon, 20 Feb 2023 09:39:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DuGIk36ytrzlzp+cgSQ99FK837UQeNAjQb/9Kx6Kxkg=; b=tGrEgpqhcFtH7GU5c7OWLSgOA2
	3i+3w1/wtEIqV+bvnxPU1CwTPrQrXNCox74S1MIbI1cJdO65bqJD0w8VRdnyxqul39oXeSzlTSnZK
	PHwOGkPaBMGHOY8VwxCPmBm466xOhpLhqY3Uxrkvh38+LBQjnMNZ8B/YNnHps8ASPg3KhpOdt+92e
	UkrkrZvqj6LIz5t9Gb5bqMf8xcPaHQTGdD4sA5dwWCz89aPguuTQbsqbhKaRohi6nymdeXMkOWMy1
	KwJ9FY+bxyuhBwWbCErxz9nOEnhK3/MxYndO2pxgS36wQr5Sxaw8t6+ioU+TYsvD+H/z58KVDhZ3o
	qAL+n1Lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pU1g2-003Lza-FU; Mon, 20 Feb 2023 08:37:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pU1ft-003Lvn-Fy
	for barebox@lists.infradead.org; Mon, 20 Feb 2023 08:37:33 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pU1fo-0003M0-K5; Mon, 20 Feb 2023 09:37:24 +0100
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pU1fo-0001HP-C7; Mon, 20 Feb 2023 09:37:24 +0100
Date: Mon, 20 Feb 2023 09:37:24 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230220083724.jws5niyjbhqcd4rp@pengutronix.de>
References: <20230217172414.1835351-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230217172414.1835351-1-a.fatoum@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230220_003732_128098_F140F77B 
X-CRM114-Status: GOOD (  18.12  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] RISC-V: virt: riscvemu: use new-style DT overlay
 syntax
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

On 23-02-17, Ahmad Fatoum wrote:
> DTC nowdays also supports a much less verbose syntax for DT overlays
> that is internally converted to the usual much more verbose fragment
> syntax. Switch to it.
> 
> No functional change intended.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  .../riscv/boards/riscvemu/overlay-of-sram.dts | 197 ++++++++----------
>  1 file changed, 90 insertions(+), 107 deletions(-)
> 
> diff --git a/arch/riscv/boards/riscvemu/overlay-of-sram.dts b/arch/riscv/boards/riscvemu/overlay-of-sram.dts
> index 092fb02518b9..395fde84c1a9 100644
> --- a/arch/riscv/boards/riscvemu/overlay-of-sram.dts
> +++ b/arch/riscv/boards/riscvemu/overlay-of-sram.dts
> @@ -3,127 +3,110 @@
>  /dts-v1/;
>  /plugin/;
>  
> -/ {
> -	fragment@0 {
> -		target-path = "/soc";
> -		__overlay__ {
> -			#address-cells = <2>;
> -			#size-cells = <2>;
> -			sram@1000 {
> -				compatible = "mtd-ram";
> -				reg = <0 0x1000 0 0x10000>;
> -				#address-cells = <1>;
> -				#size-cells = <1>;
> +&{/soc} {

We could also move everything under the root node right? So the
following is also possible:

&{/} {
	chosen {
		environment {
		};
	};
	soc {
	};
};

If that is the case I would change it to the above syntax instead of
having several ones. Apart from that the change looks good to me.

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

> +	#address-cells = <2>;
> +	#size-cells = <2>;
> +	sram@1000 {
> +		compatible = "mtd-ram";
> +		reg = <0 0x1000 0 0x10000>;
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +
> +		partitions {
> +			compatible = "fixed-partitions";
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +
> +			partition@0 {
> +				label = "bootrom";
> +				reg = <0x0 0x40>;
> +			};
>  
> -				partitions {
> -					compatible = "fixed-partitions";
> -					#address-cells = <1>;
> -					#size-cells = <1>;
> -
> -					partition@0 {
> -						label = "bootrom";
> -						reg = <0x0 0x40>;
> -					};
> -
> -					partition@40 {
> -						label = "fdt";
> -						reg = <0x40 0x1fc0>;
> -					};
> -
> -					environment_sram: partition@3000 {
> -						label = "barebox-environment";
> -						reg = <0x3000 0xb000>;
> -					};
> -
> -					backend_state_sram: partition@e000 {
> -						label = "barebox-state";
> -						reg = <0xe000 0x1000>;
> -					};
> -				};
> +			partition@40 {
> +				label = "fdt";
> +				reg = <0x40 0x1fc0>;
> +			};
> +
> +			environment_sram: partition@3000 {
> +				label = "barebox-environment";
> +				reg = <0x3000 0xb000>;
>  			};
> -		};
> -	};
>  
> -	fragment@2 {
> -		target-path = "/chosen";
> -		__overlay__ {
> -			environment {
> -				compatible = "barebox,environment";
> -				device-path = "/soc/sram@1000/partitions/partition@3000";
> +			backend_state_sram: partition@e000 {
> +				label = "barebox-state";
> +				reg = <0xe000 0x1000>;
>  			};
>  		};
>  	};
> +};
>  
> -	fragment@3 {
> -		target-path = "/";
> -		__overlay__ {
> -			aliases {
> -				state = "/state";
> -			};
> +&{/chosen} {
> +	environment {
> +		compatible = "barebox,environment";
> +		device-path = "/soc/sram@1000/partitions/partition@3000";
> +	};
> +};
> +
> +&{/} {
> +	aliases {
> +		state = "/state";
> +	};
> +
> +	state {
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		compatible = "barebox,state";
> +		magic = <0x290cf8c6>;
> +		backend-type = "raw";
> +		backend = <&backend_state_sram>;
> +		backend-stridesize = <64>;
> +
> +		bootstate {
> +			#address-cells = <1>;
> +			#size-cells = <1>;
>  
> -			state {
> +			system0 {
>  				#address-cells = <1>;
>  				#size-cells = <1>;
> -				compatible = "barebox,state";
> -				magic = <0x290cf8c6>;
> -				backend-type = "raw";
> -				backend = <&backend_state_sram>;
> -				backend-stridesize = <64>;
> -
> -				bootstate {
> -					#address-cells = <1>;
> -					#size-cells = <1>;
> -
> -					system0 {
> -						#address-cells = <1>;
> -						#size-cells = <1>;
> -
> -						remaining_attempts@0 {
> -							reg = <0x0 0x4>;
> -							type = "uint32";
> -							default = <3>;
> -						};
> -
> -						priority@4 {
> -							reg = <0x4 0x4>;
> -							type = "uint32";
> -							default = <20>;
> -						};
> -					};
> -
> -					system1 {
> -						#address-cells = <1>;
> -						#size-cells = <1>;
> -
> -						remaining_attempts@8 {
> -							reg = <0x8 0x4>;
> -							type = "uint32";
> -							default = <3>;
> -						};
> -
> -						priority@c {
> -							reg = <0xc 0x4>;
> -							type = "uint32";
> -							default = <21>;
> -						};
> -					};
> -
> -					last_chosen@10 {
> -						reg = <0x10 0x4>;
> -						type = "uint32";
> -					};
> +
> +				remaining_attempts@0 {
> +					reg = <0x0 0x4>;
> +					type = "uint32";
> +					default = <3>;
> +				};
> +
> +				priority@4 {
> +					reg = <0x4 0x4>;
> +					type = "uint32";
> +					default = <20>;
>  				};
>  			};
> -		};
> -	};
>  
> -	fragment@4 {
> -		target-path = "/htif";
> -		#address-cells = <2>;
> -		#size-cells = <2>;
> +			system1 {
> +				#address-cells = <1>;
> +				#size-cells = <1>;
>  
> -		__overlay__ {
> -			reg = <0 0x40008000 0 0x8>;
> +				remaining_attempts@8 {
> +					reg = <0x8 0x4>;
> +					type = "uint32";
> +					default = <3>;
> +				};
> +
> +				priority@c {
> +					reg = <0xc 0x4>;
> +					type = "uint32";
> +					default = <21>;
> +				};
> +			};
> +
> +			last_chosen@10 {
> +				reg = <0x10 0x4>;
> +				type = "uint32";
> +			};
>  		};
>  	};
>  };
> +
> +&{/htif} {
> +	reg = <0 0x40008000 0 0x8>;
> +};
> -- 
> 2.30.2
> 
> 
> 


