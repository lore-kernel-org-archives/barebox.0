Delivery-date: Thu, 14 Aug 2025 15:51:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umYN4-000Wdb-2l
	for lore@lore.pengutronix.de;
	Thu, 14 Aug 2025 15:51:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umYN2-0005CH-BU
	for lore@pengutronix.de; Thu, 14 Aug 2025 15:51:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=qyE8L6/N2RxijVTbO67gKT2TMSWa3XDg/N/sr86Aj6s=; b=UptGcCo8JRS+wygYQHhihR6XnL
	j+l76xW5/YwaEeShphaX2a/mRnQscdgNco/D1Z79kGUiV1lP21GcWxyHJcMywoAQzrew6NFAW1Csa
	L6iXKvwjBZa3cZveFN2EMmkYr8zQ509kCcla2AbErK1y1kO1rXRLYA7XAVDU9KBhimAMa4yikgp5L
	9W+5Dv0CQiLIsHr6zCso++IEAuy6c7Sbj2MkA6wXGm6P9D9EscG6XggARiX5TTsvBGUNp6DUH5ms6
	vNNR9owJB/81nCGEkWhYi+7tIEnSiFzV1yacpHqIbuCS0ATmAUS+yEL8CHhrjDOHuA7UbriD1anQj
	SuOvaT6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umYMW-0000000H6hm-1s5Q;
	Thu, 14 Aug 2025 13:51:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umXfe-0000000GvRk-2XFu
	for barebox@lists.infradead.org;
	Thu, 14 Aug 2025 13:07:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1umXfd-0006HF-22
	for barebox@lists.infradead.org; Thu, 14 Aug 2025 15:07:05 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1umXfb-000GGj-0K
	for barebox@lists.infradead.org;
	Thu, 14 Aug 2025 15:07:03 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1umXfb-00Gwpv-02
	for barebox@lists.infradead.org;
	Thu, 14 Aug 2025 15:07:03 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 14 Aug 2025 15:06:45 +0200
Message-Id: <20250814130702.4039241-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250814_060706_804143_320623BE 
X-CRM114-Status: GOOD (  17.03  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH RFC 00/17] Add security policy support
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

Sascha Hauer (1):
  commands: implement sconfig command

 .gitignore                                    |   4 +
 Documentation/devel/devel.rst                 |   1 +
 Documentation/devel/security-policies.rst     |  89 +++
 Documentation/user/defaultenv-2.rst           |   2 +
 Documentation/user/security-policies.rst      | 110 ++++
 Documentation/user/user-manual.rst            |   1 +
 Makefile                                      |  81 ++-
 Sconfig                                       |   9 +
 arch/arm/configs/virt32_secure_defconfig      | 302 ++++++++++
 commands/Kconfig                              |  23 +
 commands/Makefile                             |   1 +
 commands/Sconfig                              |  12 +
 commands/go.c                                 |   4 +
 commands/sconfig.c                            | 219 +++++++
 common/Kconfig                                |   5 +
 common/Sconfig                                |  24 +
 common/boards/qemu-virt/Makefile              |   5 +-
 common/boards/qemu-virt/board.c               |  11 +
 common/boards/qemu-virt/commandline.c         |  74 +++
 common/boards/qemu-virt/commandline.h         |   9 +
 .../qemu-virt/qemu-virt-factory.sconfig       |  24 +
 .../qemu-virt/qemu-virt-lockdown.sconfig      |  24 +
 common/bootm.c                                |  58 +-
 common/console.c                              |   4 +-
 common/ratp/ratp.c                            |  17 +
 defaultenv/Makefile                           |   1 +
 .../bin/ps1-policy                            |  20 +
 .../init/ps1-policy                           |   1 +
 .../init/source-colors                        |   1 +
 defaultenv/defaultenv.c                       |   2 +
 include/security/config.h                     |  76 +++
 include/security/defs.h                       |  22 +
 include/security/policy.h                     |  54 ++
 scripts/Kbuild.include                        |  41 ++
 scripts/Makefile                              |   1 -
 scripts/Makefile.build                        |  18 +-
 scripts/Makefile.lib                          |  47 ++
 scripts/Makefile.policy                       |  43 ++
 scripts/Sconfig.include                       |   6 +
 scripts/basic/.gitignore                      |   1 +
 scripts/basic/Makefile                        |   4 +-
 scripts/basic/sconfigpost.c                   | 540 ++++++++++++++++++
 scripts/include/list.h                        |   7 +
 scripts/kconfig/Makefile                      |   3 +
 scripts/kconfig/list.h                        | 132 -----
 security/Kconfig                              |   2 +
 security/Kconfig.policy                       | 101 ++++
 security/Makefile                             |  38 ++
 security/Sconfig                              |  42 ++
 security/policy.c                             | 246 ++++++++
 security/qemu-virt-devel.sconfig              |  24 +
 security/qemu-virt-tamper.sconfig             |  24 +
 security/sconfig_names.c                      |  18 +
 test/arm/virt32_secure_defconfig.yaml         |  22 +
 test/py/test_policies.py                      |  49 ++
 55 files changed, 2543 insertions(+), 156 deletions(-)
 create mode 100644 Documentation/devel/security-policies.rst
 create mode 100644 Documentation/user/security-policies.rst
 create mode 100644 Sconfig
 create mode 100644 arch/arm/configs/virt32_secure_defconfig
 create mode 100644 commands/Sconfig
 create mode 100644 commands/sconfig.c
 create mode 100644 common/Sconfig
 create mode 100644 common/boards/qemu-virt/commandline.c
 create mode 100644 common/boards/qemu-virt/commandline.h
 create mode 100644 common/boards/qemu-virt/qemu-virt-factory.sconfig
 create mode 100644 common/boards/qemu-virt/qemu-virt-lockdown.sconfig
 create mode 100755 defaultenv/defaultenv-2-security-policy/bin/ps1-policy
 create mode 100644 defaultenv/defaultenv-2-security-policy/init/ps1-policy
 create mode 100644 defaultenv/defaultenv-2-security-policy/init/source-colors
 create mode 100644 include/security/config.h
 create mode 100644 include/security/defs.h
 create mode 100644 include/security/policy.h
 create mode 100644 scripts/Makefile.policy
 create mode 100644 scripts/Sconfig.include
 create mode 100644 scripts/basic/sconfigpost.c
 create mode 100644 scripts/include/list.h
 delete mode 100644 scripts/kconfig/list.h
 create mode 100644 security/Kconfig.policy
 create mode 100644 security/Sconfig
 create mode 100644 security/policy.c
 create mode 100644 security/qemu-virt-devel.sconfig
 create mode 100644 security/qemu-virt-tamper.sconfig
 create mode 100644 security/sconfig_names.c
 create mode 100644 test/arm/virt32_secure_defconfig.yaml
 create mode 100644 test/py/test_policies.py

-- 
2.39.5



