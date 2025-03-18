Delivery-date: Tue, 18 Mar 2025 12:12:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuUrp-0010rT-2u
	for lore@lore.pengutronix.de;
	Tue, 18 Mar 2025 12:12:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuUro-0003xG-LD
	for lore@pengutronix.de; Tue, 18 Mar 2025 12:12:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cfyi3EQz/bj0XmCKBzFdAF//s2MCjrvXtlaDfpebOIc=; b=FZe2JfTOos/quc/G72WTtaYARh
	ptMZpQ32ihyu0T4wBRnuxYqcndGAxjWpXjxL51chi8aBcovklXsfV1iFjQiwoa9NM2mUlKMTcXOxp
	7dsWug7VtJTX0p7UErLwJTA5dfJXA8xkkjpjy9F/OxocQ11dDo+ecjCn2BcW8uS5DNPq682kL93eR
	BLud3LU6Z7YLjNB2qiWybIWe/siZX4xvMPTT/6AL9P4jvx1HAtKUECF/FDzJABNWCmXQLtF3HB0z0
	pPPvT0bImTG3FoeuufvY/AweEv0S994ui6bMJskSNMJW7R5xKylmCV6ol9uwulDO3anntVc3p7xDj
	pv/D4Tvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuUrM-00000005fGS-3b7t;
	Tue, 18 Mar 2025 11:11:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuUkO-00000005del-05wP
	for barebox@lists.infradead.org;
	Tue, 18 Mar 2025 11:04:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tuUkM-0002uS-CT; Tue, 18 Mar 2025 12:04:34 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tuUkL-000Pr5-2V;
	Tue, 18 Mar 2025 12:04:34 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tuUkM-0030A1-0G;
	Tue, 18 Mar 2025 12:04:34 +0100
Date: Tue, 18 Mar 2025 12:04:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Z9lTQlVUBnZUPm9q@pengutronix.de>
References: <20250318082507.419785-1-a.fatoum@pengutronix.de>
 <20250318082507.419785-3-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250318082507.419785-3-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_040436_060735_CC497451 
X-CRM114-Status: GOOD (  38.63  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/4] amba: support masking data abort during
 identification
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Mar 18, 2025 at 09:25:06AM +0100, Ahmad Fatoum wrote:
> Registration of an AMBA device requires reading its pid and cid
> registers after turning on the device. This is the first I/O done to the
> device and may end up crashing if the device tree doesn't describe
> the correct clock and power domains or if a previous boot stage
> should've enabled them, but didn't.
> 
> This is not a likely issue, but when it happens it crashes the system
> annoyingly early during device tree populating.
> 
> Add a symbol that masks the data abort exception around the
> identification code to turn the crash into an error message instead.

Do we need to make this optional? I could imagine I find out about the
existence of this option only after having traced the issue down to the
exact lines of code in which case I won't need the option anymore.

Sascha

> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/amba/Kconfig | 19 +++++++++++++++++++
>  drivers/amba/bus.c   | 12 +++++++++++-
>  2 files changed, 30 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/amba/Kconfig b/drivers/amba/Kconfig
> index 444d4ce7435c..be5e053f4b84 100644
> --- a/drivers/amba/Kconfig
> +++ b/drivers/amba/Kconfig
> @@ -1,3 +1,22 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>  config ARM_AMBA
>  	bool
> +
> +config ARM_AMBA_DABT_MASK
> +	bool
> +	prompt "Mask data abort while identifying AMBA devices" if COMPILE_TEST
> +	depends on ARM_AMBA && ARCH_HAS_DATA_ABORT_MASK
> +	help
> +	  Registration of an AMBA device requires reading its pid and cid
> +	  registers after turning on the device, which can involve enabling
> +	  clocks, deasserting resets and powering on power domains.
> +	  In some cases, these resources are not available to barebox running
> +	  in the normal world and thus need to be setup by a previous
> +	  stage bootloader running in the secure world.
> +	  If such setup doesn't happen, accessing devices may lead to
> +	  a data abort or complete system hang.
> +
> +	  As a workaround for the former case, this option can be enabled
> +	  to gracefully handle data aborts during readout of the PID/CID
> +	  registers. The proper solution is fixing your first stage
> +	  bootloader or allow barebox access to the missing resources.
> diff --git a/drivers/amba/bus.c b/drivers/amba/bus.c
> index 6463366fafc5..5ed8336e6124 100644
> --- a/drivers/amba/bus.c
> +++ b/drivers/amba/bus.c
> @@ -10,6 +10,7 @@
>  #include <linux/amba/bus.h>
>  #include <io.h>
>  #include <init.h>
> +#include <abort.h>
>  
>  #define to_amba_driver(d)	container_of(d, struct amba_driver, drv)
>  
> @@ -132,6 +133,9 @@ int amba_device_add(struct amba_device *dev)
>  	if (ret == 0) {
>  		u32 pid, cid;
>  
> +		if (IS_ENABLED(CONFIG_ARM_AMBA_DABT_MASK))
> +			data_abort_mask();
> +
>  		/*
>  		 * Read pid and cid based on size of resource
>  		 * they are located at end of region
> @@ -139,8 +143,14 @@ int amba_device_add(struct amba_device *dev)
>  		pid = amba_device_get_pid(tmp, size);
>  		cid = amba_device_get_cid(tmp, size);
>  
> -		if (cid == AMBA_CID)
> +		if (IS_ENABLED(CONFIG_ARM_AMBA_DABT_MASK) && data_abort_unmask()) {
> +			dev_err(amba_bustype.dev,
> +				"data abort during MMIO read of PID/CID for %pOF\n",
> +				dev->dev.of_node);
> +			ret = -EFAULT;
> +		} else if (cid == AMBA_CID) {
>  			dev->periphid = pid;
> +		}
>  
>  		if (!dev->periphid)
>  			ret = -ENODEV;
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


