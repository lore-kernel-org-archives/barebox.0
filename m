Delivery-date: Mon, 29 Sep 2025 09:26:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v38H1-002L6Y-0w
	for lore@lore.pengutronix.de;
	Mon, 29 Sep 2025 09:26:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v38H0-0005Lj-Nq
	for lore@pengutronix.de; Mon, 29 Sep 2025 09:26:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FomRGRhBXyjD9pSSOm4A1SMRpgGC+Oq7D+GL+NkE7I8=; b=BTaYHLaOagkz1EoQt66LoZ8xNB
	yr8zXVAFUiZUPBwGkUIHZaulZwEAMuf28UDPv1FBUmkJy+UvoCtlJML2PXEVTmFnhR0WuMMLh2pBY
	wb/h6wMP5F30juI4xq3r5IRm72H7+HbAtcEyVyamaNZD3hX2LnvXuck3NNJ8UpGKzUhk2jwRXRAop
	oj+madNVig2dFmjg/BNJ69WxuT5vVjWYzHlE0g2e/MWj5ddLlxVq8vxUNUMHXWjTTb2V5JWpl0RNj
	MO8klv/J7MdK15HIsVBeI0kQXYkZoIiKZzhPhnK0hxOX0RphSDQy15xWgXlqXkvUu9o+9FulG1c86
	j/V7Sd4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v38G7-00000001bjG-0G6M;
	Mon, 29 Sep 2025 07:25:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v38G3-00000001bid-42ZI
	for barebox@lists.infradead.org;
	Mon, 29 Sep 2025 07:25:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1v38G0-000558-KF; Mon, 29 Sep 2025 09:25:12 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1v38G0-0012Ne-1R;
	Mon, 29 Sep 2025 09:25:12 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1v38G0-002WeE-19;
	Mon, 29 Sep 2025 09:25:12 +0200
Date: Mon, 29 Sep 2025 09:25:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <aNo0WEv6lR5w2YAP@pengutronix.de>
References: <20250928132818.3564333-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250928132818.3564333-1-l.stach@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250929_002516_005618_2A9F0389 
X-CRM114-Status: GOOD (  18.18  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fixup! ARM: boards: Add support for PRT8ML
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Sun, Sep 28, 2025 at 03:28:18PM +0200, Lucas Stach wrote:
> Include Barebox specific DT to enabled Barebox features
> like memory size detection and the feature controller.
> ---
>  arch/arm/dts/imx8mp-prt8ml.dts | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/dts/imx8mp-prt8ml.dts b/arch/arm/dts/imx8mp-prt8ml.dts
> index 4072d595ad0f..15c3e710ae12 100644
> --- a/arch/arm/dts/imx8mp-prt8ml.dts
> +++ b/arch/arm/dts/imx8mp-prt8ml.dts
> @@ -5,6 +5,7 @@
>  
>  /dts-v1/;
>  #include "imx8mp-prt8ml.dtsi"
> +#include "imx8mp.dtsi"
>  
>  / {
>  	chosen {
> -- 
> 2.47.3
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


