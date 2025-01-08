Delivery-date: Wed, 08 Jan 2025 16:24:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVXvQ-000n63-25
	for lore@lore.pengutronix.de;
	Wed, 08 Jan 2025 16:24:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVXvQ-0004Kl-It
	for lore@pengutronix.de; Wed, 08 Jan 2025 16:24:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=O3GAFO6JhPS9m+Vc5lSrJ24mivN6J5FTRJRdsOfj/ZY=; b=KfAyyhdAAU9rQtyu+XUs4QFDpC
	O9kWNcKlI8njRCh0umHlbH0hQQ6iwS0dTk/n8c6+aEft8TNzWadzULJ0Hj8+Y878CxK7kivvIflqV
	lvq/Y9jQ+pm5TxCgQzFddWYhdduUVSgFZ2ETFPVYn0GughUaVJZ2gtfV2xxP1pay6BjIuHslg4DUY
	iH6NBkK2rQg2LP0rgT4VdoNwHpX3JLjtnSOUkreEonk6Y9KRQO3YSwf71QdJgBH4otHaoO+WE2pqe
	hv+VRVwI/cPod5HUYNiV+6o+EBt7P8SexwE9ZX5BWuesltA4zXj4Uw2nZylRA2cX9wj5wsA4NqxHo
	oHkroqPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVXv2-00000008x9X-1sma;
	Wed, 08 Jan 2025 15:24:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVXv0-00000008x7U-0LpQ
	for barebox@lists.infradead.org;
	Wed, 08 Jan 2025 15:24:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tVXui-0003vu-T5; Wed, 08 Jan 2025 16:24:08 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tVXuh-007Xmv-2t;
	Wed, 08 Jan 2025 16:24:08 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tVXui-001Mmj-1x;
	Wed, 08 Jan 2025 16:24:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 08 Jan 2025 16:24:07 +0100
Message-Id: <20250108-k3-i2c-v1-0-cf088462217b@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJeYfmcC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDQwML3Wxj3UyjZN3UtGSDRMtk82QLA3MloOKCotS0zAqwQdGxtbUAcUY
 9GVgAAAA=
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1736349848; l=1051;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=r74tPybU4zInpjCj2a/sLq3EFBlnf4/iGjpbTU0zQkk=;
 b=JyhJefMt2fMtDGEW37Q0Gx7X7iv0askuJDSFSHoGjqFpC/yDsljIS+cd9s5st9uiIUg/Wt5yn
 G/IdlwRfnObDSgLg2jQHp6wvUzjN8TA26XRCYBQk88JqvLfZ/Mb5mGh
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250108_072426_134504_7021A39A 
X-CRM114-Status: GOOD (  10.14  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/3] add K3 I2C and tps65219 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This series adds I2C support for TI K3 SoCs along with support for
the TI tps65219 PMIC chip which is often found on K3 boards.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (3):
      i2c: omap: add ti,am64-i2c compatible
      mfd: add tps65219 support
      regulator: add tps65219 regulator support

 drivers/i2c/busses/Kconfig             |   2 +-
 drivers/i2c/busses/i2c-omap.c          |   3 +
 drivers/mfd/Kconfig                    |   5 +
 drivers/mfd/Makefile                   |   1 +
 drivers/mfd/tps65219.c                 |  82 ++++++++
 drivers/regulator/Kconfig              |   4 +
 drivers/regulator/Makefile             |   1 +
 drivers/regulator/tps65219-regulator.c | 187 ++++++++++++++++++
 include/linux/mfd/tps65219.h           | 339 +++++++++++++++++++++++++++++++++
 9 files changed, 623 insertions(+), 1 deletion(-)
---
base-commit: 06e9050f42fd00f99fa0e5385bce8c1c9d3adf0e
change-id: 20250108-k3-i2c-efc0a9c7c807

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



