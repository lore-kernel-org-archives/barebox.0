Delivery-date: Wed, 20 Aug 2025 16:08:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uojU6-002diR-1c
	for lore@lore.pengutronix.de;
	Wed, 20 Aug 2025 16:08:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uojU4-0001lC-Sn
	for lore@pengutronix.de; Wed, 20 Aug 2025 16:08:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=64nuuu0Ica+ErXfbInx1del0Q2pKCpH5ZnpaDRQirSo=; b=CFeq2HV2rYo/rH
	ZgEs2F4E2BYVRszr8VIJOVZ5XTm6lnEQvrEejb6YrLxZBA+jQOuaHcxEynoZ8XNvUI5cESI80MYyF
	h5KZ3zbBcHFHDrogaXX9TQNRhUYFm0P8ucEIeaHdFN0ddptZB/qpy3/rlOUsEWS91pUYQtq7Q1cxN
	kiH/8/reDJes0g90k4YP/wYyTbT5lM5Ew6HMgj0UHjX0PodJqcvp+VLge/Vjspimf/ZIihK8oZ9Wh
	/vCF6fjUKittXiU1f97nWI8ue033z9K3Q2BabNYiwwbBm56KtQdGotuogZdW0B0z5dAzEI71ek83G
	8L9Uk3gFBmCZ2SL0cUVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uojTe-0000000Dwgs-3Kmb;
	Wed, 20 Aug 2025 14:07:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoihU-0000000Dju0-0txR
	for barebox@lists.infradead.org;
	Wed, 20 Aug 2025 13:18:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uoihK-0000fu-VN; Wed, 20 Aug 2025 15:17:50 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uoihK-001Fp5-1s;
	Wed, 20 Aug 2025 15:17:50 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uoihK-004jSI-1O;
	Wed, 20 Aug 2025 15:17:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 20 Aug 2025 15:17:44 +0200
Message-Id: <20250820-security-policies-v1-0-76fde70fdbd8@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPjKpWgC/x3MTQqAIBBA4avIrBP8KYyuEi3CphqIlLGikO6et
 HyL72VIyIQJOpGB8aJEYS+hKwF+HfcFJU2lwSjTqNYomdCfTMcjY9jIFyprOztbOzdZo6G4yDj
 T/T/74X0/d//Ep2MAAAA=
X-Change-ID: 20250820-security-policies-43f73477d321
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755695870; l=9093;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=caJ7reUkJQU9hCeDA2P0MdT+1DOl7rRQs6TQs5Y9/nE=;
 b=WWs1H5VdKMkeJprjvXuAc1OyU2s3VKrAAWexj0Bm+Ib93rELZlVKVz31p2nIt/ISHUsKvnctx
 x6iJ0WkLQo9DGiDOBDGD2Bar+xdDvgsv6Tafq5AmVtIGdq6YT0HVwcF
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_061800_414045_F576A068 
X-CRM114-Status: GOOD (  18.05  )
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
Cc: Ahmad Fatoum <a.fatoum@barebox.org>, Ahmad Fatoum <a.fatoum@pengutronix.de>
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
Subject: [PATCH 00/24] Add security policy support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Security policies are a mechanism for barebox to prevent, when so
desired, security relevant code from being executed.

Security policies are controlled via a second Kconfig menu structure
(called Sconfig) which collects security relevant options.

While the normal Kconfig menu structure is about feature support
enabled at compile time, a security policy determines whether a
feature is allowed or prohibited at runtime with an explicit focus
on security.

Except for a security policy's name, all security options are
boolean and control whether a built-in feature is allowed:

  config FASTBOOT_CMD_BASE
        bool
        prompt "Allow fastboot flash/erase commands"
        depends on $(kconfig-enabled,FASTBOOT_BASE)
        help
          This option enables the fastboot "flash" and "erase" commands.

The depends directive ensures the option is hidden when Fastboot support
isn't compiled in anyway. Otherwise, enabling the option should permit
normal operation as if the security policy support was disabled.

Disabling the option, will have the relevant functions return early,
often with a permission denied error.

Checking the state of a security config option is done with the
IS_ALLOWED macro. The macro evaluates to true if the option is
defined and enabled in the active security policy and false otherwise.

A partial manipulation of the active security policy is not desirable
as it makes security posture at runtime harder to reason about.

It's expected that boards will define a fixed set of policies,
e.g. devel, factory, lockdown and then consult eFuses or JSON web tokens
to determine which policy is to be applied.

Some precautions have been made to make sure the security policies have
been reviewed and changes to the security options do not go through
unnoticed during barebox updates: Automatic config updates are
prohibited, so if new options are not present or the other way round,
the build will just fail. The user is expected to run e.g.
make security_olddefconfig to explicitly sync the configuration and
commit the changes.

Changes in v1:
- Link to RFC:
  https://lore.kernel.org/all/20250814130702.4039241-1-a.fatoum@pengutronix.de/
- Add more actual security policies
- Fix some typos in Documentation
- Catch invalid policy names in sconfig command

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Ahmad Fatoum (16):
      kconfig: allow setting CONFIG_ from the outside
      scripts: include scripts/include for all host tools
      kbuild: implement loopable loop_cmd
      Add security policy support
      kbuild: allow security config use without source tree modification
      defaultenv: update PS1 according to security policy
      security: policy: support externally provided configs
      docs: security-policies: add documentation
      commands: go: add security config option
      console: ratp: add security config option
      bootm: support calling bootm_optional_signed_images at any time
      bootm: make unsigned image support runtime configurable
      ARM: configs: add virt32_secure_defconfig
      boards: qemu-virt: add security policies
      boards: qemu-virt: allow setting policy from command line
      test: py: add basic security policy test

Sascha Hauer (8):
      commands: implement sconfig command
      usbserial: add inline wrappers
      security: usbgadget: add usbgadget security policy
      security: fastboot: add security policy for fastboot oem
      security: shell: add policy for executing the shell
      security: add security policy for loading barebox environment
      security: add filesystem security policies
      security: console: add security policy for console input

 .gitignore                                         |   4 +
 Documentation/devel/devel.rst                      |   1 +
 Documentation/devel/security-policies.rst          |  96 ++++
 Documentation/user/defaultenv-2.rst                |   2 +
 Documentation/user/security-policies.rst           | 121 +++++
 Documentation/user/user-manual.rst                 |   1 +
 Makefile                                           |  81 +++-
 Sconfig                                            |  11 +
 arch/arm/configs/virt32_secure_defconfig           | 302 ++++++++++++
 commands/Kconfig                                   |  23 +
 commands/Makefile                                  |   1 +
 commands/Sconfig                                   |  12 +
 commands/go.c                                      |   4 +
 commands/sconfig.c                                 | 227 +++++++++
 common/Kconfig                                     |   5 +
 common/Sconfig                                     |  63 +++
 common/boards/qemu-virt/Makefile                   |   5 +-
 common/boards/qemu-virt/board.c                    |  11 +
 common/boards/qemu-virt/commandline.c              |  74 +++
 common/boards/qemu-virt/commandline.h              |   9 +
 common/boards/qemu-virt/qemu-virt-factory.sconfig  |  24 +
 common/boards/qemu-virt/qemu-virt-lockdown.sconfig |  24 +
 common/bootm.c                                     |  58 ++-
 common/console.c                                   |  15 +-
 common/console_simple.c                            |  11 +
 common/environment.c                               |   6 +
 common/fastboot.c                                  |   6 +
 common/hush.c                                      |  13 +
 common/parser.c                                    |   7 +
 common/ratp/ratp.c                                 |  17 +
 common/usbgadget.c                                 |  26 +
 defaultenv/Makefile                                |   1 +
 .../defaultenv-2-security-policy/bin/ps1-policy    |  20 +
 .../defaultenv-2-security-policy/init/ps1-policy   |   1 +
 .../init/source-colors                             |   1 +
 defaultenv/defaultenv.c                            |   2 +
 drivers/usb/gadget/Sconfig                         |  11 +
 drivers/usb/gadget/composite.c                     |   4 +
 drivers/usb/gadget/legacy/serial.c                 |   4 +
 fs/9p/vfs_super.c                                  |   4 +
 fs/Sconfig                                         |  76 +++
 fs/cramfs/cramfs.c                                 |   4 +
 fs/efi.c                                           |   4 +
 fs/efivarfs.c                                      |   4 +
 fs/ext4/ext_barebox.c                              |   5 +
 fs/fat/fat.c                                       |   5 +
 fs/jffs2/fs.c                                      |   5 +
 fs/nfs.c                                           |   6 +
 fs/pstore/ram.c                                    |   4 +
 fs/qemu_fw_cfg.c                                   |   6 +
 fs/smhfs.c                                         |   5 +
 fs/squashfs/squashfs.c                             |   4 +
 fs/tftp.c                                          |   6 +
 fs/ubifs/ubifs.c                                   |   6 +
 fs/ubootvarfs.c                                    |   6 +
 fs/uimagefs.c                                      |   4 +
 include/linux/usb/usbserial.h                      |  11 +
 include/security/config.h                          |  76 +++
 include/security/defs.h                            |  22 +
 include/security/policy.h                          |  54 +++
 scripts/Kbuild.include                             |  41 ++
 scripts/Makefile                                   |   1 -
 scripts/Makefile.build                             |  18 +-
 scripts/Makefile.lib                               |  47 ++
 scripts/Makefile.policy                            |  43 ++
 scripts/Sconfig.include                            |   6 +
 scripts/basic/.gitignore                           |   1 +
 scripts/basic/Makefile                             |   4 +-
 scripts/basic/sconfigpost.c                        | 540 +++++++++++++++++++++
 scripts/include/list.h                             |   7 +
 scripts/kconfig/Makefile                           |   3 +
 scripts/kconfig/list.h                             | 132 -----
 security/Kconfig                                   |   2 +
 security/Kconfig.policy                            | 101 ++++
 security/Makefile                                  |  39 ++
 security/Sconfig                                   |  42 ++
 security/policy.c                                  | 246 ++++++++++
 security/qemu-virt-devel.sconfig                   |  24 +
 security/qemu-virt-tamper.sconfig                  |  24 +
 security/sconfig_names.c                           |  18 +
 test/arm/virt32_secure_defconfig.yaml              |  22 +
 test/py/test_policies.py                           |  49 ++
 82 files changed, 2875 insertions(+), 156 deletions(-)
---
base-commit: 284e9d9c4a7d3037c8cf97acc63c6153a83f8652
change-id: 20250820-security-policies-43f73477d321

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



