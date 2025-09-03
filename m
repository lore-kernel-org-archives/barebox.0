Delivery-date: Wed, 03 Sep 2025 14:16:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utmQ0-007e01-1V
	for lore@lore.pengutronix.de;
	Wed, 03 Sep 2025 14:16:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utmPz-00021G-9j
	for lore@pengutronix.de; Wed, 03 Sep 2025 14:16:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IyIU0C7kizllHiV6c24rgXXJ/oex2qe+PL0WCzf7cD8=; b=zLJwQ6wpdy4FVPddV9Ulu5CVjo
	1kxygtebFfFSvz8lIYJ89adUEp8tbhMCWb78Ww7nlL8V+7U3firf5jdsQvY9uk93lLqotW0oGbU0i
	zfKBZHi4wFSx5ngfn13WqBZlc+BQRzzZEGSvS3RITDencZa7hVStEukBN/E81J88j3shYpuyCVB0T
	JlvDGRIrG1vDHincNYL6E+zGiFHmphLP7JRi0EufwVAM+rmSv3x4eiwrzkvLiT3K0ZOTuFwbrUFbB
	fIQkxDM64dSqTYh5eWIMvqkfBo+mrUPIwOQMIU4HqJguDkM/8ocaS9bS70LR5Xy9YO981UZ2cYn4X
	m1N9OVQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utmPL-00000006MGO-2Jgi;
	Wed, 03 Sep 2025 12:16:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utlJ7-00000006Azs-0GJD
	for barebox@lists.infradead.org;
	Wed, 03 Sep 2025 11:05:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1utlJ4-0007ZG-HR; Wed, 03 Sep 2025 13:05:38 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1utlJ4-003XyK-0y;
	Wed, 03 Sep 2025 13:05:38 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1utlJ4-00HZQH-0d;
	Wed, 03 Sep 2025 13:05:38 +0200
Date: Wed, 3 Sep 2025 13:05:38 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: christian.thiessen@airbus.com
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <20250903110538.t6ajvp3xe3v3phdi@pengutronix.de>
References: <20250903-mtd-erase-enosys-v1-1-967a95172c4e@airbus.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250903-mtd-erase-enosys-v1-1-967a95172c4e@airbus.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250903_040541_099716_E497A0DA 
X-CRM114-Status: GOOD (  22.65  )
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

thank you for your patch, please see below.

On 25-09-03, Christian Thieﬂen via B4 Relay wrote:
> From: Christian Thieﬂen <christian.thiessen@airbus.com>
> 
> When CONFIG_MTD_WRITE is unset, the mtd->_erase member of partition
> devices does not get initialized, so it remains NULL.
> However when running ubiattach on an UBI partition, mtd_erase() still
> gets called, tries to call mtd->_erase and crashes. Make it fail
> gracefully by returning ENOSYS ("Function not implemented") instead.
> 
> ---
> As discussed in https://github.com/barebox/barebox/issues/39 this patch
> enables ubiattach-ing a NAND partition even if CONFIG_MTD_WRITE is
> turned off, by making mtd_erase fail gracefully.
> 
> Signed-off-by: Christian Thieﬂen <christian.thiessen@airbus.com>
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

Albeit the patch is fine, I wouldn't do it via #ifdef's. Instead could
we use something like:

	if (!IS_ENABLED(CONFIG_MTD_WRITE))
		return -ENOSYS;

Regards,
  Marco


>  }
>  
>  int mtd_read_oob(struct mtd_info *mtd, loff_t from, struct mtd_oob_ops *ops)
> 
> ---
> base-commit: b5561f3bdd4845b478e5b35aab04f1d8e71ea93b
> change-id: 20250902-mtd-erase-enosys-2d80e4bc77c8
> 
> Best regards,
> -- 
> Christian Thieﬂen <christian.thiessen@airbus.com>
> 
> 
> 
> 


