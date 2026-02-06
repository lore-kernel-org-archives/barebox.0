Delivery-date: Fri, 06 Feb 2026 10:41:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1voIKj-009RCi-0Q
	for lore@lore.pengutronix.de;
	Fri, 06 Feb 2026 10:41:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1voIKi-0005Q5-2y
	for lore@pengutronix.de; Fri, 06 Feb 2026 10:41:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WuPGSbN4KY6iu+bDd141EwmaJ5NQ7FaCEuxS00CQxiM=; b=ssDK/RgtUDqCgbzzy/PFbL3Uov
	iOnK50zpVIbq1GkiPqr4FvJpFc35FEx+BkgxHHhmMaiOOCf2VvCN3vE+GEGPlV1/H64ivhHzhgyO8
	hWc4c1JhjZmPa6YKGkO+dkjhUqngW5kod38e9ANGkgF3KrXrwf0ytQnmfae5kJGKS1k1yZUrFpuVO
	hEelNRHizMe3aepfDyva6PP/iXtoJabGU3fhE9Ii9kTTYHjWnOCjB/27JsrxNEQIdMe1OMifIBNIK
	ZotjDu0lsxB7HEpBmupDWu7BSO2nvdHKik8XsP4x4fSXmXQM85v9lfbhMQbzooVlPgj3J8mJPar3u
	euibDMBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voIJt-0000000B7Ay-14F5;
	Fri, 06 Feb 2026 09:40:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voIJq-0000000B7AX-3KcJ
	for barebox@lists.infradead.org;
	Fri, 06 Feb 2026 09:40:08 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1voIJp-0005KB-30; Fri, 06 Feb 2026 10:40:05 +0100
Message-ID: <d6b5bd70-4b23-4650-ac5a-b3a83d092d29@pengutronix.de>
Date: Fri, 6 Feb 2026 10:40:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20260204-v2025-09-0-topic-optee-of-handling-v2-0-da075e6818e0@pengutronix.de>
 <20260204-v2025-09-0-topic-optee-of-handling-v2-6-da075e6818e0@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260204-v2025-09-0-topic-optee-of-handling-v2-6-da075e6818e0@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260206_014006_840169_2ED7660A 
X-CRM114-Status: GOOD (  27.62  )
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
Subject: Re: [PATCH v2 06/15] ARM: i.MX: scratch: add FDT support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 2/4/26 9:01 PM, Marco Felsch wrote:
> Add support to store a FDT within the scratch area. The user needs to
> query the location and size via imx_scratch_get_fdt() which can be used
> afterwards to write the actual FDT into it.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  arch/arm/mach-imx/scratch.c | 24 ++++++++++++++++++++++++
>  common/Kconfig              | 14 ++++++++++++++
>  include/mach/imx/scratch.h  |  2 ++
>  3 files changed, 40 insertions(+)
> 
> diff --git a/arch/arm/mach-imx/scratch.c b/arch/arm/mach-imx/scratch.c
> index e4e2d25969f061c9fcdfd7c3d87701b715eb2805..da138445dfb352f2f3497be77004aefc7d46f188 100644
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
> @@ -92,3 +95,24 @@ const struct optee_header *imx_scratch_get_optee_hdr(void)
>  
>  	return &scratch->optee_hdr;
>  }
> +
> +u8 *imx_scratch_get_fdt(unsigned int *fdt_sz)
> +{
> +	unsigned int sz;
> +
> +	if (!scratch) {
> +		if (IN_PBL)
> +			return ERR_PTR(-EINVAL);
> +		else
> +			scratch = (void *)arm_mem_scratch_get();
> +	}
> +
> +	sz = sizeof(scratch->fdt);
> +	if (sz == 0)
> +		return NULL;
> +
> +	if (fdt_sz)
> +		*fdt_sz = sz;
> +
> +	return scratch->fdt;
> +}
> diff --git a/common/Kconfig b/common/Kconfig
> index 50c26695b2b56a943edfd00a7e0cb1067ad269a9..265652900a5632177d36efa84d590be6db2e7015 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -304,6 +304,20 @@ config SCRATCH_SIZE
>  	default 0x8000
>  	prompt "Scratch size"
>  
> +config SCRATCH_FDT_SIZE
> +	hex
> +	default 0x0
> +	prompt "Scratch FDT size"
> +	help
> +	  The size of the scratch area used as destination to load and optional
> +	  decompress the barebox builtin DTB into it. Can be 0x0 if early FDT
> +	  support is not requied.
> +
> +	  If specified, SCRATCH_FDT_SIZE <= SCRATCH_SIZE must be ensured.
> +
> +	  This option should match the OP-TEE's CFG_DTB_MAX_SIZE configuration
> +	  if used by OP-TEE.

AFAIU, this is a workaround because OP-TEE doesn't accept outside
information about how big the DTB buffer is, just its base address.

In that case, this should go to security/Kconfig and be named something
like PBL_OPTEE_DTB_MAX_SIZE. There's no need to ask every user that
configures barebox about this.


Cheers,
Ahmad

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



