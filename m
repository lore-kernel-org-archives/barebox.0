Delivery-date: Thu, 15 Jan 2026 13:08:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgM9F-001aG5-1P
	for lore@lore.pengutronix.de;
	Thu, 15 Jan 2026 13:08:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgM9E-0002YU-8V
	for lore@pengutronix.de; Thu, 15 Jan 2026 13:08:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=GpquwvNm+hE2at1gKMTg5QtgGCdEAWtatGkNeKWyavA=; b=vdl8DHB9hcaI+3BJjrYk73ZvmH
	vMgCsyE8HJSXf+JCy8rgon2wTvbFzTPe6SQAos0wlascutMJNJO8JXCxSe94UQ53V8oM442/04zod
	ukiZIXDL/wfrKnL9JE1fKK84ctBCE5XK2YdZRumdOprHAG6j+y8G3pfNojZULpONRBUYsjbh8F2Bk
	VEFtJBVm8vgb1QiFqsAM18xYZx97cDEyDwxM4Uq+1tAQ4CqTktKft5MJHqCisWgVBnFM3j2TgMcbG
	uFl4If/1Xkraoik2mvnbz2dsBqQ+jKlaq97Mp4dujFy4uyW60Uh3xnfHLM0X0V1wO9WWnhunmTjZP
	AflYdyGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgM8n-0000000CIV4-22Wc;
	Thu, 15 Jan 2026 12:07:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgM8k-0000000CITL-4B47
	for barebox@lists.infradead.org;
	Thu, 15 Jan 2026 12:07:52 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vgM8j-0002HG-BI
	for barebox@lists.infradead.org; Thu, 15 Jan 2026 13:07:49 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Date: Thu, 15 Jan 2026 13:06:08 +0100
Message-ID: <20260115120748.3433463-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260115_040751_047237_8B1BA689 
X-CRM114-Status: UNSURE (   9.17  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 0/6] firmware: qemu_fw_cfg: improve support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This series adds DMA support to QEMU FW_CFG also on the read size,
allows a completely dma-less PIO mode and adds support for parsing
the QEMU options for: -kernel, -initrd, -uuid and -append.

Ahmad Fatoum (6):
  firmware: qemu_fw_cfg: use wider PIO reads if applicable
  param: support uuid/guid parameter type
  lib: smbios: add support for setting product UUID
  common: boards: qemu: process some standard fw_cfg keys
  firmware: qemu_fw_cfg: add proper DMA and PIO bidirectional operating
    modes
  ARM: configs: multi: enable QEMU FW_CFG

 arch/arm/configs/multi_v5_v6_defconfig        |   2 +
 arch/arm/configs/multi_v7_defconfig           |   2 +
 arch/arm/configs/multi_v8_defconfig           |   2 +
 common/boards/Kconfig                         |   8 +
 common/boards/Makefile                        |   1 +
 common/boards/qemu/Makefile                   |   4 +
 .../defaultenv-qemu_fw_cfg/boot/qemu_fw_cfg   |  12 +
 common/boards/qemu/fw_cfg.c                   | 208 ++++++++++++
 common/globalvar.c                            |  40 +++
 common/misc.c                                 |  14 +
 drivers/firmware/Kconfig                      |   1 +
 drivers/firmware/qemu_fw_cfg.c                | 297 +++++++++++-------
 include/barebox-info.h                        |   4 +
 include/globalvar.h                           |  12 +
 include/linux/sprintf.h                       |   3 +
 include/param.h                               |  39 +++
 lib/parameter.c                               |  95 ++++++
 lib/smbios.c                                  |  18 +-
 lib/vsprintf.c                                |   2 +-
 19 files changed, 648 insertions(+), 116 deletions(-)
 create mode 100644 common/boards/qemu/Makefile
 create mode 100755 common/boards/qemu/defaultenv-qemu_fw_cfg/boot/qemu_fw_cfg
 create mode 100644 common/boards/qemu/fw_cfg.c

-- 
2.47.3



