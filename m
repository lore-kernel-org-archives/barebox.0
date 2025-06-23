Delivery-date: Mon, 23 Jun 2025 08:40:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTaqn-00AB16-1o
	for lore@lore.pengutronix.de;
	Mon, 23 Jun 2025 08:40:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTaqm-0001PW-7S
	for lore@pengutronix.de; Mon, 23 Jun 2025 08:40:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=EyQTtX9W9B9Io3y5e5Po6ubA1omSnn5XLe/xQXnckQk=; b=CFDgmE8x81RARVpYYGhiWIA1Cl
	GgKPA/QYppnqclbU4RlUvewdXrxZcGLrEnaKOS9wWMLDujlq/nkstaTt0KU/JCc1NwX4w0osTUBP1
	yKk/DZYOCT/LJpAp8OL0kqBoFEIYCi15V5G///e4hjnc4H6w9jgahAKi9m+z+W9fBm7K7g2rGzHKH
	DdipfCuIAQyuLFq32W8xExR62+ZM5LPYkDU/mFJ7ZhKX3Z6cdlh9PMxFYUepaTma+aq/Xc9Vgb0gG
	3KjaMRig0hlnC+mf7Jo3A9vlFdKX9uMe5W0lNzEkcsO+6bBXYOdttEQpZv4DAMVOVhTy5/5ICWCWV
	wSk5CAvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTaqF-00000001kai-1SMP;
	Mon, 23 Jun 2025 06:39:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTadg-00000001jLG-14iG
	for barebox@lists.infradead.org;
	Mon, 23 Jun 2025 06:26:45 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uTadf-0006dU-0c
	for barebox@lists.infradead.org; Mon, 23 Jun 2025 08:26:43 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Date: Mon, 23 Jun 2025 08:26:38 +0200
Message-Id: <20250623062641.3529615-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250622_232644_297357_571E4CDF 
X-CRM114-Status: GOOD (  10.12  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/3] test: test recent regressions/features
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We had a couple of regressions around unmounting, for which fixes are
already in master or in-flight.

This series adds tests for that and also a new test for bootchooser.
They are combined just for convenience as they share dependencies.

This series depends on the patches in following series:
  - 20250623062032.3527006-1-a.fatoum@barebox.org
  - 20250623062253.3528292-1-a.fatoum@barebox.org

Ahmad Fatoum (3):
  test: self: idr: add test for idr_remove in idr_for_each_entry
  test: py: test mount/unmount of pstore file system
  test: py: add bootchooser attempt decrement and locking test

 arch/arm/configs/multi_v5_v6_defconfig       |   1 +
 arch/arm/configs/multi_v7_defconfig          |   1 +
 arch/arm/configs/multi_v8_defconfig          |   1 +
 common/boards/qemu-virt/qemu-virt-flash.dtso |   5 +
 test/arm/virt@multi_v7_defconfig.yaml        |   1 +
 test/arm/virt@multi_v8_defconfig.yaml        |   1 +
 test/py/helper.py                            |  63 ++++++++
 test/py/test_bootchooser.py                  | 158 +++++++++++++++++++
 test/py/test_mount.py                        |  21 +++
 test/riscv/qemu-virt64@rv64i_defconfig.yaml  |   1 +
 test/riscv/qemu@virt32_defconfig.yaml        |   1 +
 test/self/idr.c                              |   8 +
 12 files changed, 262 insertions(+)
 create mode 100644 test/py/test_bootchooser.py
 create mode 100644 test/py/test_mount.py

-- 
2.39.5



