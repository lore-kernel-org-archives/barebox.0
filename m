Delivery-date: Tue, 06 Jan 2026 15:07:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd7ih-001uo9-1Q
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 15:07:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd7ig-00042E-S9
	for lore@pengutronix.de; Tue, 06 Jan 2026 15:07:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nf0YWrOmhj7QNXAuTrLjDVt3ixKwIk/yfRI3ZEVLd3A=; b=TfT9u6JY9w8O3Y9fiCxDlWa9WH
	bN5oODNBEXzEJApk/I9toPq2P1vqcrTXvijrdMQ20FAp/SRBLWfyWN1pW/954DmikKO2W7Gu3QrEj
	o+A7b0uRi7z+LI0l9eMmA8H/QuQfI4gupFCJNAWFbXdIYSvugbtphx/YetHu0zObtfzaxpz0ac6px
	Rv2/SwFtCIULhJpbV0RnXLWN08wsQfGnFPiQs9k5zVFrA7NsyKyR4A5r+gBZkx/TDcuR4Bvpa4lkP
	v8SwghWRR9hA/tF6e+IwJVxyeFR1Ox4uRDCIknwjWZieph4d8t9aG48LCOsb/5/7UvDUH5w3+aZpM
	XMy5dJKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd7iB-0000000DFeY-1Peq;
	Tue, 06 Jan 2026 14:07:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd7i8-0000000DFdm-32Au
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 14:07:02 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vd7i7-0003va-0F; Tue, 06 Jan 2026 15:06:59 +0100
Message-ID: <ca8bb24a-c3ba-4c4b-9a15-fd9d7bc4aff8@pengutronix.de>
Date: Tue, 6 Jan 2026 15:06:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
References: <20260106-pbl-load-elf-v2-0-487bc760f045@pengutronix.de>
 <20260106-pbl-load-elf-v2-16-487bc760f045@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260106-pbl-load-elf-v2-16-487bc760f045@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_060700_770790_09B69A5F 
X-CRM114-Status: GOOD (  17.80  )
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
Subject: Re: [PATCH v2 16/21] ARM: link ELF image into PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 1/6/26 1:53 PM, Sascha Hauer wrote:
> Instead of linking the raw binary barebox proper image into the PBL link
> the ELF image into the PBL. With this barebox proper starts with a properly
> linked and fully initialized C environment, so the calls to
> relocate_to_adr() and setup_c() can be removed from barebox proper.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

with below issues addressed

> ---
>  arch/arm/Kconfig          |  2 ++
>  arch/arm/cpu/start.c      | 11 +++--------
>  arch/arm/cpu/uncompress.c | 26 +++++++++++++++++++-------
>  3 files changed, 24 insertions(+), 15 deletions(-)
> 
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index 5123e9b1402c56db94df6a7a33ae993c61d51fbc..c53c58844a9411e3777711db2900b0e01cf55eec 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -18,6 +18,8 @@ config ARM
>  	select HW_HAS_PCI
>  	select ARCH_HAS_DMA_WRITE_COMBINE
>  	select HAVE_EFI_LOADER if MMU # for payload unaligned accesses
> +	select ELF

can be dropped.

> +	select PBL_IMAGE_ELF
>  	default y
>  
>  config ARCH_LINUX_NAME
> diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
> index f7d4507e71588ba5e241b24b952d55e2a4b0f794..f7062380cd5d265b3326f247a99b1847e16d64f0 100644
> --- a/arch/arm/cpu/start.c
> +++ b/arch/arm/cpu/start.c
> @@ -127,8 +127,9 @@ static int barebox_memory_areas_init(void)
>  }
>  device_initcall(barebox_memory_areas_init);
>  
> -__noreturn __prereloc void barebox_non_pbl_start(unsigned long membase,
> -		unsigned long memsize, struct handoff_data *hd)
> +__noreturn void barebox_non_pbl_start(unsigned long membase,
> +				      unsigned long memsize,
> +				      struct handoff_data *hd)

The NAKED start below could also go away.

Cheers,
Ahmad

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



