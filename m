Delivery-date: Thu, 23 Nov 2023 08:24:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r644j-005UBB-1k
	for lore@lore.pengutronix.de;
	Thu, 23 Nov 2023 08:24:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r644j-0006f8-IS
	for lore@pengutronix.de; Thu, 23 Nov 2023 08:24:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xO/ka3xNeS+hziAED9CA2fV+vffRG/HVOL2qIVAuSvA=; b=L50mOdjErL8G03rCbASCASEfSQ
	15zFJTZgsFu4lRfu/HcFzULDJkiqbaBIbF423KLG45/99v01xCH5JTiTSypDDCqMnTW0CRuA8y60y
	vCUurB5So/52O+ac9A0ygym4UssHVWjVHt9k7DDR4CvQBa/7kKpdzmHGe/0uQz1yr81gMSjsXYDpZ
	yGmaNh5jCCbXiDOE965jaDItUTQ5F46KJmr0I9CVvhw19uquwanpMmKasE5RymDBIdiBYTU25kLMH
	E65gxZ9Xy1ba/xVfduv+6wi1PQm6xaYuepZjIxc0dfyd5Jsy1/IebutAMysxpP/2smmksaK3+3sxo
	XmaLkulA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r643Q-0041AV-0Y;
	Thu, 23 Nov 2023 07:23:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r643M-00418d-2E
	for barebox@lists.infradead.org;
	Thu, 23 Nov 2023 07:23:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r643L-0006Qm-Ad; Thu, 23 Nov 2023 08:23:11 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r643K-00AzPL-UQ; Thu, 23 Nov 2023 08:23:10 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r643K-003QDG-SE; Thu, 23 Nov 2023 08:23:10 +0100
Date: Thu, 23 Nov 2023 08:23:10 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231123072310.GF3359458@pengutronix.de>
References: <20231122173118.569620-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231122173118.569620-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_232312_728123_E6D5BCF0 
X-CRM114-Status: GOOD (  18.19  )
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
Subject: Re: [PATCH] of: reserved-mem: add debug print for reservations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Nov 22, 2023 at 06:31:18PM +0100, Ahmad Fatoum wrote:
> reserve_sdram_region can now involve cache maintenance, so add a debug
> print beforehand to aid debugging.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/of/reserved-mem.c | 4 ++++
>  1 file changed, 4 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/of/reserved-mem.c b/drivers/of/reserved-mem.c
> index f50a0bd8374d..599a7c968afd 100644
> --- a/drivers/of/reserved-mem.c
> +++ b/drivers/of/reserved-mem.c
> @@ -1,6 +1,8 @@
>  // SPDX-License-Identifier: GPL-2.0-only
>  // SPDX-FileCopyrightText: 2021 Rouven Czerwinski <r.czerwinski@pengutronix.de>, Pengutronix
>  
> +#define pr_fmt(fmt) "of-reserved-mem: " fmt
> +
>  #include <stdio.h>
>  #include <of.h>
>  #include <of_address.h>
> @@ -17,6 +19,8 @@ static void request_region(struct resource *r)
>  		if (!resource_contains(bank->res, r))
>  			continue;
>  
> +		pr_debug("reserving %s at %pad-%pad\n", r->name, &r->start, &r->end);
> +
>  		if (!reserve_sdram_region(r->name, r->start, resource_size(r)))
>  			pr_warn("couldn't request reserved sdram region %pa-%pa\n",
>  				&r->start, &r->end);
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


