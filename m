Delivery-date: Tue, 31 Jan 2023 09:45:27 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMmGf-008dfl-CV
	for lore@lore.pengutronix.de; Tue, 31 Jan 2023 09:45:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMmGc-0003Q4-80
	for lore@pengutronix.de; Tue, 31 Jan 2023 09:45:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xnK7cxZHMsmL0dlCRMpxMhWTM5x/7VBeT+5iOcgXpYE=; b=owZyXHo4WlkRo3H2b1hRl+nOo5
	C3oTuyCcwMycfvtPNjk0n+wiSO4bNZxJ7Z+GBlZPBqwzT/huc5b7vjtz8x2bXSy9f/gCu4HziBT/4
	hBLoz9c7wHu2Giyn56zfooaMVPtWCfPATFim5Mg6cjkrSBL+7UJCQ+l4+MhElS9YlJNNQHdCo3o/l
	Do+O9vtLl7kHhGCuDfEVstceeiDVu1/4sbsu83fuy92zy/9FydeklyjxM4J+T71UlBf6iYXH0CAPF
	BQZPgQxbECd7omI7JLSmjgOGYtAGNGXtb22TwbKrHumIlQd8YJthR0Zi57HdXI2sxX2vcC2P3qu0Z
	gG8PIxMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMmFG-006oFB-Se; Tue, 31 Jan 2023 08:44:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMmDK-006nTK-Jk
	for barebox@lists.infradead.org; Tue, 31 Jan 2023 08:42:06 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pMmDJ-0002co-0f; Tue, 31 Jan 2023 09:42:01 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pMmDI-0007zw-Q8; Tue, 31 Jan 2023 09:42:00 +0100
Date: Tue, 31 Jan 2023 09:42:00 +0100
To: Michael Grzeschik <m.grzeschik@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230131084200.GD13319@pengutronix.de>
References: <20230124200114.3160585-1-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230124200114.3160585-1-m.grzeschik@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230131_004204_324375_BA633744 
X-CRM114-Status: GOOD (  26.05  )
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
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/2] ARM: dts: stm32mp15x: adjust USB OTG gadget tx
 fifo sizes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jan 24, 2023 at 09:01:13PM +0100, Michael Grzeschik wrote:
> There are in sum 952 dwords available for g-rx-fifo-size,
> g-np-tx-fifo-size and the eight entries of g-tx-fifo-size. For high
> speed endpoints the maximal packet size is 512 (for full speed it's 64)
> bytes. So a tx-fifo-size of more than 128 (dwords) isn't sensible.
> 
> So instead of one (too) big and several small fifos, use two big fifos
> and to better use the remaining available space increase one of the
> small fifos.
> 
> This patch is already discussed for the mainline kernel.
> 
> https://lore.kernel.org/linux-arm-kernel/20230112112013.1086787-1-u.kleine-koenig@pengutronix.de/
> 
> Until this is fix has reached the synced kernel dts tree in barebox we
> fix this locally.
> 
> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> ---
> v1 -> v2: - added this patch to solve the fifo issue on stm32 dwc2 when loading fastboot
> 
>  arch/arm/dts/stm32mp151.dtsi | 4 ++++
>  1 file changed, 4 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/dts/stm32mp151.dtsi b/arch/arm/dts/stm32mp151.dtsi
> index d3e924dc00..602bcd60b2 100644
> --- a/arch/arm/dts/stm32mp151.dtsi
> +++ b/arch/arm/dts/stm32mp151.dtsi
> @@ -52,3 +52,7 @@
>  		barebox,mode-serial = <0xFF>;
>  	};
>  };
> +
> +&usbotg_hs {
> +	g-tx-fifo-size = <128 128 16 16 16 16 16 16>;
> +};
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


