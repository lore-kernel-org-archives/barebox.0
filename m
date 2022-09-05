Delivery-date: Mon, 05 Sep 2022 12:58:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oV9no-007PO1-8h
	for lore@lore.pengutronix.de; Mon, 05 Sep 2022 12:58:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oV9nj-0000Lc-Nv
	for lore@pengutronix.de; Mon, 05 Sep 2022 12:58:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=8qWpy5D1OJhHxanEl7lHNk5c7MkL5ywa4dbVc6UDcIg=; b=qom7JOx7OM2I+QmpuGcnYJFJpt
	KcEZJis7N6gYJ9b2da2YpUsxMJahqMfog/vY4c2NMMnm3QBps3ea1RxuGp8DaxfvjCAdd1J+2FDls
	GGfBN18bG2FL6+sUbOZfGLEnyH5UYtr90BQXOP2b09hDZbJdQt+7WAW8BF3qIOFARkAn9AH/dZJ6Q
	oi0COLVG85yzWWnAG/ALT6y0IejLiLbyxJ4d0z79GDiB9RJ7venTvaxqhDQG286gkWrGN6fV4ARKQ
	HckuvWR44v3CvFh/EdDZm+QUK5TNN9w+eoau3ArvLqJbPzOpq5DHlF4xmNdbEW/N1ja4noMaU3Q3w
	Hwfuwzow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV9hD-000fhg-4C; Mon, 05 Sep 2022 10:51:15 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV8qH-00H4Kl-BV
	for barebox@bombadil.infradead.org; Mon, 05 Sep 2022 09:56:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=8qWpy5D1OJhHxanEl7lHNk5c7MkL5ywa4dbVc6UDcIg=; b=RkQZ/1R1tW+3hDTpoIS72s634A
	UqMKTgzHctAc5RxlJsFg+tI6crATa2oeSnXL2W21SPMow9/W18MzGGyjzuRrX3Xz8JiuFqmdVMylf
	rMfgzr/u8f4Ro786OpW+FfCVw0REL9ZWZVCUCHTK/f/9UhCvdtSS99po4Y2qbwF03rDmFR5zgO3Tk
	bH5nVwbZzSgcvG5npDJ2NnRJ7BkL+/mBgCQm3IR/R5U01SggRTzYLimEworSMhejD8PXXUxM3L9px
	/+dtL7/65zLPjDgpqjUC3k2auu5UyyxkAqQAOKHjM6sVeD+c0GNgw7QVcuX7aCu+E/ntIHxYqxwoB
	HMKJDsXQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV8q1-009UjF-Vj
	for barebox@lists.infradead.org; Mon, 05 Sep 2022 09:56:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8pr-0008Gh-2G
	for barebox@lists.infradead.org; Mon, 05 Sep 2022 11:56:07 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8po-0042GN-AM
	for barebox@lists.infradead.org; Mon, 05 Sep 2022 11:56:06 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8pl-002Wdd-Sy
	for barebox@lists.infradead.org; Mon, 05 Sep 2022 11:56:01 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon,  5 Sep 2022 11:55:25 +0200
Message-Id: <20220905095557.596891-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_105618_801834_DF4970A3 
X-CRM114-Status: GOOD (  10.30  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 00/32] treewide: fix some clang-analyze static analyzer warnings
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

I ran scan-build while building barebox for sandbox with clang and
patched some of the reported issues.

Ahmad Fatoum (32):
  clk: define stub implementation for clk_get_parent
  clk: have SCMI and SiFive clock controllers depend on COMMON_CLK
  meminfo: support SANDBOX build with DEBUG log level
  net: phy: micrel: drop useless assignment of dummy read
  mci: core: drop useless assignment
  nvmem: core: propagate read failure
  fs: remove never-read initializer in mount_all()
  usb: otg: always propagate failure to register parameters
  usb: dwc2: gracefully handle unknown hs_phy_type
  state: propagate failure to fixup enum32 into DT
  of: silence warning about never-read error assignment
  commands: trigger: drop unused variable
  commands: tutorial: fix memory leak
  bthread: fix null pointer dereference in error path
  common: env: drop never-read initialization
  of: refactor for of_fixup_reserved_memory() for clarity
  password: avoid static analyzer false positive
  regmap-mmio: regmap_mmio_get_min_stride: unify branches for
    readability
  crypto: caam - delete unused variable
  misc: ubootvar: always initialize struct ubootvar_data::flag
  nvmem: core: drop always true condition
  of: fdt: gracefully handle out-of-place properties
  of: overlay: drop unused variable of_overlay_apply_dir()
  of: partition: drop unused variable
  serial: ns16550_pci: drop useless assignment
  phy: core: drop useless else clause
  fs: ext4: ext_barebox: handle ext_get_inode() errors
  fs: fat: propagate f_lseek failure
  fs: drop duplicate follow_managed() call
  lib: parse_area_spec: guard against NULL pointer dereference
  net: ping: propagate failure
  net: fastboot: keep error message initialized at all times

 commands/trigger.c                  |  5 +----
 commands/tutorial.c                 |  7 ++----
 common/bthread.c                    |  2 ++
 common/env.c                        |  2 +-
 common/meminfo.c                    |  6 ++++--
 common/oftree.c                     |  6 ++++--
 common/password.c                   |  4 ++--
 common/state/state_variables.c      |  2 ++
 drivers/base/regmap/regmap-mmio.c   |  2 +-
 drivers/clk/Kconfig                 |  5 ++++-
 drivers/crypto/caam/jr.c            |  2 --
 drivers/mci/mci-core.c              |  2 +-
 drivers/misc/ubootvar.c             |  2 +-
 drivers/net/phy/micrel.c            |  2 +-
 drivers/nvmem/core.c                |  8 ++++++-
 drivers/of/fdt.c                    |  2 +-
 drivers/of/overlay.c                |  3 ---
 drivers/of/partition.c              |  3 ---
 drivers/of/resolver.c               |  1 +
 drivers/phy/phy-core.c              |  2 --
 drivers/serial/serial_ns16550_pci.c |  2 +-
 drivers/usb/dwc2/core.c             |  3 +++
 drivers/usb/otg/otgdev.c            | 33 ++++++++++++++++-------------
 fs/ext4/ext_barebox.c               | 18 ++++++++++------
 fs/fat/fat.c                        |  5 +++++
 fs/fs.c                             | 15 ++++---------
 include/linux/clk.h                 | 20 ++++++++++-------
 lib/misc.c                          |  2 ++
 net/fastboot.c                      |  2 ++
 net/net.c                           |  2 +-
 30 files changed, 95 insertions(+), 75 deletions(-)

-- 
2.30.2



