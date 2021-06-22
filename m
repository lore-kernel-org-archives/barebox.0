Delivery-date: Tue, 22 Jun 2021 11:09:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvcP2-0000Xu-3M
	for lore@lore.pengutronix.de; Tue, 22 Jun 2021 11:09:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvcP1-0008HQ-09
	for lore@pengutronix.de; Tue, 22 Jun 2021 11:09:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=AH737DOTwNHHC1Ux+rBYR4LtSMqleiQPYxOfrcy6mdc=; b=HhQH2Q3SxT9xvvbOUedD+NiX89
	xlAfgata+RZ8rpMFOGabtJQcMhWDY/QgA7+lLgZjfFLwdL9i0oYNUpsqIb++CsF4Q5Wcvpx9ZwhfV
	ZYKykHU4x/1Iyf8dRRazG48uuUWHHv6AsWQvTM1clGIzFucoQCxt/wygp30fAa8CSZ46Au2ygZPq0
	8kXJ4o+0m1EL1IaZPJlW5a0RHkJPZSZjc9TLHYnNKLZjihqaKxNmOPnidcX9FpTVop+JWrWU8X8bO
	rjvT6yJeoqGh8Js7JDwStPUQUEJmeI8vB0H3CkdwrHZlk/YvvuHnB8N1WAziUKY+i8lDbCSak5mOS
	KwfVnrWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvcNZ-006MBL-Ig; Tue, 22 Jun 2021 09:07:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvcNS-006M8p-Ap
 for barebox@lists.infradead.org; Tue, 22 Jun 2021 09:07:29 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>) id 1lvcNQ-00088e-8U
 for barebox@lists.infradead.org; Tue, 22 Jun 2021 11:07:24 +0200
To: barebox@lists.infradead.org
References: <20210622080811.28335-1-a.fatoum@pengutronix.de>
 <YNGgvKY3xNdMGPey@ada.ifak-system.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <42009e22-baf5-6b93-88f7-b62eaf4ae604@pengutronix.de>
Date: Tue, 22 Jun 2021 11:07:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <YNGgvKY3xNdMGPey@ada.ifak-system.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210622_020726_436078_311B08CC 
X-CRM114-Status: GOOD (  39.49  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: at91: sama5d27_som1_ek: populate MAC address from
 EEPROM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 22.06.21 10:35, Alexander Dahl wrote:
> Hei hei,
> 
> Am Tue, Jun 22, 2021 at 10:08:11AM +0200 schrieb Ahmad Fatoum:
>> With the latest NVMEM enhancements merged, barebox networking core now
>> always consults NVMEM cells referenced in the network controller
>> device tree node before it falls back to randomizing a new address.
>>
>> The SAM5D27-SOM1 has a 256 byte EEPROM, which holds a MAC address in its
>> last 6 bytes. Describe this in the device tree, so boards using the SoM
>> will get an unique MAC address assigned and fixed up into the kernel
>> device tree. 
> 
> I have access to such a device, but I can not promise I have time to
> test this currently. :-/

No worries, I've an EK1 myself and tested it before sending it out.

>> This change can be dropped again when/if the change is
>> submitted and applied upstream.
> 
> What do you mean with "upstream" here? Linux kernel?

Yes. The dts/ directory in barebox is regularly synchronized with the
upstream Device Tree repository, which is still hosted in the Linux
repository.

> I just had a short look into u-boot for that board, there's the i2c
> eeprom set in dts only, and dts is still the old u-boot way, not dts
> from kernel plus fixups in a separate file. The mac is set in
> board/atmel/sama5d27_som1_ek/sama5d27_som1_ek.c like this:
> 
>  87 #define MAC24AA_MAC_OFFSET      0xfa
>  88
>  89 #ifdef CONFIG_MISC_INIT_R
>  90 int misc_init_r(void)
>  91 {
>  92 #ifdef CONFIG_I2C_EEPROM
>  93         at91_set_ethaddr(MAC24AA_MAC_OFFSET);
>  94 #endif
>  95         return 0;
>  96 }
>  97 #endif
> 
> What would be the right way for kernel, u-boot, and barebox? Have i2c
> eeprom defined in dts and an nvmem cell on top like you proposed for
> barebox now?

Many Linux network drivers already call of_get_mac_address and thus would
read out a NVMEM cell if available. There aren't too many device trees
making use of it, but that seems the preferred way going forward.
(MAC addressed fixed up by bootloader is higher priority though).

In general, I think Linux should not rely more than necessary on firmware.

> Not sure if u-boot can do that (already)?

No idea. grepping "mac-address" shows no nvmem related C code though.

> But it would
> still work if only Linux and barebox did it that way, right?

So far, either board code set it, similar to your snippet above:
eth_register_ethaddr(if_index, mac_addr);

Or NVMEM drivers had a barebox,provide-mac-address = <&phandle_to_netdev ...>
property and they called eth_register_ethaddr.

The NVMEM binding is the upstream way, so after a device tree sync, even existing
boards may find themselves with the correct address instead of randomization without
having to do anything (nvmem cells doesn't override other methods, so no brekage).

Cheers,
Ahmad

> 
> Greets
> Alex
> 
>>
>> Reported-by: Alexander Dahl <ada@thorsis.com>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  arch/arm/dts/at91-sama5d27_som1.dtsi   | 18 ++++++++++++++++++
>>  arch/arm/dts/at91-sama5d27_som1_ek.dts |  2 +-
>>  2 files changed, 19 insertions(+), 1 deletion(-)
>>  create mode 100644 arch/arm/dts/at91-sama5d27_som1.dtsi
>>
>> diff --git a/arch/arm/dts/at91-sama5d27_som1.dtsi b/arch/arm/dts/at91-sama5d27_som1.dtsi
>> new file mode 100644
>> index 000000000000..0d84c45f9263
>> --- /dev/null
>> +++ b/arch/arm/dts/at91-sama5d27_som1.dtsi
>> @@ -0,0 +1,18 @@
>> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>> +
>> +#include "sama5d2.dtsi"
>> +
>> +&macb0 {
>> +	nvmem-cells = <&macaddr>;
>> +	nvmem-cell-names = "mac-address";
>> +};
>> +
>> +&{/ahb/apb/i2c@f8028000/at24@50} {
>> +	#address-cells = <1>;
>> +	#size-cells = <1>;
>> +
>> +	macaddr: mac-address@fa {
>> +		reg = <0xfa 6>;
>> +		label = "mac-address";
>> +	};
>> +};
>> diff --git a/arch/arm/dts/at91-sama5d27_som1_ek.dts b/arch/arm/dts/at91-sama5d27_som1_ek.dts
>> index 97a326dd2b26..1a704b42680f 100644
>> --- a/arch/arm/dts/at91-sama5d27_som1_ek.dts
>> +++ b/arch/arm/dts/at91-sama5d27_som1_ek.dts
>> @@ -4,7 +4,7 @@
>>   */
>>  
>>  #include <arm/at91-sama5d27_som1_ek.dts>
>> -#include "sama5d2.dtsi"
>> +#include "at91-sama5d27_som1.dtsi"
>>  
>>  / {
>>  	chosen {
>> -- 
>> 2.29.2
>>
>>
>> _______________________________________________
>> barebox mailing list
>> barebox@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/barebox
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

