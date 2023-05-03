Delivery-date: Wed, 03 May 2023 12:26:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pu9gl-0033eq-5r
	for lore@lore.pengutronix.de; Wed, 03 May 2023 12:26:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pu9gh-0007Qz-Pm
	for lore@pengutronix.de; Wed, 03 May 2023 12:26:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vTvM2TpTG0Tr4Ao6Bq8Ms/zIqYj/wassE4kPnUdavN8=; b=gVSJjfyuN+h9owKG8xX/hcprtc
	chTy+gdIf92xLU1FdewucExvmM3+IBX0mF3PDRnWSWwAvyVftJCXvx2rv9eyIkS5k2/UZgiNeYw/W
	Yq6sKcBkoxdubA8FU8LfSJ1D0gBYBua3r3MNYj+H1FQblMhdnoIX4zbZCrSEwQmi+8vJhv6/LDivX
	gt0iICiaEBAGypzGy4+/WpVHZ9NGpX1FAvFvnY9Kg+a3hQ90zhAMaUZrIcHpTgpuPwqO0OPLBOzZI
	4ar/zF4fXbH+qmqyJcxDg0C9dkkBZmYsSlW0IaAXfTYzPVL6koalUYAMiPR7BVlbbOlGSeneVko0V
	t6BJDR0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pu9fa-0047iO-0L;
	Wed, 03 May 2023 10:25:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pu9fX-0047hW-03
	for barebox@lists.infradead.org;
	Wed, 03 May 2023 10:25:08 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pu9fT-00071F-M6; Wed, 03 May 2023 12:25:03 +0200
Message-ID: <80c80104-7665-e993-cd2a-c8a3facbdb6b@pengutronix.de>
Date: Wed, 3 May 2023 12:25:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Oleksij Rempel <o.rempel@pengutronix.de>, barebox@lists.infradead.org
References: <20230503101919.1826193-1-o.rempel@pengutronix.de>
 <20230503101919.1826193-5-o.rempel@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230503101919.1826193-5-o.rempel@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230503_032507_056055_FAEF7B8B 
X-CRM114-Status: GOOD (  18.09  )
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
X-Spam-Status: No, score=-7.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v1 4/4] arm: dts: stm32mp151-prtt1l: Configure USB gadget
 FIFOs for multiple gadgets support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Oleksij,

On 03.05.23 12:19, Oleksij Rempel wrote:
> This patch configures the USB gadget FIFOs of PRTT1L boards to support
> multiple gadgets at the same time. The configuration was tested with the
> "usbgadget -S '/dev/mmc1(mmc1)' -s -A '' -b" command.

What's the downside on configuring the FIFO this way globally
in stm32mp151.dtsi? Should the same be done for Linux?

> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  arch/arm/dts/stm32mp151-prtt1l.dtsi | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm/dts/stm32mp151-prtt1l.dtsi b/arch/arm/dts/stm32mp151-prtt1l.dtsi
> index 98a9c20d6d..fecd068fc0 100644
> --- a/arch/arm/dts/stm32mp151-prtt1l.dtsi
> +++ b/arch/arm/dts/stm32mp151-prtt1l.dtsi
> @@ -56,6 +56,7 @@
>  	phys = <&usbphyc_port1 0>;
>  	phy-names = "usb2-phy";
>  	status = "okay";
> +	g-tx-fifo-size = <128 128 128 16>;
>  };
>  
>  &usbphyc {

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



