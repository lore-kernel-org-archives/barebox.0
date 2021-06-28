Delivery-date: Mon, 28 Jun 2021 13:29:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxpST-0006bR-82
	for lore@lore.pengutronix.de; Mon, 28 Jun 2021 13:29:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxpSS-0003du-8X
	for lore@pengutronix.de; Mon, 28 Jun 2021 13:29:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VoJLx2kjEmU4YGCywIs0FeK7rAK6wBBBP10VZfKYD2Y=; b=pzxTsflz9wyoOvxDjTxYCaXQh2
	rnVycAkpKdHnGy8X9oQ48C/FFc8HR30kY9rA0XOvlYOBtMOmR86q8ohJGYfIf58uKnVXq38MesNnb
	0MsFQu1qJva+DxuoHqULTOZqq0XIkWMPyvR72dg3M3S+y5CG50sxvfYBMeS86ZytMhAg87h0QQRVD
	77K/xRTUBufqDZpPscmcGu/JzTNynFZKnFYOc7DzSB6KzFnTRCkYN+1vqrnjDF25QWe0roLoOyNF4
	JdkwJC8zDXpJK/fIR60qnEuVf5ImZ3KHpv3Kuz2AFuuKWCzSb9DY0skoGHVF/UI9RrDWVSb6zuA3E
	oPs+QQKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lxpQx-007kka-5B; Mon, 28 Jun 2021 11:28:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lxpQs-007kkF-57
 for barebox@lists.infradead.org; Mon, 28 Jun 2021 11:28:07 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lxpQo-0003aq-B1; Mon, 28 Jun 2021 13:28:02 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lxpQo-0005GH-0l; Mon, 28 Jun 2021 13:28:02 +0200
Date: Mon, 28 Jun 2021 13:28:01 +0200
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20210628112801.GH9782@pengutronix.de>
References: <20210625085944.11260-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210625085944.11260-1-s.trumtrar@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 13:27:52 up 130 days, 14:51, 121 users,  load average: 0.07, 0.10,
 0.09
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210628_042806_239528_06DFA7FE 
X-CRM114-Status: GOOD (  32.22  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] firmware: socfpga: set APPLYCFG after loading bitstream
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jun 25, 2021 at 10:59:44AM +0200, Steffen Trumtrar wrote:
> To make changes to the SDRAM controller effective, the APPLYCFG bit must
> be set after programming the bitstream to the FPGA. This has to be done
> without any SDRAM usage. Therefore copy the function to execute to the
> OCRAM and execute it from there.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
> 
> Notes:
>     v1: Link: https://lore.barebox.org/20210618080939.15343-2-s.trumtrar@pengutronix.de
>     
>     Changes since v1:
>       - include feedback from Ahmad

Applied, thanks

Sascha

> 
>  .../mach-socfpga/include/mach/cyclone5-regs.h |  1 +
>  drivers/firmware/Makefile                     |  2 +-
>  drivers/firmware/socfpga.c                    | 21 +++++++++++++++++++
>  drivers/firmware/socfpga_sdr.S                | 20 ++++++++++++++++++
>  4 files changed, 43 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/firmware/socfpga_sdr.S
> 
> diff --git a/arch/arm/mach-socfpga/include/mach/cyclone5-regs.h b/arch/arm/mach-socfpga/include/mach/cyclone5-regs.h
> index e88daf718917..1a7d787a27bf 100644
> --- a/arch/arm/mach-socfpga/include/mach/cyclone5-regs.h
> +++ b/arch/arm/mach-socfpga/include/mach/cyclone5-regs.h
> @@ -18,5 +18,6 @@
>  #define CYCLONE5_SYSMGR_ADDRESS		0xffd08000
>  #define CYCLONE5_SCANMGR_ADDRESS	0xfff02000
>  #define CYCLONE5_SMP_TWD_ADDRESS	0xfffec600
> +#define CYCLONE5_OCRAM_ADDRESS		0xffff0000
>  
>  #endif /* __MACH_SOCFPGA_REGS_H */
> diff --git a/drivers/firmware/Makefile b/drivers/firmware/Makefile
> index b162b08b0a80..bbd2bcda9780 100644
> --- a/drivers/firmware/Makefile
> +++ b/drivers/firmware/Makefile
> @@ -1,3 +1,3 @@
>  obj-$(CONFIG_FIRMWARE_ALTERA_SERIAL) += altera_serial.o
> -obj-$(CONFIG_FIRMWARE_ALTERA_SOCFPGA) += socfpga.o
> +obj-$(CONFIG_FIRMWARE_ALTERA_SOCFPGA) += socfpga.o socfpga_sdr.o
>  obj-$(CONFIG_FIRMWARE_ZYNQMP_FPGA) += zynqmp-fpga.o
> diff --git a/drivers/firmware/socfpga.c b/drivers/firmware/socfpga.c
> index 61c2b02eca42..b16bd33de408 100644
> --- a/drivers/firmware/socfpga.c
> +++ b/drivers/firmware/socfpga.c
> @@ -39,6 +39,9 @@
>  #include <mach/cyclone5-reset-manager.h>
>  #include <mach/cyclone5-regs.h>
>  #include <mach/cyclone5-sdram.h>
> +#include <asm/fncpy.h>
> +#include <mmu.h>
> +#include <asm/cache.h>
>  
>  #define FPGAMGRREGS_STAT			0x0
>  #define FPGAMGRREGS_CTRL			0x4
> @@ -78,6 +81,10 @@
>  #define CDRATIO_x4	0x2
>  #define CDRATIO_x8	0x3
>  
> +extern void socfpga_sdram_apply_static_cfg(void __iomem *sdrctrlgrp);
> +extern void socfpga_sdram_apply_static_cfg_end(void *);
> +extern const u32 socfpga_sdram_apply_static_cfg_sz;
> +
>  struct fpgamgr {
>  	struct firmware_handler fh;
>  	struct device_d dev;
> @@ -345,6 +352,7 @@ static int socfpga_fpgamgr_program_finish(struct firmware_handler *fh)
>  {
>  	struct fpgamgr *mgr = container_of(fh, struct fpgamgr, fh);
>  	int status;
> +	void (*ocram_func)(void __iomem *ocram_base);
>  
>  	/* Ensure the FPGA entering config done */
>  	status = socfpga_fpgamgr_program_poll_cd(mgr);
> @@ -374,6 +382,19 @@ static int socfpga_fpgamgr_program_finish(struct firmware_handler *fh)
>  		return status;
>  	}
>  
> +	remap_range((void *)CYCLONE5_OCRAM_ADDRESS, PAGE_SIZE, MAP_CACHED);
> +
> +	dev_dbg(&mgr->dev, "Setting APPLYCFG bit...\n");
> +
> +	ocram_func = fncpy((void __iomem *)CYCLONE5_OCRAM_ADDRESS,
> +			   &socfpga_sdram_apply_static_cfg,
> +			   socfpga_sdram_apply_static_cfg_sz);
> +
> +	sync_caches_for_execution();
> +
> +	ocram_func((void __iomem *) (CYCLONE5_SDR_ADDRESS +
> +				     SDR_CTRLGRP_STATICCFG_ADDRESS));
> +
>  	return 0;
>  }
>  
> diff --git a/drivers/firmware/socfpga_sdr.S b/drivers/firmware/socfpga_sdr.S
> new file mode 100644
> index 000000000000..b895fb293cbd
> --- /dev/null
> +++ b/drivers/firmware/socfpga_sdr.S
> @@ -0,0 +1,20 @@
> +#include <linux/linkage.h>
> +
> +	.arch	armv7-a
> +	.arm
> +
> +/*
> + * r0 : sdram controller staticcfg
> + */
> +
> +ENTRY(socfpga_sdram_apply_static_cfg)
> +	push {ip,lr}
> +	ldr r1, [r0]
> +	orr r1, r1, #8
> +	str r1, [r0]
> +	pop {ip,pc}
> +	.align
> +ENDPROC(socfpga_sdram_apply_static_cfg)
> +
> +ENTRY(socfpga_sdram_apply_static_cfg_sz)
> +	.word . - socfpga_sdram_apply_static_cfg;
> -- 
> 2.30.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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

