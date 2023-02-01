Delivery-date: Wed, 01 Feb 2023 19:10:31 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNHZ2-00AP51-Ge
	for lore@lore.pengutronix.de; Wed, 01 Feb 2023 19:10:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNHYz-00014O-Uv
	for lore@pengutronix.de; Wed, 01 Feb 2023 19:10:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dgcxjumOsqwes4fVj2N8DvtvNaoCsirZJwPczs+imYY=; b=sdZSCeUPtcon5wgD1NrMX92YgY
	5ohwRhNdrHcEPXHHs16IPWzZ1KVzYtUc4t6ygSph4vBhVEM3eotNfZ/6t9lfRiISvlZy8CsHti7hm
	/3axc3EuEToTITxdR7BIhjBeEJ4a49Wc+PsIin6czNT9QCfMa9m/tUy1SkIMWZ0h+UI5dpHEmDDyQ
	/9CD+G1gbuzBz1Og5ixT2V1MQ4/ws09bqYmIZh9Hr7pwZxZV18GA7IQ2rBX9VsfOUC+fVSB6biGqv
	3bpc89djn1DZXGJWCx++kdEda5JMBgryo/0JnywGSAt/0QgLYt7rKIYd/1576Q4NIPKAvh0Rl/V3u
	qvKU0CTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNHXn-00D8MX-Dt; Wed, 01 Feb 2023 18:09:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNHXi-00D8KF-Vb
	for barebox@lists.infradead.org; Wed, 01 Feb 2023 18:09:12 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pNHXb-0000tF-SC; Wed, 01 Feb 2023 19:09:03 +0100
Message-ID: <9751649f-3ec5-89ca-5710-987ee2f78b6a@pengutronix.de>
Date: Wed, 1 Feb 2023 19:09:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Michael Grzeschik <m.grzeschik@pengutronix.de>,
 barebox@lists.infradead.org
References: <20230124200114.3160585-1-m.grzeschik@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230124200114.3160585-1-m.grzeschik@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230201_100911_045476_1F85D734 
X-CRM114-Status: GOOD (  24.36  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/2] ARM: dts: stm32mp15x: adjust USB OTG gadget tx
 fifo sizes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 24.01.23 21:01, Michael Grzeschik wrote:
> There are in sum 952 dwords available for g-rx-fifo-size,
> g-np-tx-fifo-size and the eight entries of g-tx-fifo-size. For high
> speed endpoints the maximal packet size is 512 (for full speed it's 64)
> bytes. So a tx-fifo-size of more than 128 (dwords) isn't sensible.

There is no driver support for this binding, so this patch achieves nothing.

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

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



