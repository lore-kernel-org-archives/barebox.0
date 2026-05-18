Delivery-date: Mon, 18 May 2026 11:42:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOuUl-0015TZ-2I
	for lore@lore.pengutronix.de;
	Mon, 18 May 2026 11:42:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOuUk-0007Za-V4
	for lore@pengutronix.de; Mon, 18 May 2026 11:42:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/Gsq3df/nCr9tTlyr85oYsOXxdOEl4pBEkJfyMekPWs=; b=VSAfYIKzgOJQ2mpumkIT38lWDd
	740FjTUq4SANwVUQEEgk2tfAQci1GFLHcc1fMyNYS28jpcgjCZaO6vHdVsOnlL+ba2wsQGrcpSYSl
	BFh5xtlXgnHqwOBsXUM8V4UElpcQb0MuICVCmGBKvBeP84x/Mrpkx6yjkGVc69TLRDs/h9rbbKNac
	F5wjoeEFQX1l4lARdA6nN0NzEJqFrYRq3t2So4gvtjMEvBfLvdqvPMtCnch0Ub4xydf1I3f6Udytg
	LLvod58npOtH1cqK+e9G3IYT6QR19m92xIfU9silx/7UzU7rDNZeDFV+di09nGvQDU35XwhX4Bsua
	DD4YCIbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOuTm-0000000F49C-3e6b;
	Mon, 18 May 2026 09:41:42 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOuTk-0000000F489-1cJ3
	for barebox@bombadil.infradead.org;
	Mon, 18 May 2026 09:41:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=/Gsq3df/nCr9tTlyr85oYsOXxdOEl4pBEkJfyMekPWs=; b=alamIzZ2t59BdM3bXMxPimi0LA
	ZVDfnRxl38kDP0pQMuPIJl4ln0HWKwPIKVcB935L/NY5LHpQwj916mcrERki+xdFz3joIotvACHqQ
	XtXPOW2dPVLF2Des3JkQ4+40x7IvjZ/7CbYEC4LJRhkeLn/yVG7mQBPNaWqzKkAQIXl7RYcxHQBPH
	nS36nlOobCJgDldQNYMumj/ztK7t8o2iNaszAuQHPDuUl68WW0IBZLae3Ecy+DfzjmR5DEnrJMFL1
	UBlpKDNdmKDp4bNgjfFXNaXdC8jSiQj3/l1UvCanCgzwNRLpL+aUfVy4EYJF29lXPBM+Cb/MB90b7
	sWiMH/fA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOuTg-0000000Ac4a-1rO6
	for barebox@lists.infradead.org;
	Mon, 18 May 2026 09:41:39 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wOuTf-0007L8-LO; Mon, 18 May 2026 11:41:35 +0200
Message-ID: <801576c3-81ce-40d8-b627-91250a5c718f@pengutronix.de>
Date: Mon, 18 May 2026 11:41:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20260518-k3-am62x-image-size-fixes-v1-0-ab723d79922d@pengutronix.de>
 <20260518-k3-am62x-image-size-fixes-v1-2-ab723d79922d@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260518-k3-am62x-image-size-fixes-v1-2-ab723d79922d@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_104136_936001_85D67327 
X-CRM114-Status: GOOD (  17.36  )
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
Subject: Re: [PATCH 2/3] ARM: k3: am62x: make more space for r5 barebox binary
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 5/18/26 11:26 AM, Sascha Hauer wrote:
> On the AM62x we have 0x3e000 bytes available for the initial r5 barebox
> binary and the dmdata. The dmdata is currently hardcoded at offset
> 0x3a800 in the SRAM leaving only the space below that for the barebox
> binary. The dmdata only has a size of 1362 bytes. Let's be generous and
> give it 4096 bytes of maximum space, so move it up to 0x3d000 leaving
> mode space for the barebox binary.

more

> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  images/Makefile.k3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/images/Makefile.k3 b/images/Makefile.k3
> index 789f77722a..12538541b0 100644
> --- a/images/Makefile.k3
> +++ b/images/Makefile.k3
> @@ -92,7 +92,7 @@ quiet_cmd_k3_am62x_image = K3_am62x_IMG   $@
>  			$(SYSFW_$(@F)):2:0:0:00040000				\
>  			$(SYSFWDATA_am625):18:0:0:00067000			\
>  			$$inner							\
> -			$(DMDATA_am625):17:16:0:43c3a800			\
> +			$(DMDATA_am625):17:16:0:43c3d000			\
>  			--key "$(KEY_$(@F))" --out $@
>  
>  ifdef CONFIG_FIRMWARE_K3_AM62L_OPTEE
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



