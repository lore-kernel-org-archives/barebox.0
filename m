Delivery-date: Thu, 09 Mar 2023 11:42:41 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paDjM-00EiFs-5B
	for lore@lore.pengutronix.de; Thu, 09 Mar 2023 11:42:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paDjL-0008TZ-Gq
	for lore@pengutronix.de; Thu, 09 Mar 2023 11:42:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hYGkkG7gwPbyT0VR64rf7dJzYjlWh4xO973v0Azbq64=; b=mK7/4MS6KxfWUo
	F9AYjMJUQ3zC9McrVehJKFJDbAYIVzFYC1ZjNCDE5b8MjfPbQiil2emU3QNp58//YP3VrvA/DY8/Y
	1JvKkauRhWnCsWwxopkOkCtEtbv6VgQIGYiMNMUfJ+QanpOtcZ6Z+yRmbB461e+j/bE+YgdR/+xQQ
	19vET7jvCBE2YMcJWCp65WRnGy6POjBrA0daC47kCrjuCz9pqyOBcJFJTBX8hKR7TyXEqszmLnyYv
	9pWlK5XZAAbHO6MjqHGtYr9CDN1/Db20OynD5FzwWrAehmDjGhPhyf2crjpqXb4m3MXPo+DezXyhO
	zNu/KxXZaZIunxks8uhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paDhn-0098Kp-Ry; Thu, 09 Mar 2023 10:41:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paDhT-00988c-Bb
	for barebox@lists.infradead.org; Thu, 09 Mar 2023 10:40:46 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1paDhP-0007YT-UK
	for barebox@lists.infradead.org; Thu, 09 Mar 2023 11:40:39 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Thu, 09 Mar 2023 11:40:32 +0100
Message-Id: <20230228-v2023-02-0-topic-flexspi-v1-0-7b3c3fa295f5@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAKG3CWQC/x2NQQrDMAwEvxJ0rsBRW3D7ldKD7SiNwDjGakMg5
 O9RettZmN0NlJuwwrPboPEiKnMx6C8dpCmUD6MMxkCOro7I43ImdIQOv3OVhGPmVatgug2+Zx/
 v8RHA9BiUMbZQ0mQD5ZezlbXxKOv/7/Xe9wOitlYxfwAAAA==
To: barebox@lists.infradead.org
Cc: 
X-Mailer: b4 0.12.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230309_024043_453937_2BC624EC 
X-CRM114-Status: GOOD (  11.07  )
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
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 00/21] FlexSPI image/boot/update support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

by this serie the missing FlexSPI/QSPI boot support is added. The
FlexSPI boot option is available on i.MX8MM/N/P SoCs.

The integration is done by using the single-image approach, so no
special QSPI image is required. The same image which can be used for
eMMC/eMMC-boot, SD, USB, chainload now supports QSPI. This is done by
adding a 2nd IVT header on the appropriate place and adding a QSPI
update handler.

Patch1-4: General fixes
Patch7-onward: Add the FlexSPI/QSPI support

---
Marco Felsch (21):
      spi: remove flash_platform_data support
      bbu: make it possible to check multiple of-compatibles
      ARM: i.MX8MM: add missing IMD_USED_OF image metadata entry
      ARM: i.MX8MN: add missing IMD_USED_OF image metadata entries
      mci: imx-esdhc-pbl: fix number of read blocks
      mci: imx-esdhc-pbl: refactor the esdhc_load_image function
      mci: imx-esdhc-pbl: move imx_load_image into common xload code
      ARM: i.MX8M: Add QSPI image load support
      ARM: i.MX8MM bootsource: fix QSPI boot source detection
      ARM: i.MX8M: Add QSPI boot support
      scripts: imx-image: convert flag variables into bool
      scripts: imx-image: header_v2: factor out offset parameter
      scripts: imx-image: header_v2: add header_len parameter
      scripts: imx-image: add FlexSPI image support
      filetype: add NXP FlexSPI filetype
      ARM: i.MX: bbu: rename IMX_INTERNAL_FLAG_ERASE to IMX_BBU_FLAG_ERASE
      ARM: i.MX: bbu: add target device offset
      ARM: i.MX: bbu: add FlexSPI update handler
      ARM: i.MX8M: enable FlexSPI image support
      ARM: i.MX8M: add qspi barebox and barebox-environment partitions
      ARM: i.MX8M: add QSPI update handler

 arch/arm/boards/nxp-imx8mm-evk/board.c             |   1 +
 .../nxp-imx8mm-evk/flash-header-imx8mm-evk.imxcfg  |   3 +
 arch/arm/boards/nxp-imx8mm-evk/lowlevel.c          |   1 +
 arch/arm/boards/nxp-imx8mn-evk/board.c             |   1 +
 .../nxp-imx8mn-evk/flash-header-imx8mn-evk.imxcfg  |   3 +
 arch/arm/boards/nxp-imx8mn-evk/lowlevel.c          |   4 +
 arch/arm/boards/nxp-imx8mp-evk/board.c             |   1 +
 .../nxp-imx8mp-evk/flash-header-imx8mp-evk.imxcfg  |   3 +
 arch/arm/dts/imx8mm-evk.dtsi                       |  19 +++
 arch/arm/dts/imx8mn-evk.dtsi                       |  19 +++
 arch/arm/dts/imx8mp-evk.dts                        |  19 +++
 arch/arm/mach-imx/Makefile                         |   1 +
 arch/arm/mach-imx/atf.c                            |   9 ++
 arch/arm/mach-imx/boot.c                           |  17 +++
 arch/arm/mach-imx/imx-bbu-internal.c               |  52 +++++++-
 arch/arm/mach-imx/xload-common.c                   | 120 +++++++++++++++++
 arch/arm/mach-imx/xload-qspi.c                     |  57 ++++++++
 common/bbu.c                                       |  42 +++---
 common/filetype.c                                  |   5 +
 drivers/mci/imx-esdhc-pbl.c                        | 108 +--------------
 drivers/mtd/devices/m25p80.c                       |  15 +--
 drivers/mtd/devices/mtd_dataflash.c                |   4 +-
 drivers/mtd/spi-nor/spi-nor.c                      |   1 -
 include/filetype.h                                 |   1 +
 include/mach/imx/bbu.h                             |  13 ++
 include/mach/imx/imx-header.h                      | 118 +++++++++++++++++
 include/mach/imx/xload.h                           |   8 ++
 include/spi/flash.h                                |  31 -----
 scripts/imx/imx-image.c                            | 146 +++++++++++++++++++--
 scripts/imx/imx.c                                  |  26 ++++
 30 files changed, 664 insertions(+), 184 deletions(-)
---
base-commit: 7960c168dae7f38406c0727c4b5a275e85c2533c
change-id: 20230228-v2023-02-0-topic-flexspi-c4d81e8b5b9a

Best regards,
-- 
Marco Felsch <m.felsch@pengutronix.de>



