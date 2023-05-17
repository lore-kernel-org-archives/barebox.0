Delivery-date: Wed, 17 May 2023 14:49:52 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzGbJ-004IxY-I5
	for lore@lore.pengutronix.de; Wed, 17 May 2023 14:49:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzGbH-0008RF-67
	for lore@pengutronix.de; Wed, 17 May 2023 14:49:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lyR1nHvwarSfpVuLfeeX5Req88+r3KyzXA21dKnVCLs=; b=Q0G3HT4BeyazH57NUikR1osQLu
	LaCDfkMQdI+MrmgrsUslHQk8dwIOKreDjttHYIEv0B3/Dq4KEp4Bvd6RPebXoNSatKkwpcigrnIZ5
	UgHdBByxzqBNf3pgzyOpphtOssHQDHvAkd6fNzcBK1ke5moYQe9BBzTDd39XNxZBPJT9ujCZZHFLJ
	oghuyXuVVwaWju9FmWSU/A3zdoykipR7ugQe4ChbRCEqIC77qRB6N3YOuoL/i9RLR8JWo4Erh01lI
	jkzpysq3uBfY5PO/zu3XUmVPm2wsg3Yh6msYXISIk2mnOaF3mRDNsByo1M08C0hSzRWBFY4x4Wyad
	op2/UpJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzGaH-009r6L-04;
	Wed, 17 May 2023 12:48:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzGaE-009r5i-0F
	for barebox@lists.infradead.org;
	Wed, 17 May 2023 12:48:47 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pzGaC-0008Ku-JB; Wed, 17 May 2023 14:48:44 +0200
Message-ID: <88966b89-6574-4240-80e1-031137ab73c9@pengutronix.de>
Date: Wed, 17 May 2023 14:48:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20230517090340.3954615-1-s.hauer@pengutronix.de>
 <20230517090340.3954615-5-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230517090340.3954615-5-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230517_054846_112221_1BE0BFC0 
X-CRM114-Status: GOOD (  19.20  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 04/34] ARM: put scratch mem area below OP-TEE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 17.05.23 11:03, Sascha Hauer wrote:
> We want to reserve memory for OP-TEE at the end of available SDRAM,
> so move the scratch area below OP-TEE and not above.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/include/asm/barebox-arm.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
> index f446044be6..6e6606d005 100644
> --- a/arch/arm/include/asm/barebox-arm.h
> +++ b/arch/arm/include/asm/barebox-arm.h
> @@ -71,14 +71,14 @@ static inline void arm_fixup_vectors(void)
>  
>  void *barebox_arm_boot_dtb(void);
>  
> -#define arm_mem_scratch(endmem) ((endmem) - SZ_32K)
> +#define arm_mem_scratch(endmem) ((endmem) - OPTEE_SIZE - SZ_32K)
>  
>  static inline const void *arm_mem_scratch_get(void)
>  {
>  	return (const void *)arm_mem_scratch(arm_mem_endmem_get());
>  }
>  
> -#define arm_mem_stack_top(endmem) ((endmem) - SZ_64K - OPTEE_SIZE)
> +#define arm_mem_stack_top(endmem) ((endmem) - SZ_64K)

I don't understand why you drop OPTEE_SIZE here. Wouldn't the stack
now eat into the OP-TEE region?

>  
>  static inline unsigned long arm_mem_stack(unsigned long endmem)
>  {

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



