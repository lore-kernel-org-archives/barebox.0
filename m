Delivery-date: Wed, 22 Sep 2021 13:02:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mT010-0004fH-Bu
	for lore@lore.pengutronix.de; Wed, 22 Sep 2021 13:02:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mT00y-00024P-U9
	for lore@pengutronix.de; Wed, 22 Sep 2021 13:02:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=00/zo5X8nMzY+wk7J8Nfl/WPq9C8mDIbk+1puDxDKgs=; b=uOT0wCpR+0btUlInCsysKSL8N3
	ksUnKQUcnv2cNpDASw64vcvP8RuDMtDUHtavrleNaRj16qHCnFWybU4iv3SNB0Hf8A23z1sGi4tny
	vcMHbN3i1Jwk+P850iatH5K2LJsWqk7fCbxhADvR5EtcSY5Bu2KZnzk4y7D+iGyMMJfhhx9aOmeGd
	9koQtcHchfUNZ2jG/2yGYP6itZ9slSlRBCn0fJchP+63QTrimiYGRWy0gwyz32gbrIcE0QbxTxOkd
	ak7YuTQ/waH3iKLAiSS7P77SwGYLPm0fozoHhGiV6ABXPUqhZydxQRuvPZwKn6RwFlbnqawrSzSWw
	KZmT5n9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSzz8-008BFp-Hj; Wed, 22 Sep 2021 11:00:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSztT-0088u6-Vm
 for barebox@lists.infradead.org; Wed, 22 Sep 2021 10:54:30 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mSztR-0000qp-Lw; Wed, 22 Sep 2021 12:54:25 +0200
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Alexander Dahl <ada@thorsis.com>
References: <20210622080811.28335-1-a.fatoum@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <991b390e-3f6d-5c2d-af66-602292dc956e@pengutronix.de>
Date: Wed, 22 Sep 2021 12:54:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210622080811.28335-1-a.fatoum@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210922_035428_136311_013B1C38 
X-CRM114-Status: GOOD (  26.06  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: at91: sama5d27_som1_ek: populate MAC address from
 EEPROM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Sascha,

On 22.06.21 10:08, Ahmad Fatoum wrote:
> With the latest NVMEM enhancements merged, barebox networking core now
> always consults NVMEM cells referenced in the network controller
> device tree node before it falls back to randomizing a new address.
> 
> The SAM5D27-SOM1 has a 256 byte EEPROM, which holds a MAC address in its
> last 6 bytes. Describe this in the device tree, so boards using the SoM
> will get an unique MAC address assigned and fixed up into the kernel
> device tree. This change can be dropped again when/if the change is
> submitted and applied upstream.

This patch seems to have slipped through the cracks.

Cheers,
Ahmad

> 
> Reported-by: Alexander Dahl <ada@thorsis.com>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/dts/at91-sama5d27_som1.dtsi   | 18 ++++++++++++++++++
>  arch/arm/dts/at91-sama5d27_som1_ek.dts |  2 +-
>  2 files changed, 19 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm/dts/at91-sama5d27_som1.dtsi
> 
> diff --git a/arch/arm/dts/at91-sama5d27_som1.dtsi b/arch/arm/dts/at91-sama5d27_som1.dtsi
> new file mode 100644
> index 000000000000..0d84c45f9263
> --- /dev/null
> +++ b/arch/arm/dts/at91-sama5d27_som1.dtsi
> @@ -0,0 +1,18 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +
> +#include "sama5d2.dtsi"
> +
> +&macb0 {
> +	nvmem-cells = <&macaddr>;
> +	nvmem-cell-names = "mac-address";
> +};
> +
> +&{/ahb/apb/i2c@f8028000/at24@50} {
> +	#address-cells = <1>;
> +	#size-cells = <1>;
> +
> +	macaddr: mac-address@fa {
> +		reg = <0xfa 6>;
> +		label = "mac-address";
> +	};
> +};
> diff --git a/arch/arm/dts/at91-sama5d27_som1_ek.dts b/arch/arm/dts/at91-sama5d27_som1_ek.dts
> index 97a326dd2b26..1a704b42680f 100644
> --- a/arch/arm/dts/at91-sama5d27_som1_ek.dts
> +++ b/arch/arm/dts/at91-sama5d27_som1_ek.dts
> @@ -4,7 +4,7 @@
>   */
>  
>  #include <arm/at91-sama5d27_som1_ek.dts>
> -#include "sama5d2.dtsi"
> +#include "at91-sama5d27_som1.dtsi"
>  
>  / {
>  	chosen {
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

