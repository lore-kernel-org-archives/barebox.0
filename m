Delivery-date: Mon, 08 Jan 2024 11:31:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rMmv2-008heo-1d
	for lore@lore.pengutronix.de;
	Mon, 08 Jan 2024 11:31:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rMmv1-0005qz-TB
	for lore@pengutronix.de; Mon, 08 Jan 2024 11:31:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sVzN8dd6XU85+t+F41L7vvTq6pKL8kebay+aWOPWPDA=; b=nhrJ5RkjAyo4GYM8RoYXuv6wt/
	XozGzPiWQcZhGcBzrdK3NWFvoX/3CUGTGUcgfu6t59BRsA1HKDFF4+37TL4PgPXYVX+FFOLDsSKGr
	Bwz4hH+dR3YkzE/7giOjapJDCz/F6MSRBXZlHwtkK9yhU//27IekRYmrZ4KqYW+j2Lb0VDWZMqjs5
	hkQKUTYPA2k1+WEAxqyhhtRILF7GTyeqPwf7VmMkLaxYuQC4d8sRId2fKk39OjwvzptxrtAiSYNnd
	QY2B4bP6h9V35eOA6yQbeNmqLqTHUeD/TI34he4EVk5oxNBnBNmI9H79D2PaySBqVOy9bJXADuQYi
	KipMGA0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rMmtY-004cBd-1W;
	Mon, 08 Jan 2024 10:30:12 +0000
Received: from smtp15.bhosted.nl ([2a02:9e0:8000::26])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rMmtT-004c81-34
	for barebox@lists.infradead.org;
	Mon, 08 Jan 2024 10:30:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:content-type:mime-version:references:in-reply-to:
	 message-id:subject:cc:to:from:date:from;
	bh=sVzN8dd6XU85+t+F41L7vvTq6pKL8kebay+aWOPWPDA=;
	b=BbGk6ezHLc6WHu/MUSqg2VWf8qeOJ4PJaH8GAeyg1TwrFeEpo3VP5THrndTwPG1MX/PHFyS2Uef18
	 PTiN48C6MvOKlqnA2zdzoXBu8pBEWCE8w3r2Mfn6G0Eq0Kx7Uu3DJs+houcavqRiwZEyPw9lGLmskR
	 XrpG5eVO+to3J9q2xY9TCsbR5xp1y38ZGvSYvlH2gU/TCaL9I1aMxyMPE6KHEouDGy7hydmsPUQITy
	 eItawX3FfQxIXYh5OOHf239MC0iQyd9xni5vdM7/XKwPoMx6BID+8CSPccaOHUyjR3FNGamHgzj9qV
	 ftRC2s3iilYyYEL6X+UrgfXe9aqCcsw==
X-MSG-ID: dfc111f8-ae10-11ee-8d43-00505681446f
Date: Mon, 8 Jan 2024 11:29:58 +0100
From: Robin van der Gracht <robin@protonic.nl>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20240108112958.3b582cbb@ERD993>
In-Reply-To: <20240102170100.1596372-3-a.fatoum@pengutronix.de>
References: <20240102170100.1596372-1-a.fatoum@pengutronix.de>
	<20240102170100.1596372-3-a.fatoum@pengutronix.de>
Organization: Protonic Holland
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240108_023008_430531_92039522 
X-CRM114-Status: GOOD (  17.40  )
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
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master 2/7] nvmem: bsec: correct regmap's max_register
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad,

Comments are below.

On Tue,  2 Jan 2024 18:00:55 +0100
Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:

> The max_register must be a multiple of the register stride, which is not
> the case for (384 / 4) - 1 == 95. Instead, we should be setting 380, so
> fix the calculation to do this.
> 
> Fixes: 094ce0ee7cdf ("nvmem: bsec: correct regmap's max_register")
> Reported-by: Robin van der Gracht <robin@protonic.nl>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/nvmem/bsec.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/nvmem/bsec.c b/drivers/nvmem/bsec.c
> index 889f14428d59..22e30c6c2e82 100644
> --- a/drivers/nvmem/bsec.c
> +++ b/drivers/nvmem/bsec.c
> @@ -218,7 +218,7 @@ static int stm32_bsec_probe(struct device *dev)
>  	priv->map_config.reg_bits = 32;
>  	priv->map_config.val_bits = 32;
>  	priv->map_config.reg_stride = 4;
> -	priv->map_config.max_register = (data->size / 4) - 1;
> +	priv->map_config.max_register = data->size - priv->map_config.reg_stride;
>  
>  	priv->lower = data->lower;
>  

This patch gives a bsec device size of 1520 bytes. Which means I'm now
allowed to read/write beyond register 95 without an error.

barebox@board:/ ls -l /dev/stm32-bsec
crw-------           1520 /dev/stm32-bsec

The device size is now in bytes, but the read/write offsets given to
the md and mw commands is still in bytes/stride.

I.e. to read register 95:
md -l -s /dev/stm32-bsec 380+4 
0000017c: xxxxxxxx

I can now also read register 100:
md -l -s /dev/stm32-bsec 400+4 
00000190: 00000000                                           ....

This doesn't seem right.

max_register should probably stay 95. See doc[1]

1:https://git.pengutronix.de/cgit/barebox/tree/include/linux/regmap.h?h=v2023.12.0#n33

Robin


