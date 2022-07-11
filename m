Delivery-date: Mon, 11 Jul 2022 12:37:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oAqmx-002R4L-E8
	for lore@lore.pengutronix.de; Mon, 11 Jul 2022 12:37:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oAqmv-0003gr-5I
	for lore@pengutronix.de; Mon, 11 Jul 2022 12:37:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MWVha9VdF6Tge/PJhUYU+SLNiY6H1mg6vBGBc1fojjQ=; b=MeF5g03B9A6r5/9zqhMFcDn8Uw
	KEoA5oV8txdNE2tKhRk5QP0XTIj2cyKDL1qdmKyNmoI7xb90q5tGLcfDanN2Coaw8zw51NRydOwUL
	7+qfX6cCFjsjOJqsp1fcUHUdyVmVWUaq7FrHfWUDZWtZwwSBW+jYtxWdUibZVeI4P1KEK6vTDPuRN
	+eMIwuCBSUdXZDE0pxFQu7FYhC7Li6olX+xIvp3PvfIcmhYMUdRWKbFlanpRNgCzOAwIXhyMUBQw5
	+UlnTPgRZkqd25nG97Z8Rnimtiti6NURkKQNOetL3xZdMFtQu0Tu2iFEQt08ZBUGTkxHGvhhh62mh
	qAlG7NkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAqlb-000h2H-TX; Mon, 11 Jul 2022 10:35:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAqlX-000h1A-V6
	for barebox@lists.infradead.org; Mon, 11 Jul 2022 10:35:49 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oAqlV-0003SB-Sz; Mon, 11 Jul 2022 12:35:45 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oAqlV-0007vt-Ad; Mon, 11 Jul 2022 12:35:45 +0200
Date: Mon, 11 Jul 2022 12:35:45 +0200
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20220711103545.GB29790@pengutronix.de>
References: <20220708064646.10843-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220708064646.10843-1-eagle.alexander923@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220711_033548_022013_138F53D3 
X-CRM114-Status: GOOD (  18.87  )
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
Subject: Re: [PATCH] ARM: dts: am335x-myirtech: Update to use upstream DT
 partition scheme
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jul 08, 2022 at 09:46:46AM +0300, Alexander Shiyan wrote:
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> ---
>  arch/arm/dts/am335x-myirtech-myd.dts | 35 +++++++---------------------
>  1 file changed, 8 insertions(+), 27 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/dts/am335x-myirtech-myd.dts b/arch/arm/dts/am335x-myirtech-myd.dts
> index 1ea0f2a440..54050816fc 100644
> --- a/arch/arm/dts/am335x-myirtech-myd.dts
> +++ b/arch/arm/dts/am335x-myirtech-myd.dts
> @@ -22,33 +22,14 @@
>  
>  };
>  
> -&nand0 {
> -	/delete-node/ partition@0;
> -	/delete-node/ partition@20000;
> -
> -	nand_parts: partitions {
> -		compatible = "fixed-partitions";
> -		#address-cells = <1>;
> -		#size-cells = <1>;
> -
> -		partition@0 {
> -			label = "MLO";
> -			reg = <0x00000 0x20000>;
> -		};
> -
> -		partition@80000 {
> -			label = "boot";
> -			reg = <0x80000 0x100000>;
> -		};
> -
> -		nand_environment: partition@180000 {
> -			label = "env";
> -			reg = <0x180000 0x40000>;
> -		};
> +&nand_parts {
> +	nand_environment: partition@180000 {
> +		label = "env";
> +		reg = <0x180000 0x40000>;
> +	};
>  
> -		partition@1c0000 {
> -			label = "system";
> -			reg = <0x1c0000 0>;
> -		};
> +	partition@1c0000 {
> +		label = "system";
> +		reg = <0x1c0000 0>;
>  	};
>  };
> -- 
> 2.32.0
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


