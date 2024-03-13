Delivery-date: Wed, 13 Mar 2024 11:57:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkMIY-004HSk-1C
	for lore@lore.pengutronix.de;
	Wed, 13 Mar 2024 11:57:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkMIW-00014Q-BF
	for lore@pengutronix.de; Wed, 13 Mar 2024 11:57:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=TLoA6ksEd2NeKy74n3GBsyXxZlc19iECknKVY0hs56s=; b=FE15sS5uuTQFsyrL80aq+BOWuR
	WP4PNW597+720UwRJF6I6jcXiYlsEUaB2ANiH8ubow1/RmNGIBRid9LKzKRmsw2M4EicLQAcHQMN+
	QzBapVKPdfs4IVr1KDVYk5ydeXrXlH9ltFtA9B4mxipWsqMAzOYALvafXFFw/pkN+8PD+6/mAL8WN
	h7sQzf9GnHO+xJMzejZDOAqZE2bVCjrlp0EV6q6aQ1Y1SFvfUQfs9kC0pFgL7um0ZEY1zQuFirAqN
	1DWQButpv4CsVlkfgexnSYMhwl/sR6k6HJSvEshii+buOJrxBdxMkZhfi16HAbe4jfzIZhXMV+/QT
	L93xrCUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkMHt-00000009kT5-0SYB;
	Wed, 13 Mar 2024 10:56:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkMHi-00000009kKe-0Od6
	for barebox@lists.infradead.org;
	Wed, 13 Mar 2024 10:56:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkMHg-0008P5-Pv
	for barebox@lists.infradead.org; Wed, 13 Mar 2024 11:56:32 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkMHg-006612-Cy
	for barebox@lists.infradead.org; Wed, 13 Mar 2024 11:56:32 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkMHf-004FrF-2a
	for barebox@lists.infradead.org;
	Wed, 13 Mar 2024 11:56:32 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 13 Mar 2024 11:56:19 +0100
Message-Id: <20240313105631.686778-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240313_035634_322714_5FA95A6B 
X-CRM114-Status: UNSURE (   9.47  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 00/12] hw_random: add 6 more RNG drivers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

While stack protector support can be used without HWRNG, it will
print a warning about the fixed canary to alert to the fact that it
requires a random canary to be able to withstand an attacker.

Linux HWRNG drivers are surprisingly easy to port to barebox though,
so let's import 6 for commonly used platforms.

Notably missing is the CAAM for i.MX8M, which will follow separately.

Ahmad Fatoum (12):
  hw_random: support ctrlc()
  ARM: io: read 32 bits at once for aligned I/O memcpy/memset
  driver: implement dev_platform_get_and_ioremap_resource
  hw_random: add struct hwrng::priv member
  hw_random: remove confusing left-overs from kernel help texts
  hw_random: remove reference to undefined CONFIG_HW_RANDOM
  hw_random: add Atmel RNG driver
  hw_random: add BCM2835 RNG driver
  hw_random: add IPROC RNG200 driver for BCM2711
  hw_random: add Rockchip RNG support
  hw_random: add timeriomem_rng driver
  hw_random: add OMAP RNG driver

 arch/arm/dts/rk356x.dtsi           |   8 +
 arch/arm/lib32/io.c                |  73 +++--
 arch/arm/mach-omap/am33xx_clock.c  |   5 +
 drivers/base/driver.c              |  19 ++
 drivers/hw_random/Kconfig          |  50 +++-
 drivers/hw_random/Makefile         |   6 +
 drivers/hw_random/atmel-rng.c      | 165 +++++++++++
 drivers/hw_random/bcm2835-rng.c    | 199 +++++++++++++
 drivers/hw_random/core.c           |   8 +-
 drivers/hw_random/iproc-rng200.c   | 220 +++++++++++++++
 drivers/hw_random/omap-rng.c       | 436 +++++++++++++++++++++++++++++
 drivers/hw_random/rockchip-rng.c   | 259 +++++++++++++++++
 drivers/hw_random/timeriomem-rng.c | 145 ++++++++++
 include/driver.h                   |   4 +
 include/linux/clk.h                |  33 +++
 include/linux/hw_random.h          |   6 +
 include/mach/omap/am33xx-clock.h   |   1 +
 17 files changed, 1613 insertions(+), 24 deletions(-)
 create mode 100644 drivers/hw_random/atmel-rng.c
 create mode 100644 drivers/hw_random/bcm2835-rng.c
 create mode 100644 drivers/hw_random/iproc-rng200.c
 create mode 100644 drivers/hw_random/omap-rng.c
 create mode 100644 drivers/hw_random/rockchip-rng.c
 create mode 100644 drivers/hw_random/timeriomem-rng.c

-- 
2.39.2



