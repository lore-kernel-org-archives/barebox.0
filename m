Delivery-date: Tue, 05 Aug 2025 07:43:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujASi-007Brl-20
	for lore@lore.pengutronix.de;
	Tue, 05 Aug 2025 07:43:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujASi-0003lQ-1z
	for lore@pengutronix.de; Tue, 05 Aug 2025 07:43:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=u9dPciYK0eVXoHlaw71jCQ1FIzLzjGoPOow7Lijtf2o=; b=tH19qfIN/a7lbsSp7K0yYI+MvM
	GsBZ3Mbyiiyj7ifrjys38Q38lRbLois7FtMLk2PJAACjCWcCLdgwuz4sH673ce6vt23ddAHsk2bHI
	7/R1gOkN5g4Qfhm7AFovJH6HZGhWNuQplU8vQRjyrHFaqBsyj/OdX9C+C6anCr4Vx6J8DKRB5A0lv
	OcODSw6rJtUxTJ33uy6v7JHBkHVtKNVZhGpHoPkAQheXW2NXC+mvK++0lJx5tQfog1bupxFEQ4qsS
	S3lQZ0RtU4VNq37VYxtwZXH4wZqoK6SUP6SiNdT66Zhl6f1BllQADDupbcvdrqwzF61D+juZwF1BQ
	EJkV+LMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujASB-0000000BpCo-2C2q;
	Tue, 05 Aug 2025 05:43:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujAS8-0000000BpCL-2Dw2
	for barebox@lists.infradead.org;
	Tue, 05 Aug 2025 05:43:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ujAS6-0003gv-Nj; Tue, 05 Aug 2025 07:43:10 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1ujAS6-00BzU8-1k;
	Tue, 05 Aug 2025 07:43:10 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1ujAS6-00A5sP-1M;
	Tue, 05 Aug 2025 07:43:10 +0200
Date: Tue, 5 Aug 2025 07:43:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@barebox.org>
Cc: barebox@lists.infradead.org, chalianis1@gmail.com
Message-ID: <aJGZ7jn-qGjkPxXo@pengutronix.de>
References: <20250730055743.922932-1-a.fatoum@barebox.org>
 <20250730055743.922932-2-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250730055743.922932-2-a.fatoum@barebox.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250804_224312_600847_4E55A97E 
X-CRM114-Status: GOOD (  20.79  )
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
Subject: Re: [PATCH 2/4] ARM64: configs: multi_v8: disable layerscape
 temporarily
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad,

On Wed, Jul 30, 2025 at 07:57:41AM +0200, Ahmad Fatoum wrote:
> With multi_v8, we build everything in a single build and that makes the
> layerscape PBLs exceed their hard limit of 64K failing the build.

This doesn't happen here. The biggest PBL I get here is the ls1046ardb
one with 58304 bytes. Are you using some other compiler than me?

The Layerscape PBLs for the other boards are much smaller because they
don't use a fixed SDRAM controller setup rather than detecting DIMMs via
SPD. Would it be enough to disable the LS1046ardb board?

Sascha

> 
> Until resolved, let's disable it from the defconfig. Users can still use
> the dedicated layerscape defconfigs.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
> ---
>  arch/arm/configs/multi_v8_defconfig | 5 -----
>  1 file changed, 5 deletions(-)
> 
> diff --git a/arch/arm/configs/multi_v8_defconfig b/arch/arm/configs/multi_v8_defconfig
> index a487d331d04e..5c295cd58269 100644
> --- a/arch/arm/configs/multi_v8_defconfig
> +++ b/arch/arm/configs/multi_v8_defconfig
> @@ -3,7 +3,6 @@ CONFIG_ARCH_BCM283X=y
>  CONFIG_ARCH_IMX=y
>  CONFIG_ARCH_K3=y
>  CONFIG_ARCH_SUNXI=y
> -CONFIG_ARCH_LAYERSCAPE=y
>  CONFIG_ARCH_ROCKCHIP=y
>  CONFIG_ARCH_ZYNQMP=y
>  CONFIG_MACH_RPI3=y
> @@ -28,9 +27,6 @@ CONFIG_MACH_ZII_IMX8MQ_DEV=y
>  CONFIG_MACH_PHYTEC_PHYCORE_IMX93=y
>  CONFIG_MACH_TQMA93XX=y
>  CONFIG_IMX_IIM=y
> -CONFIG_MACH_LS1028ARDB=y
> -CONFIG_MACH_LS1046ARDB=y
> -CONFIG_MACH_TQMLS1046A=y
>  CONFIG_MACH_BEAGLEPLAY=y
>  CONFIG_MACH_RK3568_EVB=y
>  CONFIG_MACH_RK3568_BPI_R2PRO=y
> @@ -258,7 +254,6 @@ CONFIG_REGULATOR_FIXED=y
>  CONFIG_REGULATOR_ARM_SCMI=y
>  CONFIG_REGULATOR_RK808=y
>  CONFIG_RESET_IMX7=y
> -CONFIG_PCI_LAYERSCAPE=y
>  CONFIG_PCI_ECAM_GENERIC=y
>  CONFIG_RTC_CLASS=y
>  CONFIG_RTC_DRV_DS1307=y
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


