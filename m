Delivery-date: Thu, 21 May 2026 11:28:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPzi5-002BcB-0Q
	for lore@lore.pengutronix.de;
	Thu, 21 May 2026 11:28:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPzi4-0004EC-Hi
	for lore@pengutronix.de; Thu, 21 May 2026 11:28:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/DdaGPRq+15vKwhQqIxHkpQjirlCENRqE3hkXPBs3yI=; b=5EzTYU6ZmpcHLsJRPA5J+1TP8T
	1oY1F+3kkmX1++03J2z/YvrDC1tcgYEsAlV/5ijPDByNyxjx5CApUNKlb2J8Plrm3U91kdfgy2X6+
	Kr+9OFnU3d14MDWRuO+3fWAx/zz4di83FHCxmZU26QDFT0LWJTixgjN7B10A52LF0+PTJlv/so/YF
	8tYicnYojuZigwkJzoKsqjPLa7d/SW9NlNgzfWqv3zAYzTL6658YL1GLc6QhzjmKNlSogN7AGNdWe
	TRVzrM42jcUtfFzf9KRE4efZkCjrPXO7+WYmxsUCDoTlHS/auXRqAAnPdWj47SGahqTMJrGxpcfZ+
	In95cOMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPzh2-00000007J2B-1MeK;
	Thu, 21 May 2026 09:27:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPzgz-00000007J1T-1emT
	for barebox@lists.infradead.org;
	Thu, 21 May 2026 09:27:50 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wPzgx-00044L-Qr; Thu, 21 May 2026 11:27:47 +0200
Message-ID: <ea3676f3-b120-483b-af13-c51de628cbaa@pengutronix.de>
Date: Thu, 21 May 2026 11:27:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
References: <20260521091727.3229229-1-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260521091727.3229229-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_022749_437697_FA80002E 
X-CRM114-Status: GOOD (  20.67  )
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
Subject: Re: [PATCH] ARM: rockchip: atf: move PBL malloc space away from
 OP-TEE memory
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 5/21/26 11:17 AM, Sascha Hauer wrote:
> We recently introduced initializing the PBL early memory pool which
> might be needed for decompressing the BL31/BL32 firmware files. We
> used the end of the first DRAM region for the pool and with this we
> ended up exactly in the default OP-TEE memory region which is mapped
> as faulting. Move the pool directly beneath the OP-TEE memory.
> 
> Fixes: 76b1f31275 ("ARM: rockchip: initialize PBL malloc")
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/mach-rockchip/atf.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mach-rockchip/atf.c b/arch/arm/mach-rockchip/atf.c
> index 14797a1e06..96a891847b 100644
> --- a/arch/arm/mach-rockchip/atf.c
> +++ b/arch/arm/mach-rockchip/atf.c
> @@ -173,7 +173,8 @@ static void rockchip_atf_load_bl31(void *fdt)
>  	unsigned long bl31_ep;
>  
>  	mmu_early_enable(membase[0], memsize[0]);
> -	pbl_malloc_init(membase[0] + memsize[0] - PBL_MALLOC_SIZE, PBL_MALLOC_SIZE);
> +	pbl_malloc_init(membase[0] + memsize[0] - OPTEE_SIZE - PBL_MALLOC_SIZE,
> +			PBL_MALLOC_SIZE);

This would overlap the scratch area and possibly corrupt things there,
wouldn't it?

I think this may need to move again...

Is it not possible to read input_data/input_data_end here and determine
barebox_base and reuse the same memory area that barebox_pbl_start()
would use when TF-A returns?

Thanks,
Ahmad

>  
>  	bl31_ep = load_elf64_image_phdr(&bl31);
>  

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



