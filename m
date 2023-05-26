Delivery-date: Fri, 26 May 2023 14:50:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2Wtw-00F5Jy-MI
	for lore@lore.pengutronix.de; Fri, 26 May 2023 14:50:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2Wtt-0008GZ-On
	for lore@pengutronix.de; Fri, 26 May 2023 14:50:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:Cc:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=J8Ais/qYQ5uzoHsPfNUVFIWi07U260mQgP85zDy2nSE=; b=cUgVvYRjqUjVJ2yPVYMIgALrkI
	3iEoY9EDD9K8Xpf1oNvWxRst4kYBFuSgBlLiyF6OW9JXeMYnkPL5/dLI1AjMRDPHtGdr7lWpMSt4D
	BR9s7XKeQzOd0Vf8JRWfDGqW4vXDnHxhufuqg2/o4VeChLzaxO31hDH8ywuRnKgKnw69Zi2VzTxcs
	iNCH/DgDNxgO0/JAc5W+itEA2A5p4YnVBzQ6w8c+qsPGrpHsDOheq1n9ZvkRg7aLg1eHbXwGu/4HS
	OIY7Dsg6niXpXEAKlGy5QRnFSfgCD4i/pUsq1cpf/3bfRpuWD/BuCVX9IJxch3N4DLhVPVeIPSUm+
	3GXd+Mbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q2Wsm-002Wvv-06;
	Fri, 26 May 2023 12:49:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q2Wsi-002Wv7-25
	for barebox@lists.infradead.org;
	Fri, 26 May 2023 12:49:22 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q2Wsh-0007xd-E7; Fri, 26 May 2023 14:49:19 +0200
Message-ID: <9809c04c-58c5-6888-2b14-cf17fa7c4b1a@pengutronix.de>
Date: Fri, 26 May 2023 14:49:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
References: <20230526063354.1145474-1-a.fatoum@pengutronix.de>
 <20230526063354.1145474-4-a.fatoum@pengutronix.de>
Cc: Lucas Stach <lst@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230526063354.1145474-4-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230526_054920_689382_7C402F70 
X-CRM114-Status: GOOD (  21.21  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master 4/4] ARM: mmu: invalidate when mapping range
 uncached
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 26.05.23 08:33, Ahmad Fatoum wrote:
> memtest can call remap_range to map regions being tested as uncached,
> but remap_range did not take care to evict any stale cache lines.
> Do this now.
> 
> This fixes an issue of SELFTEST_MMU failing on an i.MX8MN, when running
> memtest on an uncached region that was previously memtested while being
> cached.
> 
> Fixes: 3100ea146688 ("ARM: rework MMU support")
> Fixes: 7cc98fbb6128 ("arm: cpu: add basic arm64 mmu support")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/cpu/mmu_32.c | 4 ++++
>  arch/arm/cpu/mmu_64.c | 4 ++++
>  2 files changed, 8 insertions(+)
> 
> diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
> index a324ebf71a55..c4e5a3bb0ab2 100644
> --- a/arch/arm/cpu/mmu_32.c
> +++ b/arch/arm/cpu/mmu_32.c
> @@ -327,6 +327,10 @@ static void early_remap_range(u32 addr, size_t size, unsigned map_type)
>  int arch_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size, unsigned map_type)
>  {
>  	__arch_remap_range(virt_addr, phys_addr, size, map_type);
> +
> +	if (map_type == MAP_UNCACHED)
> +		dma_inv_range(virt_addr, size);
> +
>  	return 0;
>  }
>  
> diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
> index 940e0e914c43..63e70963224a 100644
> --- a/arch/arm/cpu/mmu_64.c
> +++ b/arch/arm/cpu/mmu_64.c
> @@ -191,6 +191,10 @@ int arch_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size, unsign
>  		return -EINVAL;
>  
>  	create_sections((uint64_t)virt_addr, phys_addr, (uint64_t)size, attrs);
> +
> +	if (flags == MAP_UNCACHED)
> +		dma_inv_range(virt_addr, size);

Lucas mentioned that it may be surprising that a remap would result in data loss
and suggested to flush the range before remapping. This seems non-trivial,
because dma_flush_range (which works on virtual addresses) causes a DataAbort
when called on the null page or on an OP-TEE region:

DABT (current EL) exception (ESR 0x9600014a) at 0x000000007e000000
elr: 000000007dd96054 lr : 000000007dd95c74
x0 : 000000007e000000 x1 : 000000007fbfffff
x2 : 0000000000000040 x3 : 000000000000003f
x4 : 0000000000000020 x5 : 000000007dff7908
x6 : 0000000000000030 x7 : 000000007dff7a4a
x8 : 0000000000000000 x9 : 0000000000000000
x10: 0000000000000000 x11: 00000000fffffffd
x12: 00000000fffffffd x13: 0000000000000020
x14: 0000000000000000 x15: 0000000000000001
x16: 000000007dff7908 x17: 0000000000000001
x18: 000000007dff7e90 x19: 000000007e000000
x20: 0000000001c00000 x21: 0000000000000000
x22: 0040000000000600 x23: 000000007e000000
x24: 000000004002b360 x25: 000000007dfe0000
x26: 000000000008ae15 x27: 000000005f0f8de0
x28: 0000000000000000 x29: 000000007dff7e80

Call trace:
[<7dd96054>] (v8_flush_dcache_range+0x1c/0x34) from [<7dd95ce0>] (arch_remap_range+0x64/0xa8)
[<7dd95ce0>] (arch_remap_range+0x64/0xa8) from [<7dd95e04>] (__mmu_init+0xe0/0x10c)
[<7dd95e04>] (__mmu_init+0xe0/0x10c) from [<7dd94bc0>] (mmu_init+0x7c/0xa4)

The alternative would be flushing everything by set/way (perhaps too costly),
figure out why flushing causes an abort or start doing accounting which ranges
are mapped how, so we don't need to iterate over all pages.

Given that existing users don't mind a remap deleting data:

  - either they manually flush beforehand like dma_alloc_coherent
  - or they always write before read (memtest, socfpga fncpy)
  - or they are legacy non-DT enabled framebuffer driver that don't zero-initialize
    their framebuffer anyway
  - They aren't writable (HAB ROM)

I'd suggest we take the patch as-is because it fixes a bug and upstream
users are not affected by the side-effect.

Cheers,
Ahmad
  

> +
>  	return 0;
>  }
>  

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



