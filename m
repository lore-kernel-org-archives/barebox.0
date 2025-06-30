Delivery-date: Mon, 30 Jun 2025 09:47:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uW9EE-00CYCz-1y
	for lore@lore.pengutronix.de;
	Mon, 30 Jun 2025 09:47:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uW9ED-0005j0-44
	for lore@pengutronix.de; Mon, 30 Jun 2025 09:47:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FQ/g5XrrKHVcSEJHbPuMevXW1mFViqGzYixeRRbX2hE=; b=oGBs1UQeY87eom
	XHHRzTttLHe/WzJQO7aVxT3cSOCSm0XiFEzuugBo3K3HePFs/WS1t3kWQkyBwdSUnVkREoR+8hGRt
	wEsk3I2sxsI3gwOuC2IrtRPL7eh1KWD97gd/Eh0i5+JvoPVWZxERh07o6wpwnUjy8wn+cR6JhQk9s
	qmbwWJL8VSMls6pRBaBUdZx7zo1ifZW76Te7dPu4p8iUnGThGyflu8JNqo97xLPkxHXAW/LMuzi1H
	xV2czKG4s2fNN3sbevJG6gxjnpn/oKCB/B1IXI9DR3B/8ldFkSNtHcvvbSJ7wQBEg+yeO3TPxx4K6
	WNaLDQrREaM+AGLElTUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uW9Dl-00000001Uio-01OC;
	Mon, 30 Jun 2025 07:46:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uW9DB-00000001UUj-3WfI
	for barebox@lists.infradead.org;
	Mon, 30 Jun 2025 07:46:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uW9D2-0004O5-GO; Mon, 30 Jun 2025 09:45:48 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uW9D2-00648G-0i;
	Mon, 30 Jun 2025 09:45:48 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uW9D2-004Sjo-0L;
	Mon, 30 Jun 2025 09:45:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 30 Jun 2025 09:45:42 +0200
Message-Id: <20250630-arm-optee-early-helper-v2-0-c8cce3ae42b0@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAKZAYmgC/4WNTQ6CMBBGr0K6dkxpkB9X3sOwqO0Ak2DbTCuBE
 O5u5QIu30u+9+0iIhNGcS92wbhQJO8yqEshzKTdiEA2s1BS3WStGtD8Bh8SIqDmeYMJ54AMtW2
 7yg5KydKIPA6MA61n+Nlnnigmz9v5s5Q/+ze5lCChesmuxVabxthHQDd+EntH69Wi6I/j+AKXw
 hnZwQAAAA==
X-Change-ID: 20250627-arm-optee-early-helper-6d894df2201c
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1751269547; l=4086;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=cvRvXK6VcN+ljGuVyL+a/em5SqMyJWoTnqiHJSI9aA8=;
 b=6Z/84nI6dAVLdO6ysvoVRZfuvfUvppbaX9/VgDr5W0w9H3kzZMFuWLmZK26m5DHGp8oRbGXLZ
 VmIuSaV58hXDYu+OQaI5bA1IMJiTEY5pyoRbplJfr/uMFtJPOCWToME
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250630_004557_911399_D7FBB3D4 
X-CRM114-Status: GOOD (  17.18  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Marco Felsch <m.felsch@pengutronix.de>
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
Subject: [PATCH v2 00/14] i.MX6 TZASC and OP-TEE early helpers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This series combines Marcos "i.MX6Q TZASC and OP-TEE early helpers" [1]
and my series fixing chainloading barebox on OP-TEE enabled i.MX6ul
platforms [2] into one.

Changes to Marcos series are:

- rename imx6q_tzc380_is_enabled() to imx6q_tzc380_is_bypassed() as the
  function really only detects if the bypass bits are set correctly and
  not if the tzc380 is enabled.
- Add i.MX6UL variants of the functions Marco created for i.MX6DQ
- Marco created a mx6_start_optee_early() function that has a
  switch/case for the actual SoC type. I have split that into SoC
  specific functions so that we don't have to carry the binary weight
  when only one specific SoC is needed

Changes to my series:

- Ahmad mentioned in [3] that detecting if we are chainloaded based on a
  register passed from the 1st stage not robust and might have security
  issues. I am therefore now checking if the TZASC is accessible or not.

As a special bonus this series brings us exception handling support in
PBL for ARMv7/ARMv8. This done to implement data_abort_mask() which we
need for the TZASC-is-accessible check, but will also be useful for
debugging issues in the PBL.

[1] https://lore.kernel.org/20250626144527.416697-1-m.felsch@pengutronix.de
[2] https://lore.kernel.org/20250626140329.418033-1-s.hauer@pengutronix.de
[3] https://lore.kernel.org/70b41f3b-4329-48f7-827f-1924e002ab04@pengutronix.de

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Changes in v2:
- update some commit messages according to review
- Drop patch to drop start_optee_early() - it's unused but referenced in the
  documentation
- Add config symbol for TZASC and select it where necessary
- Collect R-B from Ahmad, Marco
- Link to v1: https://lore.barebox.org/20250627-arm-optee-early-helper-v1-0-4b098e8ac7cd@pengutronix.de

---
Marco Felsch (5):
      ARM: i.MX6QDL: add imxcfg helper to configure the TZASC1/2
      ARM: i.MX6Q: add imx6_get_mmdc_sdram_size
      ARM: mach-imx: tzasc: add region configure helpers
      ARM: mach-imx: tzasc: add imx6[q|ul]_tzc380_is_bypassed()
      ARM: optee-early: add mx6_start_optee_early helper

Sascha Hauer (9):
      pbl: add panic_no_stacktrace()
      arch: Allow data_abort_mask() in PBL
      ARM: add exception handling support for PBL
      ARM: i.MX: add config symbol for TZASC
      ARM: mach-imx: tzasc: add imx6[q|ul]_tzc380_early_ns_region1()
      ARM: i.MX: add imx6_can_access_tzasc()
      ARM: i.MX: tqma6ulx: fix barebox chainloading with OP-TEE enabled
      ARM: i.MX: Webasto ccbv2: fix barebox chainloading with OP-TEE enabled
      ARM: i.MX: tqma6ulx: use ENTRY_FUNCTION_WITHSTACK

 Documentation/user/optee.rst             |  22 ++-
 arch/Kconfig                             |   3 +
 arch/arm/Kconfig                         |  10 +
 arch/arm/boards/tqma6ulx/lowlevel.c      |  27 +--
 arch/arm/boards/webasto-ccbv2/lowlevel.c |  24 +--
 arch/arm/cpu/Makefile                    |   1 +
 arch/arm/cpu/interrupts_32.c             |  14 +-
 arch/arm/cpu/interrupts_64.c             |  10 +-
 arch/arm/cpu/uncompress.c                |   2 +
 arch/arm/include/asm/barebox-arm.h       |   8 +
 arch/arm/lib/pbl.lds.S                   |   4 +
 arch/arm/lib32/optee-early.c             |  42 ++++
 arch/arm/mach-imx/Kconfig                |   6 +
 arch/arm/mach-imx/Makefile               |   2 +-
 arch/arm/mach-imx/esdctl.c               |   5 +
 arch/arm/mach-imx/tzasc.c                | 328 +++++++++++++++++++++++++++++++
 include/abort.h                          |   3 +-
 include/mach/imx/esdctl.h                |   1 +
 include/mach/imx/imx6q-tzasc.h           |   8 +
 include/mach/imx/tzasc.h                 |   5 +
 include/tee/optee.h                      |   4 +
 pbl/misc.c                               |   3 +
 22 files changed, 489 insertions(+), 43 deletions(-)
---
base-commit: 796506e790596a0b59c186651cf98112eafe01c5
change-id: 20250627-arm-optee-early-helper-6d894df2201c

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



