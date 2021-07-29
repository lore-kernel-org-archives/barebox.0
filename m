Delivery-date: Thu, 29 Jul 2021 12:02:25 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m92rx-0007ae-G2
	for lore@lore.pengutronix.de; Thu, 29 Jul 2021 12:02:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m92rw-0001ml-GD
	for lore@pengutronix.de; Thu, 29 Jul 2021 12:02:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rdb/lDuCuY9mZCD6iAiapfal1oduenyq9MwiW/Xw7Mo=; b=LnRDDXj6u7OFiPMEs3dhPPBY35
	FyjDPFXQpzx9CTA7MTS79dWq58Ev89HB9VdTyVHh4UxQf92uCD7V0fLJfj6vma0ISEa4jkDVUVKSk
	J62Cc9hXcN98ZCeSn9ovqJSGbd9D5VTCtEOwq/yGdrDsLPTscUdI5disvNSD6vj5h5aBjCF+Sk+44
	+o4uxHJZOz5kmECUVc3duF3/BGMNIbazSPIUcCEfC7bngL8/zSmGOyg20LlNoRVbc6LErzrJweFtn
	9bN4F+kAICsoUQ8sGrQx6rR9VzDP1Uf7ggO4VCbUu1mqm6ZjravEIyLf/4uxMtzkI8MLrjSkOGGJg
	HYT8zbwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m92qc-003lGp-61; Thu, 29 Jul 2021 10:01:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m92qW-003lFn-0b
 for barebox@lists.infradead.org; Thu, 29 Jul 2021 10:00:57 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1m92qU-0001XV-La; Thu, 29 Jul 2021 12:00:54 +0200
To: Renaud Barbier <renaud.barbier@abaco.com>, barebox@lists.infradead.org
References: <1627476428-16318-1-git-send-email-renaud.barbier@abaco.com>
 <1627476428-16318-3-git-send-email-renaud.barbier@abaco.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <9c9768c8-a44a-9bd4-ee66-730702a722f6@pengutronix.de>
Date: Thu, 29 Jul 2021 12:00:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <1627476428-16318-3-git-send-email-renaud.barbier@abaco.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210729_030056_119594_4ED3F90B 
X-CRM114-Status: GOOD (  22.86  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/4] arm: 64-bit device specific operation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 28.07.21 14:47, Renaud Barbier wrote:
> In preparation for the introduction of the NXP FSL IFC
> nand driver, add memcpy_ directional I/O operation.
> 
> Code based on NXP Linux support:
> git://source.codeaurora.org/external/qoriq/qoriq-components/linux

barebox next branch already contains cbd23110fca5 ("ARM64: Implement mem*_*io()"),
so I think you can drop this patch here.

> 
> Signed-off-by: Renaud Barbier <renaud.barbier@abaco.com>
> ---
>  arch/arm/lib64/Makefile |  2 +-
>  arch/arm/lib64/io.c     | 98 +++++++++++++++++++++++++++++++++++++++++
>  2 files changed, 99 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm/lib64/io.c
> 
> diff --git a/arch/arm/lib64/Makefile b/arch/arm/lib64/Makefile
> index 69cb3d8ea1..591727c160 100644
> --- a/arch/arm/lib64/Makefile
> +++ b/arch/arm/lib64/Makefile
> @@ -1,4 +1,4 @@
> -obj-y += stacktrace.o
> +obj-y += stacktrace.o io.o
>  obj-$(CONFIG_ARM_LINUX)	+= armlinux.o
>  obj-y	+= div0.o
>  obj-$(CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS)	+= memcpy.o
> diff --git a/arch/arm/lib64/io.c b/arch/arm/lib64/io.c
> new file mode 100644
> index 0000000000..693cda42b0
> --- /dev/null
> +++ b/arch/arm/lib64/io.c
> @@ -0,0 +1,98 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Based on arch/arm/kernel/io.c
> + *
> + * Copyright (C) 2012 ARM Ltd.
> + */
> +
> +#include <module.h>
> +#include <linux/kernel.h>
> +#include <linux/types.h>
> +#include <io.h>
> +
> +/*
> + * Copy data from IO memory space to "real" memory space.
> + */
> +void memcpy_fromio(void *to, const volatile void __iomem *from, size_t count)
> +{
> +	while (count && !IS_ALIGNED((unsigned long)from, 8)) {
> +		*(u8 *)to = __raw_readb(from);
> +		from++;
> +		to++;
> +		count--;
> +	}
> +
> +	while (count >= 8) {
> +		*(u64 *)to = __raw_readq(from);
> +		from += 8;
> +		to += 8;
> +		count -= 8;
> +	}
> +
> +	while (count) {
> +		*(u8 *)to = __raw_readb(from);
> +		from++;
> +		to++;
> +		count--;
> +	}
> +}
> +EXPORT_SYMBOL(memcpy_fromio);
> +
> +/*
> + * Copy data from "real" memory space to IO memory space.
> + */
> +void memcpy_toio(volatile void __iomem *to, const void *from, size_t count)
> +{
> +	while (count && !IS_ALIGNED((unsigned long)to, 8)) {
> +		__raw_writeb(*(u8 *)from, to);
> +		from++;
> +		to++;
> +		count--;
> +	}
> +
> +	while (count >= 8) {
> +		__raw_writeq(*(u64 *)from, to);
> +		from += 8;
> +		to += 8;
> +		count -= 8;
> +	}
> +
> +	while (count) {
> +		__raw_writeb(*(u8 *)from, to);
> +		from++;
> +		to++;
> +		count--;
> +	}
> +}
> +EXPORT_SYMBOL(memcpy_toio);
> +
> +/*
> + * "memset" on IO memory space.
> + */
> +void memset_io(volatile void __iomem *dst, int c, size_t count)
> +{
> +	u64 qc = (u8)c;
> +
> +	qc |= qc << 8;
> +	qc |= qc << 16;
> +	qc |= qc << 32;
> +
> +	while (count && !IS_ALIGNED((unsigned long)dst, 8)) {
> +		__raw_writeb(c, dst);
> +		dst++;
> +		count--;
> +	}
> +
> +	while (count >= 8) {
> +		__raw_writeq(qc, dst);
> +		dst += 8;
> +		count -= 8;
> +	}
> +
> +	while (count) {
> +		__raw_writeb(c, dst);
> +		dst++;
> +		count--;
> +	}
> +}
> +EXPORT_SYMBOL(memset_io);
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

