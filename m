Delivery-date: Tue, 02 Sep 2025 14:28:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utQ89-007HEj-2G
	for lore@lore.pengutronix.de;
	Tue, 02 Sep 2025 14:28:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utQ88-0008IG-Hy
	for lore@pengutronix.de; Tue, 02 Sep 2025 14:28:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NFoEM6eWl8aLj+elHb+216wF6G+yOsHcGvg00qPoqcM=; b=mt1vtPk6der1lm5YrZrpcveiex
	IISEO8KMYjHCV4NGIYqoACK33CZIAXecKDG66RYtrxCe5iDZV4zXWjSX0nRWSsXDL7kg+9pLZaU3v
	OZTj8Q5vhj773ljVIE0l4OXwOfzhhmqkKMijk3alk2NTCBtxURMyl55p6kr0rFzusZUNY4SNWc89m
	hSVHqgidaCbVQ2KoxbHlvawDIUjy9gDKo4dVBxe60WyLvS/JqVJlhZI/9FkeMCL1K+TjSqlmJN4X9
	h2I8wdTHvzFsJeAp/U2TUQDDiUeUvyUAUqCgelLOPvtSIbQvbJlq2RNDxSeSky65XUywDpHHN+EAL
	ZmTKAhXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utQ71-0000000HEPS-3cH1;
	Tue, 02 Sep 2025 12:27:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utNBL-0000000GK7u-0d91
	for barebox@lists.infradead.org;
	Tue, 02 Sep 2025 09:20:04 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1utNBJ-0004BG-R3; Tue, 02 Sep 2025 11:20:01 +0200
Message-ID: <fb5be68c-aad3-4c09-9c42-b16c07357fe9@pengutronix.de>
Date: Tue, 2 Sep 2025 11:20:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: chalianis1@gmail.com, s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org
References: <20250831035542.1623695-1-chalianis1@gmail.com>
 <20250831035542.1623695-2-chalianis1@gmail.com>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250831035542.1623695-2-chalianis1@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250902_022003_197184_E3638F0C 
X-CRM114-Status: GOOD (  15.38  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/7] efi: video: gop: remove dependency to x86.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 8/31/25 5:55 AM, chalianis1@gmail.com wrote:
> From: Chali Anis <chalianis1@gmail.com>
> 
> efi GOP work also in arm64, the efi has drivers that implements
> LCDs and expose them as GOP protocol.
> Tested on QEMU ramfb and RPi3b 64 bit.
> 
> Signed-off-by: Chali Anis <chalianis1@gmail.com>

Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Nice, didn't expect the resolution patch to be so small..

Thanks,
Ahmad

> ---
>  drivers/video/Kconfig | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
> index 9a0e54bddbaf..b2eccd5db7fe 100644
> --- a/drivers/video/Kconfig
> +++ b/drivers/video/Kconfig
> @@ -32,7 +32,6 @@ config DRIVER_VIDEO_ATMEL_HLCD
>  config DRIVER_VIDEO_EFI_GOP
>  	bool "EFI Graphics Output Protocol (GOP)"
>  	depends on EFI_PAYLOAD
> -	depends on X86
>  
>  config DRIVER_VIDEO_IMX
>  	bool "i.MX framebuffer driver"

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



