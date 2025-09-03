Delivery-date: Wed, 03 Sep 2025 13:15:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utlSu-007d0C-01
	for lore@lore.pengutronix.de;
	Wed, 03 Sep 2025 13:15:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utlSs-0001iw-OY
	for lore@pengutronix.de; Wed, 03 Sep 2025 13:15:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pvxVX4KF8HatAiLTYTdNkJGl2oVNlZe5V+cHFdRBQAc=; b=UVn2+7eyCLMTY/iWr/W6YNGg+F
	Mtgvhzctj9FTFLldgk3rvs1ObiYz3n9cgssPn97mP4SqBMppYyi49h8N3TCCqxFCQebSgmS3a1v2A
	88jxkVG9yb/OJnjlFMAvLZBb+btXrIDVwNSltMiO2g391oKOdMA2dVhwnHlUfMkjz51+2ysZLRbSK
	opbydlaqTIP8HC1NwBmoqSOfvRhE5eh1fbXajKH27TSqdsNys0R+uGMXMQczE7h3NZw6LCoWejg4W
	mx5kAn+DoXu4unYOD/tVDYUlWp5XPp0hgyvqn3XyQA7934y0S0bKp/twr0sCu1fDthaMlQNW5SejB
	YKOrDUyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utlSB-00000006CFT-24h4;
	Wed, 03 Sep 2025 11:15:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utkSG-000000063gA-1Hey
	for barebox@lists.infradead.org;
	Wed, 03 Sep 2025 10:11:06 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1utkSE-0002LP-Jx; Wed, 03 Sep 2025 12:11:02 +0200
Message-ID: <e49d3dc6-054f-406c-8fe8-45cbd617036d@pengutronix.de>
Date: Wed, 3 Sep 2025 12:11:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: christian.thiessen@airbus.com, BAREBOX <barebox@lists.infradead.org>
References: <20250903-mtd-erase-enosys-v1-1-967a95172c4e@airbus.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20250903-mtd-erase-enosys-v1-1-967a95172c4e@airbus.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250903_031104_406264_3513F91C 
X-CRM114-Status: GOOD (  25.60  )
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
Subject: Re: [PATCH] mtd: Make mtd_erase fail gracefully if CONFIG_MTD_WRITE
 is off
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Christian,

Thanks for your patch!

On 9/3/25 10:49 AM, Christian Thießen via B4 Relay wrote:
> From: Christian Thießen <christian.thiessen@airbus.com>
> 
> When CONFIG_MTD_WRITE is unset, the mtd->_erase member of partition
> devices does not get initialized, so it remains NULL.
> However when running ubiattach on an UBI partition, mtd_erase() still
> gets called, tries to call mtd->_erase and crashes. Make it fail
> gracefully by returning ENOSYS ("Function not implemented") instead.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

with two minor comments below.

> 
> ---
> As discussed in https://github.com/barebox/barebox/issues/39 this patch
> enables ubiattach-ing a NAND partition even if CONFIG_MTD_WRITE is
> turned off, by making mtd_erase fail gracefully.
> 
> Signed-off-by: Christian Thießen <christian.thiessen@airbus.com>

Stuff between the --- is thrown away by git am, so you will want to move
the S-o-b above the ---. The rest is okay.

> ---
>  drivers/mtd/core.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
> index 6162ec450fc1c3a0fa6339042c4d627e0f9567d0..7ca8fc900af4666070b03ef5f945748d60e6a6e7 100644
> --- a/drivers/mtd/core.c
> +++ b/drivers/mtd/core.c
> @@ -436,6 +436,7 @@ int mtd_erase(struct mtd_info *mtd, struct erase_info *instr)
>  {
>  	if (instr->addr >= mtd->size || instr->len > mtd->size - instr->addr)
>  		return -EINVAL;
> +#ifdef CONFIG_MTD_WRITE

Please replace with the following at the start of the function:

	if (!IS_ENABLED(CONFIG_MTD_WRITE))
		return -ENOSYS;

This results in the same code as IS_ENABLED() is evaluated at
compile-time. but the compiler can still catch compile errors in the
disabled parts, which makes maintenance easier.

Cheers,
Ahmad


>  	if (!(mtd->flags & MTD_WRITEABLE))
>  		return -EROFS;
>  	instr->fail_addr = MTD_FAIL_ADDR_UNKNOWN;
> @@ -443,6 +444,9 @@ int mtd_erase(struct mtd_info *mtd, struct erase_info *instr)
>  		return 0;
>  
>  	return mtd->_erase(mtd, instr);
> +#else
> +	return -ENOSYS;
> +#endif
>  }
>  
>  int mtd_read_oob(struct mtd_info *mtd, loff_t from, struct mtd_oob_ops *ops)
> 
> ---
> base-commit: b5561f3bdd4845b478e5b35aab04f1d8e71ea93b
> change-id: 20250902-mtd-erase-enosys-2d80e4bc77c8
> 
> Best regards,

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



