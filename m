Delivery-date: Thu, 13 Apr 2023 09:27:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pmrMx-001xiH-TY
	for lore@lore.pengutronix.de; Thu, 13 Apr 2023 09:27:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pmrMx-0001lY-Cx
	for lore@pengutronix.de; Thu, 13 Apr 2023 09:27:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QIlNoWoF0qHZpGIIF6LtOrDJy0aXa7eRK25Amc3mUvo=; b=OEBv80phQU9FCQ91BOl8pNJwwq
	PX2hm+vB07csPgDprx1aU8pkWxVm5HScsGy7AmiR2LZPUPE7FkcYGhBb9pTrXNiLtSdVsuPGVsqQS
	Ul/EYQglvJKBe+ftlpTL8KrjV/ALrqSwAAQFfSnLOfCEluC/sRSV1IVeIBuN7xk11kxU/yumL5bqx
	fuC5vyqSJHBjZnVBCjYhujmFj9W5lM0UcItPHbCwA5KMglJi+2fn7IIm9h2MmbnFhZ7vxfqtpCkHR
	EwKff+86w+u3HpT/h/f3x913wyWjP4CKkC52QxZL6YwD1Nkr3BZWQ96+a47zPKfKRH8g0Mvo+VtiX
	XWUQkslQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmrLb-005HCV-2u;
	Thu, 13 Apr 2023 07:26:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmrLZ-005HBa-04
	for barebox@lists.infradead.org;
	Thu, 13 Apr 2023 07:26:22 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pmrLX-0001aO-GM; Thu, 13 Apr 2023 09:26:19 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pmrLX-0002AH-8i; Thu, 13 Apr 2023 09:26:19 +0200
Date: Thu, 13 Apr 2023 09:26:19 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230413072619.GL15436@pengutronix.de>
References: <20230412105810.GK15436@pengutronix.de>
 <20230412112232.422198-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230412112232.422198-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230413_002621_054848_60A05E84 
X-CRM114-Status: GOOD (  20.39  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fixup! scripts: gen-dtb-s: reference OF IMD entries
 automatically
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Apr 12, 2023 at 01:22:32PM +0200, Ahmad Fatoum wrote:
> Apparently, .dword is not supported for 32-bit ARM builds.
> 
> Let's define ASM_PTR that expands to either .dword or .word and use
> that instead.
> 
> The definition is taken from RISCV_PTR in arch/riscv/include/asm/asm.h.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> Sascha, how about this?
> ---
>  include/asm-generic/pointer.h | 30 ++++++++++++++++++++++++++++++
>  scripts/gen-dtb-s             |  5 +++--
>  2 files changed, 33 insertions(+), 2 deletions(-)
>  create mode 100644 include/asm-generic/pointer.h
> 
> diff --git a/include/asm-generic/pointer.h b/include/asm-generic/pointer.h
> new file mode 100644
> index 000000000000..a0ea084b983c
> --- /dev/null
> +++ b/include/asm-generic/pointer.h
> @@ -0,0 +1,30 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +
> +#ifndef __ASM_GENERIC_PTR_H___
> +#define __ASM_GENERIC_PTR_H___
> +
> +#if __SIZEOF_POINTER__ == 8
> +#ifdef __ASSEMBLY__
> +#define ASM_PTR		.dword
> +#define ASM_SZPTR	8
> +#define ASM_LGPTR	3
> +#else
> +#define ASM_PTR		".dword"

We're still not there. .dword is not known by x86. I changed to .quad
now.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


