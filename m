Delivery-date: Mon, 09 Aug 2021 12:42:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mD2ju-00020J-Oe
	for lore@lore.pengutronix.de; Mon, 09 Aug 2021 12:42:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mD2jt-0000yk-El
	for lore@pengutronix.de; Mon, 09 Aug 2021 12:42:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=DYX1ErqY7+nG7dWLeXVUXsiVf+CKgPASpR6AKmovAqk=; b=FvSTy/8BWz6W1s0ziQfDoRDYCQ
	VX+gP1VivYuD2fI7oDTCQzVtlEzWX10cP8vP6q6Pc9vt7A3OkPNASGzZZjitX3nAy6yyoDKAmVzNn
	Z6pRgZpZnfGuLyzPb1qCdBcDTJQYOsQM/Y1sHGRxAlvZzs5KNJmRFv/1MiiK1Gww6/E1uAPDgsa/W
	f/2E99tLb1AMTnFeQZDKHZ1YuD3hq44dzCXtKj8KhT/iA2j+Oz/bR670VntIDUH1bSYprHgF0D+/z
	hwwxN7mnGFYp2p5ksJxRd5NKN1NZjqJMnbELjrCgSz85vlWIAFwAj7Fm+Inv49qBWqPN1QxFCY7sQ
	b7v2vh2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mD2i1-000Csq-RX; Mon, 09 Aug 2021 10:40:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mD2hw-000CsR-Hq
 for barebox@lists.infradead.org; Mon, 09 Aug 2021 10:40:38 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mD2ht-0000lA-49; Mon, 09 Aug 2021 12:40:33 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org, Uwe Kleine-Koenig <ukl@pengutronix.de>
References: <20210803165937.31608-1-a.fatoum@pengutronix.de>
 <20210803165937.31608-2-a.fatoum@pengutronix.de>
 <7a0b3298-2fe4-13d3-e6ef-28814a8831c2@pengutronix.de>
Message-ID: <aa57423e-2141-12a9-cc9d-845730e0190b@pengutronix.de>
Date: Mon, 9 Aug 2021 12:40:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <7a0b3298-2fe4-13d3-e6ef-28814a8831c2@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210809_034036_654946_1418483E 
X-CRM114-Status: GOOD (  28.77  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] ARM: i.MX8MM: add reboot to serial download mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 05.08.21 17:32, Ahmad Fatoum wrote:
> On 03.08.21 18:59, Ahmad Fatoum wrote:
>> The i.MX8MM reference manual follows long established tradition in not
>> documenting BootROM magic reboot codes. For older i.MX variants, the
>> values can be seen in the bmode tables of Freescale's U-Boot patches.
>>
>> There are no such patches for the i.MX8M, but testing shows that
>>
>> 	mw 0x30390094 0x10 ; mw 0x30390098 0x40000000
>>
>> is one of the configurations that trigger serial download on next warm
>> reset on an i.MX8MM. Describe this in the device tree, so
>>
>> 	gpr.reboot_mode.next=serial reset -r imxwd-warm
>>
>> does the right thing for that SoC.
> 
> As you are currently doing i.MX8MP serial boot work, could you apply this
> series, boot barebox containing it (and the i.MX watchdog driver)
> from eMMC and try out:
> 
> 	mw 0x30390094 0x10 ; mw 0x30390098 0x40000000
> 	reset -r imxwd-warm
> 
> If the 8MP is similar enough to the 8MM in this respect, the BootROM
> should fall into serial download mode despite being strapped for
> eMMC.

FTR: The same sequence doesn't work on a 8MP.

> 
> Thanks!
> Ahmad
> 
> 
>>
>> This all might work for other i.MX8M variants as well, but the dtsi
>> can be genericized later on when tested.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>> Cc: David Jander <david@protonic.nl>
>> Cc: Lucas Stach <l.stach@pengutronix.de>
>> ---
>>  Documentation/boards/imx.rst   | 29 +++++++++++++++++++++++++++++
>>  arch/arm/dts/imx8mm-evk.dts    |  1 +
>>  arch/arm/dts/imx8mm-prt8mm.dts |  1 +
>>  arch/arm/dts/imx8mm.dtsi       | 18 ++++++++++++++++++
>>  4 files changed, 49 insertions(+)
>>  create mode 100644 arch/arm/dts/imx8mm.dtsi
>>
>> diff --git a/Documentation/boards/imx.rst b/Documentation/boards/imx.rst
>> index 887b45c70881..4ce9d9808cc1 100644
>> --- a/Documentation/boards/imx.rst
>> +++ b/Documentation/boards/imx.rst
>> @@ -83,6 +83,35 @@ The images can also always be started as second stage on the target:
>>  
>>    barebox@Board Name:/ bootm /mnt/tftp/barebox-freescale-imx51-babbage.img
>>  
>> +BootROM Reboot mode codes (bmode)
>> +^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>> +
>> +For select SoCs, barebox supports communicating an alternative boot medium
>> +that BootROM should select after a warm reset::
>> +
>> +  barebox@FSL i.MX8MM EVK board:/ devinfo gpr.reboot_mode
>> +  Driver: syscon-reboot-mode
>> +  Bus: platform
>> +  Parent: 30390000.reset-controller@30390000.of
>> +  Parameters:
>> +    next: normal (type: enum) (values: "normal", "serial")
>> +    prev: normal (type: enum) (values: "normal", "serial")
>> +  Device node: /soc@0/bus@30000000/reset-controller@30390000/reboot-mode
>> +  reboot-mode {
>> +          compatible = "barebox,syscon-reboot-mode";
>> +          offset = <0x94 0x98>;
>> +          mask = <0xffffffff 0x40000000>;
>> +          mode-normal = <0x0 0x0>;
>> +          mode-serial = <0x10 0x40000000>;
>> +  };
>> +
>> +  barebox@FSL i.MX8MM EVK board:/ gpr.reboot_mode.next=serial reset -r imxwd-warm
>> +
>> +This will cause barebox to fall into serial download mode on an i.MX8MM.
>> +
>> +Different SoCs may have more possible reboot modes available.
>> +See the section on :ref:`Reboot modes<reboot_mode>` for more information.
>> +
>>  High Assurance Boot
>>  ^^^^^^^^^^^^^^^^^^^
>>  
>> diff --git a/arch/arm/dts/imx8mm-evk.dts b/arch/arm/dts/imx8mm-evk.dts
>> index 1e8619ccf584..304f150307a3 100644
>> --- a/arch/arm/dts/imx8mm-evk.dts
>> +++ b/arch/arm/dts/imx8mm-evk.dts
>> @@ -7,6 +7,7 @@
>>  /dts-v1/;
>>  
>>  #include <arm64/freescale/imx8mm-evk.dts>
>> +#include "imx8mm.dtsi"
>>  
>>  / {
>>  	chosen {
>> diff --git a/arch/arm/dts/imx8mm-prt8mm.dts b/arch/arm/dts/imx8mm-prt8mm.dts
>> index bdcdd0806243..abd758f2856e 100644
>> --- a/arch/arm/dts/imx8mm-prt8mm.dts
>> +++ b/arch/arm/dts/imx8mm-prt8mm.dts
>> @@ -7,6 +7,7 @@
>>  /dts-v1/;
>>  
>>  #include <arm64/freescale/imx8mm.dtsi>
>> +#include "imx8mm.dtsi"
>>  
>>  / {
>>  	model = "Protonic PRT8MM";
>> diff --git a/arch/arm/dts/imx8mm.dtsi b/arch/arm/dts/imx8mm.dtsi
>> new file mode 100644
>> index 000000000000..78bbacb2b1b2
>> --- /dev/null
>> +++ b/arch/arm/dts/imx8mm.dtsi
>> @@ -0,0 +1,18 @@
>> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>> +/ {
>> +	aliases {
>> +		gpr.reboot_mode = &reboot_mode_gpr;
>> +	};
>> +};
>> +
>> +&src {
>> +	compatible = "fsl,imx8mm-src", "fsl,imx8mq-src", "syscon", "simple-mfd";
>> +
>> +	reboot_mode_gpr: reboot-mode {
>> +		compatible = "barebox,syscon-reboot-mode";
>> +		offset = <0x94>, <0x98>; /* SRC_GPR{9,10} */
>> +		mask = <0xffffffff>, <0x40000000>;
>> +		mode-normal = <0>, <0>;
>> +		mode-serial = <0x00000010>, <0x40000000>;
>> +	};
>> +};
>>
> 
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

