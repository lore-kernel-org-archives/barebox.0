Delivery-date: Fri, 16 Dec 2022 07:50:55 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p64YZ-005Pv6-89
	for lore@lore.pengutronix.de; Fri, 16 Dec 2022 07:50:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p64YY-00060g-Pj
	for lore@pengutronix.de; Fri, 16 Dec 2022 07:50:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CouPQyYj3LD/in1sc5wkG6U22YcVCUqMEU2HhYqJBe4=; b=La+AAtBA375L6eY8InFUfQhr6u
	m3qxiZAr6Be82HnXBjAhyxMrgfL5giFXBosivOGvKnf7db3oT3gPzRkpqggBjOViuaHUe8NFs+zlU
	5pfcoYxZh16Xu56lH8RpowUD0Q1mRVifx4vMfzj8rJdR6tFPdscgKBDxZAX9ZLUX/bpkxZJWi9I32
	byaKX/3JwWYVBnCjeSUsyaegoJ71xTpkjX1JdhwttM8ywIWRozZPUsAJ6WebLN6X85D3QKuAiJz/e
	eCuyVXgvmTWYqo68gIXTmpM+X20p5Eo76qCnP907T+f/FeeHzfw5qOr3b18DpC92YCPt++bCd9rjc
	OLi1svZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p64XI-00DFoM-5K; Fri, 16 Dec 2022 06:49:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p64XD-00DFkM-DG
	for barebox@lists.infradead.org; Fri, 16 Dec 2022 06:49:32 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p64XB-0005gw-Re; Fri, 16 Dec 2022 07:49:29 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p64XB-00043o-KF; Fri, 16 Dec 2022 07:49:29 +0100
Date: Fri, 16 Dec 2022 07:49:29 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221216064929.GG11668@pengutronix.de>
References: <20221214105831.844421-1-a.fatoum@pengutronix.de>
 <20221214105831.844421-2-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221214105831.844421-2-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221215_224931_467232_B05F92CB 
X-CRM114-Status: GOOD (  21.51  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 01/11] ARM: at91: sama5: switch to nonnaked entry
 functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Dec 14, 2022 at 11:58:21AM +0100, Ahmad Fatoum wrote:
> Functions were kept naked because they modify the stack pointer.
> We can hoist that up and change the board-provided entry point
> to be non-naked to be more robust in face of unexpected compiler
> optimizations.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  .../boards/microchip-ksz9477-evb/lowlevel.c    |  6 ++----
>  arch/arm/boards/sama5d27-giantboard/lowlevel.c |  4 ++--
>  arch/arm/boards/sama5d27-som1/lowlevel.c       |  4 ++--
>  arch/arm/boards/sama5d3_xplained/lowlevel.c    |  6 ++----
>  arch/arm/mach-at91/include/mach/barebox-arm.h  | 18 ++++++++++++++----
>  5 files changed, 22 insertions(+), 16 deletions(-)
> 

[...]

> diff --git a/arch/arm/mach-at91/include/mach/barebox-arm.h b/arch/arm/mach-at91/include/mach/barebox-arm.h
> index 4a65c6f8fa55..36c6abadc137 100644
> --- a/arch/arm/mach-at91/include/mach/barebox-arm.h
> +++ b/arch/arm/mach-at91/include/mach/barebox-arm.h
> @@ -3,19 +3,29 @@
>  #define AT91_BAREBOX_ARM_H_
>  
>  #include <asm/barebox-arm.h>
> +#include <asm/common.h>
> +#include <mach/sama5d3.h>
>  
> -#define SAMA5_ENTRY_FUNCTION(name, r4)						\
> +#define SAMA5_ENTRY_FUNCTION(name, stack_top, r4)				\
>  	void name (u32 r0, u32 r1, u32 r2, u32 r3);				\
>  										\
>  	static void __##name(u32);						\
>  										\
> -	void NAKED __section(.text_head_entry_##name)	name			\
> +	void __naked __section(.text_head_entry_##name)	name			\
>  				(u32 r0, u32 r1, u32 r2, u32 r3)		\
>  		{								\
>  			register u32 r4 asm("r4");				\
>  			__barebox_arm_head();					\
> +			arm_setup_stack(stack_top);				\
>  			__##name(r4);						\
>  		}								\
> -		static void NAKED noinline __##name				\
> -			(u32 r4)
> +		static void noinline __##name(u32 r4)
> +
> +/* BootROM already initialized usable stack top */
> +#define SAMA5D2_ENTRY_FUNCTION(name, r4)					\
> +	SAMA5_ENTRY_FUNCTION(name, 0, r4)

Shouldn't you pass a valid stack address here as well? Without this
change the stack pointer from the bootrom was reused in barebox, but now
it is explicitly set to 0.

Sascha

> +
> +#define SAMA5D3_ENTRY_FUNCTION(name, r4)					\
> +	SAMA5_ENTRY_FUNCTION(name, SAMA5D3_SRAM_BASE + SAMA5D3_SRAM_SIZE, r4)
> +
>  #endif
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


