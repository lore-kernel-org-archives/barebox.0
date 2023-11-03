Delivery-date: Fri, 03 Nov 2023 08:39:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qyolz-00Gjpv-Oi
	for lore@lore.pengutronix.de; Fri, 03 Nov 2023 08:39:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qyoly-0000jy-Kh
	for lore@pengutronix.de; Fri, 03 Nov 2023 08:39:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PoraV8wk2Nnx3sAuwWBwLx6mZeIo02tIWAJjO+DbQ3Q=; b=hhzi6KLLi88ODisyMSDH0F3uvf
	S/N+K4WvqXQvLEGdgkOJ5SLesFhRYF0udev8Blb8Y4u8na4aRUsLzAFRDQvvcS4lpFAFJ9l7aKfju
	PxEmdepJAvG5zFZ5QJawghrg4QWl3wE0nGCJPb5X99w8U5i03fSI2nxtnOH8hDnR6KUUVbSnmHmqN
	fTVLDUN79tSRKf4X4xQQy/M5LWOdwiFI1f+a310S8jFPN+JKAycyIwus0hrpMnFY3TIVRnS/cJPj4
	xw8fjf7h3QxqoWbpTngWsdEO7oi0OeuBKfPOWpwKF/hRPpOSdXFTNf/xhB8/MrXohTCsh7LuhL8HH
	09WLRj8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qyoka-00Atp1-1s;
	Fri, 03 Nov 2023 07:37:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qyokU-00Ato5-2u
	for barebox@lists.infradead.org;
	Fri, 03 Nov 2023 07:37:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qyokT-0000Ss-OG; Fri, 03 Nov 2023 08:37:45 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qyokT-006GKz-C0; Fri, 03 Nov 2023 08:37:45 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qyokT-0009jg-9m; Fri, 03 Nov 2023 08:37:45 +0100
Date: Fri, 3 Nov 2023 08:37:45 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231103073745.GO3359458@pengutronix.de>
References: <20231101135811.4003573-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231101135811.4003573-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231103_003746_941917_E4BEC782 
X-CRM114-Status: GOOD (  20.14  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master] ARM: stm32mp: disable stm32mp1_barebox_entry
 stack canary
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Nov 01, 2023 at 02:58:11PM +0100, Ahmad Fatoum wrote:
> stm32mp1_barebox_entry is given a stack canary when compiling PBL with
> strong stack protector. The function can be called prior to relocation
> though, so it needs to be marked as such.
> 
> This fixes boot with CONFIG_PBL_STACKPROTECTOR_STRONG=y on STM32MP1 with
> generic BL33 entry point (for FIP).
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/mach-stm32mp/ddrctrl.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-stm32mp/ddrctrl.c b/arch/arm/mach-stm32mp/ddrctrl.c
> index 279a35f30310..f198ee196c6c 100644
> --- a/arch/arm/mach-stm32mp/ddrctrl.c
> +++ b/arch/arm/mach-stm32mp/ddrctrl.c
> @@ -123,7 +123,7 @@ static inline unsigned stm32mp1_ddrctrl_ramsize(void)
>  	return ddrctrl_ramsize(IOMEM(STM32_DDRCTL_BASE), nb_bytes);
>  }
>  
> -void __noreturn stm32mp1_barebox_entry(void *boarddata)
> +void __noreturn __prereloc stm32mp1_barebox_entry(void *boarddata)
>  {
>  	barebox_arm_entry(STM32_DDR_BASE, stm32mp1_ddrctrl_ramsize(), boarddata);
>  }
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


