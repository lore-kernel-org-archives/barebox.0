Delivery-date: Fri, 10 Mar 2023 10:44:03 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paZIA-00FvjH-E7
	for lore@lore.pengutronix.de; Fri, 10 Mar 2023 10:44:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paZIA-0006mb-5s
	for lore@pengutronix.de; Fri, 10 Mar 2023 10:44:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=q24plz8LMBg4dSedpVvUn7nouzsI7K+jskR+K2KqSY8=; b=qn1+rU+40m/6kvcHZt8WxMv2lg
	usndMizeZl/cqJ19dtXbnNw4Wlv2pzAuHmiaJxT5yNTycoY93jTJguR4kzH7ZPzZqI+W5PmSAjzMr
	eZJn4qxQFC8q8Plt48VgSm++7q7UCoHbWeUyBmZq9GwfP6XinuWo3PYkg/QqWquiT6IgJMsB94sx0
	7qWFdXLQEcQEVkXEum40ElgxGpU9fov3Rtu9JxV/F5zHt+aNK/GYKCKGnDXMsb4+R0amgGESmKoWW
	GyRLyUGevqS2DYHcojhO6pbb6zfyQp9F9NGo9WIku3HyLaqFmOHhhgKv2UywDk5qS4edizzi43n+u
	NIrKaP2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paZGu-00DzBP-Cb; Fri, 10 Mar 2023 09:42:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paZGd-00Dz4k-Ju
	for barebox@lists.infradead.org; Fri, 10 Mar 2023 09:42:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1paZGb-0006Ly-DM; Fri, 10 Mar 2023 10:42:25 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1paZGa-00393y-O5; Fri, 10 Mar 2023 10:42:24 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1paZGZ-00B48z-EK; Fri, 10 Mar 2023 10:42:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 10 Mar 2023 10:42:15 +0100
Message-Id: <20230310094222.2538259-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230310_014227_836107_F3D11FE5 
X-CRM114-Status: GOOD (  13.54  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 0/7] support overlays to the barebox live tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Support for applying a device tree overlay to the barebox live tree
is already present. This series adds a few missing pieces:

- add support for applying overlays to the live tree from the command
  line
- add support for adding new I2C/SPI devices via overlays
- add Makefile magic to build dtbo files and dtbo.o files to include
  into the barebox binary from dtso files

Changes since v2:
- Don't build compressed dtbo files
- Do not build overlays for PBL
- rename symbols to __dtbo_ to avoid possible name clashes

Changes since v1:
- add a device_rescan() static inline wrapper
- add missing call to of_i2c_register_devices() in i2c_add_numbered_adapter()
- replace device_detect with device_rescan in of_device_create_on_demand()

Sascha Hauer (7):
  kbuild: Add target to build dtb overlay files
  driver: Add rescan hook to struct device
  i2c: implement rescan
  spi: Directly register SPI device
  spi: reduce scope of 'chip'
  spi: implement rescan
  of_overlay: Add option to apply overlay to live tree

 commands/of_overlay.c  | 38 ++++++++++++++++++++++++++++++++++----
 drivers/i2c/i2c.c      | 24 +++++++++---------------
 drivers/of/platform.c  | 12 +++++-------
 drivers/spi/spi.c      | 29 ++++++++++++++++++++++++-----
 include/driver.h       |  6 ++++++
 scripts/Makefile.build |  2 ++
 scripts/Makefile.lib   | 10 +++++++++-
 scripts/gen-dtbo-s     | 14 ++++++++++++++
 8 files changed, 103 insertions(+), 32 deletions(-)
 create mode 100755 scripts/gen-dtbo-s

-- 
2.30.2



