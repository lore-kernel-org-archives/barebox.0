Delivery-date: Fri, 27 Jun 2025 16:20:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uV9vw-00BeGI-3B
	for lore@lore.pengutronix.de;
	Fri, 27 Jun 2025 16:20:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uV9vv-0004Fr-Ac
	for lore@pengutronix.de; Fri, 27 Jun 2025 16:20:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ewqCmjL0dRbOlGCK/JCPcvsIlmVr2dkAX+EIgXtubD8=; b=gVzzLMKNWcdXBR
	JV0IrofQWODHnanBLgX+WvStyN50HDCl3wncwOPOKx5drhsIaz9XsGSrWD+NT5Kn+uLojmRZrcdvo
	v9A2+uvhT0TOwhF7xVQHUGl1uES69dG2I1iNdTfp9G8I/+WoZd1VkhIB4xZ4a7n4oRqMD6r0wULua
	oFkXkzm2gQlwJ9fRkTtfhesCGSVjFWPLh/WwHHpAAYbJF38sRpzA27nVGfUsxVND7TaPKQWgZcsmw
	TqKrfTqlNk9faC43JnQUIvKxwF4YLSiPvLjcp3gbffuivMCRNL8rFtasodw5F/D/koyMSpv+3sYLx
	eJyYp0cJKdl+U53ZKe9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uV9vU-0000000Et3Z-1rZC;
	Fri, 27 Jun 2025 14:19:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uV9kQ-0000000ErZL-20z3
	for barebox@lists.infradead.org;
	Fri, 27 Jun 2025 14:08:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uV9kH-0004vL-6R; Fri, 27 Jun 2025 16:08:01 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uV9kG-005dAU-2k;
	Fri, 27 Jun 2025 16:08:00 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uV9kG-004uPv-2I;
	Fri, 27 Jun 2025 16:08:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 27 Jun 2025 16:07:46 +0200
Message-Id: <20250627-arm-optee-early-helper-v1-0-4b098e8ac7cd@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIALKlXmgC/x3MywqDMBBG4VeRWTsQBy9tX0W6COZXB6yGiZQW8
 d0NLr/FOQclmCLRqzjI8NWk25pRlQUNs18nsIZsEieNa6Vjbx/e4g4wvC1/nrFEGLfh8azDKOK
 qgXIcDaP+7nH/Ps8L+jMvCGgAAAA=
X-Change-ID: 20250627-arm-optee-early-helper-6d894df2201c
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1751033280; l=3722;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=lfv3y1VoQrNQ6khx0k2ViQmkWuIm49up3xcsrbCQjEc=;
 b=gmkM7Dc2KiNYTY9E7+V/iLdUd7LcX3DvIsCum1dzobjCMrxbDdzqlfB896nVQDcVS5SknE2j6
 qdpUbqIrlIRCIY098ked6pi01e0pv9FsuMBvmTOOem08zVaA/uoHcBl
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250627_070810_532453_3DC07C32 
X-CRM114-Status: GOOD (  13.95  )
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
Subject: [PATCH 00/14] i.MX6 TZASC and OP-TEE early helpers
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
Marco Felsch (6):
      ARM: i.MX6QDL: add imxcfg helper to configure the TZASC1/2
      ARM: i.MX6Q: add imx6_get_mmdc_sdram_size
      ARM: mach-imx: tzasc: add region configure helpers
      ARM: mach-imx: tzasc: add imx6[q|ul]_tzc380_early_ns_region1()
      ARM: mach-imx: tzasc: add imx6[q|ul]_tzc380_is_bypassed()
      ARM: optee-early: add mx6_start_optee_early helper

Sascha Hauer (8):
      pbl: add panic_no_stacktrace()
      arch: Allow data_abort_mask() in PBL
      ARM: add exception handling support for PBL
      ARM: i.MX: add imx6_can_access_tzasc()
      ARM: i.MX: tqma6ulx: fix barebox chainloading with OP-TEE enabled
      ARM: i.MX: Webasto ccbv2: fix barebox chainloading with OP-TEE enabled
      ARM: optee-early: drop start_optee_early()
      ARM: i.MX: tqma6ulx: use ENTRY_FUNCTION_WITHSTACK

 Documentation/user/optee.rst             |  18 +-
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
 arch/arm/lib32/optee-early.c             |  40 +++-
 arch/arm/mach-imx/Kconfig                |   2 +
 arch/arm/mach-imx/Makefile               |   2 +-
 arch/arm/mach-imx/esdctl.c               |   5 +
 arch/arm/mach-imx/tzasc.c                | 331 +++++++++++++++++++++++++++++++
 include/abort.h                          |   3 +-
 include/mach/imx/esdctl.h                |   1 +
 include/mach/imx/imx6q-tzasc.h           |   8 +
 include/mach/imx/tzasc.h                 |   5 +
 include/tee/optee.h                      |   5 +-
 pbl/misc.c                               |   3 +
 22 files changed, 481 insertions(+), 45 deletions(-)
---
base-commit: 7e5ea8eb09a1ca3b13e89586411f5a60ae8fd5b3
change-id: 20250627-arm-optee-early-helper-6d894df2201c

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



