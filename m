Delivery-date: Mon, 04 Aug 2025 17:32:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uixAb-006z8H-2a
	for lore@lore.pengutronix.de;
	Mon, 04 Aug 2025 17:32:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uixAZ-0006J5-6L
	for lore@pengutronix.de; Mon, 04 Aug 2025 17:32:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/SbL8nxn+WU8tDH3ndi/RiCRaYoJFG2YUTZiJrCs1Gs=; b=RK7vWIq7/7sr1V
	3eqK6Z4QEvZIBlFuHjTvrONh95qbIshmdgnPJKGnA2VK8gar2aS2vove5BrRLLgTXvL9BinpMPDFr
	WLTLJSerUBQfialp+wYfPMFxNArdH5FdgsDZJ2jpjTTkhTpX3vpRoS+1/oh8z/nQKtx4sIGN+rgBi
	YZOeNyTBfmZ2iiq2RZJvl8djtPjmvCiSdSfVXfSoOuwvkJCSGq06+aBT+pkHrfyytiHqVrVFjmT9Z
	Wj+s1JoV+/nng3XgwCmuISJKqhxdfBTo5/M+yGwhhMqcbNprwqSeyjaij6R761Xu/7RMRQZIHfsrk
	i5HhD+lkFvm1WjlV2DmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uix9k-0000000Ansp-2KYO;
	Mon, 04 Aug 2025 15:31:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uiwJ2-0000000Agm9-1ivT
	for barebox@lists.infradead.org;
	Mon, 04 Aug 2025 14:36:54 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1uiwIz-0000aW-5K; Mon, 04 Aug 2025 16:36:49 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 04 Aug 2025 16:36:46 +0200
Message-Id: <20250804-v2025-06-0-topic-nvmem-v1-0-7603eaa4d2b0@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAH/FkGgC/x2MQQqAIBAAvxJ7bmGVUugr0aFsqz1koSGB9Pes2
 8xhJkPkIByhqzIEThLl8EVUXYHbRr8yylwcNOmWLClMHyEZJLyOUxz6tPOOzjZ2Mo0iwxpKfAZ
 e5P7H/fA8L7cVBL1oAAAA
X-Change-ID: 20250701-v2025-06-0-topic-nvmem-c747b64106e2
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250804_073652_543717_9BC033E2 
X-CRM114-Status: GOOD (  11.98  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 00/15] NVMEM: Add support for layout drivers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

with this patchset the barebox nvmem-core is prepared for the Linux
nvmem-layout drivers. Layout drivers are used to describe the NVMEM
storage format. The patchset also adds the support to read nvmem-cells
via the devfs. This makes it possible to read the cells from the board
code or shell without the need of referencing the cells within the DT.

A long with the alignment and feature work I fixed a few issues like:
honor the DT alias for a nvmem provider correctly.

For the new features to work correctly the NVMEM core had to be partly
(re-)synced with the one from Linux. This involved porting different DT
helpers.

Unfortunately this patchset doesn't add a NVMEM layout driver therefore
a __dummy__.o is added within the Makefile.

I decided to start from a fresh v1 because of the rework I've done. But
for reference, the previous patchset can be found here:

 - https://lore.kernel.org/barebox/20240613131531.364894-1-m.felsch@pengutronix.de/

Regards,
  Marco

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
Marco Felsch (15):
      of: sync of_*_phandle_with_args with Linux
      of: base: add of_parse_phandle_with_optional_args()
      of: device: Export of_device_make_bus_id()
      nvmem: core: fix nvmem_register error path
      nvmem: core: sync with Linux
      nvmem: core: expose nvmem cells as cdev
      nvmem: core: allow single and dynamic device ids
      eeprom: at24: fix device name handling
      nvmem: core: create a header for internal sharing
      nvmem: core: add nvmem-layout support
      nvmem: core: add an index parameter to the cell
      nvmem: core: add per-cell post processing
      nvmem: core: add cell based fixup logic
      nvmem: core: provide own priv pointer in post process callback
      nvmem: core: drop global cell_post_process

 drivers/eeprom/at24.c          |  18 +-
 drivers/nvmem/Kconfig          |   7 +
 drivers/nvmem/Makefile         |   3 +
 drivers/nvmem/core.c           | 689 ++++++++++++++++++++++++++++++-----------
 drivers/nvmem/imx-ocotp-ele.c  |  12 +-
 drivers/nvmem/internals.h      |  53 ++++
 drivers/nvmem/layouts.c        | 173 +++++++++++
 drivers/nvmem/layouts/Kconfig  |  13 +
 drivers/nvmem/layouts/Makefile |   7 +
 drivers/nvmem/ocotp.c          |  12 +-
 drivers/nvmem/regmap.c         |   5 +-
 drivers/of/base.c              | 280 +++++++++++------
 drivers/of/device.c            |  37 +++
 drivers/of/platform.c          |  36 +--
 include/linux/nvmem-consumer.h |  17 +-
 include/linux/nvmem-provider.h | 148 ++++++++-
 include/of.h                   | 146 ++++++++-
 include/of_device.h            |   3 +
 18 files changed, 1293 insertions(+), 366 deletions(-)
---
base-commit: 89bf1fcc998fc5fea0ce613d9930dd9ee39c0fb2
change-id: 20250701-v2025-06-0-topic-nvmem-c747b64106e2

Best regards,
-- 
Marco Felsch <m.felsch@pengutronix.de>



