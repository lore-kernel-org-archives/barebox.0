Delivery-date: Thu, 02 Dec 2021 09:02:40 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1msh3A-0006yx-Vf
	for lore@lore.pengutronix.de; Thu, 02 Dec 2021 09:02:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1msh39-0005cZ-W3
	for lore@pengutronix.de; Thu, 02 Dec 2021 09:02:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8xu0OEdi1FxWUiknOyejqxQXqnmx9Z7yaTRT+dWFD7c=; b=ZbFizMcQWx4LHsV4YoB9hyFGMw
	ClPwUhX+RsaE/pumfZpgcknbNDzeHu9hgZS4p6avb1KD0llN0K3aKfphnp6RcE5cwRxh3gTTnXxMB
	/oLuGk1fi2ZhswFNzTHykBuFLypFKBllgApbE4zWiKhgtnbY3KG2g5gQWULp0LcO+tZuA+f0GtiXc
	8dnqWV9m/+w20n3cXT+4j4Uy3Mu2Fy92H7lf7m2pRs3h2lVaTJLXOwn8xTBuTTHrX2M5M7vY7aSyx
	yli9akPlLZhI3B08lCmQFGl1k4vNDoxvuVvDh8QZdkUCx82wrcKWA+Y5Clqtk0Cf/l/e2LsLnTPJh
	s5QGJn8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msh1w-00BIrY-EK; Thu, 02 Dec 2021 08:01:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msh1l-00BIp0-Ba
 for barebox@lists.infradead.org; Thu, 02 Dec 2021 08:01:16 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1msh1i-0005Rf-4W; Thu, 02 Dec 2021 09:01:10 +0100
To: barebox@lists.infradead.org
Cc: ukl@pengutronix.de
References: <20211202074256.200325-1-a.fatoum@pengutronix.de>
 <20211202074256.200325-2-a.fatoum@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <f1721621-fc62-7ec8-f1cb-b6659853ab22@pengutronix.de>
Date: Thu, 2 Dec 2021 09:01:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211202074256.200325-2-a.fatoum@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211202_000113_454356_DD3D1C5F 
X-CRM114-Status: GOOD (  19.14  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/3] ARM: turn arm_mem_stack_top into a macro
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 02.12.21 08:42, Ahmad Fatoum wrote:
> This makes it possible to use for static initialization, like done in a
> follow-up commit.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/include/asm/barebox-arm.h | 13 ++++++-------
>  1 file changed, 6 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
> index d70de6d5e6e6..0481d3391c26 100644
> --- a/arch/arm/include/asm/barebox-arm.h
> +++ b/arch/arm/include/asm/barebox-arm.h
> @@ -97,14 +97,13 @@ static inline void arm_fixup_vectors(void)
>  
>  void *barebox_arm_boot_dtb(void);
>  
> -static inline unsigned long arm_mem_stack_top(unsigned long membase,
> -					      unsigned long endmem)
> -{
> -	if (IS_ENABLED(CONFIG_BOOTM_OPTEE) || IS_ENABLED(CONFIG_PBL_OPTEE))
> -		endmem -= OPTEE_SIZE;
> +#define __arm_mem_stack_top(membase, endmem) ((endmem) - SZ_64K)
>  
> -	return endmem - SZ_64K;
> -}
> +#if defined(CONFIG_BOOTM_OPTEE) || defined(CONFIG_PBL_OPTEE)
> +#define arm_mem_stack_top(membase, endmem) (__arm_mem_stack_top(membase, endmem) - OPTEE_SIZE)
> +#else
> +#define arm_mem_stack_top(membase, endmem) (__arm_mem_stack_top(membase, endmem) - OPTEE_SIZE)

Argh. Should have looked more closely before sending out. I'll respin later,
but looking forward to feedback in the mean time.

> +#endif
>  
>  static inline unsigned long arm_mem_stack(unsigned long membase,
>  					  unsigned long endmem)
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

