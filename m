Delivery-date: Mon, 17 Feb 2025 15:44:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tk2MW-003WNE-1C
	for lore@lore.pengutronix.de;
	Mon, 17 Feb 2025 15:44:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tk2MV-0008CO-7N
	for lore@pengutronix.de; Mon, 17 Feb 2025 15:44:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Hp2jrKlQhktEQl+YzhO1koqiYIMis1hL6vWRzrCaKT0=; b=RyNHEv0B+RS/pzB6e42cb2Nhea
	LmD+eEeX/BOAmC41A/uqkYny9XOgWHGw/xHFTBHHqJYyW+D6HZDLVpRPgEM0w1u1ZyJxmoHsFrXsX
	YarI9/Sl6Z0VLmNBz4JvIQn1ecwFg+UM51aVUUxUpX9a5+DOhDCZ/oW2P4l9AjV+P9o/cjVrMXraS
	IHwuB0LrGCcTIy+ioDgsFUtoBdBjGEPtUoxRb5Bme08rLNOZrJ7nT16kQuOkKL00EsZxKODp2Ff63
	EXr172vfy3VzJEmmcGxeQNwM+hIc0LvnF+7ezmzCpdmv/lwdhF6wUQqeuZe0eNl0jErqPlyQKfnp5
	CMiolS5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tk2Lv-00000004uU8-0DG4;
	Mon, 17 Feb 2025 14:44:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tk2CQ-00000004sEn-30AI
	for barebox@lists.infradead.org;
	Mon, 17 Feb 2025 14:34:20 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tk2CO-0006Gn-PS; Mon, 17 Feb 2025 15:34:16 +0100
Message-ID: <a06cfea0-5584-4173-ae9b-aafa2f5d0142@pengutronix.de>
Date: Mon, 17 Feb 2025 15:34:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20250108153216.484573-1-s.hauer@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250108153216.484573-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250217_063418_758444_155E8ADB 
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] usb: dwc3: add am62 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 08.01.25 16:32, Sascha Hauer wrote:
> This adds the glue code necessary for the DWC3 controller on TI AM62x
> SoCs. The code is based on the corresponding Linux driver as of
> Linux-6.13-rc1.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Sorry for the late review, but I have a question.

> +	/* Calculate the rate code */
> +	rate = clk_get_rate(am62->usb2_refclk);
> +	rate /= 1000;	// To KHz

Nitpick: We have HZ_PER_KHZ, which would save you a comment.

> +	ret = of_platform_populate(node, NULL, dev);
> +	if (ret) {
> +		dev_err_probe(dev, ret, "failed to create dwc3 core\n");
> +		goto err_pm_disable;
> +	}
> +
> +	/* Set mode valid bit to indicate role is valid */
> +	reg = dwc3_ti_readl(am62, USBSS_MODE_CONTROL);
> +	reg |= USBSS_MODE_VALID;
> +	dwc3_ti_writel(am62, USBSS_MODE_CONTROL, reg);

It's odd to do this after of_platform_populate. A deep probe
system would always try to initialize DWC3 without this
set, wouldn't it?

Cheers,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


