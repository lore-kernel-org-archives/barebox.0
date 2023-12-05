Delivery-date: Tue, 05 Dec 2023 08:31:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rAPta-003uAw-23
	for lore@lore.pengutronix.de;
	Tue, 05 Dec 2023 08:31:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rAPtZ-0006tB-Mm
	for lore@pengutronix.de; Tue, 05 Dec 2023 08:31:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3Of7cbOalWx+4Ft215FcoZQAhFUFTWUcw2GAOSn341M=; b=oUPAg3KDYzZ6iCG75S46UkSAEe
	elkrU3bOoqCtCnQE0cVSQ7Ag+u4uX1YRP37vfY6pgcgQAa15zZ5rJha4iQc4A1s3kBp6Pb2lifPjj
	VQONBv/edLAzvld+zy6TLpv/GZe1eHDtKmZPgsx+WQrSOeNNxwGD7VIeYqx65XOM3YGeuYuc6+QVY
	B2p1szELpMl30RleLv7gLmka28YdQOUwh9uDv8hExWp/Bwefz8WjrOh1qh53c3DFciHHjENDQuYYL
	OChtls21WnRcc2M120JVkGYb/NL947gr6NU/P82H1/tatpa9cbAjCpexXmGezfIteBoJtgEG/kzYP
	8kL7UPgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAPsJ-006Vjc-30;
	Tue, 05 Dec 2023 07:29:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAPsH-006Vj2-0S
	for barebox@lists.infradead.org;
	Tue, 05 Dec 2023 07:29:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rAPsE-0006iJ-2L; Tue, 05 Dec 2023 08:29:42 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rAPsD-00Dgz8-MN; Tue, 05 Dec 2023 08:29:41 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rAPsD-005Lec-Jw; Tue, 05 Dec 2023 08:29:41 +0100
Date: Tue, 5 Dec 2023 08:29:41 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231205072941.GD1057032@pengutronix.de>
References: <20231127064034.2206788-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231127064034.2206788-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_232945_179082_C66514F9 
X-CRM114-Status: GOOD (  19.24  )
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
Subject: Re: [PATCH 0/6] firmware: arm_scmi: add OP-TEE transport support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Nov 27, 2023 at 07:40:28AM +0100, Ahmad Fatoum wrote:
> STM32MP15 in trusted mode and STM32MP13 by default use OP-TEE as secure
> monitor and some resets, clocks and voltage regulators are off-limits
> to the normal world.
> 
> This series syncs barebox SCMI support with v6.6 and adds OP-TEE as
> transport alongside SMCCC. This series has been tested on:
> 
>   - STM32MP15 + OP-TEE + OP-TEE shm
>   - STM32MP13 + OP-TEE + OP-TEE shm
>   - STM32MP15 + OP-TEE + CFG_STM32MP1_SCMI_SIP
>   - STM32MP15 + TF-A as SCMI provider (no OP-TEE)
> 
> This series depends on the OP-TEE infrastructure added in
> <M20231127063559.2205776-1-a.fatoum@pengutronix.de>
> 
> Ahmad Fatoum (6):
>   firmware: arm_scmi: sync with Linux v6.6
>   ARM: dts: stm32mp: dk1/2: build SCMI-enabled device tree
>   nvmem: bsec: add support for STM32 bsec pseudo TA
>   ARM: dts: stm32mp: ev1: build extra device tree with SCMI
>   ARM: dts: stm32mp: add dtsi for SMC SiP-based SCMI
>   ARM: dts: stm32mp: lxa-mc1: build SCMI-enabled DT

Applied, thanks

Sascha

> 
>  arch/arm/dts/Makefile                      |    7 +-
>  arch/arm/dts/stm32mp1-scmi-smc.dtsi        |   49 +
>  arch/arm/dts/stm32mp157a-dk1-scmi.dts      |    4 +
>  arch/arm/dts/stm32mp157c-dk2-scmi.dts      |    4 +
>  arch/arm/dts/stm32mp157c-ev1-scmi.dts      |   20 +
>  arch/arm/dts/stm32mp157c-lxa-mc1-scmi.dts  |   63 +
>  drivers/clk/clk-scmi.c                     |  100 +-
>  drivers/firmware/Kconfig                   |   12 +-
>  drivers/firmware/arm_scmi/Kconfig          |   86 +
>  drivers/firmware/arm_scmi/Makefile         |   18 +-
>  drivers/firmware/arm_scmi/base.c           |   85 +-
>  drivers/firmware/arm_scmi/bus.c            |  356 ++++-
>  drivers/firmware/arm_scmi/clock.c          |  292 ++--
>  drivers/firmware/arm_scmi/common.h         |  315 ++--
>  drivers/firmware/arm_scmi/driver.c         | 1668 +++++++++++++-------
>  drivers/firmware/arm_scmi/msg.c            |   93 ++
>  drivers/firmware/arm_scmi/optee.c          |  614 +++++++
>  drivers/firmware/arm_scmi/power.c          |  229 +++
>  drivers/firmware/arm_scmi/protocols.h      |  325 ++++
>  drivers/firmware/arm_scmi/reset.c          |   67 +-
>  drivers/firmware/arm_scmi/scmi_pm_domain.c |  135 ++
>  drivers/firmware/arm_scmi/sensors.c        |  936 +++++++++++
>  drivers/firmware/arm_scmi/shmem.c          |   53 +-
>  drivers/firmware/arm_scmi/smc.c            |   86 +-
>  drivers/firmware/arm_scmi/voltage.c        |  204 ++-
>  drivers/nvmem/Kconfig                      |    6 +
>  drivers/nvmem/Makefile                     |    1 +
>  drivers/nvmem/bsec.c                       |  133 +-
>  drivers/nvmem/stm32-bsec-optee-ta.c        |  298 ++++
>  drivers/nvmem/stm32-bsec-optee-ta.h        |   85 +
>  drivers/regulator/scmi-regulator.c         |   13 +-
>  drivers/reset/reset-scmi.c                 |    2 +-
>  include/linux/scmi_protocol.h              |   94 +-
>  33 files changed, 5216 insertions(+), 1237 deletions(-)
>  create mode 100644 arch/arm/dts/stm32mp1-scmi-smc.dtsi
>  create mode 100644 arch/arm/dts/stm32mp157a-dk1-scmi.dts
>  create mode 100644 arch/arm/dts/stm32mp157c-dk2-scmi.dts
>  create mode 100644 arch/arm/dts/stm32mp157c-ev1-scmi.dts
>  create mode 100644 arch/arm/dts/stm32mp157c-lxa-mc1-scmi.dts
>  create mode 100644 drivers/firmware/arm_scmi/Kconfig
>  create mode 100644 drivers/firmware/arm_scmi/msg.c
>  create mode 100644 drivers/firmware/arm_scmi/optee.c
>  create mode 100644 drivers/firmware/arm_scmi/power.c
>  create mode 100644 drivers/firmware/arm_scmi/protocols.h
>  create mode 100644 drivers/firmware/arm_scmi/scmi_pm_domain.c
>  create mode 100644 drivers/firmware/arm_scmi/sensors.c
>  create mode 100644 drivers/nvmem/stm32-bsec-optee-ta.c
>  create mode 100644 drivers/nvmem/stm32-bsec-optee-ta.h
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


