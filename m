Delivery-date: Mon, 02 Jun 2025 14:15:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM44q-002xPd-06
	for lore@lore.pengutronix.de;
	Mon, 02 Jun 2025 14:15:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM44p-0007LQ-Aw
	for lore@pengutronix.de; Mon, 02 Jun 2025 14:15:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0qDznuPbP8SZog8qYhON06h5FLTfxghLJmXErcDs4UA=; b=yMKhZ8FySTatEzhCr/8YEYp+/v
	2zwgJ2WhrT+Lag93usj5L4L2kRLCFVOmsHi455CB2yOhil6iwr3JV2dSpXPC307tiHt5hzDCVd4oo
	/QBe25uSvRfzet8Ew9aB30SzyeGWYYRNr3acdqRwFyCkvz4M7AZSW5D5K4D8iZCjfle59F+E8veWX
	7EvXdeZJRcScaG+cdAQ8HMYHO7qJBdJoe8WnssHCeaqTZukJLcin/G7FsMglk0Z3BZc80INLI8T6S
	i0dY+V48WZ9ZKnAd5mNkDD0gbQHsliCJJGvddcBc7o/QatnFA2lkEobF3W+ZIJrhwWalqjnXGahWl
	HE+MaSwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM44J-00000007L4V-32MK;
	Mon, 02 Jun 2025 12:15:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM42U-00000007KxY-3nA7
	for barebox@lists.infradead.org;
	Mon, 02 Jun 2025 12:13:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uM42S-0006Vo-Qb; Mon, 02 Jun 2025 14:13:12 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uM42S-001S7r-24;
	Mon, 02 Jun 2025 14:13:12 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uM42S-006dxV-1h;
	Mon, 02 Jun 2025 14:13:12 +0200
Date: Mon, 2 Jun 2025 14:13:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@barebox.org>
Cc: barebox@lists.infradead.org
Message-ID: <aD2VWAhkaVs9txjY@pengutronix.de>
References: <20250527212300.575031-1-a.fatoum@barebox.org>
 <20250527212300.575031-8-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250527212300.575031-8-a.fatoum@barebox.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250602_051314_944691_812CC0F1 
X-CRM114-Status: GOOD (  23.69  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 07/15] efi: types: implement
 efi_phys_to_virt/efi_virt_to_phys helpers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, May 27, 2025 at 11:22:52PM +0200, Ahmad Fatoum wrote:
> From: Ahmad Fatoum <ahmad@a3f.at>
> 
> We shouldn't have any physical addresses exceeding 32-bit on 64-bit
> systems,

Why? Aren't 64bit physical addresses normal on 64bit systems?

> especially as barebox doesn't implement ARM32 LPAE.

This patch doesn't seem to be Arm specific, so why mention ARM32 LPAE
here?

I think I am missing something here.

Sascha

> 
> Add helpers to convert between the types to be able to drop casts and
> checks in the code.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
> ---
>  include/efi/types.h | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
> 
> diff --git a/include/efi/types.h b/include/efi/types.h
> index c845d08d62b6..85aaf32f8f1d 100644
> --- a/include/efi/types.h
> +++ b/include/efi/types.h
> @@ -2,7 +2,11 @@
>  #ifndef _EFI_TYPES_H_
>  #define _EFI_TYPES_H_
>  
> +#ifndef __ASSEMBLY__
> +
>  #include <linux/types.h>
> +#include <linux/limits.h>
> +#include <linux/stddef.h>
>  #include <linux/compiler.h>
>  #include <linux/uuid.h>
>  
> @@ -65,4 +69,17 @@ union efi_ip_address {
>  	struct efi_ipv6_address v6;
>  };
>  
> +static inline void *efi_phys_to_virt(efi_physical_addr_t addr)
> +{
> +	if (addr > UINTPTR_MAX)
> +		__builtin_trap();
> +
> +	return (void *)(uintptr_t)addr;
> +}
> +
> +static inline efi_physical_addr_t efi_virt_to_phys(const void *addr)
> +{
> +	return (uintptr_t)addr;
> +}
> +
>  #endif
> -- 
> 2.39.5
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


