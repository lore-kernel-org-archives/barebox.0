Delivery-date: Fri, 18 Jun 2021 10:56:53 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luAJ3-0000GV-Or
	for lore@lore.pengutronix.de; Fri, 18 Jun 2021 10:56:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luAJ2-0006md-RT
	for lore@pengutronix.de; Fri, 18 Jun 2021 10:56:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VRsWI5O4x+4mr7/In36qOUoasoFpzohgiGgcdZ5twAo=; b=ihmLc0nRv+HaTDbys8xoAlb1+v
	J9bM8rqFuEQJbZQLOcNrb+ojAoOsSEDEjoecV/r2hTwPlrB4KVYuZf1BILtN/KxDJ+BTrXA2I6FGs
	YM/QPm39ebl/I0bovJEpGDxkVUbS3EvhJDq/kdlW8bjJjDIBdp8lMBOdInCIeFwZBWWyPVxGKEntO
	WjVGFjX17SPMczrzaEY6HZTubJcrVr31OI9b7svX/8pluWDr+w3vr9xrFlzrTHS0XT+68L5MxYTUj
	U1453gs5TPC4C0ZmHbPNPOUnSCaCmbVViFkX5Zubj2Rhthx6YRLkFD8dpooTZR0YHz1ee1sxHggQM
	s3m90a5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luAHf-00DNw5-K2; Fri, 18 Jun 2021 08:55:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luAHM-00DNsK-Vn
 for barebox@lists.infradead.org; Fri, 18 Jun 2021 08:55:10 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1luAHL-0006Pm-Mi; Fri, 18 Jun 2021 10:55:07 +0200
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20210618080939.15343-1-s.trumtrar@pengutronix.de>
 <20210618080939.15343-2-s.trumtrar@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <60b84971-88b4-6629-c037-7ac7359d13f9@pengutronix.de>
Date: Fri, 18 Jun 2021 10:55:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <20210618080939.15343-2-s.trumtrar@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210618_015509_069237_3A79B8B7 
X-CRM114-Status: GOOD (  23.20  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] firmware: socfpga: set APPLYCFG after loading
 bitstream
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)



On 18.06.21 10:09, Steffen Trumtrar wrote:
> To make changes to the SDRAM controller effective, the APPLYCFG bit must
> be set after programming the bitstream to the FPGA. This has to be done
> without any SDRAM usage. Therefore copy the function to execute to the
> OCRAM and execute it from there.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---

> +extern void socfpga_sdram_apply_static_cfg(void __iomem *sdrctrlgrp);
> +extern void socfpga_sdram_apply_static_cfg_end(void *);
> +
>  struct fpgamgr {
>  	struct firmware_handler fh;
>  	struct device_d dev;
> @@ -353,6 +359,9 @@ static int fpgamgr_program_finish(struct firmware_handler *fh)
>  {
>  	struct fpgamgr *mgr = container_of(fh, struct fpgamgr, fh);
>  	int status;
> +	unsigned int func_size = &socfpga_sdram_apply_static_cfg_end -
> +				 &socfpga_sdram_apply_static_cfg;

This is wildly undefined. Kernel users of fncpy I looked at as well as the fncpy
documentation itself suggest doing the arithmetic in assembly instead. See below.

> +	void (*ocram_func)(void __iomem *ocram_base);
>  
>  	/* Ensure the FPGA entering config done */
>  	status = fpgamgr_program_poll_cd(mgr);
> @@ -382,6 +391,18 @@ static int fpgamgr_program_finish(struct firmware_handler *fh)
>  		return status;
>  	}
>  
> +	remap_range((void *)CYCLONE5_OCRAM_ADDRESS, PAGE_SIZE, MAP_CACHED);
> +
> +	dev_dbg(&mgr->dev, "Setting APPLYCFG bit...\n");
> +
> +	ocram_func = fncpy((void __iomem *)CYCLONE5_OCRAM_ADDRESS,
> +			   &socfpga_sdram_apply_static_cfg, func_size);
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
> index 000000000000..d634d6362722
> --- /dev/null
> +++ b/drivers/firmware/socfpga_sdr.S
> @@ -0,0 +1,17 @@
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
> +ENTRY(socfpga_sdram_apply_static_cfg_end)

Alternative:

ENDPROC(socfpga_sdram_apply_static_cfg)

ENTRY(socfpga_sdram_apply_static_sz)      
	.word . - socfpga_sdram_apply_static_cfg

And then size is accessible from C with
extern const u32 socfpga_sdram_apply_static_cfg_sz;

This makes for a clean disassembly and avoids the undefined
behavior above.

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

