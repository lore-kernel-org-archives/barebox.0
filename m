Delivery-date: Mon, 08 Aug 2022 15:06:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL2Sj-00GCfq-La
	for lore@lore.pengutronix.de; Mon, 08 Aug 2022 15:06:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL2Sh-0007Zw-95
	for lore@pengutronix.de; Mon, 08 Aug 2022 15:06:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ync250+dLIFNZMJB5UZofV7kh8i/sppLT4Z5I2an5hc=; b=HZMIgNH1vr1zY7sdD6RAFzyhgB
	mAwBpf9neXc746DyYcyT/7BLD7+dCMKSt9qnsN/aKzii2W2IuMtAlm043cvtg+MuI9eJXWfP4MCRx
	UbPo+DZU1O37hcKy8kGeCTOXnGUqt3KJGY+ZZaa7fTWcO4LSJB6bMV21xuqLWRtwE01hIqLD3w+aY
	E8BmxUFhpxbFHy9ElEu1t/NhT8Mk7MQMsg0eh1LNlXxoCjtQVDH/S9HSlM2ayn6ZInuPSMzfyWFfG
	UBopEyHgv8ZhLCDKBZDlkryRKOXNKf0Wj1iHP++cuIDZLQZq2zKfqKiOiYINZciWzAh5KzWEFiulf
	uiSbbwNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL2RI-00DvjK-Q0; Mon, 08 Aug 2022 13:05:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL2RD-00Dvg9-Sc
	for barebox@lists.infradead.org; Mon, 08 Aug 2022 13:04:57 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oL2RB-00078P-08; Mon, 08 Aug 2022 15:04:53 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oL2RA-0002u8-Ly; Mon, 08 Aug 2022 15:04:52 +0200
Date: Mon, 8 Aug 2022 15:04:52 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, mfe@pengutronix.de, lst@pengutronix.de
Message-ID: <20220808130452.GH31528@pengutronix.de>
References: <20220805054215.3383099-1-a.fatoum@pengutronix.de>
 <20220805054215.3383099-4-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220805054215.3383099-4-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220808_060455_964109_76DA7333 
X-CRM114-Status: GOOD (  23.64  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master v2 4/4] ARM: i.MX8MN: assume USBOTG power domains
 to be powered
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Aug 05, 2022 at 07:42:15AM +0200, Ahmad Fatoum wrote:
> When i.MX8MN support was first added, upstream device tree did list no
> power domains. Now it does and we defer probe of USB indefinitely
> because we have no power domain driver. If we need to do PCI on the
> i.MX8MM in barebox, there'll likely be no way around importing the power
> domain driver, but for USB which used to work, only thing we need to do
> is ignore the new power domain specification. Do so by adding the
> new barebox,allow-dummy property to the new known-enabled power domain.
> 
> Fixes: b01786baa849 ("dts: update to v5.18-rc1")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v1 -> v2:
>   - no change
> ---
>  arch/arm/dts/imx8mn-evk.dtsi | 2 ++
>  arch/arm/dts/imx8mn.dtsi     | 5 +++++
>  2 files changed, 7 insertions(+)
>  create mode 100644 arch/arm/dts/imx8mn.dtsi
> 
> diff --git a/arch/arm/dts/imx8mn-evk.dtsi b/arch/arm/dts/imx8mn-evk.dtsi
> index ceeb5f8b9384..aeb357007991 100644
> --- a/arch/arm/dts/imx8mn-evk.dtsi
> +++ b/arch/arm/dts/imx8mn-evk.dtsi
> @@ -4,6 +4,8 @@
>   * Copyright (C) 2017 Pengutronix, Lucas Stach <kernel@pengutronix.de>
>   */
>  
> +#include "imx8mn.dtsi"
> +
>  / {
>  	chosen {
>  		environment-sd {

This file doesn't exist in master.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


