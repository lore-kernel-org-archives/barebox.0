Delivery-date: Wed, 04 Mar 2026 12:35:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vxkVd-007y3p-13
	for lore@lore.pengutronix.de;
	Wed, 04 Mar 2026 12:35:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vxkVd-0004xO-LH
	for lore@pengutronix.de; Wed, 04 Mar 2026 12:35:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Z4+kdxIPVK/CPKvEukqczGVcceWMg9GJDH1hxZU0Zow=; b=c2JKPAppRuPh0pHlnTQGkgxj1w
	UN6mernDv6pLcqorDKM1URne/053L8cyD9SbnbKjFh085Ia40PzTTepOkwYDkE+V0Wcqrdm7lptsv
	Q83J+dwLL+5Iihc0jyi2NQU2USufabou8i+IsLJL6VMzLnyXfZ5uxuamEoJhd7BBviexvA5BTzCVD
	a77ApSj5p/gmEVmUeddFR5mfZiymlA8yM10wBdX5oo4bLDItI7Dy5npgOUf4m+s3HZbNjzclGiPo3
	YSJNorNbowKzB08ixvzpJ/otnRvikDa+gQeOCvKaQ652ZeiiKHJzEP1mFqCTn8EoDzR1duQ8SI5G9
	v2szTVwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxkVG-0000000H6En-0TM8;
	Wed, 04 Mar 2026 11:34:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxkVE-0000000H6DM-08Vh
	for barebox@lists.infradead.org;
	Wed, 04 Mar 2026 11:34:57 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vxkVC-0004VK-IG; Wed, 04 Mar 2026 12:34:54 +0100
Message-ID: <b662b354-3f41-4ce5-bd47-3d18d6afbe3e@pengutronix.de>
Date: Wed, 4 Mar 2026 12:34:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>,
 barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: David Jander <david@protonic.nl>
References: <20260304-v2026-02-0-topic-imx8-ecc-v1-0-700698530c5c@pengutronix.de>
 <20260304-v2026-02-0-topic-imx8-ecc-v1-4-700698530c5c@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260304-v2026-02-0-topic-imx8-ecc-v1-4-700698530c5c@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_033456_077075_CA911826 
X-CRM114-Status: GOOD (  16.38  )
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
Subject: Re: [PATCH 4/4] arm: boards: protonic-imx8ml: Add ECC + scrubbing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 3/4/26 12:23 PM, Steffen Trumtrar wrote:

> +
> +void board_dram_ecc_scrub(void)
> +{
> +	ddrc_inline_ecc_scrub(0x00000000, 0x1bffffff);
> +	ddrc_inline_ecc_scrub(0x20000000, 0x3bffffff);
> +	ddrc_inline_ecc_scrub(0x40000000, 0x5bffffff);
> +	ddrc_inline_ecc_scrub_end(0x0, 0x5fffffff);
> +}

This is incompatible with multi-image support. The entry point will need
to pass this board-specific information along as a parameter, either:

  - as function pointer
  - or as data: could the board just pass along 0x60000000 and have the
    common code split it up into the regions above?

Cheers,
Ahmad

> diff --git a/arch/arm/dts/imx8mp-prt8ml.dts b/arch/arm/dts/imx8mp-prt8ml.dts
> index 15c3e710ae..b23d64f2d1 100644
> --- a/arch/arm/dts/imx8mp-prt8ml.dts
> +++ b/arch/arm/dts/imx8mp-prt8ml.dts
> @@ -20,8 +20,16 @@ environment-emmc {
>  			status = "disabled";
>  		};
>  	};
> -};
>  
> +	/* Minimum contiguous memory region is 1792MiB
> +	 * The probe function of the ddrc will either expand this
> +	 * to 6GiB (without ECC) or 5.25GiB (with inline ECC, in 3 regions).
> +	 */
> +	memory@40000000 {
> +		device_type = "memory";
> +		reg = <0x0 0x40000000 0x0 0x70000000>;
> +	};
> +};
>  
>  &usdhc2 {
>  	#address-cells = <1>;
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



