Delivery-date: Wed, 30 Jul 2025 10:49:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uh2V3-005D0W-1J
	for lore@lore.pengutronix.de;
	Wed, 30 Jul 2025 10:49:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uh2V2-00021A-RH
	for lore@pengutronix.de; Wed, 30 Jul 2025 10:49:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xFGa9s5y79h9zS9hF9TffWhtnostjMIEQ4p1sbEg5ZU=; b=fKWzU1ArOFIqNawpvmWurDAiZi
	/BNPOAJmm1g46dPpEmKC3V476V6LObjG3i3c30ec0RPgP+96I5DbmFMKDEfsOfbbI5X87uvqDllTg
	mMfRoigBkNzjHOQO0K5N3GVARh9Bx5S7DrHywZBtqINgoeZ7PBORlM+xiICCktUei8hcwTCNkZaB8
	9oZAU+7u2lvj8/YQh4154LhZWvzg+DOLDLjet6VK+KPnUTcrsxgM36tyGWZE/dK3l0GBg2/anlihI
	845JDv6U6At2qcC1Yn6B8t6rHGA7oQvNblxedtu8NVLLf6iKWd/6dRuWNeZApBPqqlcZiAUnN5r/D
	isEMNADg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh2UX-000000011iO-01Hr;
	Wed, 30 Jul 2025 08:48:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh2UU-000000011hk-2mPg
	for barebox@lists.infradead.org;
	Wed, 30 Jul 2025 08:48:51 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uh2UT-0001qb-CE; Wed, 30 Jul 2025 10:48:49 +0200
Message-ID: <d343c6c7-ef7c-498b-8059-a08b8f166dec@pengutronix.de>
Date: Wed, 30 Jul 2025 10:48:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20250729203659.1858575-1-ivo.ivanov.ivanov1@gmail.com>
 <20250729203659.1858575-5-ivo.ivanov.ivanov1@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20250729203659.1858575-5-ivo.ivanov.ivanov1@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250730_014850_704293_C9DEF18F 
X-CRM114-Status: GOOD (  16.44  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1 4/4] ARM: boards: add support for Samsung Galaxy S20 5G
 (x1s)
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ivaylo,

On 7/29/25 22:36, Ivaylo Ivanov wrote:
> Add support for Samsung Galaxy S20 5G, based on exynos990, to the
> current samsung board support. This platform, just like exynos8895,
> needs a bit to be set in order to allow the framebuffer to refresh.
> 

Oh, a shame that I sold the old S20 FE I had. :/
I still have a rooted S10e though. I should give this a try when I have
time.

> diff --git a/arch/arm/dts/exynos990-x1s.dts b/arch/arm/dts/exynos990-x1s.dts
> new file mode 100644
> index 00000000..19d59eaa
> --- /dev/null
> +++ b/arch/arm/dts/exynos990-x1s.dts
> @@ -0,0 +1,13 @@
> +// SPDX-License-Identifier: GPL-2.0 OR BSD-3-Clause
> +/*
> + * Samsung Galaxy S20 5G (x1s/SM-G981B) barebox device tree source
> + *
> + * Copyright (c) 2025, Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
> + */
> +
> +/dts-v1/;
> +#include <arm64/exynos/exynos990-x1s.dts>
> +
> +/ {
> +	barebox,disable-deep-probe;

Same comment: we want deep probe as default eventually. Did you run into
problems without this?

Cheers,
Ahmad

> +};

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



