Delivery-date: Mon, 04 Sep 2023 10:21:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qd4pR-003Szv-DJ
	for lore@lore.pengutronix.de; Mon, 04 Sep 2023 10:21:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qd4pP-0005zq-DF
	for lore@pengutronix.de; Mon, 04 Sep 2023 10:21:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AOGGXfI1awAT3z2+v9yDIYous5l/0kHU2JYlGVlf6bQ=; b=zk8Vu9rpPW9LtGLlbkfPNjx1jO
	3KUGNHEMJvy8r42V6BD67NDlW4PGE5wjHy4DAup29GiWz5yzY4FY0jkcrhM7VShU45cdwJSCDyeVg
	UQMs1f6Z45w6PliEo1LQkmtgs+UHAjt9QMqdhqBi1z1mX/dP5e5fUzQOgtPjFhLZJiqXQ7gTwRxqk
	g6AfWzRyAHs/rd4MLJUj1yY97wYMAVQ2m8YywZkIw7eBRfMWgJg227PfjrPHHu9+MbswsapitI8iV
	JNiLivGlPcSPjpTnabYw7WPqV2gCCE9ZZ54I0Abj2xXR46E5HHCRSbzyYJc58gy+/n88usKof83xk
	Y34D1AwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qd4oH-003Ys6-1X;
	Mon, 04 Sep 2023 08:19:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qd4oE-003Yqv-1g
	for barebox@lists.infradead.org;
	Mon, 04 Sep 2023 08:19:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qd4oD-0004NE-9B; Mon, 04 Sep 2023 10:19:45 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qd4oC-003pkH-Mk; Mon, 04 Sep 2023 10:19:44 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qd4oC-000wPB-Dp; Mon, 04 Sep 2023 10:19:44 +0200
Date: Mon, 4 Sep 2023 10:19:44 +0200
To: Johannes Zink <j.zink@pengutronix.de>
Cc: patchwork-jzi@pengutronix.de,
	Barebox Mailing List <barebox@lists.infradead.org>
Message-ID: <20230904081944.GB189379@pengutronix.de>
References: <20230829-crc32_in_pbl-v2-1-8a0a575b360a@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230829-crc32_in_pbl-v2-1-8a0a575b360a@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230904_011946_561316_B4A3EF05 
X-CRM114-Status: GOOD (  35.33  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] crypto: crc32: make crc32 available in PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Aug 29, 2023 at 04:38:32PM +0200, Johannes Zink wrote:
> crc32 may be required in PBL for checking data integrity. Add it to PBL
> when CONFIG_CRC32 is enabled.
> 
> To save some memory use a slower-but-smaller variant of the crc32 algorithm
> in the PBL.

I've just sent an alternative patch series. Please check if that works
for you.

Sascha


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
> -- 
> Johannes Zink <j.zink@pengutronix.de>
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


