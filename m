Delivery-date: Fri, 17 May 2024 15:27:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7xci-001lOX-0A
	for lore@lore.pengutronix.de;
	Fri, 17 May 2024 15:27:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7xcg-0003Z2-D4
	for lore@pengutronix.de; Fri, 17 May 2024 15:27:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=vq+7hDgYoYSLPqLFJY/etyERPlxi1jhgw1w/YD3V+/4=; b=IJ73yV8FFlcDvPxJ5AhKIfznyL
	2Sm0S717GdLf17pxadXxe1d2inmlhQyrFaHHy/4R/HGIC7UrsZo2JsDHdQkqWTIMJx50+NfpuDRUr
	zgFd0ns2jA5K7lign5HDhYWC0YQdfofqQ780shriSdST7wFODY3ccSMgpWCwaddNo+buudU4l7Xwg
	CTyn85SKkl2Ppz/mVi1hsTTPlNrO6p2/7mzWGkRL+D8iTQlQBWzgigIjZ0sesBMaeddkPQLsHzuMj
	A8nRB9kmuYN2N1kZF3f41HoxY4Z1tslKstLpl9/VSySYp63/3+KLwIb0L/WDJgepDTXHgPOqZDN+F
	B3u3X1vQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7xc8-00000007wpd-03RI;
	Fri, 17 May 2024 13:27:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7xbx-00000007wjQ-3p6a
	for barebox@lists.infradead.org;
	Fri, 17 May 2024 13:27:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7xbt-00032e-Dx
	for barebox@lists.infradead.org; Fri, 17 May 2024 15:26:57 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7xbt-001sCB-1T
	for barebox@lists.infradead.org; Fri, 17 May 2024 15:26:57 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7xbs-00DEM4-35
	for barebox@lists.infradead.org;
	Fri, 17 May 2024 15:26:57 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 17 May 2024 15:26:48 +0200
Message-Id: <20240517132656.3151273-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240517_062702_163764_27962EAD 
X-CRM114-Status: GOOD (  14.36  )
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
Subject: [PATCH 0/8] kconfig: cut down on duplication with merged defconfigs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We currently use scripts/kconfig/merge_config.sh only in MAKEALL.
Linux has been using it inside Kbuild as well to derive new defconfigs
from the existing ones that differ only by a few options, e.g. to enable
virtualization or to switch endianness.

This is useful for us in barebox as well to cut down on the number of
configs and to avoid bitrot in the less used ones, e.g. a lot of AT91
configs can probably be replaced with two lines in mach-at91/Makefile
each this way and e.g. x86 defconfig could have a virtio.defconfig for
use with Qemu.

This series adds the infrastructure for this and some example defconfig
targets that are derived from existing defconfigs:
  - ARCH=mips    qemu-malta_defconfig -> qemu-malta(64)?(el)_defconfig
  - ARCH=sandbox sandbox_defconfig -> (headless|noshell|lockdown)_defconfig

Configs added with the new mechanism are automatically discoverable by
CI and so this should increase build coverage with minimal development
overhead.

Ahmad Fatoum (8):
  test: move common config fragments into common/boards/configs
  kconfig: merge_config.sh: sync with Linux v6.9
  kbuild: add support for merged defconfigs
  MIPS: make use of merged defconfigs
  sandbox: stdio: fix ctrlc link error when CONFIG_CONSOLE_NONE=y
  net: fix build with CONFIG_SHELL_NONE
  power: reset: reboot-mode: fix link error without globalvar
  sandbox: add headless_defconfig

 .github/workflows/build-defconfigs.yml        |  8 +-
 .github/workflows/test-labgrid-pytest.yml     |  6 +-
 Documentation/boards/mips/qemu-malta.rst      | 11 +++
 Makefile                                      |  6 +-
 arch/mips/Makefile                            |  8 ++
 arch/mips/configs/le.config                   |  1 +
 arch/mips/configs/mips64.config               |  2 +
 arch/mips/configs/qemu-malta64el_defconfig    | 97 -------------------
 arch/sandbox/Makefile                         |  8 ++
 .../boards/configs/base.config                |  0
 .../boards/configs/disable_size_check.config  |  0
 .../configs/disable_target_tools.config       |  0
 .../boards/configs/enable_self_test.config    |  0
 .../boards/configs/enable_werror.config       |  0
 .../boards/configs/full.config                |  0
 common/boards/configs/headless.config         |  3 +
 common/boards/configs/noshell.config          |  2 +
 .../boards/configs/virtio-pci.config          |  0
 drivers/power/reset/reboot-mode.c             |  5 +-
 include/command.h                             |  8 ++
 include/stdio.h                               |  2 -
 net/Kconfig                                   |  1 -
 scripts/Makefile.defconf                      | 37 +++++++
 scripts/container.sh                          |  2 +-
 scripts/kconfig/merge_config.sh               | 40 ++++++--
 scripts/list-defconfigs.sh                    | 20 ++--
 test/emulate.pl                               | 10 +-
 test/x86/virtio@efi_defconfig.yaml            |  2 +-
 28 files changed, 145 insertions(+), 134 deletions(-)
 create mode 100644 arch/mips/configs/le.config
 create mode 100644 arch/mips/configs/mips64.config
 delete mode 100644 arch/mips/configs/qemu-malta64el_defconfig
 rename test/kconfig/base.cfg => common/boards/configs/base.config (100%)
 rename test/kconfig/disable_size_check.kconf => common/boards/configs/disable_size_check.config (100%)
 rename test/kconfig/disable_target_tools.kconf => common/boards/configs/disable_target_tools.config (100%)
 rename test/kconfig/enable_self_test.kconf => common/boards/configs/enable_self_test.config (100%)
 rename test/kconfig/enable_werror.kconf => common/boards/configs/enable_werror.config (100%)
 rename test/kconfig/full.cfg => common/boards/configs/full.config (100%)
 create mode 100644 common/boards/configs/headless.config
 create mode 100644 common/boards/configs/noshell.config
 rename test/kconfig/virtio-pci.cfg => common/boards/configs/virtio-pci.config (100%)
 create mode 100644 scripts/Makefile.defconf

-- 
2.39.2



