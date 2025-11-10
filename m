Delivery-date: Mon, 10 Nov 2025 21:35:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIYcD-00HVT2-2y
	for lore@lore.pengutronix.de;
	Mon, 10 Nov 2025 21:35:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIYc8-0002NF-V0
	for lore@pengutronix.de; Mon, 10 Nov 2025 21:35:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hqlH++AISlfWN2qQSBTawXASEf4QZes578PlY6JA2dM=; b=fd0iLvQvKnLXxk
	pGDSnCm1v9sdriflGhlcGiTJ5bKwiMvOGL8FBBZg+nWxpjxc51AaUFdStfR9EAG5h8JQTtWvCmWEa
	leYB3lo5a1LMPsogCKsO2udWU3iZcepDez/ueJnhQW3Ph4R56NTipzNYtyWCT2ySQxOabeEq0EDlS
	5AwvbQIKL/Z70jUvQcAsJs/u0aPs+jNXw4xcEZ3U/Aceip+qnRRrZ75dtgVJYHgn8eVd5N7CeML7B
	OC4zhlXAqvr8BpCwwl7tDJgJKWKoWGC23B+UcAi1jYuYgyj6bfbqJLsaj7dfQb5qvZiKq/YlbHuqv
	z1IdzgT1BQf4BhbHOqsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIYbM-000000065gb-2agY;
	Mon, 10 Nov 2025 20:35:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIYbC-000000065S8-2ePe
	for barebox@lists.infradead.org;
	Mon, 10 Nov 2025 20:34:55 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1vIYb8-0001MT-EQ; Mon, 10 Nov 2025 21:34:46 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 10 Nov 2025 21:34:40 +0100
Message-Id: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAGBMEmkC/x2NQQqEMBAEvyJztiGjZkG/Ih6WOHEHliQkIoL49
 417q4Ki+6IiWaXQ1FyU5dCiMVThtiH3eYdNoGt16kxnmdngeAhmhMEekzrEtIsgetR8/WrYIKO
 3bHt2w2ugOpSyeD3/J/Ny3z9Nz9w8dAAAAA==
X-Change-ID: 20251110-v2025-09-0-topic-optee-of-handling-e9f51531c464
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_123450_711819_A02C31CB 
X-CRM114-Status: GOOD (  15.15  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 00/23] Improve OP-TEE handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

by this patchset I want to improve the current barebox OP-TEE handling.

Currently there are many paths which do all have their own pitfalls.

 - ARM (i.MX6, i.MX6UL(L)):
   - bootm OP-TEE loading (deprecated)
   - early boot loading:
     Barebox and OP-TEE make use of a 'magic' FDT memory location, which
     was used by OP-TEE to pass information like 'reserved-memory' nodes
     and the used firmware interface and the psci node.

     Barebox doesn't pass the builtin FDT which could be used by OP-TEE
     to determine the memory setup.

 - ARM64 (i.MX8M, i.MX93, Rockchip):
   - early boot loading via BL2
     Barebox doesn't make use of the 'magic' FDT memroy location and
     instead uses Kconfig options which need to be in sync with the
     OP-TEE config switches during compile time to configure the
     'reserved-memory' nodes and firmware interface.

     Barebox doesn't pass the builtin FDT which could be used by OP-TEE
     to determine the memory setup.

 - RISC-V
   - no OP-TEE support yet

By this patchset I want to implement a common flow, while keeping the
backward compatibility. The common bootflow shall be:

 - BL2:
   - opt. extracts the builtin DTB into a buffer
   - passes the DTB to OP-TEE via arch dependend boot arguments.
 - OP-TEE
   - uses the DTB to gather information like memory setup
   - can dyn. configure the TZC accordingly
   - provides information back to barebox via DTB overlay fragments
     (added to the provided DTB (details..)). This can be
     'reserved-memory' nodes, OP-TEE call-interface (smc), or secure HW
     configurations (like CAAM secure-jobrings)
 - BL33 (pbl)
   - extracts the information from OP-TEE and registers it via a well
     known handoff data ID for barebox proper.
 - BL33 (proper)
   - the common barebox proper boot path checks for a specific
     handoff-id and registers the OF overlay as early as possible during
     boot.

BL2, OP-TEE and BL33 (pbl) are architecture dependend steps for which
common helpers are added by this patchset.

BL33 (proper) is common to all and addressed by this patchset as well.

The patchset targets the i.MX8M platforms, other platforms need to be
converted later on.

Regards,
  Marco

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
Marco Felsch (23):
      pbl: compressed-dtb: add missing includes
      pbl: fdt: fix fdt_fixup_mem error handling
      ARM: atf: add missing includes in atf_common.h
      ARM: i.MX8M: add support to pass DT via imx8m{m,n,q,p}_load_and_start_image_via_tfa()
      ARM: i.MX8M: cosmetic cleanup
      ARM: i.MX8M: move BL32 setup into imx8m_tfa_start_bl31()
      ARM: i.MX8M: imx8m_tfa_start_bl31() add support for bl33 and fdt
      pbl: decomp: add pbl_dtbz_uncompress helper
      pbl: fdt: add pbl_load_fdt helper
      ARM: i.MX: scratch: add FDT support
      ARM: i.MX8M: esdctl: drop ddrc base from imx8m_ddrc_sdram_size
      ARM: i.MX8M: esdctl: export imx8m_ddrc_sdram_size()
      ARM: i.MX8M: add support to pass BL3x bl_params
      ARM: i.MX: scratch: add OP-TEE FDTO support
      pbl: string: add strncmp
      pbl: fdt: add fdt_copy_node helper
      handoff-data: Add BL32_DT_OVL entry
      security: optee: add optee_extract_fdto helper
      security: optee: add helpers to apply OP-TEE FDTO
      ARM: i.MX8M: Add support to extract OP-TEE provided informations
      of: base: register optional OP-TEE overlay
      pbl: add support to disable/remove the /secure-chosen/stdout-path
      ARM: i.MX8M: remove /secure-chosen/stdout-path if requested

 arch/Kconfig                                       |   3 +
 arch/arm/boards/congatec-qmx8p/lowlevel.c          |   6 +-
 arch/arm/boards/innocomm-imx8mm-wb15/lowlevel.c    |   2 +-
 arch/arm/boards/karo-qsxp-ml81/lowlevel.c          |   2 +-
 arch/arm/boards/mnt-reform/lowlevel.c              |   2 +-
 arch/arm/boards/nxp-imx8mm-evk/lowlevel.c          |  15 +-
 arch/arm/boards/nxp-imx8mn-evk/lowlevel.c          |  11 +-
 arch/arm/boards/nxp-imx8mp-evk/lowlevel.c          |   2 +-
 arch/arm/boards/nxp-imx8mq-evk/lowlevel.c          |   2 +-
 arch/arm/boards/phytec-som-imx8mm/lowlevel.c       |   2 +-
 arch/arm/boards/phytec-som-imx8mq/lowlevel.c       |   2 +-
 arch/arm/boards/polyhex-debix/lowlevel.c           |   6 +-
 arch/arm/boards/protonic-imx8m/lowlevel-prt8mm.c   |   2 +-
 arch/arm/boards/skov-imx8mp/lowlevel.c             |   6 +-
 arch/arm/boards/tqma8mpxl/lowlevel.c               |   2 +-
 .../variscite-dt8mcustomboard-imx8mp/lowlevel.c    |   2 +-
 arch/arm/boards/zii-imx8mq-dev/lowlevel.c          |  21 +-
 arch/arm/include/asm/atf_common.h                  |   3 +
 arch/arm/mach-imx/Kconfig                          |  13 +
 arch/arm/mach-imx/atf.c                            | 262 +++++++++++++--------
 arch/arm/mach-imx/esdctl.c                         |  53 ++++-
 arch/arm/mach-imx/imx9.c                           |   2 +-
 arch/arm/mach-imx/scratch.c                        |  30 +++
 arch/arm/mach-rockchip/rockchip.c                  |   3 +-
 common/Kconfig                                     |  24 ++
 drivers/of/base.c                                  |   3 +
 drivers/soc/imx/soc-imx8m.c                        |   3 +-
 drivers/tee/optee/Kconfig                          |   1 +
 drivers/tee/optee/of_fixup.c                       |  46 ++++
 include/compressed-dtb.h                           |   2 +
 include/mach/imx/esdctl.h                          |   1 +
 include/mach/imx/scratch.h                         |   3 +
 include/mach/imx/xload.h                           |  16 +-
 include/pbl.h                                      |   9 +
 include/pbl/handoff-data.h                         |   1 +
 include/tee/optee.h                                |  17 ++
 pbl/Kconfig                                        |  11 +
 pbl/console.c                                      |  18 ++
 pbl/decomp.c                                       |  12 +
 pbl/fdt.c                                          | 187 ++++++++++++++-
 pbl/handoff-data.c                                 |   2 +
 pbl/string.c                                       |  15 ++
 security/optee.c                                   |  44 ++++
 43 files changed, 708 insertions(+), 161 deletions(-)
---
base-commit: 6b59c24110434d7922e127dac22a598e0a6a23db
change-id: 20251110-v2025-09-0-topic-optee-of-handling-e9f51531c464

Best regards,
-- 
Marco Felsch <m.felsch@pengutronix.de>



