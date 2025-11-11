Delivery-date: Tue, 11 Nov 2025 15:15:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIp9R-000AzR-2D
	for lore@lore.pengutronix.de;
	Tue, 11 Nov 2025 15:15:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIp9R-0000xw-3e
	for lore@pengutronix.de; Tue, 11 Nov 2025 15:15:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=s1LgMLPwkIuG7KlYTNa9LFe1mNJnEdW59StAGYZclMA=; b=Gvw7yXW0K6TwmfawBZeh1qilnn
	r5Q88BiaKsXFbcZDQZm2ubWxkEB30zJaLQdWny7DHBezAQTmoEc6pVZ7M/TrB5HKtkZe+20ZG+uOO
	PwXuYLJ4qZ8sndXyLrcn60iEKxowEAMaAvwLKEYu0oReSSBAPXyi0SaiT5XEmn4CT3upwSjOtJBrx
	QDuDIUQO2wyNlOjfxfPeuq47g5eaId9Agc55XsLrkRG21siF24JNqcx//1g8PGbWTlsxbYrRl9xLk
	MfmfVp2ceQLcddhUrwmvPuKLBsaOPbp6C4W3wHe8C517TnvSfGj4K1r6nOplqQRN04Kstt7xCVvOG
	XJ4YmRag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIp8p-00000007IeO-1XMB;
	Tue, 11 Nov 2025 14:14:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIp8m-00000007IdO-0oCe
	for barebox@lists.infradead.org;
	Tue, 11 Nov 2025 14:14:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vIp8k-0000hd-Iy; Tue, 11 Nov 2025 15:14:34 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vIp8k-008DTG-1I;
	Tue, 11 Nov 2025 15:14:34 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vIp8k-00EVsi-0w;
	Tue, 11 Nov 2025 15:14:34 +0100
Date: Tue, 11 Nov 2025 15:14:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <aRNEygSVau3tmHVk@pengutronix.de>
References: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
 <20251110-v2025-09-0-topic-optee-of-handling-v1-10-8f0625ac5471@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251110-v2025-09-0-topic-optee-of-handling-v1-10-8f0625ac5471@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251111_061436_256635_E3CA0BEC 
X-CRM114-Status: GOOD (  26.77  )
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
Subject: Re: [PATCH 10/23] ARM: i.MX: scratch: add FDT support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Nov 10, 2025 at 09:34:50PM +0100, Marco Felsch wrote:
> Add support to store a FDT within the scratch area. The user needs to
> query the location and size via imx_scratch_get_fdt() which can be used
> afterwards to write the actual FDT into it.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  arch/arm/mach-imx/scratch.c | 16 ++++++++++++++++
>  common/Kconfig              | 14 ++++++++++++++
>  include/mach/imx/scratch.h  |  2 ++
>  3 files changed, 32 insertions(+)
> 
> diff --git a/arch/arm/mach-imx/scratch.c b/arch/arm/mach-imx/scratch.c
> index e4e2d25969f061c9fcdfd7c3d87701b715eb2805..9c0f1c09c4e0b863d8c95888db7cf0518f698d53 100644
> --- a/arch/arm/mach-imx/scratch.c
> +++ b/arch/arm/mach-imx/scratch.c
> @@ -16,7 +16,10 @@ struct imx_scratch_space {
>  	u32 bootrom_log[128];
>  	u32 reserved[128];		/* reserve for bootrom log */
>  	struct optee_header optee_hdr;
> +	/* FDT needs an 8 byte alignment */
> +	u8 fdt[CONFIG_SCRATCH_FDT_SIZE] __aligned(8);
>  };
> +static_assert(sizeof(struct imx_scratch_space) <= CONFIG_SCRATCH_SIZE);
>  
>  static struct imx_scratch_space *scratch;
>  
> @@ -92,3 +95,16 @@ const struct optee_header *imx_scratch_get_optee_hdr(void)
>  
>  	return &scratch->optee_hdr;
>  }
> +
> +void imx_scratch_get_fdt(void **fdt, unsigned int *fdt_sz)
> +{
> +	if (!scratch) {
> +		if (IN_PBL)
> +			return;
> +		else
> +			scratch = (void *)arm_mem_scratch_get();
> +	}
> +
> +	*fdt = scratch->fdt;
> +	*fdt_sz = sizeof(scratch->fdt);
> +}
> diff --git a/common/Kconfig b/common/Kconfig
> index eb2fb1da1e0919b6e7d5e868c48ad2e195cd8aa8..3f394416c3c376d1cf842472803a47462bb012ed 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -302,8 +302,22 @@ config MALLOC_SIZE
>  config SCRATCH_SIZE
>  	hex
>  	default 0x8000
> +	default 0x48000 if PBL_EARLY_FDT_LOAD
>  	prompt "Scratch size"

Do I get this right that the scratch space now includes the space for
the early FDT? If yes then this can lead to inconsistencies when the
scratch space is to small. Why not add an extra space?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


