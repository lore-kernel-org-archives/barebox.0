Delivery-date: Wed, 08 Jan 2025 16:32:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVY2t-000nFU-21
	for lore@lore.pengutronix.de;
	Wed, 08 Jan 2025 16:32:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVY2t-00064q-Hj
	for lore@pengutronix.de; Wed, 08 Jan 2025 16:32:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject
	:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RJjWXdAcUPMORloUIj3AC0Me0wbD5NAVBykUOYyGfNE=; b=kFLMnTYp5DYCP9
	jbZm7VwzVQg7MWwqny5x5l6uhZK8Ur9idlQZq4q5Dz/wk1gCnxV+PtwaSBlbbesDtszIwuG+qdpoT
	gBpJa+cuRMTsvVTnlqbQ/kGKVWXq1OrqXyOl5ducNub+DxGGnJGLj1FyYqcLsIkXiLWMmDjHxEUM+
	ULbftkb9DgmoOJEYoZx1lQGo63ojuwy/7Wbo5TmTWRozqa7la/JOIWVW9T9rLuuZQmsV547u/Ktmg
	sJBtv0dbHwGdfoa3efkEv/gWOunEQad5Qwmxkug/A06eWz40+I91cJwqr1zoJOrIzKJIQZwgkAocH
	PgHTrkFp3ndfInRLFNJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVY2P-00000008ykT-1zeA;
	Wed, 08 Jan 2025 15:32:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVY21-00000008yhR-3pGc
	for barebox@lists.infradead.org;
	Wed, 08 Jan 2025 15:31:43 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tVY20-0005qu-Jh; Wed, 08 Jan 2025 16:31:40 +0100
Message-ID: <bc7ab523-2a65-42f9-bba1-ad7d17878cd3@pengutronix.de>
Date: Wed, 8 Jan 2025 16:31:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
References: <Z31B5rxOomVzKR_1@hephaistos> <Z36MZJtzptPAdmsI@pengutronix.de>
 <Z36WZYxab1bAEzFG@hephaistos>
 <63ac6399-be23-40c5-a2d4-d995999b5d7a@pengutronix.de>
 <Z36ZVQNtHi6krRl0@hephaistos>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <Z36ZVQNtHi6krRl0@hephaistos>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250108_073141_959784_45AF95E5 
X-CRM114-Status: GOOD (  21.43  )
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
Cc: barebox@lists.infradead.org
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
Subject: Re: [PATCH] ARM: beaglebone: add delay in lowlevel.c
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 08.01.25 16:27, Konstantin Kletschke wrote:
> More like this?
> 
> On Wed, Jan 08, 2025 at 04:19:49PM +0100, Ahmad Fatoum wrote:
>>
>> It would be nice to have the comment more verbose. e.g. that this issue
>> was observed on new Seeed-produced BBBs is an intersting info IMO.
> 
>  arch/arm/boards/beaglebone/lowlevel.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/arch/arm/boards/beaglebone/lowlevel.c b/arch/arm/boards/beaglebone/lowlevel.c
> index 5dc49dfaaf..7dc338d03a 100644
> --- a/arch/arm/boards/beaglebone/lowlevel.c
> +++ b/arch/arm/boards/beaglebone/lowlevel.c
> @@ -97,6 +97,12 @@ extern char __dtb_z_am335x_boneblack_start[];
>  extern char __dtb_z_am335x_bone_common_start[];
>  extern char __dtb_z_am335x_bone_start[];
> 
> +static void __udelay(int us)
> +{
> +        volatile int i;
> +       for (i = 0; i < us; i++);
> +}
> +
>  /**
>   * @brief The basic entry point for board initialization.
>   *
> @@ -135,6 +141,12 @@ static noinline int beaglebone_sram_init(void)
>         am33xx_enable_uart0_pin_mux();
>         omap_debug_ll_init();
>         putc_ll('>');
> +       /*
> +        * Some (~5%) Beaglebone Black received from SEEED in batches
> +        * after autumn 2024 require a delay to be able to warm start
> +        * after reset

Sounds good. Please add

Link: https://lore.barebox.org/barebox/Z0gywL2hLcIDoLQ8@hephaistos/

to your commit message before the S-o-b and then it's good to go, I think.

Thanks,
Ahmad

> +        */
> +       __udelay(3000);
> 
>         barebox_arm_entry(0x80000000, sdram_size, fdt);
>  }
> 
> 
> 
> 
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


