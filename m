Delivery-date: Mon, 13 Apr 2026 16:03:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCHsk-00BjnU-2G
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 16:03:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCHsk-0004f2-0a
	for lore@pengutronix.de; Mon, 13 Apr 2026 16:03:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4liQRtll0F/exAOci1+jTY0vxPxS+h6Zh4mHCTFx4jA=; b=BLmiFyuKuqZ3lL3NHEUzKRZYBU
	02LUyEAilPSMg3wEED14CR56alM2frGIGncFBSaJkSdTORfcRVLeVjO8Scy6cGO+pv7+RkA07x0oz
	ok1Jc08K4ritB4WsmR0lYYD67ZR0w93E/nB+WbL8LZzCELHjKtt4T1osIqQ8MYpkMZ751Ed7AVkPt
	Kcpo39JfDiaaubqgyWcfZcyvY/bmXHKa6uqd+XUqACa2HOq32E7UO3/1Tn2GVLVMhChMo5O5dui+z
	7cHIq3fWzm0hHAqg8BfLX3FVWr22T0pqkp2MUHDrCxEVO96NJJujrhuMDdt9gZCC29jt2oOvqUi4j
	5x9FOEFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCHsJ-0000000FpKI-1dGv;
	Mon, 13 Apr 2026 14:02:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCHsH-0000000FpJS-1PMQ
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 14:02:50 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wCHsF-0004Sv-Qg; Mon, 13 Apr 2026 16:02:47 +0200
Message-ID: <8b171e69-953b-4aa3-923a-f4c7c0911939@pengutronix.de>
Date: Mon, 13 Apr 2026 16:02:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20260320135653.3603064-1-s.hauer@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260320135653.3603064-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_070249_380481_88C6F365 
X-CRM114-Status: GOOD (  18.42  )
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
Subject: Re: [PATCH] mci: register class device before card detection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 3/20/26 2:56 PM, Sascha Hauer wrote:
> mci_card_probe() notifies OP-TEE about the presence of a RPMB device
> which in turn tries to read from it. The OP-TEE request will end up
> in mci_get_rpmb_dev() which iterates over MMC class devices in order
> to find the correct one. Call class_add_device() earlier to make sure
> the new device is available at that time.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  drivers/mci/mci-core.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> index cdb20a5625..d3d7bd5e07 100644
> --- a/drivers/mci/mci-core.c
> +++ b/drivers/mci/mci-core.c
> @@ -3111,6 +3111,8 @@ int mci_register(struct mci_host *host)
>  	if (IS_ENABLED(CONFIG_MCI_INFO))
>  		devinfo_add(&mci->dev, mci_info);
>  
> +	class_add_device(&mmc_class, &mci->dev);
> +
>  	/* if enabled, probe the attached card immediately */
>  	if (IS_ENABLED(CONFIG_MCI_STARTUP) ||
>  	   (IS_ENABLED(CONFIG_MCI_STARTUP_NONREMOVABLE) &&
> @@ -3124,8 +3126,6 @@ int mci_register(struct mci_host *host)
>  		of_register_fixup(of_broken_cd_fixup, host);
>  	}
>  
> -	class_add_device(&mmc_class, &mci->dev);
> -
>  	return 0;
>  
>  err_free:

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



