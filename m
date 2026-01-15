Delivery-date: Thu, 15 Jan 2026 15:48:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgOdm-001cw5-21
	for lore@lore.pengutronix.de;
	Thu, 15 Jan 2026 15:48:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgOdl-0003li-Ip
	for lore@pengutronix.de; Thu, 15 Jan 2026 15:48:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qagDWA2cUf1CKnigyV0UHDrSEfPsPICyda6D0YVLojg=; b=4xDcRKJkTsR6nbZU6xI93aElsj
	zYutYPnnvKys0Ylen3BweiGMRKqX3/XdtiOVxS7tEYwgYG+2p9oOxrP7uyB4dKrT1hn2PjgoKm+rr
	PUm17Aihss+qyJ1ZIwqIB29Nq1usafvdAp8nubDS9hHetKjSgP/rO+X2s0enGXSono9Mv6Ogck8FK
	3lslffTVsMRbMZh1qdHH2q+wdxNBzYvYGIp0ZDkpS+Ze9SzDFpHcVdTLv9jAo2kSFTVeAjgjcpV6U
	3To+b3XWbOP9qyZ1RhTH5VTBiT92VcPuf1L0dacLxrQr9r+gXjkupIjHm+FjyVu9Q2+XxBGbrLtFq
	KsEt39xA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgOdI-0000000CWc0-0DBE;
	Thu, 15 Jan 2026 14:47:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgOdE-0000000CWbB-41Tn
	for barebox@lists.infradead.org;
	Thu, 15 Jan 2026 14:47:31 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vgOdD-0003g6-7Q; Thu, 15 Jan 2026 15:47:27 +0100
Message-ID: <67f78008-804b-4732-bd94-2b2b7bda5ec8@pengutronix.de>
Date: Thu, 15 Jan 2026 15:47:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
 <20251110-v2025-09-0-topic-optee-of-handling-v1-14-8f0625ac5471@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20251110-v2025-09-0-topic-optee-of-handling-v1-14-8f0625ac5471@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260115_064728_999481_053161CD 
X-CRM114-Status: GOOD (  18.06  )
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
Subject: Re: [PATCH 14/23] ARM: i.MX: scratch: add OP-TEE FDTO support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Marco,

On 11/10/25 9:34 PM, Marco Felsch wrote:
> OP-TEE has the support to write DTB overlay fragments if enabled via
> OP-TEE config switch CFG_EXTERNAL_DTB_OVERLAY.
> 
> The overlay fragments are added to the exisiting DTB if OP-TEE was
> started with a DTB provided via arg2 or written to a stand-alone DTB
> overlay.
> 
> This adds a dedicated storage slot which can be passed to OP-TEE or be
> used by barebox to extract the added overlay fragment into it.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---


> +config SCRATCH_FDTO_SIZE
> +	hex
> +	default 0x0
> +	default 0x4000 if PBL_EARLY_FDT_LOAD
> +	prompt "Scratch FDTO size"
> +	help
> +	  The size of possible FDT overlay areas used by BL3x binaries to store
> +	  runtime generated overlays. Can be 0x0 if early FDT support is not
> +	  requied e.g. during BL31 and BL32 stage.

I understand the need, but I dislike that we add such fine-grained
Kconfig symbols here. With Sascha's series to make barebox proper an
ELF, PBL will have more insight about how much space barebox proper
occupies and I intend to send a series after it to allow easier
allocation for hand-off data.

I will include provisions for passing around the device tree and an
overlay with that series, so please hold off sending your v2 until then.

Thanks,
Ahmad


> +
>  config MALLOC_ALIGNMENT
>  	hex
>  	default 8
> diff --git a/include/mach/imx/scratch.h b/include/mach/imx/scratch.h
> index 43bf55de48099f1662cd4331620a93303d4dd710..a9745a95732dd961dcae83ec46c3eaa078d62a16 100644
> --- a/include/mach/imx/scratch.h
> +++ b/include/mach/imx/scratch.h
> @@ -15,6 +15,7 @@ const struct optee_header *imx_scratch_get_optee_hdr(void);
>  void imx_scratch_save_optee_hdr(const struct optee_header *hdr);
>  
>  void imx_scratch_get_fdt(void **fdt, unsigned int *fdt_sz);
> +void imx_scratch_get_optee_fdto(void **fdto, unsigned int *fdto_sz);
>  
>  #define imx8mq_init_scratch_space() imx8m_init_scratch_space(32, true)
>  #define imx8mm_init_scratch_space() imx8m_init_scratch_space(32, true)
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



