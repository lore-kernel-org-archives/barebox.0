Delivery-date: Mon, 31 May 2021 09:25:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lncIa-000328-Qc
	for lore@lore.pengutronix.de; Mon, 31 May 2021 09:25:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lncIZ-0005wM-Tk
	for lore@pengutronix.de; Mon, 31 May 2021 09:25:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xkirWps+hXygsjex42S6wgmn8kBpl8zCKUxBWZDCfhc=; b=FdkI208pKzbW2U
	iKbWNVWEkY4IEHqe6jO4BPqASFhg2MqmHDsJOZ4pe9v0eaF5WYanFc3HuNgTw55wHAqPEotDpzCs5
	wK1qCM83s6GAbxLEA7L9rLw3L1iircXvpRKbcAHveoDy4sibyujh+v6YeV3w8SI05odP8YUDyF7zv
	ZzXAOuiNYsjrw8sI2Dsq717MJ7E1COa+5s3vrbDVb9jRr0rUOJCikg9HmBzssHT/T70DRX2wSSLG3
	YhJvgoPf876CmJGl2xJBhhfNdN9kbU5iXbroHUrpRHztZy1A78Zgs9MFMERohaWEWgtjH9pUyIxcK
	vIXqLBuLtFdOQjbS1oiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lncHX-00BArL-4J; Mon, 31 May 2021 07:24:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lncHR-00BAp0-QB
 for barebox@lists.infradead.org; Mon, 31 May 2021 07:24:11 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1lncHQ-0005Mc-Ju
 for barebox@lists.infradead.org; Mon, 31 May 2021 09:24:08 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1lncHQ-0001WI-A2
 for barebox@lists.infradead.org; Mon, 31 May 2021 09:24:08 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 31 May 2021 09:24:01 +0200
Message-Id: <20210531072406.5630-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_002409_870747_0634B63A 
X-CRM114-Status: GOOD (  10.26  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/5] add regmap helpers for NVMEM and i2c
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Incoming BeagleV support should support an i2c-connected PMIC and
a fuse bank for retrieval of the MAC address. On the STM32MP1, we
also support an i2c-connected PMIC and a fuse bank for MAC address.

Instead of duplicating too much code, add some helpers, so drivers can
drop common boilerplate. The relevant STM32 drivers are ported to make
use of it.

Ahmad Fatoum (5):
  regmap: implement regmap_init_i2c
  mfd: stpmic1: simplify using regmap_init_i2c
  nvmem: provider: align read/write callback prototype with upstream
  nvmem: add nvmem_regmap_register helper
  nvmem: stm32-bsec: simplify using new nvmem_regmap_register

 drivers/base/regmap/Makefile     |  1 +
 drivers/base/regmap/regmap-i2c.c | 44 +++++++++++++++
 drivers/base/regmap/regmap.c     |  5 ++
 drivers/eeprom/at24.c            | 17 ++----
 drivers/mfd/stpmic1.c            | 47 +---------------
 drivers/net/phy/mv88e6xxx/chip.c | 11 ++--
 drivers/nvmem/Makefile           |  2 +-
 drivers/nvmem/bsec.c             | 94 ++++----------------------------
 drivers/nvmem/core.c             | 14 +++--
 drivers/nvmem/eeprom_93xx46.c    | 13 ++---
 drivers/nvmem/ocotp.c            | 12 ++--
 drivers/nvmem/rave-sp-eeprom.c   | 15 ++---
 drivers/nvmem/regmap.c           | 78 ++++++++++++++++++++++++++
 drivers/nvmem/snvs_lpgpr.c       | 13 ++---
 drivers/rtc/rtc-imxdi.c          | 13 ++---
 include/linux/nvmem-provider.h   | 15 +++--
 include/regmap.h                 | 14 +++++
 17 files changed, 211 insertions(+), 197 deletions(-)
 create mode 100644 drivers/base/regmap/regmap-i2c.c
 create mode 100644 drivers/nvmem/regmap.c

-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

