Delivery-date: Mon, 18 Dec 2023 12:08:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFBTf-002kD2-0F
	for lore@lore.pengutronix.de;
	Mon, 18 Dec 2023 12:08:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFBTe-0007EO-Cs
	for lore@pengutronix.de; Mon, 18 Dec 2023 12:08:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eOC0tdBCA1Jvr/YQCyt1r4yLwFWVvfH59HNOmgJKpYI=; b=Eaczw8pWgLxBOTYkzWH5eJSibm
	2OHpB4QT+BBAYf7pwaVy0Z1/8djOWDeS271msxpR8tkviKOmgUKadGaizMtyZJxOB4Niexrgp/Hoc
	prCfsUZ8g4v2JDLVI5dpuebmjPVBRjcX+GM+PXHdCpQf2DFLuh6BmDUI3xgCKHBGgGTgeZjTPo7Vy
	zZoaVvVkIEs24aOTORBy+KgpJT2Kj6P1tdbgC0HuqTyoXNAlWWea4mxBTywBVCEKpnyg9iQm78WEb
	qr32ijwNKLrcNp4P8/mwTUeqPPfuP1P9uHqkGF7zcbibOSvOnIcnfk3/Ho3f0jeoq0ekFOyZV6cfR
	7gYhSivQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFBSM-009ymH-20;
	Mon, 18 Dec 2023 11:06:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFBSI-009yha-1D
	for barebox@lists.infradead.org;
	Mon, 18 Dec 2023 11:06:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rFBSE-0006aA-NE; Mon, 18 Dec 2023 12:06:34 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rFBSD-00Gghi-Hw; Mon, 18 Dec 2023 12:06:33 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rFBSD-007acF-FW; Mon, 18 Dec 2023 12:06:33 +0100
Date: Mon, 18 Dec 2023 12:06:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Lior Weintraub <liorw@pliops.com>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	"barebox@lists.infradead.org" <barebox@lists.infradead.org>
Message-ID: <20231218110633.GG963049@pengutronix.de>
References: <PR3P195MB0555EE60DE17128F9831C028C31AA@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <20230817071736.GJ5650@pengutronix.de>
 <PR3P195MB0555ED3DE92FAB5706C2E458C31AA@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <PR3P195MB0555E881ABD36783C5557EB9C31AA@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <PR3P195MB05558441FD995F0F06CE132AC31EA@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <3704dd53-42de-ab00-7101-786e2d5b2245@pengutronix.de>
 <PR3P195MB05553F75C13F429F23F63AFAC3EEA@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <PR3P195MB05554C1A87EAF28C96EB6224C38CA@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <PR3P195MB05554C1A87EAF28C96EB6224C38CA@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231218_030638_414043_F6710A4E 
X-CRM114-Status: GOOD (  32.28  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] [ARM64][MMU] Fix mmu_early_enable VA->PA mapping
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Lior,

On Thu, Dec 14, 2023 at 04:04:31PM +0000, Lior Weintraub wrote:
> Hi,
> 
> The below patch fixes the mmu_early_enable function to correctly map 40bits of virtual address into physical address with a 1:1 mapping.
> It uses the init_range function to sets 2 table entries on TTB level0 and then fill level1 with the correct 1:1 mapping.
> 
> This patch was merged from an older Barebox version into the most resent master (Commit: 975acf1bafba2366eb40c5e8d8cb732b53f27aa1).
> Since it wasn't tested on the most recent master branch (lack of resources) I would appreciate if someone can test it on a 64bit ARM v8 platform.
> 
> IMHO, the old implementation is wrong because:
> 1. It tries to map the full range of VA (48bits) with 1:1 mapping but there are only maximum of 40 PA bits.
>     As a result, there is a wraparound that causes wrong mapping.
> 2. TTB Level0 cannot have a block descriptor. Only table descriptor.
>     According "Learn the architecture - AArch64 memory management", Figure 6-1: Translation table format:
> "Each entry is 64 bits and the bottom two bits determine the type of entry.
> Notice that some of the table entries are only valid at specific levels. The maximum number of
> levels of tables is four, which is why there is no table descriptor for level 3 (or the fourth level),
> tables. Similarly, there are no Block descriptors or Page descriptors for level 0. Because level 0
> entry covers a large region of virtual address space, it does not make sense to allow blocks."
>  
> Cheers,
> Lior.
> 
> From a98fa2bad05721fd4c3ceae4f63eedd90c29c244 Mon Sep 17 00:00:00 2001
> From: Lior Weintraub <liorw@pliops.com>
> Date: Thu, 14 Dec 2023 17:05:04 +0200
> Subject: [PATCH] [ARM64][MMU] Fix mmu_early_enable VA->PA mapping
> 
> ---
>  arch/arm/cpu/mmu_64.c            | 17 ++++++++++++++++-
>  arch/arm/cpu/mmu_64.h            | 19 +++++++++++++++++--
>  arch/arm/include/asm/pgtable64.h |  1 +
>  3 files changed, 34 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
> index c6ea63e655..f35c1b5937 100644
> --- a/arch/arm/cpu/mmu_64.c
> +++ b/arch/arm/cpu/mmu_64.c
> @@ -294,6 +294,19 @@ void dma_flush_range(void *ptr, size_t size)
>  	v8_flush_dcache_range(start, end);
>  }
>  
> +void init_range(void *virt_addr, size_t size)
> +{
> +	uint64_t *ttb = get_ttb();
> +	uint64_t addr = (uint64_t)virt_addr;
> +	while(size) {
> +		remap_range((void *)addr, L0_XLAT_SIZE, MAP_UNCACHED);

This should be early_remap_range(). remap_range() is not safe to be
called at this early stage and breaks running with qemu:

https://github.com/barebox/barebox/actions/runs/7246849041/job/19739568067

When sending a correct version, could you please add your signed-off-by
to the patch?
Also, please send the patch as a new thread, not in response to another
mail.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


