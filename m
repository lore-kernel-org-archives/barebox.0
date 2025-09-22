Delivery-date: Mon, 22 Sep 2025 18:19:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v0jFw-0060xq-17
	for lore@lore.pengutronix.de;
	Mon, 22 Sep 2025 18:19:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v0jFv-0001yS-F5
	for lore@pengutronix.de; Mon, 22 Sep 2025 18:19:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3A433XFusBwsm/vg3regTUbIuKOuw6NqcO1kA+9nhaY=; b=aJdJir66IzpyFLuNSv6Gdck8K0
	2z3+MVZN0pRm7mQ7FDBP18lzMyTSsgoW0+Kcw0RHjlqdNUBRHqBTFW4kTXC+r/FXIpj1s5OhXus7A
	Y8mBnBjMMZ5dl+sVCWl24W1F4XdWacwZsqaroh81ULzdg4VqRwYQ9t79SEwmpkWzt8w7tGAKTPcNf
	71PkmriFFZChTWv/ASollIoNGI8yCf5jtVrZuyDHoPHy+/exRFYCz8a5XPjxi7APt2FAWm3ooz14M
	5qGErCamZ1ca31bpC9Rer2PSZhcG9M+iA89JuHjEnYBYaVdArc+0rdxyMxbcmle8MwjUOnbHbJoiU
	irU8oSXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0jFa-0000000Ay7E-0Jck;
	Mon, 22 Sep 2025 16:18:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0jFX-0000000Ay5W-11Sr
	for barebox@lists.infradead.org;
	Mon, 22 Sep 2025 16:18:48 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v0jFV-0001qX-JK; Mon, 22 Sep 2025 18:18:45 +0200
Message-ID: <3bcd5400-5905-41b2-8879-1ebdea6eee23@pengutronix.de>
Date: Mon, 22 Sep 2025 18:18:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
References: <20250917-security-policies-v2-0-f30769a3ff51@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250917-security-policies-v2-0-f30769a3ff51@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250922_091847_438671_8AF242B7 
X-CRM114-Status: GOOD (  24.55  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 00/24] Add security policy support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 17.09.25 15:53, Sascha Hauer wrote:
> Changes in v2:

Thanks for taking over. I have no further comments besides the two I just
sent. I think this is ready to go into next with the two comments addressed.

Cheers,
Ahmad

> - drop security policies for each filesystem. This needs to be reworked.
>   A filesystem can safely be mounted when the source is trusted (i.e.
>   the fs image is compiled into barebox, or is authorized using upcoming
>   dm-verity support) no matter which filesystem type is mounted.
>   Therefore just add a policy which selects between "all fs allowed" and
>   "no fs allowed except ramfs".
> - fix adding policy-y to non leaf directories
> - remove policy-list files before recreating them to avoid stale entries
> - Drop $(ARCH) string from .sconfig files
> - bail out with a user friendly message when make security_* is invoked
>   with security policies being disabled in the config
> - document that policies should always go from restrictive to relaxed,
>   not the other way round
> - Link to v1: https://lore.barebox.org/20250820-security-policies-v1-0-76fde70fdbd8@pengutronix.de
> 
> Changes in v1:
> - Link to RFC:
>   https://lore.kernel.org/all/20250814130702.4039241-1-a.fatoum@pengutronix.de/
> - Add more actual security policies
> - Fix some typos in Documentation
> - Catch invalid policy names in sconfig command
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
> Ahmad Fatoum (16):
>       kconfig: allow setting CONFIG_ from the outside
>       scripts: include scripts/include for all host tools
>       kbuild: implement loopable loop_cmd
>       Add security policy support
>       kbuild: allow security config use without source tree modification
>       defaultenv: update PS1 according to security policy
>       security: policy: support externally provided configs
>       docs: security-policies: add documentation
>       commands: go: add security config option
>       console: ratp: add security config option
>       bootm: support calling bootm_optional_signed_images at any time
>       bootm: make unsigned image support runtime configurable
>       ARM: configs: add virt32_secure_defconfig
>       boards: qemu-virt: add security policies
>       boards: qemu-virt: allow setting policy from command line
>       test: py: add basic security policy test
> 
> Sascha Hauer (8):
>       commands: implement sconfig command
>       usbserial: add inline wrappers
>       security: usbgadget: add usbgadget security policy
>       security: fastboot: add security policy for fastboot oem
>       security: shell: add policy for executing the shell
>       security: add security policy for loading barebox environment
>       security: add filesystem security policies
>       security: console: add security policy for console input
> 
>  .gitignore                                         |   4 +
>  Documentation/devel/devel.rst                      |   1 +
>  Documentation/devel/security-policies.rst          |  96 ++++
>  Documentation/user/defaultenv-2.rst                |   2 +
>  Documentation/user/security-policies.rst           | 131 +++++
>  Documentation/user/user-manual.rst                 |   1 +
>  Makefile                                           |  95 +++-
>  Sconfig                                            |  11 +
>  arch/arm/configs/virt32_secure_defconfig           | 302 ++++++++++++
>  commands/Kconfig                                   |  23 +
>  commands/Makefile                                  |   1 +
>  commands/Sconfig                                   |  12 +
>  commands/go.c                                      |   4 +
>  commands/sconfig.c                                 | 227 +++++++++
>  common/Kconfig                                     |   5 +
>  common/Sconfig                                     |  63 +++
>  common/boards/qemu-virt/Makefile                   |   5 +-
>  common/boards/qemu-virt/board.c                    |  11 +
>  common/boards/qemu-virt/commandline.c              |  74 +++
>  common/boards/qemu-virt/commandline.h              |   9 +
>  common/boards/qemu-virt/qemu-virt-factory.sconfig  |  36 ++
>  common/boards/qemu-virt/qemu-virt-lockdown.sconfig |  35 ++
>  common/bootm.c                                     |  58 ++-
>  common/console.c                                   |  11 +-
>  common/console_ctrlc.c                             |   4 +
>  common/console_simple.c                            |   7 +
>  common/environment.c                               |   6 +
>  common/fastboot.c                                  |   6 +
>  common/hush.c                                      |  13 +
>  common/parser.c                                    |   7 +
>  common/ratp/ratp.c                                 |  17 +
>  common/usbgadget.c                                 |  26 +
>  defaultenv/Makefile                                |   1 +
>  .../defaultenv-2-security-policy/bin/ps1-policy    |  20 +
>  .../defaultenv-2-security-policy/init/ps1-policy   |   1 +
>  .../init/source-colors                             |   1 +
>  defaultenv/defaultenv.c                            |   2 +
>  drivers/usb/gadget/Sconfig                         |  11 +
>  drivers/usb/gadget/composite.c                     |   4 +
>  drivers/usb/gadget/legacy/serial.c                 |   4 +
>  fs/Sconfig                                         |   5 +
>  fs/fs.c                                            |   4 +
>  include/linux/usb/usbserial.h                      |  11 +
>  include/security/config.h                          |  76 +++
>  include/security/defs.h                            |  22 +
>  include/security/policy.h                          |  54 +++
>  scripts/Kbuild.include                             |  41 ++
>  scripts/Makefile                                   |   1 -
>  scripts/Makefile.build                             |  18 +-
>  scripts/Makefile.lib                               |  47 ++
>  scripts/Makefile.policy                            |  38 ++
>  scripts/Sconfig.include                            |   6 +
>  scripts/basic/.gitignore                           |   1 +
>  scripts/basic/Makefile                             |   4 +-
>  scripts/basic/sconfigpost.c                        | 540 +++++++++++++++++++++
>  scripts/include/list.h                             |   7 +
>  scripts/kconfig/Makefile                           |   3 +
>  scripts/kconfig/list.h                             | 132 -----
>  security/Kconfig                                   |   2 +
>  security/Kconfig.policy                            | 104 ++++
>  security/Makefile                                  |  39 ++
>  security/Sconfig                                   |  34 ++
>  security/policy.c                                  | 239 +++++++++
>  security/qemu-virt-devel.sconfig                   |  36 ++
>  security/qemu-virt-tamper.sconfig                  |  35 ++
>  security/sconfig_names.c                           |  18 +
>  test/arm/virt32_secure_defconfig.yaml              |  22 +
>  test/py/test_policies.py                           |  48 ++
>  68 files changed, 2778 insertions(+), 156 deletions(-)
> ---
> base-commit: f3be3a8e9ae884bdfb116238e9049b1eb2759810
> change-id: 20250820-security-policies-43f73477d321
> 
> Best regards,


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


