Delivery-date: Fri, 01 Dec 2023 11:41:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r90xr-00Fjln-2E
	for lore@lore.pengutronix.de;
	Fri, 01 Dec 2023 11:41:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r90xr-0001ty-KC
	for lore@pengutronix.de; Fri, 01 Dec 2023 11:41:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dW2si1dUIo8LPt5RRvZmHAvHkwRnxMbwj204aVQUyVA=; b=bsIIPCKPpaYcngzkCeXNRRGP5O
	O14OO3PIcbnUZz84G+sTPYkjDg1Ng1f1Rre4r7+0YotF7/X7P+MI43p6cZ37bq9vpImu3xvHSldfM
	LZzror7FAiWkVf+Pdl4KOyl+V7NtcG30XIPbdKOcFipln90MQnpinuyLoru9IQVRxrFzNtomhlolQ
	RidYw5y2REkSXFHefcECHV68DCOQFtcSRSNAS/mTELzGO0i39RhYAGSdynhlEHHjHyUziHMWt3MYN
	w2t1wVuOUbmMT0Rg9VwIILeo/ihzwAqf+tQWKvH2YL5uXiUmxt7IPY3Sy+YIP224qrTi0y4pji0wp
	E/ZXWujA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r90w9-00DEcE-1c;
	Fri, 01 Dec 2023 10:39:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r90w5-00DEah-2f
	for barebox@lists.infradead.org;
	Fri, 01 Dec 2023 10:39:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r90w3-0001Yo-0D; Fri, 01 Dec 2023 11:39:51 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r90w2-00Cpd5-K4; Fri, 01 Dec 2023 11:39:50 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r90w2-004jnz-Hy; Fri, 01 Dec 2023 11:39:50 +0100
Date: Fri, 1 Dec 2023 11:39:50 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231201103950.GB1057032@pengutronix.de>
References: <20231127063559.2205776-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231127063559.2205776-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231201_023953_861990_51628005 
X-CRM114-Status: GOOD (  21.88  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 0/8] optee: add bidirectional communication support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Nov 27, 2023 at 07:35:51AM +0100, Ahmad Fatoum wrote:
> So far, barebox interaction by OP-TEE was limited to loading it and
> maybe passing along its device tree fixup. In some scenarios, there
> is a lot more that could need to be done however:
> 
>   - Access to eMMC RPMB memory
>   - Access to keys stored in OP-TEE, e.g. in Trusted Keys TA or
>     in fTPM
>   - Access to hardware managed by OP-TEE via e.g. PRNG TA
> 
> Let's prepare for all that by importing the Linux v6.6 OP-TEE support
> into barebox. This series has been tested on STM3MP15 and STM32MP13
> 32-bit ARM SoCs, where OP-TEE functioned as SCMI provider, restricting
> access to some clocks, resets and regulators deemed too important to
> let pesky normal world have direct access to them.
> 
> Ahmad Fatoum (5):
>   driver: don't clear unrelated struct device_node::device on unregister
>   deep-probe: don't panic when device can't be created
>   deep-probe: skip on-demand platform dev creation for nodes without
>     compatible
>   devinfo: indicate if device tree nodes are differently populated
>   hw_random: add implementation for OP-TEE RNG pseudo TA
> 
> Marc Kleine-Budde (3):
>   include: uaccess.h: import from linux
>   optee: add bidirectional communication support
>   optee: add experimental support for /dev/tee0

Applied, thanks

Sascha

> 
>  commands/devinfo.c                     |  13 +-
>  common/Kconfig                         |   5 +
>  drivers/Kconfig                        |   1 +
>  drivers/Makefile                       |   2 +-
>  drivers/base/driver.c                  |   7 +-
>  drivers/hw_random/Kconfig              |   9 +
>  drivers/hw_random/Makefile             |   1 +
>  drivers/hw_random/optee-rng.c          | 302 ++++++++++
>  drivers/of/platform.c                  |  13 +-
>  drivers/tee/Kconfig                    |  17 +
>  drivers/tee/Makefile                   |   5 +
>  drivers/tee/optee/Kconfig              |  29 +
>  drivers/tee/optee/Makefile             |   8 +
>  drivers/tee/optee/call.c               | 239 ++++++++
>  drivers/tee/optee/core.c               |  68 +++
>  drivers/tee/optee/device.c             | 174 ++++++
>  drivers/tee/optee/{of.c => of_fixup.c} |   0
>  drivers/tee/optee/optee_msg.h          | 295 +++++++++
>  drivers/tee/optee/optee_private.h      | 179 ++++++
>  drivers/tee/optee/optee_smc.h          | 473 +++++++++++++++
>  drivers/tee/optee/rpc.c                |  16 +
>  drivers/tee/optee/smc_abi.c            | 748 +++++++++++++++++++++++
>  drivers/tee/tee_core.c                 | 801 +++++++++++++++++++++++++
>  drivers/tee/tee_private.h              |  50 ++
>  drivers/tee/tee_shm.c                  | 338 +++++++++++
>  include/asm-generic/uaccess.h          | 205 +++++++
>  include/linux/mod_devicetable.h        |  10 +
>  include/linux/tee_drv.h                | 418 +++++++++++++
>  include/linux/uaccess.h                |  38 ++
>  include/uapi/linux/tee.h               | 407 +++++++++++++
>  30 files changed, 4860 insertions(+), 11 deletions(-)
>  create mode 100644 drivers/hw_random/optee-rng.c
>  create mode 100644 drivers/tee/Kconfig
>  create mode 100644 drivers/tee/Makefile
>  create mode 100644 drivers/tee/optee/Kconfig
>  create mode 100644 drivers/tee/optee/Makefile
>  create mode 100644 drivers/tee/optee/call.c
>  create mode 100644 drivers/tee/optee/core.c
>  create mode 100644 drivers/tee/optee/device.c
>  rename drivers/tee/optee/{of.c => of_fixup.c} (100%)
>  create mode 100644 drivers/tee/optee/optee_msg.h
>  create mode 100644 drivers/tee/optee/optee_private.h
>  create mode 100644 drivers/tee/optee/optee_smc.h
>  create mode 100644 drivers/tee/optee/rpc.c
>  create mode 100644 drivers/tee/optee/smc_abi.c
>  create mode 100644 drivers/tee/tee_core.c
>  create mode 100644 drivers/tee/tee_private.h
>  create mode 100644 drivers/tee/tee_shm.c
>  create mode 100644 include/asm-generic/uaccess.h
>  create mode 100644 include/linux/tee_drv.h
>  create mode 100644 include/linux/uaccess.h
>  create mode 100644 include/uapi/linux/tee.h
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


