Delivery-date: Mon, 18 May 2026 18:21:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wP0iu-001C2l-1e
	for lore@lore.pengutronix.de;
	Mon, 18 May 2026 18:21:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wP0it-0008CS-TF
	for lore@pengutronix.de; Mon, 18 May 2026 18:21:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FKsD2U7sx8i8mPjBrmPmJ/MrAzyecZHCEODmNf/bql4=; b=1q7+hxJRfxLwbAUwB23TT4S9x1
	7uHv9D4aTtKFE4jJxUm6ozBTyHuEZ5SFsv/0EizypekYEoyHJTSF3Zw3YIxn3ovNVHYD0FJCWzl4h
	Zng/c+QUvrmpNl8QKFJy0NySbtreP0hoM455G1QwE/K+yrXGzv3ghXLd1ZHvKci4zm5f+lwCRJEzM
	jv+KxXIaHxs6wL0XULDLg140mg2ukY3p1m9wnctQBCZ4OBvQ2Xvx5ZChS3beGvOb83E0ShSZ40AZB
	G3izSB8N74muWsjexvRQ/lPDwyRTKORU4rmtiTRr9u5UEbjvmGNn8NfIokuy2SFUm7jwhMOIZm/wU
	ZjlYUj4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP0he-0000000GHeV-1BUu;
	Mon, 18 May 2026 16:20:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP0hb-0000000GHdl-3QzX
	for barebox@lists.infradead.org;
	Mon, 18 May 2026 16:20:25 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wP0ha-00082k-8K; Mon, 18 May 2026 18:20:22 +0200
Message-ID: <da2a16d6-324c-4649-aa55-ef3afc6678db@pengutronix.de>
Date: Mon, 18 May 2026 18:20:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20260518153212.184983-1-s.hauer@pengutronix.de>
 <20260518153212.184983-2-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260518153212.184983-2-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_092023_868377_362715AC 
X-CRM114-Status: GOOD (  19.66  )
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
Subject: Re: [PATCH 2/2] ARM: rockchip: initialize PBL malloc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello,

On 5/18/26 5:32 PM, Sascha Hauer wrote:
> Rockchip uses compressed firmware binaries. Depending on the compression
> algorithm we might use early malloc space for decompressing. Initialize
> the PBL malloc space to the memory end to make pbl_malloc() work. This
> memory area will be overwritten later in barebox_pbl_start(), but it's
> ok as the memory is only needed during decompression of the firmware
> files.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Tested-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/arm/mach-rockchip/atf.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm/mach-rockchip/atf.c b/arch/arm/mach-rockchip/atf.c
> index 3e2e18ac29..03e03c9122 100644
> --- a/arch/arm/mach-rockchip/atf.c
> +++ b/arch/arm/mach-rockchip/atf.c
> @@ -173,6 +173,7 @@ static void rockchip_atf_load_bl31(void *fdt)
>  	unsigned long bl31_ep;
>  
>  	mmu_early_enable(membase[0], memsize[0]);
> +	pbl_malloc_init(membase[0] + memsize[0] - SZ_128K, SZ_128K);

It would be cool if we could use the same malloc area that would be used
in barebox_pbl_start(), but I guess that's not possible, because it's
unfortunately based on the barebox proper load address, which is now
known here. Let's hope this won't clash with any future use..

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



