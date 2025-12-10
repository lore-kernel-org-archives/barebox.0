Delivery-date: Wed, 10 Dec 2025 08:18:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTETH-009pVA-2c
	for lore@lore.pengutronix.de;
	Wed, 10 Dec 2025 08:18:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTETH-0000fd-9L
	for lore@pengutronix.de; Wed, 10 Dec 2025 08:18:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=W8TMN92O2gKksA+RB7alaPUcZwqAJZSm7wqjSvKUHfg=; b=vqXBDTugHsTGmjDOt95Gcj7m5W
	TRiNqxeZsGK82hUiGQWqP93Qp6rFjuyFl8mS9LCZnyUjopUMm37RjR9+DxcbwM2tQnRyOpSWg43Y5
	ITAnZAmMbNYDqceqfcgrKSjh7GJnmVoVjST4tEb9wlRF59rR0+cr7MP9AMWaF7fISKI+pi0ZuS1+R
	xhtnEhosPEGu3kf39TRmX3q5tQUUaoS1cJMQFv+aKkxDvbA68KkyIxqdbMMUILPLtU6MR1Ds6yixO
	xwGaTW9WRSQBDOwmrWE4Iqsxo9MjS0Hid7L8uit/sBwxZsjWvCFG0M4XNXfboM9bntfvNP0YSCIti
	uineEvEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTESr-0000000FCQj-3Iaw;
	Wed, 10 Dec 2025 07:18:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTESp-0000000FCQK-1R2R
	for barebox@lists.infradead.org;
	Wed, 10 Dec 2025 07:18:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vTESm-0000bJ-D2; Wed, 10 Dec 2025 08:18:16 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vTESm-004upL-0h;
	Wed, 10 Dec 2025 08:18:16 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vTESm-00Gtc1-0M;
	Wed, 10 Dec 2025 08:18:16 +0100
Date: Wed, 10 Dec 2025 08:18:16 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Fabian Pflug <f.pflug@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <aTkeuH-uZl2T8Nwi@pengutronix.de>
References: <20251208-v2025-11-0-topic-optee-imx6-start-v1-0-0907128cdb8f@pengutronix.de>
 <20251208-v2025-11-0-topic-optee-imx6-start-v1-1-0907128cdb8f@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251208-v2025-11-0-topic-optee-imx6-start-v1-1-0907128cdb8f@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251209_231819_383229_CFD07111 
X-CRM114-Status: GOOD (  20.76  )
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
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] ARM: make arm_mem_scratch respect the OP-TEE stack
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Fabian,

On Mon, Dec 08, 2025 at 10:28:38AM +0100, Fabian Pflug wrote:
> According to the ASCII-ART above, before the end of memory comes the
> optee memory, then the scratch stack.
> 
> Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
> ---
>  arch/arm/include/asm/barebox-arm.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
> index 11be8b8583..e630969796 100644
> --- a/arch/arm/include/asm/barebox-arm.h
> +++ b/arch/arm/include/asm/barebox-arm.h
> @@ -159,7 +159,7 @@ static inline unsigned long arm_mem_stack_top(unsigned long endmem)
>  
>  static inline const void *arm_mem_scratch_get(void)
>  {
> -	return (const void *)arm_mem_scratch(arm_mem_endmem_get());
> +	return (const void *)arm_mem_scratch(arm_mem_optee(arm_mem_endmem_get()));

arm_mem_scratch() is:

static inline unsigned long arm_mem_scratch(unsigned long endmem)
{
	return arm_mem_optee(endmem) - SCRATCH_SIZE;
}

So this already has the OPTEE space substracted. With your patch it's
substracted twice.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


