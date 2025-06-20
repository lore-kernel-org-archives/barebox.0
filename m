Delivery-date: Fri, 20 Jun 2025 14:59:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uSbKp-009HlK-0s
	for lore@lore.pengutronix.de;
	Fri, 20 Jun 2025 14:59:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uSbKo-0005qp-IB
	for lore@pengutronix.de; Fri, 20 Jun 2025 14:59:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nEu/o6tI/BWDrVYO6jNnU2W7UoECwbOzXPV7kNIZFg8=; b=qxscPUi2Z9k5n2gw6HUFr5Z06r
	reZMWzewBvOSrk5CcXMDmbGSnatSNq42Wl/X935ispHWdDGIANS/1uWWxUO7B+wus+0J3rHSGFiSW
	KacOG367hXixNvZ7BuzkyBqxJ2OjXBrdGMyOwyA3en32QIaI6hPp1himL7RBwVukiGxf6TSuaNEv2
	wmFRscuBVxzME2z31HK0rytrVhuS7USy3LcmIoEvl92B/iMgyZgjy7t0NgzbQ2rPg8xEipN10OdUR
	CNPTSNYgnk4d1aNHPTfZEArvc8vf3eSqxTFCdKlHqqGJXUoWtzPkjQWnEFALxCGaU8mi67fV6PhEg
	bAz70mOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSbKG-0000000FdBG-2PNg;
	Fri, 20 Jun 2025 12:58:36 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSb84-0000000FbBP-3iXx
	for barebox@bombadil.infradead.org;
	Fri, 20 Jun 2025 12:46:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=nEu/o6tI/BWDrVYO6jNnU2W7UoECwbOzXPV7kNIZFg8=; b=mFBckjhMN5NrfIE+gkJcdfbhMM
	NDKMGl3dytGHt+1I2tToGBWgIDt3DgCzOaxY0QXLoBZkRe/a+KgiYOSudRatcRQjRLhH7LWj5jVEp
	mZ6vj/FeO8OyciWhZVjVtT/BhZ7twqmRzyx6MRdFmGGRrcOdUUab1kx5KEnXOxgxjv22QhHBCDCkh
	BdeXR4x/2FMoxsla5hpyMsQxpXJVyRUsXrGLxNMtaJPI2O+6Gy5YeKyWp1C0SSF2EQTggCPpahiA8
	ab4FS1e/vJlU5i/ZyK1R20zLfCFV+22rtTlzp/vQsIiedfOanTWRLYqdSsitN+1GQ5F7M3Kmj+LgL
	m+9MGjqA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSb82-00000004jYm-1OUS
	for barebox@lists.infradead.org;
	Fri, 20 Jun 2025 12:46:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uSb81-0007Gv-0W; Fri, 20 Jun 2025 14:45:57 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uSb80-004Snr-2e;
	Fri, 20 Jun 2025 14:45:56 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uSb80-007NlD-2G;
	Fri, 20 Jun 2025 14:45:56 +0200
Date: Fri, 20 Jun 2025 14:45:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@barebox.org>
Cc: barebox@lists.infradead.org
Message-ID: <aFVYBJikCmjGpupI@pengutronix.de>
References: <20250618123642.1432610-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250618123642.1432610-1-a.fatoum@barebox.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250620_134558_517753_BC0AC1F4 
X-CRM114-Status: GOOD (  29.61  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] mmu: explicitly map executable non-SDRAM regions with
 MAP_CODE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Jun 18, 2025 at 02:36:42PM +0200, Ahmad Fatoum wrote:
> So far we have been setting eXecute Never on MAP_UNCACHED regions and
> left it out for the default MAP_CACHED region.
> 
> We have at least three places, which depend on this to remap non-SDRAM
> regions executable, so ROM code or newly uploaded code can be run.
> 
> Switch them over to use a new MAP_CODE mapping type. For now, this is
> equivalent to MAP_CACHED, but with the addition of W^X support in
> barebox, this will be required to avoid a prefetch abort when MMU
> attributes are used.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
> ---
> Sascha, I think this should be ordered before your MMU patches to avoid
> the known regressions. Let's see what else there is. :)
> ---
>  arch/arm/mach-imx/romapi.c | 3 ++-
>  drivers/firmware/socfpga.c | 3 ++-
>  drivers/hab/habv4.c        | 2 +-
>  include/mmu.h              | 1 +
>  4 files changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/romapi.c b/arch/arm/mach-imx/romapi.c
> index 10af42f28a76..a4143d372ae8 100644
> --- a/arch/arm/mach-imx/romapi.c
> +++ b/arch/arm/mach-imx/romapi.c
> @@ -299,7 +299,8 @@ void imx93_bootsource(void)
>  		goto out;
>  	}
>  
> -	arch_remap_range((void *)rom.start, rom.start, resource_size(&rom), MAP_CACHED);
> +	/* TODO: restore uncached mapping once we no longer need this? */
> +	arch_remap_range((void *)rom.start, rom.start, resource_size(&rom), MAP_CODE);
>  
>  	OPTIMIZER_HIDE_VAR(rom_api);
>  
> diff --git a/drivers/firmware/socfpga.c b/drivers/firmware/socfpga.c
> index 0f7d11abb588..4b10ca009798 100644
> --- a/drivers/firmware/socfpga.c
> +++ b/drivers/firmware/socfpga.c
> @@ -353,7 +353,8 @@ static int socfpga_fpgamgr_program_finish(struct firmware_handler *fh)
>  		return status;
>  	}
>  
> -	remap_range((void *)CYCLONE5_OCRAM_ADDRESS, PAGE_SIZE, MAP_CACHED);
> +	/* TODO: restore uncached mapping once we no longer need this? */
> +	remap_range((void *)CYCLONE5_OCRAM_ADDRESS, PAGE_SIZE, MAP_CODE);

This is done before the code is copied to this page. I moved it after
the fncpy call to avoid writing to readonly memory.

While at it I also added the remapping to MAP_UNCACHED.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


