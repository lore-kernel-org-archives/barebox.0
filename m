Delivery-date: Wed, 18 Mar 2026 09:10:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2lz7-0026rl-1J
	for lore@lore.pengutronix.de;
	Wed, 18 Mar 2026 09:10:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2lz6-0000fR-Qd
	for lore@pengutronix.de; Wed, 18 Mar 2026 09:10:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+cAUOK69XKFG/Ggnt1Tl4vh+wqTudzlC7IabwDDlHSQ=; b=Lg5R8zwyu2pfZDPezg44Po4wfe
	xjjSJOnViOvWACYNJstJo/UykAIQB3NkZ8tl5oSyW3FFjjQJ8IwangBWdrxEI4F4TIeL0T3ukmga3
	ku4wRFECmvYveEA16NRR4YEFSddBIPG1CTbJ4VIURa66EZKvFXOfGrwBUDVyMipxak7M2pMzbW4G3
	NFJod0pGicL9XYuXcEiyVsVE7grI1I7C5wc15NKFQbrD3O2bePAAZbfKuWKE0SjfKBWu1j5So4jU8
	0LhdVZPLuE+Y/rfIviXmiOqhxWz4vEjn/FixyKDkUO5ESo0nb7+K5hDhvV61imRbIjdUAvJWYIO+e
	bvg+GPYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2lyj-000000080ZI-0HDc;
	Wed, 18 Mar 2026 08:10:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2lyg-000000080Xl-24NW
	for barebox@lists.infradead.org;
	Wed, 18 Mar 2026 08:10:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1w2lye-0000ZA-Qk; Wed, 18 Mar 2026 09:10:04 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1w2lye-000sRE-22;
	Wed, 18 Mar 2026 09:10:04 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1w2lye-0000000978X-2Gq3;
	Wed, 18 Mar 2026 09:10:04 +0100
Date: Wed, 18 Mar 2026 09:10:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
Message-ID: <abpd3Od9RpAaiF0q@pengutronix.de>
References: <20260316-compressed-firmware-v1-0-d9712142881e@pengutronix.de>
 <20260316-compressed-firmware-v1-8-d9712142881e@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260316-compressed-firmware-v1-8-d9712142881e@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260318_011006_529384_BB3B29CE 
X-CRM114-Status: GOOD (  21.82  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 8/9] ARM: Rockchip: Use compressed OP-TEE binary
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Mar 16, 2026 at 06:21:21PM +0100, Sascha Hauer wrote:
> Rockchip images are often size constraint due to the ROM limiting the
> maximum image size to 2MiB, at least when redundant copies on SD/eMMC
> are desired. For this reason use the compressed variant of the OP-TEE
> image.
> 
> FIXME: Uncompress address currently hardcoded.

This comment is not true anymore. In the current patch I use the memory
directly behind the image aligned up to the next 1MiB boundary.

> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/mach-rockchip/atf.c | 26 ++++++++++++++++++++------
>  1 file changed, 20 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm/mach-rockchip/atf.c b/arch/arm/mach-rockchip/atf.c
> index 0d26dfb740..2ba7f074ce 100644
> --- a/arch/arm/mach-rockchip/atf.c
> +++ b/arch/arm/mach-rockchip/atf.c
> @@ -8,6 +8,7 @@
>  #include <asm/atf_common.h>
>  #include <asm/barebox-arm.h>
>  #include <asm-generic/memory_layout.h>
> +#include <asm-generic/sections.h>
>  #include <mach/rockchip/dmc.h>
>  #include <mach/rockchip/rockchip.h>
>  #include <mach/rockchip/bootrom.h>
> @@ -29,7 +30,12 @@ static void rk_scratch_save_optee_hdr(const struct optee_header *hdr)
>  	rk_scratch->optee_hdr = *hdr;
>  }
>  
> -static unsigned long load_elf64_image_phdr(const void *elf)
> +static void *free_mem(void)
> +{
> +	return (void *)PTR_ALIGN(&__image_end, SZ_1M);
> +}
> +
> +static unsigned long load_elf64_image_phdr(struct fwobj *bl31)

This last line should be changed in the next patch, not this one.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


