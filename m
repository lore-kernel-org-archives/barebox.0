Delivery-date: Tue, 04 Oct 2022 09:55:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ofcmV-005KxC-QW
	for lore@lore.pengutronix.de; Tue, 04 Oct 2022 09:55:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ofcmU-0006PC-GJ
	for lore@pengutronix.de; Tue, 04 Oct 2022 09:55:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ixcwzdq5FJY6Vqg3MSCRghQbDn/r3OwNpXqjznDCQ7Q=; b=F2gWi+Z0Pow4gsOVNxEPvQcIRx
	2LH0BoXz1f/eHonQiUqCLfRuPjS3LhGkB5ZBUDnLY4dEBpGWLFsg+1ZrXhBbwIvJirx1KfyFpGnEX
	CcsCOthPHoqth2cwRsYwe9IUBM99P/f5WRjJAApUQgrZ9+BQE64uDlJZ96k0iUR21zGZ6sFixHpRh
	TqO4WIKO3Mi3Q547aD3hR2+6/iACcc9vKT5rPvmWflvPxR7ypTRGeDNYCmCir39727LD/nRMPNYNV
	GejulHeQ5phAAXG11dCxJRYkxfsWdbn/MP06UAHV/7dqQsSisOuFyatBa7ndmEd7jgZvifIqmv9f6
	eLax1+Qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofckw-008pTi-Gk; Tue, 04 Oct 2022 07:54:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofckr-008pSM-Mx
	for barebox@lists.infradead.org; Tue, 04 Oct 2022 07:54:18 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1ofcko-00062N-IH; Tue, 04 Oct 2022 09:54:14 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1ofcko-00057V-BP; Tue, 04 Oct 2022 09:54:14 +0200
Date: Tue, 4 Oct 2022 09:54:14 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Johannes Zink <j.zink@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221004075414.y6wm4sb4qqocfww7@pengutronix.de>
References: <20220930133702.518949-1-j.zink@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220930133702.518949-1-j.zink@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221004_005417_771092_EA987DAA 
X-CRM114-Status: GOOD (  20.25  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] ARM: i.MX7: enable caches when booted over USB
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 22-09-30, Johannes Zink wrote:
> From: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> BootROM on the i.MX7 doesn't set the SMP bit when booted
> over serial download. This leads to vastly worse performance
> when doing memory-heavy operations in a USB-booted system,
> as the caches are not utilized. Example running md5sum over
> a 25M image in ramfs:
> 
>   without patch: 10796ms
>   with    patch: 457ms
> 
> This issue isn't unique to the i.MX7, but exists for the i.MX6UL as
> well, which also has the Cortex-A7 as CPU. Like with
> imx6ul_cpu_lowlevel_init(), adapt imx7_cpu_lowlevel_init() to avoid this
> slow down.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> Signed-off-by: Johannes Zink <j.zink@pengutronix.de>
> ---
>  arch/arm/mach-imx/cpu_init.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mach-imx/cpu_init.c b/arch/arm/mach-imx/cpu_init.c
> index ea36215419..ede2076102 100644
> --- a/arch/arm/mach-imx/cpu_init.c
> +++ b/arch/arm/mach-imx/cpu_init.c
> @@ -49,7 +49,7 @@ void imx6ul_cpu_lowlevel_init(void)
>  
>  void imx7_cpu_lowlevel_init(void)
>  {
> -	arm_cpu_lowlevel_init();
> +	cortex_a7_lowlevel_init();

Out of curiosity, arm_cpu_lowlevel_init() does a lot more than
cortex_a7_lowlevel_init() e.g. cache invalidation. Is it save to only
call cortex_a7_lowlevel_init() here?

Regards,
  Marco

>  	imx_cpu_timer_init(IOMEM(MX7_SYSCNT_CTRL_BASE_ADDR));
>  }
>  
> -- 
> 2.30.2
> 
> 
> 


