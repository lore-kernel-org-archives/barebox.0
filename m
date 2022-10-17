Delivery-date: Mon, 17 Oct 2022 18:40:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okTA6-00BkbZ-3t
	for lore@lore.pengutronix.de; Mon, 17 Oct 2022 18:40:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okTA4-0006YJ-4A
	for lore@pengutronix.de; Mon, 17 Oct 2022 18:40:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=D8ZfBX2ZcTTFHPbqmVtUbUZgN/V2WVYfcJ11IVkSelM=; b=Ud9eSbaoj29uEWl7JCpDw9slaJ
	fy5Ri+DnQDK30Zd2c3niNl2tcN+TJbsEb0PQzvtGJwniiPJz0RMQXAIGjudGfTeK5vPzt5nVRh68g
	y4X5QokWr9b8hsx74UWgTM1/iNUlbSKHF4LYYGnkRm3FYHo6LfSyfaNy5R7WiNPLAomUFpk6rH3zj
	EIFD43aXLwq2/x39eXn6QEK3tC0C02ywgUyWh/h42L5yNK92TpwOXdc7A3lYpQErczxEufJPSAxJC
	jC5VhZ4zIqX3KseiPEUxO9E8qSBjrrFRDC1Ft3WM15Tii+TPru0oELmPJcpQtQau+L1kJggIv6AjT
	mQ3YDtag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okT8t-00Dn3P-CN; Mon, 17 Oct 2022 16:39:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okT8o-00Dn2U-Aq
	for barebox@lists.infradead.org; Mon, 17 Oct 2022 16:39:03 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1okT8n-0006L1-2t; Mon, 17 Oct 2022 18:39:01 +0200
Message-ID: <d7ca8967-5b27-093a-5cee-b26d36b21aff@pengutronix.de>
Date: Mon, 17 Oct 2022 18:39:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>, barebox@lists.infradead.org
References: <20221017161818.333094-1-m.felsch@pengutronix.de>
 <20221017161818.333094-2-m.felsch@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20221017161818.333094-2-m.felsch@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221017_093902_408228_6830218C 
X-CRM114-Status: GOOD (  18.13  )
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
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH next 2/3] ARM: dts: i.MX8MP: assume hsio power domain to
 be powered
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 17.10.22 18:18, Marco Felsch wrote:
> With a very recent barebox version we get the following error message:
> 
>   imx8mq-usb-phy 382f0040.usb-phy@382f0040.of: error No such device: power domain attach failed
> 
> This is because of the lack of the power-domain driver. With the
> assumption that the TF-A left this power-domain powered we can set this
> flag to tell barebox that everything is okay.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/arm/dts/imx8mp.dtsi | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm/dts/imx8mp.dtsi b/arch/arm/dts/imx8mp.dtsi
> index b251ebeada..7e46a71546 100644
> --- a/arch/arm/dts/imx8mp.dtsi
> +++ b/arch/arm/dts/imx8mp.dtsi
> @@ -7,3 +7,7 @@
>  		syscon = <&src>;
>  	};
>  };
> +
> +&hsio_blk_ctrl {
> +	barebox,allow-dummy;
> +};


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


