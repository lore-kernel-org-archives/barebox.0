Delivery-date: Wed, 20 Dec 2023 16:45:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFylH-006Ssq-04
	for lore@lore.pengutronix.de;
	Wed, 20 Dec 2023 16:45:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFylG-0002Mc-Bl
	for lore@pengutronix.de; Wed, 20 Dec 2023 16:45:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=R434EINJy1vea56oXOAntLlcUj/0pBWp6pp8YwfoxYs=; b=qsOGjvp9ujyKXdHq77cO4W4UE+
	igdOHptb/8lPGew+d/1HVS7bMg/HhY+cFwZZmp5i/Fvy5cRPTOA+Lv8SblW+JQu2izga4TQDUF9QI
	D77ApClGOtH5vHdgyFR/x19WCMv7d6Q2/gTftRyL6G56McuXRJT1GczT9T9KMG7QIyIX6U5ez6pHy
	0BTiP825SyDJhP8i7p09o3FJx2+rveCsE4X9pXWHcR7G8VghYoqjxUqQmkOOipFjHCdiH8FPRz6UD
	yJb5mt1n/blpfvoVxv1fYiZfuV8Gi3jCvbPD5LUqCZTtwD1LAFwD5AYEhm7ryeVQyTuOBC1G7TuSV
	vUYPXY0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFykC-000HuS-33;
	Wed, 20 Dec 2023 15:44:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFyk8-000Htb-0Q
	for barebox@lists.infradead.org;
	Wed, 20 Dec 2023 15:44:23 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rFyk6-00029a-3K; Wed, 20 Dec 2023 16:44:18 +0100
Message-ID: <c75d78e0-4033-4c18-b9dc-72ebf5e98c1a@pengutronix.de>
Date: Wed, 20 Dec 2023 16:44:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>, barebox@lists.infradead.org
References: <20231220145418.88750-1-m.felsch@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20231220145418.88750-1-m.felsch@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231220_074420_173476_F99E7CFA 
X-CRM114-Status: GOOD (  12.75  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] ARM: boards: polyhex-debix: enable HAB support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Marco,

On 20.12.23 15:54, Marco Felsch wrote:
> From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> 
> Include the gencsf header to enable the secure-boot images.
> 
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Any downside in just doing this for all i.MX8M boards?

Thanks,
Ahmad

> ---
>  arch/arm/boards/polyhex-debix/flash-header-polyhex-debix.imxcfg | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm/boards/polyhex-debix/flash-header-polyhex-debix.imxcfg b/arch/arm/boards/polyhex-debix/flash-header-polyhex-debix.imxcfg
> index 663bd102e9a2..d619995496ac 100644
> --- a/arch/arm/boards/polyhex-debix/flash-header-polyhex-debix.imxcfg
> +++ b/arch/arm/boards/polyhex-debix/flash-header-polyhex-debix.imxcfg
> @@ -5,3 +5,4 @@ soc imx8mp
>  loadaddr 0x920000
>  max_load_size 0x3f000
>  ivtofs 0x0
> +#include <mach/imx/habv4-imx8-gencsf.h>

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



