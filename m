Delivery-date: Tue, 13 Jun 2023 09:50:16 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8ynB-004tO7-Kp
	for lore@lore.pengutronix.de; Tue, 13 Jun 2023 09:50:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8yn8-0004A1-U0
	for lore@pengutronix.de; Tue, 13 Jun 2023 09:50:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bw5XatMLgiGmVlv47b/naatsGyDkgHK7P+bgZRu+O1M=; b=XF6Wd94qw2tmnu3khi0roNMVLE
	tVbe2xgIHKXzGL0EUEewU0KSudFV1QkT9jxNsdWmGGAOZePPGKS0YxERzXXe98kdiJGce1hwMWj/F
	gNWllMgybCta5qSt18leCU5+PTy5LkpraHDjYfIDnMOwoPGnwAPrgc8J17YRj96xXFWa3DQGNrDOc
	U7JdcAWuNLQvkqM+i6nzwvY96G+86+/6PFQOidQqcqM4a6CiNmLiycjDvVD3APLlWjAAyQjmFneg9
	+pmxCrKYAywKcg6JA6yUkWQ7K8AdINShuW17Q4V3QgT7XuwWaik//eoS2mThcqDZBIqq3ezJG1k8B
	P4YUqtzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8ym3-007Gr5-1X;
	Tue, 13 Jun 2023 07:49:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8ym0-007Gqd-38
	for barebox@lists.infradead.org;
	Tue, 13 Jun 2023 07:49:06 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q8ylz-0003sL-35; Tue, 13 Jun 2023 09:49:03 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q8yly-0008TF-S8; Tue, 13 Jun 2023 09:49:02 +0200
Date: Tue, 13 Jun 2023 09:49:02 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230613074902.GJ18491@pengutronix.de>
References: <20230612130239.1087599-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230612130239.1087599-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230613_004905_030714_C07B3F6F 
X-CRM114-Status: GOOD (  20.24  )
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
Subject: Re: [PATCH 00/19] misc fixes building sandbox 64-bit allyesconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jun 12, 2023 at 03:02:21PM +0200, Ahmad Fatoum wrote:
> Eventually, I want to run static analysis against the configuration,
> but this series fixed build warnings/errors just compiling it normally
> with GCC 13 and clang 14.
> 
> The critical parts were factored into their own series, so this can go
> into next first.
> 
> Ahmad Fatoum (19):
>   clk: always define clk_prepare_enable/disable
>   clk: define clk_get_parent stub
>   pci: disable building CONFIG_PCI when CONFIG_COMPILE_TEST
>   mci: tegra: fix base address constant to be hexadecimal
>   ata: ide-sff: fix warnings when compiling as 64-bit
>   video: bochs: remove dependency on PCI header in common part
>   commands: ubsan: hide pointer provenance used to trigger UB
>   test: self: printf: silence clang warnings
>   crypto: caam - fix pointer to u32 casts
>   crypto: imx-scc: fix u32 to pointer casts
>   mci: sdhci: dove: fix pointer to u32 casts
>   lib: make_directory: return -ENOMEM on allocation failure
>   include <linux/idr.h>: handle OOM gracefully inside idr_alloc_one
>   mci: tegra: use correct types for mmio and DMA address
>   mtd: spi-nor: cadence: fix types
>   video: simplefb-fixup: warn on framebuffers >= 4G
>   watchdog: imx28: use correct constant for computing timeout_max
>   firmware: mark firmware sections as having non-executable stack
>   phy: stm32: usb: depend on COMMON_CLK

Applied, thanks

Sascha

> 
>  commands/ubsan.c                      |  2 ++
>  drivers/ata/ide-sff.c                 |  8 ++++----
>  drivers/crypto/caam/jr.c              |  2 +-
>  drivers/crypto/caam/rng_self_test.c   |  2 +-
>  drivers/crypto/imx-scc/scc.c          |  6 +++---
>  drivers/mci/dove-sdhci.c              | 20 +++++++++++++-------
>  drivers/mci/tegra-sdmmc.c             | 11 ++++++-----
>  drivers/mtd/spi-nor/cadence-quadspi.c |  8 +++-----
>  drivers/pci/Kconfig                   |  2 +-
>  drivers/phy/Kconfig                   |  1 +
>  drivers/video/bochs/bochs_hw.c        |  1 -
>  drivers/video/simplefb-fixup.c        | 10 +++++++---
>  drivers/watchdog/im28wd.c             |  2 +-
>  firmware/Makefile                     |  1 +
>  include/linux/clk.h                   | 11 +++++++++--
>  include/linux/idr.h                   |  2 ++
>  lib/make_directory.c                  |  3 +++
>  test/self/Makefile                    |  2 +-
>  18 files changed, 59 insertions(+), 35 deletions(-)
> 
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


