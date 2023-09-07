Delivery-date: Thu, 07 Sep 2023 11:01:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qeAt9-006vkt-2x
	for lore@lore.pengutronix.de; Thu, 07 Sep 2023 11:01:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qeAt6-0001LZ-UJ
	for lore@pengutronix.de; Thu, 07 Sep 2023 11:01:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xSAbM9Vo3UUujJRwApBOIIXeAKqTtJn/RAOGoBet8gU=; b=dOoHvJL7YRHeS4B4XOlUKxj6qv
	J3uOTzI6qXe3l00iTRvzu4T8tuIOEbUnpgXK3YpaUI1qhHTVGJQYKxLp+KPpFY+EdBFPPDQImDm3f
	1HQpUvxHhJka1DQxMcwJTMnRD0q13FDCEqBt8vMoWx0RgWgq9ZprWQ+3/lV2lk0/M+UhOJEyN8Lf0
	qo45aiVsGYPedAFJSk0LmFAVV2bxdDbS481Ia5y0imuW54ucsIgketLTUApTOWef4HIBnmp7QVbI6
	lltI5/01Wxhrt4dG4+PSBsL/z7vp/Jr74uF5ZkyFrSPum+3YI+2apuXZi2uyFrfHJRpVytragVAGp
	6nJg4/Aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qeAry-00BdCJ-2W;
	Thu, 07 Sep 2023 09:00:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qeArv-00BdBt-1B
	for barebox@lists.infradead.org;
	Thu, 07 Sep 2023 09:00:09 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qeArt-0000mx-Kc; Thu, 07 Sep 2023 11:00:05 +0200
Message-ID: <393f8933-d264-e4a2-4497-39c8240796e7@pengutronix.de>
Date: Thu, 7 Sep 2023 11:00:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Jules Maselbas <jmaselbas@zdiv.net>, barebox@lists.infradead.org
References: <20230906150857.32035-1-jmaselbas@zdiv.net>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230906150857.32035-1-jmaselbas@zdiv.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230907_020007_428745_7B3D9EDB 
X-CRM114-Status: GOOD (  30.99  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] decompressors: Update xz to include ARM64 BCJ decoder
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 06.09.23 17:08, Jules Maselbas wrote:
> Update lib/xz/xz_dec_bcj.c and lib/xz/xz_private.h files from xz-embedded [1],
> which include spelling fixes and the new ARM64 BCJ decoder which was recently
> introduced into .xz file format version 1.1.0 (2022-12-11) [2].
> 
> [1] https://git.tukaani.org/?p=xz-embedded.git
> [2] https://tukaani.org/xz/xz-file-format-1.1.0.txt
> 
> Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
> ---
>  lib/Kconfig           |  4 ++++
>  lib/decompress_unxz.c |  3 +++
>  lib/xz/xz_dec_bcj.c   | 54 ++++++++++++++++++++++++++++++++++++++++---
>  lib/xz/xz_private.h   |  3 +++
>  4 files changed, 61 insertions(+), 3 deletions(-)
> 
> diff --git a/lib/Kconfig b/lib/Kconfig
> index 758197b608..9291e5a8ff 100644
> --- a/lib/Kconfig
> +++ b/lib/Kconfig
> @@ -42,6 +42,7 @@ config XZ_DECOMPRESS
>  	select XZ_DEC_ARM
>  	select XZ_DEC_ARMTHUMB
>  	select XZ_DEC_SPARC
> +	select XZ_DEC_ARM64

Hmm, maybe for PBL, we should only support the XZ BCJ filter that is chosen
for barebox proper? If you are trying to get barebox binary size down,
maybe you are inclined to check? :-)

Thanks,
Ahmad 

>  
>  config XZ_DEC_X86
>          bool
> @@ -61,6 +62,9 @@ config XZ_DEC_ARMTHUMB
>  config XZ_DEC_SPARC
>          bool
>  
> +config XZ_DEC_ARM64
> +	bool "ARM64 BCJ filter decoder"
> +
>  config REED_SOLOMON
>  	bool
>  
> diff --git a/lib/decompress_unxz.c b/lib/decompress_unxz.c
> index a7e2d331ab..5c906932f8 100644
> --- a/lib/decompress_unxz.c
> +++ b/lib/decompress_unxz.c
> @@ -132,6 +132,9 @@
>  #endif
>  #ifdef CONFIG_ARM
>  #	define XZ_DEC_ARM
> +#	ifdef CONFIG_CPU_64
> +#		define XZ_DEC_ARM64
> +#	endif
>  #endif
>  #ifdef CONFIG_IA64
>  #	define XZ_DEC_IA64
> diff --git a/lib/xz/xz_dec_bcj.c b/lib/xz/xz_dec_bcj.c
> index d268adbc65..d40fae3416 100644
> --- a/lib/xz/xz_dec_bcj.c
> +++ b/lib/xz/xz_dec_bcj.c
> @@ -2,7 +2,7 @@
>   * Branch/Call/Jump (BCJ) filter decoders
>   *
>   * Authors: Lasse Collin <lasse.collin@tukaani.org>
> - *          Igor Pavlov <http://7-zip.org/>
> + *          Igor Pavlov <https://7-zip.org/>
>   *
>   * This file has been put into the public domain.
>   * You can do whatever you want with this file.
> @@ -24,7 +24,8 @@ struct xz_dec_bcj {
>  		BCJ_IA64 = 6,       /* Big or little endian */
>  		BCJ_ARM = 7,        /* Little endian only */
>  		BCJ_ARMTHUMB = 8,   /* Little endian only */
> -		BCJ_SPARC = 9       /* Big or little endian */
> +		BCJ_SPARC = 9,      /* Big or little endian */
> +		BCJ_ARM64 = 10      /* AArch64 */
>  	} type;
>  
>  	/*
> @@ -334,6 +335,45 @@ static size_t bcj_sparc(struct xz_dec_bcj *s, uint8_t *buf, size_t size)
>  }
>  #endif
>  
> +#ifdef XZ_DEC_ARM64
> +static size_t bcj_arm64(struct xz_dec_bcj *s, uint8_t *buf, size_t size)
> +{
> +	size_t i;
> +	uint32_t instr;
> +	uint32_t addr;
> +
> +	for (i = 0; i + 4 <= size; i += 4) {
> +		instr = get_unaligned_le32(buf + i);
> +
> +		if ((instr >> 26) == 0x25) {
> +			/* BL instruction */
> +			addr = instr - ((s->pos + (uint32_t)i) >> 2);
> +			instr = 0x94000000 | (addr & 0x03FFFFFF);
> +			put_unaligned_le32(instr, buf + i);
> +
> +		} else if ((instr & 0x9F000000) == 0x90000000) {
> +			/* ADRP instruction */
> +			addr = ((instr >> 29) & 3) | ((instr >> 3) & 0x1FFFFC);
> +
> +			/* Only convert values in the range +/-512 MiB. */
> +			if ((addr + 0x020000) & 0x1C0000)
> +				continue;
> +
> +			addr -= (s->pos + (uint32_t)i) >> 12;
> +
> +			instr &= 0x9000001F;
> +			instr |= (addr & 3) << 29;
> +			instr |= (addr & 0x03FFFC) << 3;
> +			instr |= (0U - (addr & 0x020000)) & 0xE00000;
> +
> +			put_unaligned_le32(instr, buf + i);
> +		}
> +	}
> +
> +	return i;
> +}
> +#endif
> +
>  /*
>   * Apply the selected BCJ filter. Update *pos and s->pos to match the amount
>   * of data that got filtered.
> @@ -380,6 +420,11 @@ static void bcj_apply(struct xz_dec_bcj *s,
>  	case BCJ_SPARC:
>  		filtered = bcj_sparc(s, buf, size);
>  		break;
> +#endif
> +#ifdef XZ_DEC_ARM64
> +	case BCJ_ARM64:
> +		filtered = bcj_arm64(s, buf, size);
> +		break;
>  #endif
>  	default:
>  		/* Never reached but silence compiler warnings. */
> @@ -422,7 +467,7 @@ XZ_EXTERN enum xz_ret xz_dec_bcj_run(struct xz_dec_bcj *s,
>  
>  	/*
>  	 * Flush pending already filtered data to the output buffer. Return
> -	 * immediatelly if we couldn't flush everything, or if the next
> +	 * immediately if we couldn't flush everything, or if the next
>  	 * filter in the chain had already returned XZ_STREAM_END.
>  	 */
>  	if (s->temp.filtered > 0) {
> @@ -553,6 +598,9 @@ XZ_EXTERN enum xz_ret xz_dec_bcj_reset(struct xz_dec_bcj *s, uint8_t id)
>  #endif
>  #ifdef XZ_DEC_SPARC
>  	case BCJ_SPARC:
> +#endif
> +#ifdef XZ_DEC_ARM64
> +	case BCJ_ARM64:
>  #endif
>  		break;
>  
> diff --git a/lib/xz/xz_private.h b/lib/xz/xz_private.h
> index 85f79635f0..9d6bd7c905 100644
> --- a/lib/xz/xz_private.h
> +++ b/lib/xz/xz_private.h
> @@ -37,6 +37,9 @@
>  #		ifdef CONFIG_XZ_DEC_SPARC
>  #			define XZ_DEC_SPARC
>  #		endif
> +#		ifdef CONFIG_XZ_DEC_ARM64
> +#			define XZ_DEC_ARM64
> +#		endif
>  #		define memeq(a, b, size) (memcmp(a, b, size) == 0)
>  #		define memzero(buf, size) memset(buf, 0, size)
>  #		define FREE free

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



