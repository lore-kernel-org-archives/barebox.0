Delivery-date: Wed, 20 Jul 2022 12:47:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oE7EW-00FVcJ-8j
	for lore@lore.pengutronix.de; Wed, 20 Jul 2022 12:47:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oE7EU-0007HT-Ji
	for lore@pengutronix.de; Wed, 20 Jul 2022 12:47:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BCpbfO+LHjJhAJI8ea+0ndj718ZzKYfipBZRTqxpQm4=; b=r4UGmhz1bREhVV8UZTDfX1XxAj
	6XqrzZGutV/n52CPXO5AH9pQ8eM+fnpsPKa/Hg3Sq0H6yhe7C3C2dpyP7i/2FiGLqSsPNn4gKxllh
	helyiE/Ic7aP6N69bVdGFojMC1+wbzMebd9/v5JQzw2y9GfDP3OZYI/v/Z3NgnouwuRRtK/6UTDEA
	3r1M7IA+QBzyFIF3Leqf3RYApe3hF460wfnTNr/TWqCZpj5QjjeS3jWlHG67aju1aypd2Kj9//uRd
	hKqP2phb/0k6foGkG4B+Ff3O8RHPOHwtYlkA5mpL4ilqlZRyCU7CgQjP9QVY6Iw6aS4wQkofYNh1U
	gAqYjsDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oE7D4-004FfV-T5; Wed, 20 Jul 2022 10:45:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oE7D0-004Fal-0T
	for barebox@lists.infradead.org; Wed, 20 Jul 2022 10:45:40 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1oE7Cu-000706-HO; Wed, 20 Jul 2022 12:45:32 +0200
Message-ID: <007ef433-a560-c396-2d4e-e7e87663533d@pengutronix.de>
Date: Wed, 20 Jul 2022 12:45:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: barebox@lists.infradead.org, Frank Wunderlich <linux@fw-web.de>
Cc: michael.riesch@wolfvision.net, j.zink@pengutronix.de
References: <20220720055042.3510276-1-a.fatoum@pengutronix.de>
 <20220720055042.3510276-4-a.fatoum@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220720055042.3510276-4-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220720_034538_080086_5F1A084B 
X-CRM114-Status: GOOD (  13.09  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [RFT PATCH 3/3] ARM: dts: rk356x: align bootsource_instance
 numbering and MMC DT aliases
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Frank,

On 20.07.22 07:50, Ahmad Fatoum wrote:
> diff --git a/arch/arm/dts/rk3568-bpi-r2-pro.dts b/arch/arm/dts/rk3568-bpi-r2-pro.dts
> index da76ab64c106..8c13ddd5c103 100644
> --- a/arch/arm/dts/rk3568-bpi-r2-pro.dts
> +++ b/arch/arm/dts/rk3568-bpi-r2-pro.dts
> @@ -9,6 +9,7 @@
>  #include <dt-bindings/leds/common.h>
>  #include <dt-bindings/pinctrl/rockchip.h>
>  #include "rk3568.dtsi"
> +#include "rk356x.dtsi"

Heads up: This will change $bootsource_instance on the Banana Pi once merged.
If you remove arch/arm/dts/rk3568.dtsi and use the now upstream DTs
instead, you should end up with /dev/mmc0 and /dev/mmc1 where $bootsource_instance
would identify which one of them was used for booting when $bootsource = mmc.

Cheers,
Ahmad


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


