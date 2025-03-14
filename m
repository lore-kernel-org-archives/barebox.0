Delivery-date: Fri, 14 Mar 2025 17:08:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tt7aW-00E4Oq-2i
	for lore@lore.pengutronix.de;
	Fri, 14 Mar 2025 17:08:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tt7aV-0004C4-Kj
	for lore@pengutronix.de; Fri, 14 Mar 2025 17:08:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vcQ39xOfJY8KplsJdrmUgQhi1H7FpMnXAqYDipPudk0=; b=Sac4GYHygI4MqO5RIW+HTLTWjI
	JSeE2jqwqitKzfjkUKkp01ihCwzpjxkccfRQ+G0T9aVzYmgpCj+U7OXb+ZMnTPK1xUX7tL2uvqAn0
	8Gic+UXPnnRBTGvY5K0odfiPzMq5Xyhc8r2ipM4T5uFSWNlhYKqdNf8o1rvULJymIuHPfxPyqeonA
	W+hAiM5bdmmedZ3T0CE5HHw0B7oO3j1wtgI7DrNgcS2O8B4NkykURoyyKFpSTtDovYNvJD2lvJZse
	7llejMDFKTBpEssc2HDUedeVRgBEsWoPk7PY5SKtOb2CuhKpchiJFvjAGvMout3EsLgEFHG6IReup
	XZkhUziQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tt7a4-0000000Eg99-323R;
	Fri, 14 Mar 2025 16:08:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tt7V9-0000000EfFO-1I30
	for barebox@lists.infradead.org;
	Fri, 14 Mar 2025 16:03:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tt7V6-0003Il-Gj; Fri, 14 Mar 2025 17:03:08 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tt7V6-005j9z-13;
	Fri, 14 Mar 2025 17:03:08 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tt7V6-00DCqb-0g;
	Fri, 14 Mar 2025 17:03:08 +0100
Date: Fri, 14 Mar 2025 17:03:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Z9RTPKnmYeif2qKx@pengutronix.de>
References: <20250313073445.764875-1-a.fatoum@pengutronix.de>
 <20250313073445.764875-19-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250313073445.764875-19-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250314_090311_354256_65FF5C7B 
X-CRM114-Status: GOOD (  23.51  )
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
Subject: Re: [PATCH 18/22] video: Rockchip: fix zero division in
 rk3588_calc_cru_cfg
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Mar 13, 2025 at 08:34:41AM +0100, Ahmad Fatoum wrote:
> This was detected by clang-analyzer and I don't understand how that
> function could have ever worked, because it's running into the zero
> division in the "successful" code path.

The driver is only tested on rk3568, so this code path likely never
executed.

sascha

> 
> Peeking at rk3568_set_intf_mux, the CRTC clock is passed by the caller
> in barebox, so let's do the same for rk3588_calc_cru_cfg.
> 
> Fixes: c8c0833beb77 ("video: Rockchip: Add VOP2 driver")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/video/rockchip/rockchip_drm_vop2.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/video/rockchip/rockchip_drm_vop2.c b/drivers/video/rockchip/rockchip_drm_vop2.c
> index 3a1c951ec7e4..f15ef1b57bf5 100644
> --- a/drivers/video/rockchip/rockchip_drm_vop2.c
> +++ b/drivers/video/rockchip/rockchip_drm_vop2.c
> @@ -743,10 +743,10 @@ static unsigned long rk3588_calc_dclk(unsigned long child_clk, unsigned long max
>   */
>  static unsigned long rk3588_calc_cru_cfg(struct vop2_video_port *vp, int id,
>  					 int *dclk_core_div, int *dclk_out_div,
> -					 int *if_pixclk_div, int *if_dclk_div)
> +					 int *if_pixclk_div, int *if_dclk_div,
> +					 u32 crtc_clock)
>  {
>  	struct vop2 *vop2 = vp->vop2;
> -	u32 crtc_clock = 0;
>  	unsigned long v_pixclk = crtc_clock * 1000LL; /* video timing pixclk */
>  	unsigned long dclk_core_rate = v_pixclk >> 2;
>  	unsigned long dclk_rate = v_pixclk;
> @@ -856,7 +856,7 @@ static unsigned long rk3588_set_intf_mux(struct vop2_video_port *vp, int id, u32
>  	u32 die, dip, div, vp_clk_div, val;
>  
>  	clock = rk3588_calc_cru_cfg(vp, id, &dclk_core_div, &dclk_out_div,
> -				    &if_pixclk_div, &if_dclk_div);
> +				    &if_pixclk_div, &if_dclk_div, clock);
>  	if (!clock)
>  		return 0;
>  
> -- 
> 2.39.5
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


