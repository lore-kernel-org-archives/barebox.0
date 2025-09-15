Delivery-date: Mon, 15 Sep 2025 11:01:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uy557-003GK2-1q
	for lore@lore.pengutronix.de;
	Mon, 15 Sep 2025 11:01:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uy556-0004ht-Nm
	for lore@pengutronix.de; Mon, 15 Sep 2025 11:01:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Tri319+2p1kPxDtemZW8onOERvJ+OZWu/eDL17okG7U=; b=z1qHQwnoZNFSahGayOnzC9TzMt
	dLAUZbMrACCB1PZGMYDQphfyEmy7wHqazfOLCUoP39GFo6rvFWbW7DQPPzHZpWwBta+0arIx8cTzZ
	CcZHGdr8lpZcPqR2m+hQ9Vat4rgQ62y6DKoEbUuvIXDDYvLiQTiRhhRDH80pNdnQr5mmDqxC63cQ8
	IU4w078A8yc4UXTa7gac7FbLrLUYr9aq0J2hWTw/JrYbcD0mazf8sejN7v/F2utBFHSuqzLo37X66
	nWWONYUPHWom/aKLFjKXABprDeuux0uY+vex6QkBFNGMJGzos4qiLuA0HGJklqLqZ+LXqEFcnPdTE
	12Zoz3uA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uy54f-00000003LWP-0WKr;
	Mon, 15 Sep 2025 09:00:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uy54c-00000003LVV-3aXv
	for barebox@lists.infradead.org;
	Mon, 15 Sep 2025 09:00:36 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uy54b-0004Yz-7f; Mon, 15 Sep 2025 11:00:33 +0200
Message-ID: <d7d52aea-2785-4ed5-9f87-081350396d7a@pengutronix.de>
Date: Mon, 15 Sep 2025 11:00:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: chalianis1@gmail.com, s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org
References: <20250914194027.32261-1-chalianis1@gmail.com>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250914194027.32261-1-chalianis1@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250915_020034_900395_DFA38470 
X-CRM114-Status: GOOD (  18.54  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] arch: x86: efi_defconfig: remove framebuffer console to
 fix duplicate screen.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 9/14/25 9:40 PM, chalianis1@gmail.com wrote:
> From: Chali Anis <chalianis1@gmail.com>
> 
> remove the framebuffer console and let develpers select it when needed, this
> fixes the problem that consist of having the screen splited to top and bottom
> displaying the output twice, and considerably speedup the efi payload on x86.
> 
> Fixes: 67498b411276 ("x86: configs: efi: enable some more useful options")
> Signed-off-by: Chali Anis <chalianis1@gmail.com>

In the worst case, the EFI stdio goes only to serial and users end up
seeing nothing on the screen at all with this configuration.

I thus don't think it's a good idea to disable it by default, unless we
have a way to check if stdio and GOP go to the same screen or not.

Cheers,
Ahmad

> ---
>  arch/x86/configs/efi_defconfig | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/arch/x86/configs/efi_defconfig b/arch/x86/configs/efi_defconfig
> index 1dd823af40ea..9844a70d2628 100644
> --- a/arch/x86/configs/efi_defconfig
> +++ b/arch/x86/configs/efi_defconfig
> @@ -78,7 +78,6 @@ CONFIG_DRIVER_NET_EFI_SNP=y
>  CONFIG_DISK=y
>  CONFIG_DISK_WRITE=y
>  CONFIG_VIDEO=y
> -CONFIG_FRAMEBUFFER_CONSOLE=y
>  CONFIG_DRIVER_VIDEO_EFI_GOP=y
>  CONFIG_FINTEK_SUPERIO=y
>  CONFIG_SMSC_SUPERIO=y

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



