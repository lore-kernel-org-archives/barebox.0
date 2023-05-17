Delivery-date: Wed, 17 May 2023 14:58:26 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzGjb-004JAx-SJ
	for lore@lore.pengutronix.de; Wed, 17 May 2023 14:58:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzGjZ-0001Nx-Fe
	for lore@pengutronix.de; Wed, 17 May 2023 14:58:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FWzr0dBFbh3giaJQTayYxwGWsrBPO0GSdRpW4Xnn0Go=; b=EXqokzgDGpIT7GxLk+oW51Oyhc
	yq0+BLGV2TosJFWE5dPWCtv7AqKFsXZ2JtVSO7IYjlHiWj54qSBZ1QRRFaZl4dpWWr2C4uAPIeGe6
	fBcsaJXmi+fOciCcdtRrgobuMA3l6AnZBuimYyEKD9rHzEYU3d2s95adyYvNRm9bP+DONY9r5cmER
	iCgyqyx1nqlwcMAKBZkGrYT/F2X4WnLVMAfWYwmyt64qoHb0Al8Ovbgo0Xtw62lyP4fe02MMfTpOe
	aWBgtPvASIJI1qr2PX3vDKTUU9Ed1MZ+Kii8JSocMsXg3sb9hfUAXNdEPtt5ssqAVWdnAfPmLCZbE
	dQxvEQ9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzGiW-009sH2-2V;
	Wed, 17 May 2023 12:57:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzGiT-009sGT-1i
	for barebox@lists.infradead.org;
	Wed, 17 May 2023 12:57:18 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pzGiR-0001Fg-Rv; Wed, 17 May 2023 14:57:16 +0200
Message-ID: <a5978990-799f-ec4b-36ee-ca64f3a4480c@pengutronix.de>
Date: Wed, 17 May 2023 14:57:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20230517090340.3954615-1-s.hauer@pengutronix.de>
 <20230517090340.3954615-9-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230517090340.3954615-9-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230517_055717_563297_2771C2F8 
X-CRM114-Status: GOOD (  20.59  )
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
Subject: Re: [PATCH v2 08/34] ARM: move arm_mem_scratch_get() lower for
 consistency
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 17.05.23 11:03, Sascha Hauer wrote:
> The different arm_mem_* functions all follow the same pattern of
> taking the base address of the upper region minus the size of the
> current region and with the exception of arm_mem_scratch_get() they
> are all below each other. arm_mem_scratch_get() doesn't fit into
> this row, so move it lower.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/arm/include/asm/barebox-arm.h | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
> index 8d8c102081..f5a74b4746 100644
> --- a/arch/arm/include/asm/barebox-arm.h
> +++ b/arch/arm/include/asm/barebox-arm.h
> @@ -81,11 +81,6 @@ static inline unsigned long arm_mem_scratch(unsigned long endmem)
>  	return arm_mem_optee(endmem) - SZ_32K;
>  }
>  
> -static inline const void *arm_mem_scratch_get(void)
> -{
> -	return (const void *)arm_mem_scratch(arm_mem_endmem_get());
> -}
> -
>  static inline unsigned long arm_mem_stack(unsigned long endmem)
>  {
>  	return arm_mem_scratch(endmem) - STACK_SIZE;
> @@ -125,6 +120,11 @@ static inline unsigned long arm_mem_stack_top(unsigned long endmem)
>  	return arm_mem_stack(endmem) + STACK_SIZE;
>  }
>  
> +static inline const void *arm_mem_scratch_get(void)
> +{
> +	return (const void *)arm_mem_scratch(arm_mem_endmem_get());
> +}
> +
>  static inline unsigned long arm_mem_barebox_image(unsigned long membase,
>  						  unsigned long endmem,
>  						  unsigned long size)

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



