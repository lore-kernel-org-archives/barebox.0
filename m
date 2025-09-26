Delivery-date: Fri, 26 Sep 2025 14:47:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v27rO-001KjE-0U
	for lore@lore.pengutronix.de;
	Fri, 26 Sep 2025 14:47:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v27rN-0004sY-GA
	for lore@pengutronix.de; Fri, 26 Sep 2025 14:47:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xjKfS78DCMeGOjHc2lR+f2QkH7iuVUyCgdt6bNawk28=; b=WDUtwoNin891T51SDJZ4P6x8Kc
	r75ie6uwlAzDBkWzloquUQ1xNC3OfI6T0PcS0drHCmaYSQpNWrIDFpC4jNE1wqpL6VLO1ukWDBUlo
	zngCg//vx5Yj202x8yelPxgIU+UxOFULQriX4QKKDnOktDTK3DIb87HIURONsqUBVNlT65zYj8Ihi
	eZrSW3/DTOSUjHFxc1xMUyiUkS6TSYSWzds22XOuT4GgNgK3sefO6zVyklUt03p36UINaLtBjflBz
	+Na12V4Mc52l7L15KX4xguceU48RlWXLBvk8IsNongyh/Xzu9Cki+Yu4iuOYjFkMxHfj9ug9NIihR
	Ss/O4JUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v27qv-00000001HXr-1O2Y;
	Fri, 26 Sep 2025 12:47:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v27qt-00000001HXS-2S0k
	for barebox@lists.infradead.org;
	Fri, 26 Sep 2025 12:47:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1v27qs-0004lO-2U; Fri, 26 Sep 2025 14:47:06 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1v27qr-000apH-2Y;
	Fri, 26 Sep 2025 14:47:05 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1v27qr-00EVsV-2A;
	Fri, 26 Sep 2025 14:47:05 +0200
Date: Fri, 26 Sep 2025 14:47:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: David Picard <david.picard@clermont.in2p3.fr>
Cc: BAREBOX <barebox@lists.infradead.org>, Ahmad Fatoum <ahmad@a3f.at>
Message-ID: <aNaLSRX9xUz6GEEK@pengutronix.de>
References: <20250925-boards-enclustra-sa2-add-support-v2-0-6820ad6c6256@clermont.in2p3.fr>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250925-boards-enclustra-sa2-add-support-v2-0-6820ad6c6256@clermont.in2p3.fr>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250926_054707_624694_626B7031 
X-CRM114-Status: GOOD (  25.20  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 00/10] ARM: boards: add support for Enclustra Mercury
 SA2
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi David,

Please squash patches 2, 3, 4, 5, 6, 7 and 10 into one patch.
It's easier to review the end result rather than development steps.
The handoff files should stay a separate commit though because they are
quite big and only contain autogenerated stuff.

Sascha


On Thu, Sep 25, 2025 at 01:59:07PM +0200, David Picard wrote:
> Add support for the Enclustra Mercury+ SA2, a Cyclone V based
> SoC FPGA.
> https://www.enclustra.com/en/products/system-on-chip-modules/mercury-sa2/
> 
> The SoM provides a 64MiB NOR QSPI flash, DDR3, Ethernet PHY, RTC.
> 
> The Cyclone V features a hardware ARM core (aka HPS) that can boot
> from SD card (MMC), QSPI flash. This patch series focusses on MMC.
> 
> Signed-off-by: David Picard <david.picard@clermont.in2p3.fr>
> ---
> Changes in v2:
> - EDITME: describe what is new in this series revision.
> - EDITME: use bulletpoints and terse descriptions.
> - Link to v1: https://lore.kernel.org/r/20250917-boards-enclustra-sa2-add-support-v1-0-2de8f69107a1@clermont.in2p3.fr
> 
> ---
> David Picard (8):
>       Add handoff files
>       Add Enclustra Mercury+ SA2 module
>       ARM: dts: socfpga: use upstream SA2 device tree
>       ARM: dts: socfpga: adapt upstream SA2 device tree
>       boards: enclustra-sa2: read MAC address from EEPROM
>       boards: enclustra-sa2: configure SI5338
>       boards: enclustra-sa2: enable SI5338
>       boards: enclustra-sa2: read S/N from EEPROM
> 
> Sascha Hauer (2):
>       lib: add crc16 support
>       nvmem: add support for Atmel sha204(a)
> 
>  arch/arm/boards/Makefile                           |   1 +
>  arch/arm/boards/enclustra-sa2/Makefile             |   2 +
>  .../boards/enclustra-sa2/Si5338-RevB-Registers.h   | 433 +++++++++++++
>  arch/arm/boards/enclustra-sa2/board.c              | 148 +++++
>  .../boards/enclustra-sa2/iocsr_config_cyclone5.c   | 678 +++++++++++++++++++++
>  arch/arm/boards/enclustra-sa2/lowlevel.c           |  15 +
>  arch/arm/boards/enclustra-sa2/pinmux_config.c      | 241 ++++++++
>  arch/arm/boards/enclustra-sa2/pll_config.h         | 107 ++++
>  arch/arm/boards/enclustra-sa2/sdram_config.h       | 112 ++++
>  arch/arm/boards/enclustra-sa2/sequencer_auto.h     | 225 +++++++
>  .../boards/enclustra-sa2/sequencer_auto_ac_init.c  |  67 ++
>  .../enclustra-sa2/sequencer_auto_inst_init.c       | 158 +++++
>  arch/arm/boards/enclustra-sa2/sequencer_defines.h  | 165 +++++
>  arch/arm/boards/enclustra-sa2/si5338_config.c      | 252 ++++++++
>  arch/arm/boards/enclustra-sa2/si5338_config.h      |  22 +
>  arch/arm/configs/socfpga-xload_defconfig           |   1 +
>  arch/arm/configs/socfpga_defconfig                 |   3 +-
>  arch/arm/dts/Makefile                              |   1 +
>  arch/arm/dts/socfpga_cyclone5_mercury_sa2.dts      |  17 +
>  arch/arm/dts/socfpga_cyclone5_mercury_sa2.dtsi     | 213 +++++++
>  arch/arm/mach-socfpga/Kconfig                      |   8 +
>  drivers/nvmem/Kconfig                              |  15 +
>  drivers/nvmem/Makefile                             |   2 +
>  drivers/nvmem/atmel-i2c.c                          | 302 +++++++++
>  drivers/nvmem/atmel-i2c.h                          | 180 ++++++
>  drivers/nvmem/atmel-sha204a.c                      | 114 ++++
>  images/Makefile.socfpga                            |   8 +
>  include/linux/crc16.h                              |  21 +
>  lib/Kconfig                                        |   3 +
>  lib/Makefile                                       |   1 +
>  lib/crc16.c                                        |  69 +++
>  31 files changed, 3582 insertions(+), 2 deletions(-)
> ---
> base-commit: 85c11b44889eb73921b2095f2c42492ac3d686a0
> change-id: 20250916-boards-enclustra-sa2-add-support-4704233a6861
> 
> Best regards,
> -- 
> David Picard <david.picard@clermont.in2p3.fr>
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


