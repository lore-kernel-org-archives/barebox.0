Delivery-date: Wed, 13 Aug 2025 16:51:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umCoo-000Chy-2R
	for lore@lore.pengutronix.de;
	Wed, 13 Aug 2025 16:51:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umCom-0006uP-Bs
	for lore@pengutronix.de; Wed, 13 Aug 2025 16:51:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=SwXjzcwaZMKrWt/0zllwqJAt147AATrahSqZMKuy1Bo=; b=ksE5j9v9u44zHEAYuydeqhTLwq
	SQMksK8eiDhdRr67GyxeF/rrRkHWW6dF6iFESE+FnK3PLC3ZbRU7d19XWBtY6ccaeZ1r/gbbWkaKr
	mPhbPhX7bj9Q/Wlm9jk3ZsLvlXbdMC4zi8sY8JYOvQWTWkhjAQ25P2+gofWgWIfpM/YeB7rrNGjvE
	EoQaD/Zcwe8o6cqUeL+PTsSwKkD7sWFh+dbx8yjOHP+da8zsRh1nXvRha/+t014W9Q+IFBwEv5lum
	qS/f7LU1w7ciAojzhADQCQ1+SYEj8g6lnSCj8SYryj8yeF5iRD71d+Ua8WI5a9gG+hLnxP+hyQH9A
	bTfQ7E2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umCnw-0000000DxrU-42K1;
	Wed, 13 Aug 2025 14:50:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umCYE-0000000DvJl-0Qvz
	for barebox@lists.infradead.org;
	Wed, 13 Aug 2025 14:34:05 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1umCYA-0003xl-RK
	for barebox@lists.infradead.org; Wed, 13 Aug 2025 16:33:58 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Date: Wed, 13 Aug 2025 16:33:32 +0200
Message-Id: <20250813143345.3758653-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250813_073402_150960_F98CAB91 
X-CRM114-Status: UNSURE (   8.30  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 00/13] commands: add bfetch/buds of command redirection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

See patches for individual changelog.

Ahmad Fatoum (13):
  common: introduce structured I/O
  ARM: cpuinfo: support structio output
  commands: uptime: enable structured I/O
  string: implement strv_length helper
  ARM: psci: client: add PSCI version/method parameters
  net: move netmask_to_prefix into header
  optee: add revision info to tee devinfo output
  tee: enable structured I/O in devinfo handler
  security: blobgen: add easy way to check for existent providers
  clk: implement clk_have_nonfixed_providers
  commands: introduce bfetch command
  configs: enable bfetch in some popular defconfigs
  hush: structio: silence missing command error message

 arch/arm/configs/multi_v7_defconfig    |   1 +
 arch/arm/configs/multi_v8_defconfig    |   1 +
 arch/arm/cpu/cpuinfo.c                 |  47 +-
 arch/arm/cpu/psci-client.c             |  17 +-
 arch/riscv/configs/rv64i_defconfig     |   1 +
 arch/riscv/configs/virt32_defconfig    |   1 +
 arch/sandbox/configs/sandbox_defconfig |   1 +
 commands/Kconfig                       |  11 +
 commands/Makefile                      |   1 +
 commands/bfetch.c                      | 752 +++++++++++++++++++++++++
 commands/ip.c                          |  13 -
 commands/uptime.c                      |  34 +-
 common/Kconfig                         |   4 +
 common/Makefile                        |   1 +
 common/hush.c                          |   3 +-
 common/structio.c                      |  56 ++
 drivers/clk/clk-fixed.c                |   7 +
 drivers/clk/clk-fixed.h                |  11 +
 drivers/clk/clk.c                      |  14 +
 drivers/tee/optee/smc_abi.c            |  17 +-
 drivers/tee/tee_core.c                 |  25 +-
 include/blobgen.h                      |   7 +
 include/linux/clk.h                    |   9 +
 include/linux/string_choices.h         |  18 +
 include/net.h                          |  13 +
 include/param.h                        |  10 +
 include/string.h                       |   7 +
 include/stringlist.h                   |   6 +
 include/structio.h                     |  44 ++
 lib/string.c                           |  17 +
 security/blobgen.c                     |  18 +-
 31 files changed, 1102 insertions(+), 65 deletions(-)
 create mode 100644 commands/bfetch.c
 create mode 100644 common/structio.c
 create mode 100644 drivers/clk/clk-fixed.h
 create mode 100644 include/linux/string_choices.h
 create mode 100644 include/structio.h

-- 
2.39.5



