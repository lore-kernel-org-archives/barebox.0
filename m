Delivery-date: Tue, 14 Apr 2026 10:52:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCZVq-00C1Jg-0s
	for lore@lore.pengutronix.de;
	Tue, 14 Apr 2026 10:52:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCZVp-0000nR-Kd
	for lore@pengutronix.de; Tue, 14 Apr 2026 10:52:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gk+j5X13XXpEgWnloBQm/e8U2IFgkmNxGuFI1H5XkKk=; b=EusZUXw7pL4rqbjz45TihRmhlx
	5Y60iP4i6OyILuBur0n1Z+rs4NcIyG8FHJWMG87xL+3fU4kHEPr7KBfDBMkmmzNeT7Sd9zPj/JMUD
	XgKX6HkH6t4Ub5vt81EpyZ/gfD84lYyH10neCe5N1GeB6wApYnLgDR8zTgoA/qggbcMkWXXkvjI1s
	ReidyqpoplLTC+Bt1BqzhIeKEgdnUqX2I1tIRQwXw5ZDuVUH2AH5vq/Iw46NmcBbwo5iLMzKJ764H
	d660ICC63KwFP+I1n7APG7Z0RulABtwixJweRsincfbUSXJ0qIhTGujiD3p8GYFG7gf0VyFhJVNJb
	IQcFAglw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCZVQ-0000000H1BT-3oc4;
	Tue, 14 Apr 2026 08:52:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCZVO-0000000H1Av-2R8h
	for barebox@lists.infradead.org;
	Tue, 14 Apr 2026 08:52:23 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wCZVM-0000iP-Sl; Tue, 14 Apr 2026 10:52:20 +0200
Message-ID: <25f50d9e-828c-4083-afed-7f43107a9691@pengutronix.de>
Date: Tue, 14 Apr 2026 10:52:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
Cc: Sascha Hauer <sascha@saschahauer.de>,
 "Claude Opus 4.6 (1M context)" <noreply@anthropic.com>
References: <20260413123646.3552086-1-s.hauer@pengutronix.de>
 <20260413123646.3552086-4-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260413123646.3552086-4-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260414_015222_622126_B8DA8D7E 
X-CRM114-Status: GOOD (  22.12  )
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
Subject: Re: [PATCH 4/4] efi: loader: bounds-check relocation offsets against
 image size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 4/13/26 2:36 PM, Sascha Hauer wrote:
> From: Sascha Hauer <sascha@saschahauer.de>
> 
> The relocation VirtualAddress and page offset are read from the PE
> image and used to compute a write offset into the allocated image
> buffer without any bounds checking. A crafted relocation entry with a
> large VirtualAddress writes past the efi_reloc allocation.
> 
> Pass the image size into efi_loader_relocate() and use size_add() to
> check that the relocation offset plus the access width fits within the
> buffer. size_add() saturates to SIZE_MAX on overflow, so the check
> remains correct on 32-bit architectures.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> 
> Co-Authored-By: Claude Opus 4.6 (1M context) <noreply@anthropic.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

AFAICS, a 32-bit relocation at the absolute end of a binary would
erroneously trigger this check, but I think that's not worth
complicating the logic over.

Should that ever happen there's a helpful error message..

Cheers,
Ahmad

> ---
>  efi/loader/pe.c | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)
> 
> diff --git a/efi/loader/pe.c b/efi/loader/pe.c
> index ea385c8795..7d36d8c334 100644
> --- a/efi/loader/pe.c
> +++ b/efi/loader/pe.c
> @@ -108,7 +108,8 @@ void efi_print_image_infos(void *pc)
>   */
>  static efi_status_t efi_loader_relocate(const IMAGE_BASE_RELOCATION *rel,
>  			unsigned long rel_size, void *efi_reloc,
> -			unsigned long pref_address)
> +			unsigned long pref_address,
> +			unsigned long image_size)
>  {
>  	unsigned long delta = (unsigned long)efi_reloc - pref_address;
>  	const IMAGE_BASE_RELOCATION *end;
> @@ -133,6 +134,11 @@ static efi_status_t efi_loader_relocate(const IMAGE_BASE_RELOCATION *rel,
>  			uint32_t *x32 = efi_reloc + offset;
>  			uint16_t *x16 = efi_reloc + offset;
>  
> +			if (size_add(offset, sizeof(uint64_t)) > image_size) {
> +				pr_err("Relocation offset exceeds image size\n");
> +				return EFI_LOAD_ERROR;
> +			}
> +
>  			switch (type) {
>  			case IMAGE_REL_BASED_ABSOLUTE:
>  				break;
> @@ -722,7 +728,8 @@ efi_status_t efi_load_pe(struct efi_loaded_image_obj *handle,
>  
>  	/* Run through relocations */
>  	if (efi_loader_relocate(rel, rel_size, efi_reloc,
> -				(unsigned long)image_base) != EFI_SUCCESS) {
> +				(unsigned long)image_base,
> +				virt_size) != EFI_SUCCESS) {
>  		efi_free_pages((uintptr_t) efi_reloc,
>  			       (virt_size + EFI_PAGE_MASK) >> EFI_PAGE_SHIFT);
>  		ret = EFI_LOAD_ERROR;

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



