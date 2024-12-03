Delivery-date: Tue, 03 Dec 2024 12:05:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tIQiV-003TUs-1d
	for lore@lore.pengutronix.de;
	Tue, 03 Dec 2024 12:05:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tIQiV-0007YM-E3
	for lore@pengutronix.de; Tue, 03 Dec 2024 12:05:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xGJ0jwKp1cLYcEMsjkjVE4TisT04NUIamL2+UPDW3qc=; b=He46b5Zrq7K1XFUekMe9hvgiJq
	UynKF5DBaS2qQJuc7Qk6AnPb/7jZHpizZ/PshUSb5nW7K4WddD9vIEmaRurDmJcxAduMMxz3+Ti0o
	+lexXlIZQM9gxiU1xW00hjDI2L75kcJV0REiwNfuae5Vik4F4fRZb6BKKgYTVPnzbPlDcV8bpY4AK
	6AIkETTLDM7JuMR65fm62dwN5+jme6K/Nu3+xY9+BFghkxNo/MvUxn4zU5D/KKtozQr3H7MP/0FRT
	Agf+Y3x+rFldRIONx/bYUCTnT9GsJ+chTs6ZbSxQ6yVY6KwmvE9pPHOsJGvAtNJ+4kJdjKfgbzWLg
	3jAiHD2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tIQi5-00000009BtQ-3OzM;
	Tue, 03 Dec 2024 11:04:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tIQSR-000000098Vr-1HKh
	for barebox@lists.infradead.org;
	Tue, 03 Dec 2024 10:48:44 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tIQSP-000346-Vn; Tue, 03 Dec 2024 11:48:42 +0100
Message-ID: <96947c97-749e-4507-a299-468d9d52ae76@pengutronix.de>
Date: Tue, 3 Dec 2024 11:48:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Dang Huynh <danct12@riseup.net>, Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Riesch <michael.riesch@wolfvision.net>
References: <20241203-pt2-init-v2-1-d6c625e1e455@riseup.net>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241203-pt2-init-v2-1-d6c625e1e455@riseup.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241203_024843_346482_6312DC90 
X-CRM114-Status: GOOD (  17.84  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] ARM: rockchip: Add support for Pine64 PineTab 2
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Dang,

On 03.12.24 11:24, Dang Huynh wrote:
> The Pine64 PineTab 2 tablet is basically the Quartz64 but as
> a finished product.
> 
> There are (currently) two revisions, v0.1 and v2.0.
> 
> v0.1 was sent to developers and there are a few units around
> (probably less than 10?)
> 
> v2.0 is the consumer available version, this version changed the
> display reset pin and hooked WLAN/BT chip to a GPIO.
> 
> Signed-off-by: Dang Huynh <danct12@riseup.net>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> +	if (bootsource == BOOTSOURCE_MMC && instance == 0)
> +		of_device_enable_path("/chosen/environment-sd");
> +	else
> +		of_device_enable_path("/chosen/environment-emmc");
> +
> +	rockchip_bbu_mmc_register("sd", 0, "/dev/mmc0");
> +	rockchip_bbu_mmc_register("emmc", BBU_HANDLER_FLAG_DEFAULT, "/dev/mmc1");

I still think it's useful to set BBU_HANDLER_FLAG_DEFAULT for the SD-card when
SD-booted, i.e.:

	int sd_flags = 0, emmc_flags = 0;	

	if (bootsource == BOOTSOURCE_MMC && instance == 0) {
		of_device_enable_path("/chosen/environment-sd");
		sd_flags = BBU_HANDLER_FLAG_DEFAULT;
	} else {
		of_device_enable_path("/chosen/environment-emmc");
		emmc_flags = BBU_HANDLER_FLAG_DEFAULT;
	}

	rockchip_bbu_mmc_register("sd", sd_flags, "/dev/mmc0");
	rockchip_bbu_mmc_register("emmc", emmc_flags, "/dev/mmc1");


But I don't have the board, so it's up to you.

Cheers,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


