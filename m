Delivery-date: Mon, 01 Sep 2025 14:31:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ut3hS-006uJB-1h
	for lore@lore.pengutronix.de;
	Mon, 01 Sep 2025 14:31:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ut3hR-0007ym-AU
	for lore@pengutronix.de; Mon, 01 Sep 2025 14:31:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7eUhP3+ERPVxiku5htRWI5vtW0EyFJ7fqJlWYJURY9U=; b=3Iuktfz3huA8CuU3jznuy/gUWW
	O70poe5/idn2PT6EFGLjiw2XEGOFBGUfDHwgYox4DZ+YnjQKI2Rdj8txTYc+e2JXtOB0d4at8c3gD
	KxAMKg805g+vm8bugfR8BeHYWNF9znvmhU9Lamz8Xk1NmF4M2xv/BCeg/OrL93glYCZCnTJlM6ut0
	rImdfoC5DDjTy6kXxPa1htKiEHu5Ghj5Ci3H/NxK6Sx+WdB8+BfPsKzJ6zRw/TvmLpjJX7lnxFs+M
	yoI3uIXg02ZxwdRIB/QLW+qS/93OEEUHfc0z52RrCEnGfVS+d8RPZTXJxE0Af9fG7FaUSTA2HghLr
	JRjMSw/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ut3gw-0000000CUtz-13pR;
	Mon, 01 Sep 2025 12:31:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ut1u6-0000000BvGT-3AvH
	for barebox@lists.infradead.org;
	Mon, 01 Sep 2025 10:36:52 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ut1u4-00063e-PX; Mon, 01 Sep 2025 12:36:48 +0200
Message-ID: <920dee9d-95d2-47c6-846a-1df534e0faaf@pengutronix.de>
Date: Mon, 1 Sep 2025 12:36:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: chalianis1@gmail.com, s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org
References: <20250828041419.1874774-1-chalianis1@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20250828041419.1874774-1-chalianis1@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250901_033650_799588_4B0555CC 
X-CRM114-Status: GOOD (  17.44  )
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
Subject: Re: [PATCH] drivers: video: efi-gop: fix null reference pointer on
 priv->fb.mode=NULL.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 8/28/25 6:14 AM, chalianis1@gmail.com wrote:
> From: Chali Anis <chalianis1@gmail.com>
> 
> fix a null reference pointer on mode variable, that was never initialized,
> the mode will be set by the framebuffer subsyetem after initialisation so
> it's not necessary to change the resolution here.
> 
> Fixes: 6518b21c6c66 ("video: add EFI Graphics Output Protocol support")
> 
> Signed-off-by: Chali Anis <chalianis1@gmail.com>

Uhh, so this has always been a null pointer dereference so far, but NULL
page read didn't trap for us on x86..?

Anyways:

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Thanks,
Ahmad

> ---
>  drivers/video/efi_gop.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/video/efi_gop.c b/drivers/video/efi_gop.c
> index f4f58d9271f5..cef8a6816cac 100644
> --- a/drivers/video/efi_gop.c
> +++ b/drivers/video/efi_gop.c
> @@ -169,8 +169,6 @@ static int efi_gop_query(struct efi_gop_priv *priv)
>  
>  	priv->fb.screen_base = mode->frame_buffer_base;
>  	priv->mode = mode->mode;
> -	priv->fb.xres = priv->fb.mode->xres;
> -	priv->fb.yres = priv->fb.mode->yres;
>  
>  	return 0;
>  }

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



