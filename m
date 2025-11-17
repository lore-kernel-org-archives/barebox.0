Delivery-date: Mon, 17 Nov 2025 09:36:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vKuih-001ura-0f
	for lore@lore.pengutronix.de;
	Mon, 17 Nov 2025 09:36:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vKuig-0001eW-1D
	for lore@pengutronix.de; Mon, 17 Nov 2025 09:36:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=yDWqtUY/lGq5h/ixpSZwqHXAxUhenUZw0moXuHHtlW0=; b=g7ylymCW2pa9v4XPiqFTk+YP9K
	aeNzpnju+jKkQla+gkvSVsxKApbpBVxH3LU6UdhG1F87rbluraySG8b+POTw4XA7xenOte4NJ4Ajw
	Br4qr87cg5KSgxmywswfnTNvmhvEbjo462H0djDGbYdXWGsQ2yvZOOouHZ/eUunGcvELNxGQBnQ44
	Z2L3EgUfjZCd8DZnt7EKHmo//CtTBzHLNbzR7WdfUnLZOPduiccqriDxyoUDhHNbuZ1B9GsQReDlU
	od7twnpx36BYNkNGmnm9VIDwi7u6LG2esHhU87L/fQ/EanqEs4UQN33i8RBiDQ5IBjjezj+U5rF68
	26z66/BA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKui9-0000000Fgro-38OH;
	Mon, 17 Nov 2025 08:35:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKui3-0000000Fgp8-1yXu
	for barebox@lists.infradead.org;
	Mon, 17 Nov 2025 08:35:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vKui0-0001Dz-3N; Mon, 17 Nov 2025 09:35:36 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vKuhz-000sfg-2O;
	Mon, 17 Nov 2025 09:35:35 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vKui0-00000005QZR-0EwF;
	Mon, 17 Nov 2025 09:35:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Nov 2025 09:35:33 +0100
Message-Id: <20251117-soc-uid-v2-0-a2415bf9133d@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAFXeGmkC/2XMQQ6CMBCF4auQWVvTGQGVlfcwLJp2gNm0pIUGQ
 7i7la3L/+Xl2yFxFE7QVTtEzpIk+BJ0qcBOxo+sxJUG0tQg4k2lYNUqThE6w/wY2NgWynuOPMh
 2Su++9CRpCfFzwhl/67+RUWlFT0NNy/qOdf2a2Y/rEoOX7eoY+uM4vq5L5q6jAAAA
X-Change-ID: 20251113-soc-uid-21daee8feac6
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763368535; l=2602;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=ltcRpb3kNbtjI05kVpckD9WLdad78tjZDKe0/bDov04=;
 b=kEWUZ4ANSxI4RCl6Q04MGPAbseiTOZ4CbQ8eR3h0jr5NJbwGkfujFqobBXcA0QvDQXRw7n6t1
 aTn1/meHXsuC7Wuq7e2noFtyB1JXk1QVgNd+LqK3HTQR2mXbP/W+hob
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251117_003539_522723_9B602E90 
X-CRM114-Status: GOOD (  15.45  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 0/9] Unify SoC UID and machine hashable data
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

SoC UID and machine hashable data are both based on the same data but
are both registered at different places with different functions.

This series aims to unify this by adding a function which uses the
passed SoC UID to provide it to the environment and also to register
machine hashable data.

The SoC ID code on i.MX is quite a mess and this series cleans this
up a bit. We have drivers/nvmem/ocotp.c which reads the SoC ID and
provides machine hashable data and we have drivers/soc/imx/soc-imx8m.c
which implements a SoC driver and exposes soc0.serial_number, but
the SoC driver only works on i.MX8M which is a subset of the SoCs
supported by the ocotp driver.

Furthermore I realized that on i.MX8MP the SoC ID is 128bit whereas
we currently only use 64bit which additionally read from the wrong
registers. This series fixes this, but doing so will change the
machine_id passed to Linux which may break userspace, so a new
config option ARCH_IMX8MP_KEEP_COMPATIBLE_SOC_UID is introduced.
Enabling this will keep the old SoC ID.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Changes in v2:
- Add CONFIG_ARCH_IMX8MP_KEEP_COMPATIBLE_SOC_UID
- Link to v1: https://lore.barebox.org/20251113-soc-uid-v1-0-29a256e07144@pengutronix.de

---
Sascha Hauer (9):
      introduce SoC UID
      soc: imx8mp: Soc ID is 128bit
      ARM: i.MX6: print leading zero for SoC ID
      nvmem: bsec: call barebox_set_soc_uid()
      nvmem: imx-ocotp-ele: call barebox_set_soc_uid()
      nvmem: ocotp: Fix SoC ID reading for i.MX8MP
      nvmem: imx-ocotp: call barebox_set_soc_uid()
      soc: imx8m: register SoC UID
      Documentation: migration: add i.MX8MP SoC UID change note

 .../migration-guides/migration-master.rst          | 10 ++++
 arch/arm/mach-imx/Kconfig                          | 10 ++++
 arch/arm/mach-imx/imx6.c                           |  2 +-
 common/misc.c                                      | 58 ++++++++++++++++++++++
 drivers/nvmem/bsec.c                               |  8 +--
 drivers/nvmem/imx-ocotp-ele.c                      | 12 +++--
 drivers/nvmem/ocotp.c                              | 48 +++++++++++++++---
 drivers/soc/imx/soc-imx8m.c                        | 37 ++++++++++----
 include/barebox-info.h                             |  4 ++
 include/mach/imx/generic.h                         |  5 ++
 10 files changed, 169 insertions(+), 25 deletions(-)
---
base-commit: 776a3ddf6823a8397763212bcc16d408ac4cc958
change-id: 20251113-soc-uid-21daee8feac6

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



