Delivery-date: Fri, 31 Mar 2023 07:50:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pi7eP-003lAr-Q8
	for lore@lore.pengutronix.de; Fri, 31 Mar 2023 07:50:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pi7eP-0003fI-NS
	for lore@pengutronix.de; Fri, 31 Mar 2023 07:50:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5spUfZWo3zbNOtJNDBUgIHiT2EaMA718sdyD7SQhgyA=; b=GSbqHVOkG/FVGAllt0iVZwjvGa
	aCi0d32Z0GzRV1wr6+VGHzsiVg0YDDi5tXUQ+gCI+y+tDcv7Zp7r9yO85w/GvG8eRKtIr1vlsRywG
	+W/apLldjVHsBVmo1i2QoQtLEmVTbX18soyYLaV6oWsHM0NRDoEYYAE5eSTJgPPHgCQrKaUQn73IY
	y3FtVGhLRqzF04oTDJ9RNXX1gveXTghbYkgPBmNVqF6syHJgGSJ/KGPX5jNQZScUtN9YIj68+LI8H
	rCaBi1StQviY1BHKOP2i8f7Mv2II/h2Vw2TgaklzlLcEG1VlG6t6GmWV3y6OCVBp+7upBnNUVpxiO
	S7cyLNJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pi7cn-005v7m-2Z;
	Fri, 31 Mar 2023 05:48:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pi7ck-005v6w-2A
	for barebox@lists.infradead.org;
	Fri, 31 Mar 2023 05:48:32 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pi7ce-0003Rh-Oz; Fri, 31 Mar 2023 07:48:24 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pi7ce-0003sF-CN; Fri, 31 Mar 2023 07:48:24 +0200
Date: Fri, 31 Mar 2023 07:48:24 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org,
	Hans Christian Lonstad <hcl@datarespons.com>
Message-ID: <20230331054824.GL19113@pengutronix.de>
References: <20230330113844.3343865-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230330113844.3343865-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230330_224830_741442_41E89F94 
X-CRM114-Status: GOOD (  25.59  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] ARM: dts: i.MX8MP:
 snps,dis-u2-freeclk-exists-quirk
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Mar 30, 2023 at 01:38:44PM +0200, Ahmad Fatoum wrote:
> Linux v6.1 adds a snps,gfladj-refclk-lpm-sel-quirk property to the
> i.MX8MP DWC3 device tree nodes, which is a superset of the existing
> snps,dis-u2-freeclk-exists-quirk property. For this reason, the old
> property was dropped breaking some usages of barebox i.MX8MP DWC3.
> 
> The proper fix would be supporting this new property, which is already
> in next as part of the DWC3 driver sync with the kernel.
> 
> Until that lands in master though, let's add back the removed property
> to fix the regression. Expectation is that we can revert this commit
> as part of v2023.05.0.
> 
> Link: https://github.com/saschahauer/barebox/issues/19
> Reported-by: Hans Christian Lonstad <hcl@datarespons.com>
> Fixes: 32e2176ba050 ("dts: update to v6.1-rc1")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/dts/imx8mp.dtsi | 9 +++++++++
>  1 file changed, 9 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/dts/imx8mp.dtsi b/arch/arm/dts/imx8mp.dtsi
> index 6962d11e853a..3bec8432627f 100644
> --- a/arch/arm/dts/imx8mp.dtsi
> +++ b/arch/arm/dts/imx8mp.dtsi
> @@ -10,6 +10,15 @@
>  	};
>  };
>  
> +/* Temporary workaround until snps,gfladj-refclk-lpm-sel-quirk is supported */
> +&usb_dwc3_0 {
> +	snps,dis-u2-freeclk-exists-quirk;
> +};
> +
> +&usb_dwc3_1 {
> +	snps,dis-u2-freeclk-exists-quirk;
> +};
> +
>  /*
>   * The DSP reserved memory will collide with the Barebox malloc area for some
>   * DRAM sizes, even though the DSP itself is disabled in most configurations.
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


