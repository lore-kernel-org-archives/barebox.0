Delivery-date: Fri, 12 May 2023 19:18:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxWPr-00FKTE-O4
	for lore@lore.pengutronix.de; Fri, 12 May 2023 19:18:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxWPp-0002AH-MB
	for lore@pengutronix.de; Fri, 12 May 2023 19:18:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HI5w2ehnDiiX6Rg9z1Z6geaJdt3EnU5GAELcu7u+568=; b=BIBSut1pI3A72+6Kkr1qS6gAKs
	1Yl9Frjspc0BK/b7zh0piCGjBhCtH9zR8N5JC+1MxI6slIif1Fr0QP/6pNVkH3xXMwHi475Bb2jVO
	aG6ssm4/EPgO34yT1cV+3/yr/RtB0yMkKiU1+RwCbZWhvLeVSFttVH/wEOMRK84HeH8vNmx8a+H4X
	/9SRJUPwHXDDlC5+WkU8Ux1Bdz86RoY0ZMW+voDnYLZTvrzfe4hgHFXQYCHZ1kJUZYoKMMGEct58d
	79R2iv2e1Prr4ZDAbGyDxq0WYF9GsG8CHtJrV4JEhZCUSWdCrhbZ6c2X8bv4Zs9qW1laDvUnEvRZ4
	0Evdq4Og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxWOO-00CZDk-0L;
	Fri, 12 May 2023 17:17:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxWOK-00CZCD-0c
	for barebox@lists.infradead.org;
	Fri, 12 May 2023 17:17:17 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pxWOD-00023s-4r; Fri, 12 May 2023 19:17:09 +0200
Message-ID: <21a75102-0a15-bbfb-137b-5c20956f9656@pengutronix.de>
Date: Fri, 12 May 2023 19:17:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20230512111008.1120833-1-s.hauer@pengutronix.de>
 <20230512111008.1120833-2-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230512111008.1120833-2-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230512_101716_226356_C2345971 
X-CRM114-Status: GOOD (  19.69  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 01/27] ARM: fix scratch mem position with OP-TEE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 12.05.23 13:09, Sascha Hauer wrote:
> OP-TEE is placed right below the end of memory, so the scratch space
> has to go below it.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/include/asm/barebox-arm.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
> index 0cf4549cd7..711ccd2510 100644
> --- a/arch/arm/include/asm/barebox-arm.h
> +++ b/arch/arm/include/asm/barebox-arm.h
> @@ -75,7 +75,7 @@ void *barebox_arm_boot_dtb(void);
>  
>  static inline const void *arm_mem_scratch_get(void)
>  {
> -	return (const void *)__arm_mem_scratch(arm_mem_endmem_get());
> +	return (const void *)__arm_mem_scratch(arm_mem_endmem_get() - OPTEE_SIZE);

PBL uses __arm_mem_scratch, so you would've to add OPTEE_SIZE there.

I hadn't done it, because I wrote arm_mem_scratch_get() with the expectation
that OPTEE_SIZE would be omitted from the RAM bank size, so it gets mapped
uncacheable by simply being considered non-RAM, see for example the usage
sites of CONFIG_FIRMWARE_IMX8M*_OPTEE. You'll have to fix these sites
too to avoid reserving the memory twice.

>  }
>  
>  #define arm_mem_stack_top(membase, endmem) ((endmem) - SZ_64K - OPTEE_SIZE)

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



