Delivery-date: Mon, 08 Aug 2022 15:24:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL2k5-00GDNB-P1
	for lore@lore.pengutronix.de; Mon, 08 Aug 2022 15:24:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL2k6-00026v-FC
	for lore@pengutronix.de; Mon, 08 Aug 2022 15:24:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BRw9kBIaDv9KDdpXPmPipLu/lq7iqulSXfT3y7zqyH0=; b=qSPGDrw6a/Xd1WSVskslYmFQC/
	4k5JFc7BbY3Ex2Ykhul7EW+5e0lP83msbCfBC+SMxs5TM94GyR8t6WSUh+FaLG8eRDcS/iuf7w6rO
	BbjkApVJ3cEk5/RGTmDdpFqQrh7HsTQvVNQTKuN78Gf9PslGeETYu83yxh8TzQlYBhZ5VnNyMqXye
	W8/sD9apw36l9+eT59if0+GzU+cNeCYgItIyiEsuq9SAcUW6Y+0agLoRcWcwonLsJXoaMGK0oIc5J
	2/PhnM+tkpGXJcV5wypCmgvmuJrl97E6b/TE9ENtC5DKg/OaI7crg5GKsBDRPrGP8uI6sKlQfD7E6
	0tkIs3Yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL2it-00E3I9-5h; Mon, 08 Aug 2022 13:23:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL2io-00E3Gt-8K
	for barebox@lists.infradead.org; Mon, 08 Aug 2022 13:23:08 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oL2in-000219-0F; Mon, 08 Aug 2022 15:23:05 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oL2im-0003bm-Nb; Mon, 08 Aug 2022 15:23:04 +0200
Date: Mon, 8 Aug 2022 15:23:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20220808132304.GQ31528@pengutronix.de>
References: <20220726102412.1104232-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220726102412.1104232-1-antonynpavlov@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220808_062306_357380_BF9732D5 
X-CRM114-Status: GOOD (  27.04  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] asm-generic: provide phys_to_virt() and virt_to_phys()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jul 26, 2022 at 01:24:12PM +0300, Antony Pavlov wrote:
> The arm, riscv, sandbox and x86 architectures use
> just the same phys_to_virt()/virt_to_phys() implementation.
> Only the mips architecture has its own special implementation.
> 
> So we can move phys_to_virt() and virt_to_phys()
> generic implementation to include/asm-generic/io.h.
> 
> Use override functions way introduced in the 9216efafc52ff99e
> ("asm-generic/io.h: Reconcile I/O accessor overrides")
> linux kernel commit.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  arch/arm/include/asm/io.h     | 10 ----------
>  arch/mips/include/asm/io.h    |  2 ++
>  arch/riscv/include/asm/io.h   | 10 ----------
>  arch/sandbox/include/asm/io.h | 10 ----------
>  arch/x86/include/asm/io.h     | 10 ----------
>  include/asm-generic/io.h      | 20 ++++++++++++++++++++
>  6 files changed, 22 insertions(+), 40 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/include/asm/io.h b/arch/arm/include/asm/io.h
> index 1c0f522d1d4..486b1429502 100644
> --- a/arch/arm/include/asm/io.h
> +++ b/arch/arm/include/asm/io.h
> @@ -18,14 +18,4 @@ extern void memcpy_fromio(void *, const volatile void __iomem *, size_t);
>  extern void memcpy_toio(volatile void __iomem *, const void *, size_t);
>  extern void memset_io(volatile void __iomem *, int, size_t);
>  
> -static inline void *phys_to_virt(unsigned long phys)
> -{
> -	return (void *)phys;
> -}
> -
> -static inline unsigned long virt_to_phys(volatile void *mem)
> -{
> -	return (unsigned long)mem;
> -}
> -
>  #endif	/* __ASM_ARM_IO_H */
> diff --git a/arch/mips/include/asm/io.h b/arch/mips/include/asm/io.h
> index 0d228aa0f51..a3acbd7017c 100644
> --- a/arch/mips/include/asm/io.h
> +++ b/arch/mips/include/asm/io.h
> @@ -27,6 +27,7 @@ void dma_inv_range(unsigned long, unsigned long);
>   *     The returned physical address is the physical (CPU) mapping for
>   *     the memory address given.
>   */
> +#define virt_to_phys virt_to_phys
>  static inline unsigned long virt_to_phys(const void *address)
>  {
>  	return (unsigned long)CPHYSADDR(address);
> @@ -39,6 +40,7 @@ static inline unsigned long virt_to_phys(const void *address)
>   *     The returned virtual address is a current CPU mapping for
>   *     the memory address given.
>   */
> +#define phys_to_virt phys_to_virt
>  static inline void *phys_to_virt(unsigned long address)
>  {
>  	if (IS_ENABLED(CONFIG_MMU)) {
> diff --git a/arch/riscv/include/asm/io.h b/arch/riscv/include/asm/io.h
> index 978f6443407..76d66c0a3b8 100644
> --- a/arch/riscv/include/asm/io.h
> +++ b/arch/riscv/include/asm/io.h
> @@ -7,14 +7,4 @@
>  
>  #include <asm-generic/io.h>
>  
> -static inline void *phys_to_virt(unsigned long phys)
> -{
> -	return (void *)phys;
> -}
> -
> -static inline unsigned long virt_to_phys(volatile void *mem)
> -{
> -	return (unsigned long)mem;
> -}
> -
>  #endif /* __ASM_RISCV_IO_H */
> diff --git a/arch/sandbox/include/asm/io.h b/arch/sandbox/include/asm/io.h
> index 71cf50cd9a0..eec279b8883 100644
> --- a/arch/sandbox/include/asm/io.h
> +++ b/arch/sandbox/include/asm/io.h
> @@ -11,14 +11,4 @@ extern unsigned char __pci_iobase[IO_SPACE_LIMIT];
>  
>  #include <asm-generic/io.h>
>  
> -static inline void *phys_to_virt(unsigned long phys)
> -{
> -       return (void *)phys;
> -}
> -
> -static inline unsigned long virt_to_phys(volatile void *mem)
> -{
> -       return (unsigned long)mem;
> -}
> -
>  #endif /* __ASM_SANDBOX_IO_H */
> diff --git a/arch/x86/include/asm/io.h b/arch/x86/include/asm/io.h
> index 41c5cb3c14f..d4b5c269190 100644
> --- a/arch/x86/include/asm/io.h
> +++ b/arch/x86/include/asm/io.h
> @@ -84,16 +84,6 @@ static inline void io_delay(void)
>  	inb(0x80);
>  }
>  
> -static inline void *phys_to_virt(unsigned long phys)
> -{
> -	return (void *)phys;
> -}
> -
> -static inline unsigned long virt_to_phys(volatile void *mem)
> -{
> -	return (unsigned long)mem;
> -}
> -
>  #include <asm-generic/io.h>
>  
>  #endif	/* __ASM_X86_IO_H */
> diff --git a/include/asm-generic/io.h b/include/asm-generic/io.h
> index 47f8c3ec1be..e41b4df4036 100644
> --- a/include/asm-generic/io.h
> +++ b/include/asm-generic/io.h
> @@ -421,6 +421,26 @@ static inline void iowrite64be(u64 value, volatile void __iomem *addr)
>  #endif
>  #endif /* CONFIG_64BIT */
>  
> +/*
> + * Change virtual addresses to physical addresses and vv.
> + * These are pretty trivial
> + */
> +#ifndef virt_to_phys
> +#define virt_to_phys virt_to_phys
> +static inline unsigned long virt_to_phys(volatile void *mem)
> +{
> +	return (unsigned long)mem;
> +}
> +#endif
> +
> +#ifndef phys_to_virt
> +#define phys_to_virt phys_to_virt
> +static inline void *phys_to_virt(unsigned long phys)
> +{
> +	return (void *)phys;
> +}
> +#endif
> +
>  #ifndef IOMEM
>  #define IOMEM(addr)	((void __force __iomem *)(addr))
>  #endif
> -- 
> 2.36.1
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


