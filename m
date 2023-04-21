Delivery-date: Fri, 21 Apr 2023 13:40:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ppp7S-00BTwD-9m
	for lore@lore.pengutronix.de; Fri, 21 Apr 2023 13:40:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ppp7R-0003tq-Sb
	for lore@pengutronix.de; Fri, 21 Apr 2023 13:40:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8Z8Qem3qTibTe452M9KiZV0dOa48x6slzgv7pyNim1w=; b=ReXgqk5Kzmdp6eB8gjGRW+CJEY
	9ZZ+dtOY3tLOla7+QJ8JRwyq2X+IGdhlpwdnN0fiGJyTLWqZMMZY1o/rpr4kRiEjS720eF3IZQFWV
	LVGBvs4iYXggrBe3+uZOwFWSB4hb6khm9Aa8vj03xtoX7urQTK7IobpGrDGv0bCCQo0kXkYOIKq4b
	biGsOnaRduCjT+QFebEhsE0Wo8rTiEFUqETBMO4XlaBQQeggHVinG2VxHslGbDcxdZ70EcrMiombr
	/OlvWE1M/43RpL5lmqab29KAuIrOAdV+iEAIN3qIzGp2yXE1XEfAAzCmKiJ/Qk9zh2gtqUYxBTj6y
	ydg4GJ1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ppp69-00Ajbl-2E;
	Fri, 21 Apr 2023 11:38:41 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ppp67-00AjbD-0T
	for barebox@bombadil.infradead.org;
	Fri, 21 Apr 2023 11:38:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=8Z8Qem3qTibTe452M9KiZV0dOa48x6slzgv7pyNim1w=; b=MSr5U4XNhGSg81BrIch4ZZMFk/
	x1Lzc5fxWPfowrFgg122Ss01L/RsVQ8B5+V3zXpkjLOHE4xxo0OSXyT4yX7y7kYn9f2SWQmmzZOYp
	9bejSwHatnCCnB08sEnf4suM1Q3Ib/aI5ZYUhJT4sLvkR660vPjONHezGh/+FMOZztMo8f76P/g7w
	Q+/rlEePq8a4spxT51gAE2XfEwkaf96x0TtOxyMTedA8YOcURn26rGJyt126kO3dUhrRSffjWHGKC
	0YuNBSWBQFIIuXmOa1Np240WrRSRqfc6pGoCkYkFQeFj3Z41/4XIUicUVxFVhKs1FRKijQ7WW1BIV
	y/NkoM+w==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ppo8X-005G8t-0h
	for barebox@lists.infradead.org;
	Fri, 21 Apr 2023 10:37:08 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1ppo8Q-0005Me-7C; Fri, 21 Apr 2023 12:36:58 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1ppo8P-0005pV-S6; Fri, 21 Apr 2023 12:36:57 +0200
Date: Fri, 21 Apr 2023 12:36:57 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230421103657.bhety2z5srjrzhqa@pengutronix.de>
References: <20230421100642.2867651-1-a.fatoum@pengutronix.de>
 <20230421100642.2867651-4-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230421100642.2867651-4-a.fatoum@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230421_113705_527287_7A424AD5 
X-CRM114-Status: GOOD (  16.42  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 3/5] ARM: stm32mp: defconfig: enable use of DKx USB hubs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

On 23-04-21, Ahmad Fatoum wrote:
> The DK1/DK2 boards have an on-board USB-Hub with togglable power supply,
> which is connected to the SoC's EHCI. Enable the necessary options to
> make it usable. This was tested with the mass storage support (barebox
> being host, not gadget), so enable that as well.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/configs/stm32mp_defconfig | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/arch/arm/configs/stm32mp_defconfig b/arch/arm/configs/stm32mp_defconfig
> index f6c6ca71b15c..df73102ba1c0 100644
> --- a/arch/arm/configs/stm32mp_defconfig
> +++ b/arch/arm/configs/stm32mp_defconfig
> @@ -115,6 +115,9 @@ CONFIG_MTD_SST25L=y
>  CONFIG_USB_HOST=y
>  CONFIG_USB_DWC2_HOST=y
>  CONFIG_USB_DWC2_GADGET=y
> +CONFIG_USB_EHCI=y
> +CONFIG_USB_STORAGE=y
> +CONFIG_USB_ONBOARD_HUB=y

While USB_EHCI and USB_STORAGE is already part of the the
mulit_v7_defconfig, USB_ONBOARD_HUB isn't. Can you please enable it
there as well?

Regards,
  Marco

>  CONFIG_USB_GADGET=y
>  CONFIG_USB_GADGET_DFU=y
>  CONFIG_USB_GADGET_SERIAL=y
> -- 
> 2.39.2
> 
> 
> 


