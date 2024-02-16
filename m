Delivery-date: Fri, 16 Feb 2024 14:15:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ray4L-008aVF-35
	for lore@lore.pengutronix.de;
	Fri, 16 Feb 2024 14:15:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ray4L-0001WM-Bk
	for lore@pengutronix.de; Fri, 16 Feb 2024 14:15:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+fga0ISi7KxVC5RBlXhRBLj1g5ZbfLEC3lipTI3sD3o=; b=iGqvDjTcVnkL05Y2OIdzSuKeP3
	IHwTtJxAZp3Hq6j6ETIfdbcihEUuook0QUyTqLJwU+6WPRsVZtgpSqvkKW3J9BZSapPWxHPj0tujz
	SIVkwrEE5cax7rcvBcctAFFQjd3Adlr071wKRLkWoIhhreu5CQ5jSYBO7MW7mpTCqcMAjne74BZYf
	9I7p2Mrahj0M+g8I1YcuycFxee5xbpHj5g2LSAfIAwshx5MudV67KI5lAP+LVarBvF3D1byewSyab
	IdtcCS4oRv1BxmnC/tPIwk/Ug4xv+Vz5aYS0E5XHYnKsdiLxPFrMFwy29DgvBvT6zGpToqfL4Dj+u
	/laLfvOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ray3h-00000002Oyx-47Ie;
	Fri, 16 Feb 2024 13:15:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ray3f-00000002OyT-0ZWf
	for barebox@lists.infradead.org;
	Fri, 16 Feb 2024 13:15:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ray3d-0001R6-UH; Fri, 16 Feb 2024 14:15:13 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ray3d-0015Kw-A3; Fri, 16 Feb 2024 14:15:13 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1ray3d-00BVRA-0i;
	Fri, 16 Feb 2024 14:15:13 +0100
Date: Fri, 16 Feb 2024 14:15:13 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Sam Ravnborg <sam@ravnborg.org>
Message-ID: <Zc9f4d42rpSZh8qu@pengutronix.de>
References: <20240215163009.2172795-1-a.fatoum@pengutronix.de>
 <20240215163009.2172795-16-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240215163009.2172795-16-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240216_051515_196876_F94DCB7B 
X-CRM114-Status: GOOD (  27.09  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v3 15/15] usb: ohci-at91: fix possible hang chainloading
 barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Feb 15, 2024 at 05:30:09PM +0100, Ahmad Fatoum wrote:
> barebox, like Linux, will consider disabling parents when disabling a
> child clock. In the AT91 OHCI driver ported to barebox from Linux, this
> leads to the USB clock shutdown during device shutdown to propagate up
> to PLLB, which is also disabled.
> 
> On probe of the kernel driver, the USB clock rate is set to 48MHz, which
> propagates up to the PLL, which is powered on again. In barebox, this clock
> rate propagation does not happen and the PLL is only initially
> configured in the first stage bootloader.
> 
> This has the effect that chainloading barebox from within barebox will
> hang as the first barebox disables PLLB on shutdown and the second
> barebox never power it on.
> 
> The proper solution would be to support propagation of clock rate change
> requests, but till we have that, patch the driver, so only the immediate
> clock is disabled and not its parents.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v3:
>   - new patch
> ---
>  drivers/clk/clk.c            | 12 +++++++++---
>  drivers/usb/host/ohci-at91.c | 13 +++++++++++--
>  include/linux/clk.h          | 20 ++++++++++++++++++--
>  3 files changed, 38 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
> index d3f5d5e83880..03533b61df0a 100644
> --- a/drivers/clk/clk.c
> +++ b/drivers/clk/clk.c
> @@ -66,7 +66,7 @@ int clk_enable(struct clk *clk)
>  	return 0;
>  }
>  
> -void clk_disable(struct clk *clk)
> +void clk_disable_one(struct clk *clk)
>  {

I don't like this very much as it screws up the enable counter of the
clocks.

Cou could mark the PLL clock as critical or simply not disable the clock
in the driver.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


