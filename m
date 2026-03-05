Delivery-date: Thu, 05 Mar 2026 15:06:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vy9LV-008LoE-2e
	for lore@lore.pengutronix.de;
	Thu, 05 Mar 2026 15:06:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vy9LW-0007Ep-4M
	for lore@pengutronix.de; Thu, 05 Mar 2026 15:06:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3/TnV5HDZOFzWXBln2RQ1g1L6ZDycSCXrR5/51MEhTQ=; b=rYPATlOfA7AU44UQ+jY55+eWJT
	Pb1MfCb2KNQX+VNcC2qSl5ks7OJIALRwyNzEt3acs1R+mL2sCYeHk3dKWjuOSej8yKCvT1pq2GzAZ
	e9CrksR40Fb5KPRJu2ZdK9ppZPSN7LsSPO3QiOmVbX7g9wUxnjEeFhsd+R2vOchcxQasEOxfmMA9u
	3w/7PTvuIpzNve+hoJbdj1i5GdBnEn1udTbey3nXBju/OZRY2t7J+Jq+m47lUb3ujnmEi5rf/Enpt
	abURrAzHl5w7pcyhdTAvGVh2OcLdzOd4y/s2hb7Nl2DA8j+EoSmI5LbW4aqvBTlYJXT+co19PWfYm
	hfezZBnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy9L6-00000001vGU-1xNV;
	Thu, 05 Mar 2026 14:06:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy9L2-00000001vG8-3v40
	for barebox@lists.infradead.org;
	Thu, 05 Mar 2026 14:06:07 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vy9L0-00076i-PH; Thu, 05 Mar 2026 15:06:02 +0100
Message-ID: <841624f7-bb11-492b-a00c-21c0fb8e8a68@pengutronix.de>
Date: Thu, 5 Mar 2026 15:06:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: David Picard <david.picard@clermont.in2p3.fr>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20260305-b4-sa2-usb-v5-0-8e92a459d20b@clermont.in2p3.fr>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260305-b4-sa2-usb-v5-0-8e92a459d20b@clermont.in2p3.fr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260305_060605_000785_44354DCA 
X-CRM114-Status: GOOD (  18.15  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v5 0/3] ARM: socfpga: Enclustra SA2: enable HS USB
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello David,

On 3/5/26 3:00 PM, David Picard wrote:
> Enable high-speed USB on Enclustra Mercury+ SA2 module:
> - Enable options in the defconfig.
> - Enable the high-speed USB 2.0 controller in the devicetree.
> - Change 1st stage image compression method to keep it small enough.
> 
> Signed-off-by: David Picard <david.picard@clermont.in2p3.fr>
> ---
> Changes in v5:
> - Rebase on next to take advantage of hotfix in commit 510b79d.

These patches would be picked to next anyway, so a resend to change the
base is unnecessary, unless it actually resolves a conflict.

Cheers,
Ahmad

> - Link to v4: https://lore.kernel.org/r/20260305-b4-sa2-usb-v4-0-52ef8d83fc5e@clermont.in2p3.fr
> 
> Changes in v4:
> - Fix commit message.
> - Link to v3: https://lore.kernel.org/r/20260305-b4-sa2-usb-v3-0-802f52d308ab@clermont.in2p3.fr
> 
> Changes in v3:
> - Add Reviewed-by field.
> - Link to v2: https://lore.kernel.org/r/20260305-b4-sa2-usb-v2-0-cf377c10efd5@clermont.in2p3.fr
> 
> ---
> David Picard (3):
>       ARM: socfpga: Enclustra SA2: add defconfig options
>       ARM: socfpga: Enclustra SA2: enable USB1 HS
>       ARM: socfpga: xload: compress image with xz
> 
>  arch/arm/configs/socfpga-xload_defconfig       |  1 +
>  arch/arm/configs/socfpga_defconfig             | 15 +++++++++++++++
>  arch/arm/dts/socfpga_cyclone5_mercury_sa2.dtsi |  7 +++++++
>  3 files changed, 23 insertions(+)
> ---
> base-commit: 99053a95c9001afbbc5edde7dcef09776833d120
> change-id: 20260304-b4-sa2-usb-8d413bd5c768
> 
> Best regards,

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



