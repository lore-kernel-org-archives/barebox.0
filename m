Delivery-date: Wed, 17 Sep 2025 15:54:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uysc4-0045nw-0X
	for lore@lore.pengutronix.de;
	Wed, 17 Sep 2025 15:54:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uysc2-0006nc-Vr
	for lore@pengutronix.de; Wed, 17 Sep 2025 15:54:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GP64QqCX+WVqNRnQpGWfxfie3VjSi8xBKsLXWDR5tHo=; b=vKGHzW9TOnGCs8
	BhoztGEUddpjK/EX611BHuymvjhQi8XZ0d23M+8BlIVAbVhLOZYKVmeO/OXt/J/bK39LjudGBaVhf
	2NISwqY4L8+JNwS1s2YamNw9mEV29xgyQJ8Xgzwq3oHsPOn4ILDt4eZ3Jgxie1ShrF3h8+h7eirUP
	2BuSy+QjoAllWFC8aLpjjOW+A2a4WG+c+6fPrY7umylAT81NokrAi01/eKknPgvBOrdoBlHReFhg0
	MZqWSvTuzNOlVLvZZN+JRvKPxkIi5GWEQ6HGj+T/ej0jQAsBiAP58gOBL4t0gOMQjgKassspo/cLF
	UU7sBJSWcRNtAFzDuFew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uysbY-0000000Bt2N-0zBv;
	Wed, 17 Sep 2025 13:53:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uysbS-0000000Bsuo-3TuV
	for barebox@lists.infradead.org;
	Wed, 17 Sep 2025 13:53:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uysbB-0006AW-5W; Wed, 17 Sep 2025 15:53:29 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uysbA-001luL-2a;
	Wed, 17 Sep 2025 15:53:28 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uysbA-0000000CZtI-2qQu;
	Wed, 17 Sep 2025 15:53:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Sep 2025 15:53:20 +0200
Message-Id: <20250917-security-policies-v2-0-f30769a3ff51@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAFC9ymgC/32NQQqDMBBFryKzbkqMtpGuvEdx0WYmOlASSWJQx
 Ls39QBdvg/v/R0iBaYIj2qHQJkje1dAXSow08uNJBgLg5LqJjslRSSzBE6bmP2HTVFF21jdtFp
 jo2oo3hzI8no2n0PhiWPyYTsvcv1b/9VyLaTQd4ukpcU3dv1MblxS8I7XKxIMx3F8AahPUqK3A
 AAA
X-Change-ID: 20250820-security-policies-43f73477d321
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758117208; l=9141;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=RzEuS6oBYQF0bGd+/YQT/6mrIR+wRuJELntqLkiEaPw=;
 b=jkvdqkutw1OPhHbLA7lNWK8Nj7pPA4csXk1vmyqW3/nnUy6TXYecyPL9hgrfMufrn2d4Q3bj/
 934b0wY9B13DcnyBte1wWv/6BRRJAW8pQe+fLUnC3fw5Tfa5rOSbQF2
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250917_065347_120411_A2187F5A 
X-CRM114-Status: GOOD (  22.09  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 00/24] Add security policy support
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

Changes in v2:
- drop security policies for each filesystem. This needs to be reworked.
  A filesystem can safely be mounted when the source is trusted (i.e.
  the fs image is compiled into barebox, or is authorized using upcoming
  dm-verity support) no matter which filesystem type is mounted.
  Therefore just add a policy which selects between "all fs allowed" and
  "no fs allowed except ramfs".
- fix adding policy-y to non leaf directories
- remove policy-list files before recreating them to avoid stale entries
- Drop $(ARCH) string from .sconfig files
- bail out with a user friendly message when make security_* is invoked
  with security policies being disabled in the config
- document that policies should always go from restrictive to relaxed,
  not the other way round
- Link to v1: https://lore.barebox.org/20250820-security-policies-v1-0-76fde70fdbd8@pengutronix.de

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
 Documentation/user/security-policies.rst           | 131 +++++
 Documentation/user/user-manual.rst                 |   1 +
 Makefile                                           |  95 +++-
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
 common/boards/qemu-virt/qemu-virt-factory.sconfig  |  36 ++
 common/boards/qemu-virt/qemu-virt-lockdown.sconfig |  35 ++
 common/bootm.c                                     |  58 ++-
 common/console.c                                   |  11 +-
 common/console_ctrlc.c                             |   4 +
 common/console_simple.c                            |   7 +
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
 fs/Sconfig                                         |   5 +
 fs/fs.c                                            |   4 +
 include/linux/usb/usbserial.h                      |  11 +
 include/security/config.h                          |  76 +++
 include/security/defs.h                            |  22 +
 include/security/policy.h                          |  54 +++
 scripts/Kbuild.include                             |  41 ++
 scripts/Makefile                                   |   1 -
 scripts/Makefile.build                             |  18 +-
 scripts/Makefile.lib                               |  47 ++
 scripts/Makefile.policy                            |  38 ++
 scripts/Sconfig.include                            |   6 +
 scripts/basic/.gitignore                           |   1 +
 scripts/basic/Makefile                             |   4 +-
 scripts/basic/sconfigpost.c                        | 540 +++++++++++++++++++++
 scripts/include/list.h                             |   7 +
 scripts/kconfig/Makefile                           |   3 +
 scripts/kconfig/list.h                             | 132 -----
 security/Kconfig                                   |   2 +
 security/Kconfig.policy                            | 104 ++++
 security/Makefile                                  |  39 ++
 security/Sconfig                                   |  34 ++
 security/policy.c                                  | 239 +++++++++
 security/qemu-virt-devel.sconfig                   |  36 ++
 security/qemu-virt-tamper.sconfig                  |  35 ++
 security/sconfig_names.c                           |  18 +
 test/arm/virt32_secure_defconfig.yaml              |  22 +
 test/py/test_policies.py                           |  48 ++
 68 files changed, 2778 insertions(+), 156 deletions(-)
---
base-commit: f3be3a8e9ae884bdfb116238e9049b1eb2759810
change-id: 20250820-security-policies-43f73477d321

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



