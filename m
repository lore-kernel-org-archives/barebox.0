Delivery-date: Thu, 02 May 2024 16:22:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2XK9-00FCoF-0J
	for lore@lore.pengutronix.de;
	Thu, 02 May 2024 16:22:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2XK8-0006tW-F5
	for lore@pengutronix.de; Thu, 02 May 2024 16:22:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LQO3kbPoKXElLpnN3kFvaR9/ukXvUxXMxcO9SDcrAlw=; b=34FZOJp++mpLbeJMhNmNK52zC9
	H4Rt3kFR0L8Xx4Fm0klJQqv8q/SvkhcIs0C+nFojmEF5LQr1VCIr69tMBOhtcY/5CVszo/r+8NqtT
	hnjmnR+a3ZsEZsevry+ogmyNPCFj2qTS/tBQ10qfKMvVtIfAxa5VGstOlrs1KbrGD4TZDDCDAM5iw
	bFDGOpRrOKIDvqPte2wv+MKvWvqKePTgL+1PfghuxN1mEYE71IZ6SDK00Lqn3iNxNviFazDQ271PI
	QknDyyzhma58sfD2Ba46BRgvmY0fIipSK22FWcAkygFWsQv91BewkRNpXGoCnHBRtpFqFLrRKIBEm
	BhIqykkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2XJU-0000000CuP1-125d;
	Thu, 02 May 2024 14:21:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2XJP-0000000CuNd-2ewY
	for barebox@lists.infradead.org;
	Thu, 02 May 2024 14:21:30 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s2XJL-0006gX-Vp; Thu, 02 May 2024 16:21:24 +0200
Message-ID: <96669677-0785-4482-a9c0-58d9683dcf55@pengutronix.de>
Date: Thu, 2 May 2024 16:21:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20240430105310.3149242-1-s.hauer@pengutronix.de>
 <20240430105310.3149242-2-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240430105310.3149242-2-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240502_072127_709987_6D80EB8E 
X-CRM114-Status: GOOD (  15.96  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] ARM: move blob_is_arm_boarddata() to include
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 30.04.24 12:53, Sascha Hauer wrote:
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/arm/cpu/start.c               | 7 -------
>  arch/arm/include/asm/barebox-arm.h | 7 +++++++
>  2 files changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
> index 6d0a7cfc6b..c13e93c243 100644
> --- a/arch/arm/cpu/start.c
> +++ b/arch/arm/cpu/start.c
> @@ -36,13 +36,6 @@ static unsigned long arm_membase;
>  static void *barebox_boarddata;
>  static unsigned long barebox_boarddata_size;
>  
> -static bool blob_is_arm_boarddata(const void *blob)
> -{
> -	const struct barebox_arm_boarddata *bd = blob;
> -
> -	return bd->magic == BAREBOX_ARM_BOARDDATA_MAGIC;
> -}
> -
>  const struct barebox_boarddata *barebox_get_boarddata(void)
>  {
>  	if (!barebox_boarddata || !blob_is_arm_boarddata(barebox_boarddata))
> diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
> index 4d70360b91..67f2b6ac45 100644
> --- a/arch/arm/include/asm/barebox-arm.h
> +++ b/arch/arm/include/asm/barebox-arm.h
> @@ -32,6 +32,13 @@ void __noreturn barebox_arm_entry(unsigned long membase, unsigned long memsize,
>  #define barebox_arm_boarddata		barebox_boarddata
>  #define BAREBOX_ARM_BOARDDATA_MAGIC	BAREBOX_BOARDDATA_MAGIC
>  
> +static inline bool blob_is_arm_boarddata(const void *blob)
> +{
> +	const struct barebox_arm_boarddata *bd = blob;
> +
> +	return bd->magic == BAREBOX_ARM_BOARDDATA_MAGIC;
> +}
> +
>  u32 barebox_arm_machine(void);
>  
>  unsigned long arm_mem_ramoops_get(void);

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



