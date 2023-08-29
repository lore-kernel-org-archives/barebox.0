Delivery-date: Tue, 29 Aug 2023 17:01:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qb0E8-00DRD6-7S
	for lore@lore.pengutronix.de; Tue, 29 Aug 2023 17:01:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qb0E5-0007a1-Er
	for lore@pengutronix.de; Tue, 29 Aug 2023 17:01:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=f20ouZ0sNvOl6p8dVj0X8nEM+9ULzpAedId+NmxlIGQ=; b=BEAw09kDOTGZw+kYCoxsmVRrzO
	ebO1JKsd823Hmv+b4pe5KSyPhdBkvoKmG0fsSV3j6XH7c+zOBCKqIKA3M1QkMS+8F1uIC4CiIfbzO
	tK9Ka0aA+2s8wsykL9mCrIsew/Q8zpBsLKq4y8wpG5QX/nb2pe/8rcJug6Bo6y+4ZhUsRdoP5J9aD
	m1yC4naCJabAniP+HBohCxIypnz3CnZpBbo4Clf081EOXniISR0F3KiQ1z3sqt3wN4ZGTNjucEfj2
	vcCETva8OCSHx27Rx+tqyshmo6+oce/Wd1XVo+U8qw0Vc9t9quX9JT4+BLhCumNlPhkqt68N9u27r
	n7cCB0pQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb0Cj-00Bk8l-1f;
	Tue, 29 Aug 2023 15:00:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb0Ca-00Bk4X-1w
	for barebox@lists.infradead.org;
	Tue, 29 Aug 2023 15:00:24 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qb0CZ-0007Gm-1P; Tue, 29 Aug 2023 17:00:19 +0200
Message-ID: <6d8552fb-0d82-1f26-4c9b-8b7375d842f6@pengutronix.de>
Date: Tue, 29 Aug 2023 17:00:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Johannes Zink <j.zink@pengutronix.de>, patchwork-jzi@pengutronix.de
Cc: Barebox Mailing List <barebox@lists.infradead.org>
References: <20230829-crc32_in_pbl-v2-1-8a0a575b360a@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230829-crc32_in_pbl-v2-1-8a0a575b360a@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_080020_656898_FEE2F928 
X-CRM114-Status: GOOD (  33.16  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] crypto: crc32: make crc32 available in PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 29.08.23 16:38, Johannes Zink wrote:
> crc32 may be required in PBL for checking data integrity. Add it to PBL
> when CONFIG_CRC32 is enabled.
> 
> To save some memory use a slower-but-smaller variant of the crc32 algorithm
> in the PBL.
> 
> Signed-off-by: Johannes Zink <j.zink@pengutronix.de>
> ---
> To: Barebox Mailing List <barebox@lists.infradead.org>
> Cc: Johannes Zink <j.zink@pengutronix.de>
> Cc: patchwork-jzi@pengutronix.de
> ---
> 
> Changes:
> 
> v1->v2: Worked in Ahmad's review (thank you for reviewing my patch):
>   - instead of using CRC32_EARLY, always add crc32.o to obj and pbl if
>     CONFIG_CRC is set and rely on LTO to remove unused symbols instead

fyi, LTO goes beyond linker garbage collection and actively rewrites
code, while --gc-sections, just checks which data/code sections are unused
and drops the dead code/data. We don't (yet) do LTO in barebox.

Patch looks good otherwise:
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

>   - use a CRC32 implementation without a prepopulated Lookup Table,
>     which trades in speed for code size in the PBL, analogously to what
>     Sascha implemented in [1]
>   - add hints on some of the #endifs for better readability of nested
>     ifdef blocks
>   - reword commit message to reflect on the changes made
> 
>     [1] 2d13b856604b ("crc: Add PBL variant for crc_itu_t()")
> ---
>  crypto/Makefile |  2 +-
>  crypto/crc32.c  | 34 ++++++++++++++++++++++++++++------
>  2 files changed, 29 insertions(+), 7 deletions(-)
> 
> diff --git a/crypto/Makefile b/crypto/Makefile
> index 22035d4f69ee..4a1c7e9615b8 100644
> --- a/crypto/Makefile
> +++ b/crypto/Makefile
> @@ -1,6 +1,6 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>  
> -obj-$(CONFIG_CRC32)	+= crc32.o
> +obj-pbl-$(CONFIG_CRC32)	+= crc32.o
>  obj-pbl-$(CONFIG_CRC_ITU_T)	+= crc-itu-t.o
>  obj-$(CONFIG_CRC7)	+= crc7.o
>  obj-$(CONFIG_DIGEST)	+= digest.o
> diff --git a/crypto/crc32.c b/crypto/crc32.c
> index 95cb2212db2b..2cf13144c1d2 100644
> --- a/crypto/crc32.c
> +++ b/crypto/crc32.c
> @@ -22,7 +22,7 @@
>  #define STATIC static inline
>  #endif
>  
> -#ifdef CONFIG_DYNAMIC_CRC_TABLE
> +#if defined(CONFIG_DYNAMIC_CRC_TABLE) && !defined(__PBL__)
>  
>  static uint32_t *crc_table;
>  
> @@ -73,7 +73,7 @@ static void make_crc_table(void)
>      crc_table[n] = c;
>    }
>  }
> -#else
> +#elif !defined(__PBL__)
>  /* ========================================================================
>   * Table of CRC-32's of all single-byte values (made by make_crc_table)
>   */
> @@ -131,9 +131,30 @@ static const uint32_t crc_table[256] = {
>    0x5d681b02L, 0x2a6f2b94L, 0xb40bbe37L, 0xc30c8ea1L, 0x5a05df1bL,
>    0x2d02ef8dL
>  };
> -#endif
> +#endif /* defined(CONFIG_DYNAMIC_CRC_TABLE) && !defined(__PBL__) */
> +
> +
> +
> +#ifdef __PBL__
> +#define CRC32_POLY 0xEDB88320L
> +STATIC uint32_t crc32(uint32_t crc, const void *_buf, unsigned int len)
> +{
> +	int i, j;
> +	const unsigned char *buf = _buf;
>  
> +	crc = crc ^ 0xffffffffL;
>  
> +	for (i=0; i< len; i++) {
> +		crc ^= buf[i];
> +		for (j = 0; j < 8; j++) {
> +			crc = (crc >> 1) ^ ((crc & 1) ? CRC32_POLY : 0);
> +		}
> +	}
> +
> +	crc = crc ^ 0xffffffffL;
> +	return crc;
> +}
> +#else
>  /* ========================================================================= */
>  #define DO1(buf) crc = crc_table[((int)crc ^ (*buf++)) & 0xff] ^ (crc >> 8);
>  #define DO2(buf)  DO1(buf); DO1(buf);
> @@ -148,7 +169,7 @@ STATIC uint32_t crc32(uint32_t crc, const void *_buf, unsigned int len)
>  #ifdef CONFIG_DYNAMIC_CRC_TABLE
>  	if (!crc_table)
>  		make_crc_table();
> -#endif
> +#endif /* CONFIG_DYNAMIC_CRC_TABLE */
>      crc = crc ^ 0xffffffffL;
>      while (len >= 8)
>      {
> @@ -162,7 +183,7 @@ STATIC uint32_t crc32(uint32_t crc, const void *_buf, unsigned int len)
>  }
>  #ifdef __BAREBOX__
>  EXPORT_SYMBOL(crc32);
> -#endif
> +#endif /* __BAREBOX__ */
>  
>  /* No ones complement version. JFFS2 (and other things ?)
>   * don't use ones compliment in their CRC calculations.
> @@ -174,7 +195,7 @@ STATIC uint32_t crc32_no_comp(uint32_t crc, const void *_buf, unsigned int len)
>  #ifdef CONFIG_DYNAMIC_CRC_TABLE
>  	if (!crc_table)
>  		make_crc_table();
> -#endif
> +#endif /* CONFIG_DYNAMIC_CRC_TABLE */
>      while (len >= 8)
>      {
>        DO8(buf);
> @@ -186,6 +207,7 @@ STATIC uint32_t crc32_no_comp(uint32_t crc, const void *_buf, unsigned int len)
>  
>      return crc;
>  }
> +#endif /* __PBL__ */
>  
>  STATIC uint32_t crc32_be(uint32_t crc, const void *_buf, unsigned int len)
>  {
> 
> ---
> base-commit: bef38b18eeb5d2f1fac334fb8b831e47261e099c
> change-id: 20230829-crc32_in_pbl-4d824629d4e2
> 
> Best regards,

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



