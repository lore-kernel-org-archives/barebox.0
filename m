Delivery-date: Mon, 24 Jun 2024 19:53:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sLnsm-00BZmU-0h
	for lore@lore.pengutronix.de;
	Mon, 24 Jun 2024 19:53:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sLnsl-0008Sf-Ll
	for lore@pengutronix.de; Mon, 24 Jun 2024 19:53:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=p38JzU1YBS3BCQWCjcwcu4wW8wDsJLy28pO3tbjeg68=; b=MFgse4fWdCE1T9XoWD1L/kAjK6
	PgERgK4XZC+imMXGwsjiGIK/FqtRUDpBOR3bXIm/640F71u3KhNcm6cInqHeOcV3dXUWx2Y+HomrA
	oIX1UPx1NYBi9cwDUEpVeVpjTAA1hzycl779qknwbo57AxlodhED4IFRJWQtrLz/H8ua6YUEyb3Vf
	SNUJUc9duEjTuHHUL0EpiS9wcRsap79OlbfByBDmmazhgKHihPy/lMviG1j53wd/oAAM/JpnXXPTj
	UsgOYSN0b8l6O0lfxzxe3BUKzwrrDjYWnk+YIwYsvYrHSfbaUnJ0GAUMkbW6OFyvkOIZinKgzPKdP
	F2+d6WLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLnsJ-00000000Anc-1d9S;
	Mon, 24 Jun 2024 17:53:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLnsF-00000000Akg-019F
	for barebox@lists.infradead.org;
	Mon, 24 Jun 2024 17:53:05 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sLnsB-0008Lg-Iw; Mon, 24 Jun 2024 19:52:59 +0200
Message-ID: <e4dbf1b6-7244-4abb-8d9a-f3fda02e1b29@pengutronix.de>
Date: Mon, 24 Jun 2024 19:52:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Alexander Shiyan <eagle.alexander923@gmail.com>,
 barebox@lists.infradead.org
References: <20240624175009.826551-1-eagle.alexander923@gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240624175009.826551-1-eagle.alexander923@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240624_105303_078423_37C5823B 
X-CRM114-Status: GOOD (  17.00  )
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
Subject: Re: [PATCH] mfd: rk808: Use standard system-power-controller property
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Alexander,

Thanks for your patch.

On 24.06.24 19:50, Alexander Shiyan wrote:
> The old property "rockchip,system-power-controller" marked as deprecated.
> 
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> ---
>  drivers/mfd/rk808.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
> index adb9d8ca0a..8f766a3fa2 100644
> --- a/drivers/mfd/rk808.c
> +++ b/drivers/mfd/rk808.c
> @@ -366,7 +366,7 @@ static int rk808_probe(struct device *dev)
>  	rk808->poweroff.poweroff = rk808_poweroff;
>  	rk808->poweroff.priority = 200;
>  
> -	if (of_property_read_bool(np, "rockchip,system-power-controller"))
> +	if (of_property_read_bool(np, "system-power-controller"))
>  		rk808->poweroff.priority += 100;

This change is only correct when all DTs we support cease to use the deprecated
property. This is currently not the case, e.g. for rk3568-wolfvision-pf5-upstream.dts.

Until that's done, we should check both properties.

Thanks,
Ahmad

>  
>  	poweroff_handler_register(&rk808->poweroff);

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



