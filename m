Delivery-date: Tue, 14 Apr 2026 10:42:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCZLd-00C181-2p
	for lore@lore.pengutronix.de;
	Tue, 14 Apr 2026 10:42:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCZLd-0007cq-8y
	for lore@pengutronix.de; Tue, 14 Apr 2026 10:42:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FRjMXm0eWG7SBGNayOIPzwBqsCws5VUT/uCbc/lXvlI=; b=e6zcLW/16oYBxLUseyYWoaAGVE
	kIT8h7gWPAJ//BuOF52zcJRuVqfhTlMzvt6SQknfFpthyz3+vuhejzTqlkN8nXINHTRmf7F5gHbVx
	Rl9xpBdWFXvHmLu6TT2kYRmdRnF0zxloxKI8jDgs0lafJZt9IvN0hbyGsvOwMZ9guPFus9s3dDWJo
	hWrraaC+OYpYeF4KezMWzHWBS+BxQMeY0XMm2vGxxrs2rTUKrxC7TXxKC8xNfpEIokip1X2YkbSJB
	Fh30fUOwjoS2/xqpTARigTa6vtHj0vdk5V8mlOfGZGVjGUFEJTTmJ3YmBtclcxfNkfrgqJyXgxgjh
	02rU1G8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCZLF-0000000H0Yh-2hKI;
	Tue, 14 Apr 2026 08:41:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCZLC-0000000H0Y7-1gs1
	for barebox@lists.infradead.org;
	Tue, 14 Apr 2026 08:41:52 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wCZLA-0007XS-Qd; Tue, 14 Apr 2026 10:41:48 +0200
Message-ID: <dfa2757b-da05-4783-9661-f08ed2521286@pengutronix.de>
Date: Tue, 14 Apr 2026 10:41:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
Cc: Sascha Hauer <sascha@saschahauer.de>,
 "Claude Opus 4.6 (1M context)" <noreply@anthropic.com>
References: <20260413123646.3552086-1-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260413123646.3552086-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260414_014150_464698_1AFEEC13 
X-CRM114-Status: GOOD (  20.61  )
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
Subject: Re: [PATCH 1/4] efi: loader: fix integer overflow in PE virt_size
 calculation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 4/13/26 2:36 PM, Sascha Hauer wrote:
> From: Sascha Hauer <sascha@saschahauer.de>
> 
> sec->VirtualAddress and section_size() are both u32. Their addition can
> wrap on overflow before being widened to unsigned long by max_t. For
> example VirtualAddress=0xFFFF0000 + VirtualSize=0x20000 wraps to
> 0x10000, producing an undersized allocation. The subsequent memset and
> memcpy to efi_reloc + sec->VirtualAddress then write far past the
> allocated buffer.
> 
> On ARM32 (which selects HAVE_EFI_LOADER), unsigned long is also 32 bits,
> so a section layout that overflows u32 cannot be mapped in the address
> space at all. Use check_add_overflow() to detect the wraparound and
> reject the PE image as corrupt.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> 
> Co-Authored-By: Claude Opus 4.6 (1M context) <noreply@anthropic.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  efi/loader/pe.c | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)
> 
> diff --git a/efi/loader/pe.c b/efi/loader/pe.c
> index 3c30211f10..7c5aaa1f91 100644
> --- a/efi/loader/pe.c
> +++ b/efi/loader/pe.c
> @@ -23,6 +23,7 @@
>  #include <pe.h>
>  #include <qsort.h>
>  #include <linux/err.h>
> +#include <linux/overflow.h>
>  
>  static int machines[] = {
>  #if defined(__aarch64__)
> @@ -636,9 +637,15 @@ efi_status_t efi_load_pe(struct efi_loaded_image_obj *handle,
>  	/* Calculate upper virtual address boundary */
>  	for (i = num_sections - 1; i >= 0; i--) {
>  		IMAGE_SECTION_HEADER *sec = &sections[i];
> +		unsigned long vs;
>  
> -		virt_size = max_t(unsigned long, virt_size,
> -				  sec->VirtualAddress + section_size(sec));
> +		if (check_add_overflow((unsigned long)sec->VirtualAddress,
> +				       (unsigned long)section_size(sec), &vs)) {
> +			pr_err("Section %d virtual address overflow\n", i);
> +			return EFI_LOAD_ERROR;
> +		}
> +
> +		virt_size = max(virt_size, vs);
>  	}
>  
>  	/* Read 32/64bit specific header bits */

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



