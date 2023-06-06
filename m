Delivery-date: Tue, 06 Jun 2023 09:42:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6RL7-00CmSa-UB
	for lore@lore.pengutronix.de; Tue, 06 Jun 2023 09:42:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6RL4-00051m-T1
	for lore@pengutronix.de; Tue, 06 Jun 2023 09:42:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cIOnY+s+md7xmhdY4+KYOPaw2HyNHki9XH2cskF3URU=; b=m+b7R68zAe5yTAVWhjLHYWCBCR
	NyJo8LsohHdfHxbyWCdN7VZ8Xz2PJzyZ3c/cR26nDrfRp4WgyHkZQTpIW8VxNp9Kvc+WpEPxFf0v6
	0KclBq4p6ox4lo8D2Z7XtSAs30xcKsVkl/hZsfKeeT/gyFYz9M69kn7v4l3gcDmHcW8zam4YYRGrG
	PSJjU+3RxpKrtu1JWhHZA5+xuWELLLUctHq4PTUXmxGb359ZDC8/8XWZl4ZdQPTTdqvmq3q3QO9+m
	Rmqq0etJbRKSix03FHo4g07PfZ3ez/h4baikqCr94hk4mF1w7NdzK8ST6LTMe9eWatc4xKqVPG8Yd
	7kzEl3LA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6RJV-000ZnZ-0P;
	Tue, 06 Jun 2023 07:41:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6RIp-000Z4F-0R
	for barebox@lists.infradead.org;
	Tue, 06 Jun 2023 07:40:28 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q6RIn-0004QZ-O3; Tue, 06 Jun 2023 09:40:25 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q6RIn-0006Ez-Gh; Tue, 06 Jun 2023 09:40:25 +0200
Date: Tue, 6 Jun 2023 09:40:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Denis Orlov <denorl2009@gmail.com>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20230606074025.GT18491@pengutronix.de>
References: <20230604215002.20240-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230604215002.20240-1-denorl2009@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230606_004027_209316_EE3BDAB6 
X-CRM114-Status: GOOD (  23.19  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 0/2] dma: rework streaming DMA interface
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jun 05, 2023 at 12:45:00AM +0300, Denis Orlov wrote:
> This fixes issues with streaming DMA on MIPS and more or less properly
> fixes support for non 1-to-1 mappings via 'dma-ranges' device tree
> property.
> 
> It needs to be tested properly on non-MIPS architectures as I only
> have tested the compilation for some of those.
> 
> The differences from RFC include merging two parts of the patch and
> dropping changes not really related to the matter at hand.
> 
> Denis Orlov (2):
>   dma: rework dma_sync_single_for_*() interface
>   net: macb: remove const from dev pointer in macb_device

Looks good to me, thanks for working on this. Applied to next, let's see
what the autobuilder says to it.

Sascha

> 
>  arch/arm/cpu/dma_32.c               | 17 +++---
>  arch/arm/cpu/dma_64.c               | 13 +++--
>  arch/arm/cpu/mmu-common.c           |  9 ++--
>  arch/arm/include/asm/dma.h          | 12 ++---
>  arch/arm/mach-bcm283x/mbox.c        |  4 +-
>  arch/kvx/lib/dma-default.c          | 16 +++---
>  arch/mips/lib/dma-default.c         | 18 +++----
>  arch/riscv/cpu/dma.c                | 23 +++++----
>  arch/sandbox/include/asm/dma.h      | 12 ++---
>  arch/x86/include/asm/dma.h          | 12 ++---
>  drivers/crypto/caam/caam-blobgen.c  | 28 +++++-----
>  drivers/crypto/caam/caamrng.c       |  6 +--
>  drivers/crypto/caam/rng_self_test.c |  6 +--
>  drivers/dma/Makefile                |  1 -
>  drivers/dma/map.c                   | 39 --------------
>  drivers/mci/dove-sdhci.c            |  8 +--
>  drivers/mci/stm32_sdmmc2.c          |  8 +--
>  drivers/mci/tegra-sdmmc.c           |  8 +--
>  drivers/net/ag71xx.c                |  8 +--
>  drivers/net/arc_emac.c              | 10 ++--
>  drivers/net/at91_ether.c            | 11 ++--
>  drivers/net/bcmgenet.c              |  4 +-
>  drivers/net/cpsw.c                  |  8 +--
>  drivers/net/davinci_emac.c          |  8 +--
>  drivers/net/designware.c            | 10 ++--
>  drivers/net/designware_eqos.c       |  6 ++-
>  drivers/net/e1000/main.c            |  4 +-
>  drivers/net/fec_imx.c               |  4 +-
>  drivers/net/fsl-fman.c              |  7 +--
>  drivers/net/macb.c                  | 22 ++++----
>  drivers/net/mvneta.c                |  8 +--
>  drivers/net/orion-gbe.c             |  8 +--
>  drivers/net/r8169_main.c            | 10 ++--
>  drivers/usb/gadget/udc/fsl_udc.c    |  8 +--
>  drivers/usb/host/ohci-hcd.c         |  7 +--
>  include/dma.h                       | 80 ++++++++++++++++++++++-------
>  36 files changed, 237 insertions(+), 226 deletions(-)
>  delete mode 100644 drivers/dma/map.c
> 
> -- 
> 2.41.0
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


