Delivery-date: Thu, 15 Aug 2024 07:54:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1seTRN-009mGE-25
	for lore@lore.pengutronix.de;
	Thu, 15 Aug 2024 07:54:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1seTRM-0007za-Ur
	for lore@pengutronix.de; Thu, 15 Aug 2024 07:54:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=y6WjAVqD++KCLn5H+kh0aHBslFAUG/hpbLAE6jPNQtY=; b=zAJheMFUgo7YxL1q7y6X4C09zK
	e1Nl2j4aGIDac1mgQTo4nVHqmqh6bXBtXgMDsfr1a5V4dz7n35nDu9TrtogKJzo//5PkvgUd3cqhS
	P6IeNLvQ7ittJDcxBvW9VOt6yjr4VbInvDoIcy/OzyeRZWm2/OqGY2Bm3ztjcOisZ6QaAakUVzWcR
	s2mS8Uw9WUkTo7rddMe9wuOf6gl90v6dsNquUU8IR3Zq3mVXaIdpFIrKzzLkXq5Clh5HExdD0f8G9
	L8NL1RIGNaP4pUkn1R4xEIQOjP+fGASTHU2fnNBHThlDNPtGnOXX42HSe3aRRRQT0GA3nrqWxDkFO
	Izovc2rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seTQa-000000097gu-44kh;
	Thu, 15 Aug 2024 05:53:40 +0000
Received: from smtp.cesky-hosting.cz ([2001:67c:e94:0:1:5bef:c8ee:1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seTQW-000000097gA-064i
	for barebox@lists.infradead.org;
	Thu, 15 Aug 2024 05:53:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=elrest.cz;
	s=rampa2-202408; t=1723701195;
	bh=MDLvx2CfxrtT8H72hCARj4P8f9z9Fwpdd8V9ykzeW4g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DG9uLVChJpHIp2J5Sx61BTsMUJEt+Ew0ZWpnYye66HQTjXxccIfArR2UTEYx0Kpyq
	 T5/omzoudT1eaWct4DQwQvcv6MvXE3tBOpst/GUjgP7oeUUGBSDRDz8yXbJqOlgLD1
	 FS1KDgGqsx601UaNBcn/WrYC1RX8Y2tdryXTkojAv19///IZ/MQt2cP+4wh4NvzmdX
	 qRqiKyiGuaK1xYbtrMsy1xrPFRqJEV59DK3Rp/PqP+VK3DCjmLKNNlHUqrYj24lTb5
	 EZCyRXzWO3t6DjBUVxhADZDhPnCyAN9Lx8V8wKxCjWJ7HarQv7GEgh3GqhBWIVM6u7
	 USNk/zQ/DB3tg==
X-Virus-Scanned: Debian amavis at smtp.cesky-hosting.cz
X-Thin-Conversation: seen
Received: from debian (unknown [185.63.98.16])
	(Authenticated sender: tomas.marek@elrest.cz)
	by smtp.cesky-hosting.cz (Postfix) with ESMTPSA id 4WkvRs2GqHzSV;
	Thu, 15 Aug 2024 07:53:12 +0200 (CEST)
Date: Thu, 15 Aug 2024 07:53:10 +0200
From: Tomas Marek <tomas.marek@elrest.cz>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Zr2XxoD4Gce7bTB4@debian>
References: <20240814092424.39878-1-a.fatoum@pengutronix.de>
 <20240814092424.39878-5-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240814092424.39878-5-a.fatoum@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_225336_528489_6EECFFFE 
X-CRM114-Status: GOOD (  17.29  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 5/6] i2c: efi: avoid 64-bit division
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Ahmad,

Thanks for maintenance of the Barebox EFI.

On Wed, Aug 14, 2024 at 11:24:23AM +0200, Ahmad Fatoum wrote:
> I2C message length is 16 bit, so doing a 64-bit division is overkill.
> Let's remove the cast and just rely on the usual integer promotion
> to 32-bit.
> 
> Cc: Tomas Marek <tomas.marek@elrest.cz>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/i2c/busses/i2c-efi.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/i2c/busses/i2c-efi.c b/drivers/i2c/busses/i2c-efi.c
> index 5f6cc0eed28e..a666a28fab51 100644
> --- a/drivers/i2c/busses/i2c-efi.c
> +++ b/drivers/i2c/busses/i2c-efi.c
> @@ -114,7 +114,7 @@ static unsigned int efi_i2c_msg_op_cnt(const struct efi_i2c_priv *i2c_priv,
>  
>  	max_len = efi_i2c_max_len(i2c_priv, msg);
>  
> -	return ((u64)msg->len + max_len - 1) / max_len;
> +	return (msg->len + max_len - 1) / max_len;

The issue here is that max_len, which represents the MaximumReceiveBytes
or MaximumTransmitBytes in EFI I2C capabilities, is 32-bit. In some EFI
implementations (including the one I use), the EFI I2C MaximumReceiveBytes
and MaximumTransmitBytes are set to the maximum value (0xFFFFFFFF). This
causes msg->len + max_len - 1 to overflow, leading to an incorrect number
of returned operations. To address this, the msg->len is extended to 64 bits.

Best regards

Tomas

>  }
>  
>  static unsigned int efi_i2c_req_op_cnt(
> -- 
> 2.39.2
> 


