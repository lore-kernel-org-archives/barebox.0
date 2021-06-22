Delivery-date: Tue, 22 Jun 2021 10:36:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvbtk-0008NU-At
	for lore@lore.pengutronix.de; Tue, 22 Jun 2021 10:36:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvbtj-0004aJ-9K
	for lore@pengutronix.de; Tue, 22 Jun 2021 10:36:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vWD4nYtRZuc79k99diD0eXv0apt5dDWJDwPNAza3TwQ=; b=xXw0Rpxe0CMFai
	hval8J56cvT6T3G33qZH05TIzB/LY3+DNBSNoMMGm86lntvBcjwkgKCknMaRqYBiLXyYNIOyn7Hmr
	f6mNDjiq8OyY53WvH2PGiV7c4UOBhcSFI5QsALoh9XBkWUb88YQiM5zFT0OLPqNqAD5t9wsD8u3Po
	QoTmj+/Vqkv2f2kTR/A4l/0qv07EjZQaWgRbuVZPrxfNjVOKujx7vZ3hx6qfRMFLM06EHPZflGTr0
	1WzFqLaaW33el0AFuXpbFZhR4h7WXcdsO34GRekQn5gAW5J3+TKhNhhdnylARz+M4I94w2Evjwc7+
	z3udCzvcDYyW3il4/1BQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvbsV-006Fz9-Am; Tue, 22 Jun 2021 08:35:27 +0000
Received: from mail.thorsis.com ([92.198.35.195])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvbsP-006Fy4-AY
 for barebox@lists.infradead.org; Tue, 22 Jun 2021 08:35:23 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.thorsis.com (Postfix) with ESMTP id 05C41DF1
 for <barebox@lists.infradead.org>; Tue, 22 Jun 2021 10:35:17 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at mail.thorsis.com
Received: from mail.thorsis.com ([127.0.0.1])
 by localhost (mail.thorsis.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qz3pLUgPXkMO for <barebox@lists.infradead.org>;
 Tue, 22 Jun 2021 10:35:16 +0200 (CEST)
Received: by mail.thorsis.com (Postfix, from userid 109)
 id D88531CA1; Tue, 22 Jun 2021 10:35:16 +0200 (CEST)
Date: Tue, 22 Jun 2021 10:35:08 +0200
From: Alexander Dahl <ada@thorsis.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Alexander Dahl <ada@thorsis.com>
Message-ID: <YNGgvKY3xNdMGPey@ada.ifak-system.com>
Mail-Followup-To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
 barebox@lists.infradead.org
References: <20210622080811.28335-1-a.fatoum@pengutronix.de>
Content-Disposition: inline
In-Reply-To: <20210622080811.28335-1-a.fatoum@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210622_013521_735219_252F81E2 
X-CRM114-Status: GOOD (  29.69  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: at91: sama5d27_som1_ek: populate MAC address from
 EEPROM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hei hei,

Am Tue, Jun 22, 2021 at 10:08:11AM +0200 schrieb Ahmad Fatoum:
> With the latest NVMEM enhancements merged, barebox networking core now
> always consults NVMEM cells referenced in the network controller
> device tree node before it falls back to randomizing a new address.
> 
> The SAM5D27-SOM1 has a 256 byte EEPROM, which holds a MAC address in its
> last 6 bytes. Describe this in the device tree, so boards using the SoM
> will get an unique MAC address assigned and fixed up into the kernel
> device tree. 

I have access to such a device, but I can not promise I have time to
test this currently. :-/

> This change can be dropped again when/if the change is
> submitted and applied upstream.

What do you mean with "upstream" here? Linux kernel?

I just had a short look into u-boot for that board, there's the i2c
eeprom set in dts only, and dts is still the old u-boot way, not dts
from kernel plus fixups in a separate file. The mac is set in
board/atmel/sama5d27_som1_ek/sama5d27_som1_ek.c like this:

 87 #define MAC24AA_MAC_OFFSET      0xfa
 88
 89 #ifdef CONFIG_MISC_INIT_R
 90 int misc_init_r(void)
 91 {
 92 #ifdef CONFIG_I2C_EEPROM
 93         at91_set_ethaddr(MAC24AA_MAC_OFFSET);
 94 #endif
 95         return 0;
 96 }
 97 #endif

What would be the right way for kernel, u-boot, and barebox? Have i2c
eeprom defined in dts and an nvmem cell on top like you proposed for
barebox now? Not sure if u-boot can do that (already)? But it would
still work if only Linux and barebox did it that way, right?

Greets
Alex

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
> -- 
> 2.29.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

