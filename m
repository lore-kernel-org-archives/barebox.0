Delivery-date: Mon, 07 Jun 2021 09:41:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lq9sn-0001FB-5X
	for lore@lore.pengutronix.de; Mon, 07 Jun 2021 09:41:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lq9si-00067Y-Lx
	for lore@pengutronix.de; Mon, 07 Jun 2021 09:41:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LKTXpSboCJxVfXM7WHX/4f6QSwLDJwV7stJY0MVJN5g=; b=HkqrkCJvTILHLgKCFgr6aXx3XR
	71CnV00vJXVXu/7HwXG9oMW1dhcQHItpl3j6aiGrObQ75QN8qEPcKQe6xG+4Yfv03RXkG9ZODF+aH
	xpb0Qoo74y0NO7JaA+ZwVO3dl0+qnWQh0vvT7VAbmbyyNyv4xvQVPsT8coEupl3vXhOF1560ryMh2
	Wb4sgdVD6VUtFFTGmz17wxjMLpc7IEYDM3dHAeMUdKRC4qQpYzLZA9KG68i6fWEmrWbU3rYMPkrfv
	29KGR4T0nUiA9vAVujdD0fR/IK/BA3CzLDXSytqjmWBWZmtgLG0W+GaDX+RcAbbCBHiLCJfcp7KIj
	zU+RpQuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lq9rD-0026c3-67; Mon, 07 Jun 2021 07:39:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lq9r4-0026b1-Uk
 for barebox@lists.infradead.org; Mon, 07 Jun 2021 07:39:30 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lq9r3-0005nG-G9; Mon, 07 Jun 2021 09:39:25 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lq9r3-0000zV-6g; Mon, 07 Jun 2021 09:39:25 +0200
Date: Mon, 7 Jun 2021 09:39:25 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210607073925.GF26174@pengutronix.de>
References: <20210531073821.15257-1-a.fatoum@pengutronix.de>
 <20210531073821.15257-12-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210531073821.15257-12-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:38:25 up 109 days, 11:02, 113 users,  load average: 1.34, 0.98,
 0.62
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210607_003927_017489_88F84890 
X-CRM114-Status: GOOD (  23.96  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 11/20] dma: support marking SRAM for coherent DMA use
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, May 31, 2021 at 09:38:12AM +0200, Ahmad Fatoum wrote:
> The RISC-V architecture allows overriding the dma_alloc_coherent and
> dma_free_coherent. Allow this to be controlled by device tree.
> 
> Cache-coherent SoCs won't need this, but incoherent ones that have
> uncached regions can register them here.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/Kconfig              |   4 ++
>  common/Makefile             |   3 +-
>  drivers/dma/Kconfig         |   6 ++
>  drivers/dma/Makefile        |   1 +
>  drivers/dma/coherent-pool.c | 120 ++++++++++++++++++++++++++++++++++++
>  5 files changed, 133 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/dma/coherent-pool.c
> 
> diff --git a/common/Kconfig b/common/Kconfig
> index ce349d4ebbf6..dbbcbb946fff 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -303,6 +303,9 @@ config EXPERIMENTAL
>  	bool
>  	prompt "Prompt for experimental code"
>  
> +config TLSF
> +	bool
> +
>  choice
>  	prompt "malloc implementation"
>  
> @@ -311,6 +314,7 @@ config MALLOC_DLMALLOC
>  
>  config MALLOC_TLSF
>  	bool "tlsf"
> +	select TLSF
>  
>  config MALLOC_DUMMY
>  	bool "dummy malloc"
> diff --git a/common/Makefile b/common/Makefile
> index 382a4f661f67..0777d2030c99 100644
> --- a/common/Makefile
> +++ b/common/Makefile
> @@ -40,7 +40,8 @@ obj-$(CONFIG_GLOBALVAR)		+= globalvar.o
>  obj-$(CONFIG_GREGORIAN_CALENDER) += date.o
>  obj-$(CONFIG_KALLSYMS)		+= kallsyms.o
>  obj-$(CONFIG_MALLOC_DLMALLOC)	+= dlmalloc.o
> -obj-$(CONFIG_MALLOC_TLSF)	+= tlsf_malloc.o tlsf.o calloc.o
> +obj-$(CONFIG_TLSF)		+= tlsf.o
> +obj-$(CONFIG_MALLOC_TLSF)	+= tlsf_malloc.o calloc.o
>  KASAN_SANITIZE_tlsf.o := n
>  obj-$(CONFIG_MALLOC_DUMMY)	+= dummy_malloc.o calloc.o
>  obj-$(CONFIG_MEMINFO)		+= meminfo.o
> diff --git a/drivers/dma/Kconfig b/drivers/dma/Kconfig
> index c75fc8b9811f..6bc915585fbe 100644
> --- a/drivers/dma/Kconfig
> +++ b/drivers/dma/Kconfig
> @@ -1,5 +1,11 @@
>  menu "DMA support"
>  
> +config DMA_COHERENT_POOLS
> +	bool
> +	depends on RISCV
> +	select TLSF
> +	imply SRAM

This symbol is invisible and selected when needed. We shouldn't need
this "depends on RISCV"

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

