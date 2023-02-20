Delivery-date: Mon, 20 Feb 2023 09:57:18 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pU1z4-00CYNT-Jk
	for lore@lore.pengutronix.de; Mon, 20 Feb 2023 09:57:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pU1z3-0005tR-Cl
	for lore@pengutronix.de; Mon, 20 Feb 2023 09:57:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=L6Wu5LklDizcJHGsv2JQhxBMScaOeqhbQmVe1aHT7Uc=; b=xsO8o9dcZFmdAPhzNAeKIk5ars
	9ocPtpvBJstKNJfnZ+83NHe2D2b93l3vwQMI1GK29kkW5olN6GocYkceXnA9z6WsMjWluZ3h7AZVY
	5kidlEovWxr3U8JsTqc5ixT7MCMLMcxxfqr/sdxxFHQo4Ixr2TWIcKQ8dWMeCPgvt4ep8cAcD0OPI
	1xeZup2zHWf6U0OxscCplPhx5qqv1XpcvMTsXd1okGg4sdHFSs/MVnKzfIFfc1SkxeKNxJbAy62j6
	7X4YU6SJLNbEDF3jizsn5JF0xw1JMtkv3n5nKykmgF1Di3zdCcFcxz3ie1xb5sQ4CGTU+oeUDaClC
	sEWM0lPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pU1xi-003P6m-9F; Mon, 20 Feb 2023 08:55:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pU1xc-003P61-5f
	for barebox@lists.infradead.org; Mon, 20 Feb 2023 08:55:50 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pU1xa-0005f6-Ig; Mon, 20 Feb 2023 09:55:46 +0100
Message-ID: <b059c0e0-98b7-2a41-1608-8aaf73405172@pengutronix.de>
Date: Mon, 20 Feb 2023 09:55:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20230217172414.1835351-1-a.fatoum@pengutronix.de>
 <20230220083724.jws5niyjbhqcd4rp@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230220083724.jws5niyjbhqcd4rp@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230220_005548_272688_CDD6C90D 
X-CRM114-Status: GOOD (  24.01  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] RISC-V: virt: riscvemu: use new-style DT overlay
 syntax
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 20.02.23 09:37, Marco Felsch wrote:
> Hi Ahmad,
> 
> On 23-02-17, Ahmad Fatoum wrote:
>> DTC nowdays also supports a much less verbose syntax for DT overlays
>> that is internally converted to the usual much more verbose fragment
>> syntax. Switch to it.
>>
>> No functional change intended.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  .../riscv/boards/riscvemu/overlay-of-sram.dts | 197 ++++++++----------
>>  1 file changed, 90 insertions(+), 107 deletions(-)
>>
>> diff --git a/arch/riscv/boards/riscvemu/overlay-of-sram.dts b/arch/riscv/boards/riscvemu/overlay-of-sram.dts
>> index 092fb02518b9..395fde84c1a9 100644
>> --- a/arch/riscv/boards/riscvemu/overlay-of-sram.dts
>> +++ b/arch/riscv/boards/riscvemu/overlay-of-sram.dts
>> @@ -3,127 +3,110 @@
>>  /dts-v1/;
>>  /plugin/;
>>  
>> -/ {
>> -	fragment@0 {
>> -		target-path = "/soc";
>> -		__overlay__ {
>> -			#address-cells = <2>;
>> -			#size-cells = <2>;
>> -			sram@1000 {
>> -				compatible = "mtd-ram";
>> -				reg = <0 0x1000 0 0x10000>;
>> -				#address-cells = <1>;
>> -				#size-cells = <1>;
>> +&{/soc} {
> 
> We could also move everything under the root node right? So the
> following is also possible:
> 
> &{/} {
> 	chosen {
> 		environment {
> 		};
> 	};
> 	soc {
> 	};
> };
> 
> If that is the case I would change it to the above syntax instead of
> having several ones. Apart from that the change looks good to me.

I'd rather be explicit. For example htif below is supposed to be under
SoC IMO, yet riscvemu places it under /. Being explicit at least gives
a warning at runtime. I could move some stuff under / { } and leave
override others by symbol, but what does this improve?

> 
> Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
> 
>> +	#address-cells = <2>;
>> +	#size-cells = <2>;
>> +	sram@1000 {
>> +		compatible = "mtd-ram";
>> +		reg = <0 0x1000 0 0x10000>;
>> +		#address-cells = <1>;
>> +		#size-cells = <1>;
>> +
>> +		partitions {
>> +			compatible = "fixed-partitions";
>> +			#address-cells = <1>;
>> +			#size-cells = <1>;
>> +
>> +			partition@0 {
>> +				label = "bootrom";
>> +				reg = <0x0 0x40>;
>> +			};
>>  
>> -				partitions {
>> -					compatible = "fixed-partitions";
>> -					#address-cells = <1>;
>> -					#size-cells = <1>;
>> -
>> -					partition@0 {
>> -						label = "bootrom";
>> -						reg = <0x0 0x40>;
>> -					};
>> -
>> -					partition@40 {
>> -						label = "fdt";
>> -						reg = <0x40 0x1fc0>;
>> -					};
>> -
>> -					environment_sram: partition@3000 {
>> -						label = "barebox-environment";
>> -						reg = <0x3000 0xb000>;
>> -					};
>> -
>> -					backend_state_sram: partition@e000 {
>> -						label = "barebox-state";
>> -						reg = <0xe000 0x1000>;
>> -					};
>> -				};
>> +			partition@40 {
>> +				label = "fdt";
>> +				reg = <0x40 0x1fc0>;
>> +			};
>> +
>> +			environment_sram: partition@3000 {
>> +				label = "barebox-environment";
>> +				reg = <0x3000 0xb000>;
>>  			};
>> -		};
>> -	};
>>  
>> -	fragment@2 {
>> -		target-path = "/chosen";
>> -		__overlay__ {
>> -			environment {
>> -				compatible = "barebox,environment";
>> -				device-path = "/soc/sram@1000/partitions/partition@3000";
>> +			backend_state_sram: partition@e000 {
>> +				label = "barebox-state";
>> +				reg = <0xe000 0x1000>;
>>  			};
>>  		};
>>  	};
>> +};
>>  
>> -	fragment@3 {
>> -		target-path = "/";
>> -		__overlay__ {
>> -			aliases {
>> -				state = "/state";
>> -			};
>> +&{/chosen} {
>> +	environment {
>> +		compatible = "barebox,environment";
>> +		device-path = "/soc/sram@1000/partitions/partition@3000";
>> +	};
>> +};
>> +
>> +&{/} {
>> +	aliases {
>> +		state = "/state";
>> +	};
>> +
>> +	state {
>> +		#address-cells = <1>;
>> +		#size-cells = <1>;
>> +		compatible = "barebox,state";
>> +		magic = <0x290cf8c6>;
>> +		backend-type = "raw";
>> +		backend = <&backend_state_sram>;
>> +		backend-stridesize = <64>;
>> +
>> +		bootstate {
>> +			#address-cells = <1>;
>> +			#size-cells = <1>;
>>  
>> -			state {
>> +			system0 {
>>  				#address-cells = <1>;
>>  				#size-cells = <1>;
>> -				compatible = "barebox,state";
>> -				magic = <0x290cf8c6>;
>> -				backend-type = "raw";
>> -				backend = <&backend_state_sram>;
>> -				backend-stridesize = <64>;
>> -
>> -				bootstate {
>> -					#address-cells = <1>;
>> -					#size-cells = <1>;
>> -
>> -					system0 {
>> -						#address-cells = <1>;
>> -						#size-cells = <1>;
>> -
>> -						remaining_attempts@0 {
>> -							reg = <0x0 0x4>;
>> -							type = "uint32";
>> -							default = <3>;
>> -						};
>> -
>> -						priority@4 {
>> -							reg = <0x4 0x4>;
>> -							type = "uint32";
>> -							default = <20>;
>> -						};
>> -					};
>> -
>> -					system1 {
>> -						#address-cells = <1>;
>> -						#size-cells = <1>;
>> -
>> -						remaining_attempts@8 {
>> -							reg = <0x8 0x4>;
>> -							type = "uint32";
>> -							default = <3>;
>> -						};
>> -
>> -						priority@c {
>> -							reg = <0xc 0x4>;
>> -							type = "uint32";
>> -							default = <21>;
>> -						};
>> -					};
>> -
>> -					last_chosen@10 {
>> -						reg = <0x10 0x4>;
>> -						type = "uint32";
>> -					};
>> +
>> +				remaining_attempts@0 {
>> +					reg = <0x0 0x4>;
>> +					type = "uint32";
>> +					default = <3>;
>> +				};
>> +
>> +				priority@4 {
>> +					reg = <0x4 0x4>;
>> +					type = "uint32";
>> +					default = <20>;
>>  				};
>>  			};
>> -		};
>> -	};
>>  
>> -	fragment@4 {
>> -		target-path = "/htif";
>> -		#address-cells = <2>;
>> -		#size-cells = <2>;
>> +			system1 {
>> +				#address-cells = <1>;
>> +				#size-cells = <1>;
>>  
>> -		__overlay__ {
>> -			reg = <0 0x40008000 0 0x8>;
>> +				remaining_attempts@8 {
>> +					reg = <0x8 0x4>;
>> +					type = "uint32";
>> +					default = <3>;
>> +				};
>> +
>> +				priority@c {
>> +					reg = <0xc 0x4>;
>> +					type = "uint32";
>> +					default = <21>;
>> +				};
>> +			};
>> +
>> +			last_chosen@10 {
>> +				reg = <0x10 0x4>;
>> +				type = "uint32";
>> +			};
>>  		};
>>  	};
>>  };
>> +
>> +&{/htif} {
>> +	reg = <0 0x40008000 0 0x8>;
>> +};
>> -- 
>> 2.30.2
>>
>>
>>
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



