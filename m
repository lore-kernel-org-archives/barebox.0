Delivery-date: Tue, 11 Apr 2023 13:45:54 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pmCRd-00HVHc-GO
	for lore@lore.pengutronix.de; Tue, 11 Apr 2023 13:45:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pmCRd-0001BW-BF
	for lore@pengutronix.de; Tue, 11 Apr 2023 13:45:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jLBqpFdmECu3aUo0KUQzkSp+FGu56cx4na8vrhhMJcI=; b=RUoSsvh29RmuMrrmigs553eqdF
	GbaCQxdsXTnORYynhc8RfA9JZBlnkpYsvgfYiTccY7JRxETTrHB56+Jaoe8pyY1A3VW0CE3g2JEkv
	CJtYgoWV40e4gNF5fJd750QGczKiygSP8Q8Wr9s665u1nd+M25ZDAscVw0EI6E3GvllzlzpZSmdv2
	wo/v5nk0IfQZGkzNN1rwKzHBRi5R0vCZtZNa6LJb7hyRmzt9Iy2YfXw/NxgteNZzkCNVwVsgIcNOJ
	ujbAcuqJm21soO06ZCPw+SVHYRxzF70Y3x6BZNd3rjh9gvZc+/YuBb4Mwi2FIbkXN7ZgRDg11vgtZ
	O16SwKLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmCQJ-00HTHA-1g;
	Tue, 11 Apr 2023 11:44:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmCQG-00HTGN-1L
	for barebox@lists.infradead.org;
	Tue, 11 Apr 2023 11:44:29 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pmCQD-0000m0-LM; Tue, 11 Apr 2023 13:44:25 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pmCQD-0005Aw-E3; Tue, 11 Apr 2023 13:44:25 +0200
Date: Tue, 11 Apr 2023 13:44:25 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230411114425.GC19113@pengutronix.de>
References: <20230411071436.1630752-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230411071436.1630752-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230411_044428_452232_AB5077B4 
X-CRM114-Status: GOOD (  19.05  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master 00/14] treewide: fixes for master
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Apr 11, 2023 at 09:14:22AM +0200, Ahmad Fatoum wrote:
> I am packaging barebox for NixOS, which is a tad different (and newer)
> than Debian, which I was previously using. This had me run into a couple
> of issues, which this PR addresses. All of them apply onto master.
> The fixes for next will be posted separately.
> 
> Ahmad Fatoum (14):
>   test: riscv: fix YAMLs after defconfig rename
>   RISC-V: board-dt-2nd: fix hang in startup
>   RISC-V: sifive: disable non-functional SPI nodes
>   video: qemu-ramfb: reduce -ENODEV lo level to debug
>   gpiolib: fix gpio label generation with gpiod_get
>   test: emulate.pl: fix firmware use with non-tuxmake out-of-tree build
>   RISC-V: restrict GCC optimization some more
>   RISC-V: configs: rv64i_defconfig: disable SBI serial
>   net: dsa: realtek: include needed headers directly
>   net: linux/mdio.h: add missing init.h header
>   Kbuild: export CROSS_PKG_CONFIG
>   treewide: fix includes missed by multiarch support
>   mci: dw_mmc: make reset optional

Applied 1-13, thanks

Sascha

>   kbuild: remove useless use of /usr/bin/env
> 
>  Documentation/boards/imx.rst                  |  4 ++--
>  Makefile                                      |  2 +-
>  arch/riscv/Makefile                           |  3 +++
>  arch/riscv/boot/board-dt-2nd.c                |  6 +++++
>  arch/riscv/configs/rv64i_defconfig            |  1 -
>  arch/riscv/dts/hifive-unleashed-a00.dts       |  4 ++++
>  arch/riscv/dts/hifive-unmatched-a00.dts       |  5 +++++
>  drivers/aiodev/am335x_adc.c                   |  2 +-
>  drivers/aiodev/imx_thermal.c                  |  2 +-
>  drivers/gpio/gpiolib.c                        |  2 +-
>  drivers/hab/hab.c                             |  2 +-
>  drivers/mci/dw_mmc.c                          |  2 +-
>  drivers/net/realtek-dsa/realtek-mdio.c        |  1 +
>  drivers/net/realtek-dsa/realtek-smi.c         |  1 +
>  drivers/net/realtek-dsa/rtl8365mb.c           |  2 ++
>  drivers/net/realtek-dsa/rtl8366rb.c           |  2 ++
>  drivers/net/realtek-dsa/tag_rtl4_a.c          |  1 +
>  drivers/net/realtek-dsa/tag_rtl8_4.c          |  1 +
>  drivers/nvmem/ocotp.c                         |  4 ++--
>  drivers/pci/pci-imx6.c                        |  6 ++---
>  drivers/pinctrl/imx-iomux-v2.c                |  2 +-
>  drivers/spi/atmel-quadspi.c                   |  6 ++---
>  drivers/video/imx-ipu-fb.c                    |  4 ++--
>  drivers/video/ramfb.c                         |  2 +-
>  include/linux/mdio.h                          |  1 +
>  scripts/Makefile.lib                          |  2 +-
>  scripts/regsubst.pl                           |  8 +++----
>  scripts/socfpga_xml_to_config.sh              |  4 ++--
>  test/emulate.pl                               | 22 ++++++++++---------
>  ....yaml => qemu-virt64@rv64i_defconfig.yaml} |  0
>  test/riscv/rv64i_defconfig.yaml               |  1 +
>  ...onfig.yaml => sifive@rv64i_defconfig.yaml} |  0
>  ...nfig.yaml => tinyemu@rv64i_defconfig.yaml} |  0
>  test/riscv/virt64_defconfig.yaml              |  1 -
>  34 files changed, 67 insertions(+), 39 deletions(-)
>  rename test/riscv/{qemu@virt64_defconfig.yaml => qemu-virt64@rv64i_defconfig.yaml} (100%)
>  create mode 120000 test/riscv/rv64i_defconfig.yaml
>  rename test/riscv/{sifive_defconfig.yaml => sifive@rv64i_defconfig.yaml} (100%)
>  rename test/riscv/{tinyemu@virt64_defconfig.yaml => tinyemu@rv64i_defconfig.yaml} (100%)
>  delete mode 120000 test/riscv/virt64_defconfig.yaml
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


