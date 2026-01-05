Delivery-date: Mon, 05 Jan 2026 14:16:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vckRt-001X51-1p
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 14:16:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vckRs-0003Ra-Tj
	for lore@pengutronix.de; Mon, 05 Jan 2026 14:16:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2atX2Wkb32OESWgJKn90yTUeJx4jkKhPbK2nblQm1WI=; b=ojk9UBF9AXy1yw3YbQbTynC8fq
	mghA2Xnp1WWx0Qar75Mods1GMrSB8tGFN+g3qNgQ50q7BGSN3CbUtJ4TPamd1OGqtuTp9+ZpJbpUg
	TuYPaLXJ+kbCSu3Eo+O+EFeKeb5Vvtxr5Hx+kJ3BDPVUSEpqHLNzdsDvVTSgk48eAEtacal+4CbXx
	OU4LHzN1fkl7CgafTswRp4r0SuELXo6DK2r8pCtm+KqUq6GUQxuJsg9kk3oVfFqoChCbVf+/OSgZk
	f/KlIJdaR+kAc51I6zhRConUPI0LmJclsai6o8SjiCjCsexM4Cp6pJ0wz26jR0p4beWG9VPnfK25R
	+UmbpxkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vckRS-0000000BPwd-22yW;
	Mon, 05 Jan 2026 13:16:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vckRQ-0000000BPvp-0iyt
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 13:16:13 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vckRO-0003NG-Fn; Mon, 05 Jan 2026 14:16:10 +0100
Message-ID: <5f54eb25-b3d2-4c9b-b80f-c6131e20bc76@pengutronix.de>
Date: Mon, 5 Jan 2026 14:16:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ahmad Fatoum <a.fatoum@barebox.org>, barebox@lists.infradead.org
References: <20260105083640.3257482-1-a.fatoum@barebox.org>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260105083640.3257482-1-a.fatoum@barebox.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_051612_237181_7415FB43 
X-CRM114-Status: GOOD (  19.25  )
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
Subject: Re: [PATCH] pbl: export pbl_verify_piggy function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 1/5/26 9:36 AM, Ahmad Fatoum wrote:
> To support barebox proper being an ELF binary, we will want to verify it
> all at once and then decompress the segments one by one.
> 
> Export the necessary API to prepare for this.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>

Please dismiss. I like the way of decompressing and fixing up in place more.

Cheers,
Ahmad

> ---
>  include/pbl.h |  3 +++
>  pbl/decomp.c  | 42 ++++++++++++++++++++++++++++--------------
>  2 files changed, 31 insertions(+), 14 deletions(-)
> 
> diff --git a/include/pbl.h b/include/pbl.h
> index b330010562c4..6fe868e14abc 100644
> --- a/include/pbl.h
> +++ b/include/pbl.h
> @@ -14,7 +14,10 @@
>  extern unsigned long free_mem_ptr;
>  extern unsigned long free_mem_end_ptr;
>  
> +void pbl_verify_piggy(void *compressed_start, unsigned int len);
>  void pbl_barebox_uncompress(void *dest, void *compressed_start, unsigned int len);
> +long pbl_barebox_uncompress_noverify(void *dest, void *compressed_start,
> +				     unsigned int len);
>  
>  void fdt_find_mem(const void *fdt, unsigned long *membase, unsigned long *memsize);
>  int fdt_fixup_mem(void *fdt, unsigned long membase[], unsigned long memsize[], size_t num);
> diff --git a/pbl/decomp.c b/pbl/decomp.c
> index ebdf81ddfbe5..ba722acdd174 100644
> --- a/pbl/decomp.c
> +++ b/pbl/decomp.c
> @@ -89,24 +89,38 @@ int pbl_barebox_verify(const void *compressed_start, unsigned int len,
>  	return memcmp(hash, computed_hash, SHA256_DIGEST_SIZE);
>  }
>  
> -void pbl_barebox_uncompress(void *dest, void *compressed_start, unsigned int len)
> +void pbl_verify_piggy(void *compressed_start, unsigned int len)
>  {
>  	uint32_t pbl_hash_len;
>  	void *pbl_hash_start, *pbl_hash_end;
>  
> -	if (IS_ENABLED(CONFIG_PBL_VERIFY_PIGGY)) {
> -		pbl_hash_start = sha_sum;
> -		pbl_hash_end = sha_sum_end;
> -		pbl_hash_len = pbl_hash_end - pbl_hash_start;
> -		if (pbl_barebox_verify(compressed_start, len, pbl_hash_start,
> -				       pbl_hash_len) != 0) {
> -			putc_ll('!');
> -			panic("hash mismatch, refusing to decompress");
> -		}
> +	if (!IS_ENABLED(CONFIG_PBL_VERIFY_PIGGY)) {
> +		pr_debug("Verifying piggybacked barebox proper disabled\n");
> +		return;
>  	}
>  
> -	decompress((void *)compressed_start,
> -			len,
> -			NULL, NULL,
> -			dest, NULL, errorfn);
> +	pbl_hash_start = sha_sum;
> +	pbl_hash_end = sha_sum_end;
> +	pbl_hash_len = pbl_hash_end - pbl_hash_start;
> +	if (pbl_barebox_verify(compressed_start, len, pbl_hash_start,
> +			       pbl_hash_len) != 0) {
> +		putc_ll('!');
> +		panic("hash mismatch, refusing to decompress");
> +	}
> +}
> +
> +
> +long pbl_barebox_uncompress_noverify(void *dest, void *compressed_start,
> +				     unsigned int len)
> +{
> +	long pos;
> +	return decompress((void *)compressed_start,
> +			  len, NULL, NULL,
> +			  dest, &pos, errorfn) ?: pos;
> +}
> +
> +void pbl_barebox_uncompress(void *dest, void *compressed_start, unsigned int len)
> +{
> +	pbl_verify_piggy(compressed_start, len);
> +	pbl_barebox_uncompress_noverify(dest, compressed_start, len);
>  }

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



