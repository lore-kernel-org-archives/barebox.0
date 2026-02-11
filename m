Delivery-date: Wed, 11 Feb 2026 23:42:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vqIuQ-000gES-2Y
	for lore@lore.pengutronix.de;
	Wed, 11 Feb 2026 23:42:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vqIuO-0005Cl-8z
	for lore@pengutronix.de; Wed, 11 Feb 2026 23:42:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Y2QxlxzCQUK36rTF8XQYOtvtC4L2As7wYocfDAxrIeQ=; b=tggSEugIlwuwOf
	nMJIL1IYKLffaxYCklO7FuBT1viG7GYDgaC3f9BHMB/D7TAtYybqCbsqyKl6YszDhLrOCA1Wmihh8
	P1dpO/M4+23WYTFWVYt8UxIV1hFxLr8GcuWVXK5vdXiXT/buHHqvD3Jre5l9mrlJ/GctI/GLvHQjv
	r7h2pgj+9qfd2oH1uoPIyJtfGt36VuOICLMTIkXfo3j6itxNaSZOAp9YzKBzkYQ7q6b1bbqP46mSv
	qd+Pk4l+8SpIffAmLaNbropsxHfifNYhF82A7pF9yJGJ3dslSlWUXhy57mYReQG8LB6RvFcBqepro
	3l/FbLlN4MFg5ePWLiVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqItn-000000018w3-2Klc;
	Wed, 11 Feb 2026 22:41:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqIte-000000018nb-2sAH
	for barebox@lists.infradead.org;
	Wed, 11 Feb 2026 22:41:28 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1vqItb-0004Xa-02; Wed, 11 Feb 2026 23:41:19 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Wed, 11 Feb 2026 23:41:11 +0100
Message-Id: <20260211-v2025-09-0-topic-optee-of-handling-v3-0-dd83358ae624@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAIcFjWkC/42NQQ6DIBBFr9Kw7jQDitWueo/GhZFRJ2mAACU2x
 rsXPUF3//2ZvL+JSIEpisdlE4EyR3a2QHW9iHEZ7EzAprBQqLSUEiEfCbADhOQ8j+B8IgI3QXk
 3b7YzUDdpqSs51k0tisgHmng9R1594YVjcuF7bmZ1tIe+QYX1P/qsytEMeNfUtLIlfHqy8ycFZ
 3m9GRL9vu8/y7dqz9kAAAA=
X-Change-ID: 20251110-v2025-09-0-topic-optee-of-handling-e9f51531c464
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260211_144122_806617_F8D36E73 
X-CRM114-Status: GOOD (  14.92  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 00/14] Improve OP-TEE handling
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
     to determine the memory setup or the CAAM jobring setup.

 - ARM64 (i.MX8M, i.MX93, Rockchip):
   - early boot loading via BL2
     Barebox doesn't make use of the 'magic' FDT memroy location and
     instead uses Kconfig options which need to be in sync with the
     OP-TEE config switches during compile time to configure the
     'reserved-memory' nodes and firmware interface.

     Barebox doesn't pass the builtin FDT which could be used by OP-TEE
     to determine the memory setup or the CAAM jobring setup.

 - RISC-V
   - no OP-TEE support yet

This patchset implements a common OP-TEE boot flow, while keeping the
backward compatibility. The common flow looks like this:

 - BL2 (barebox-pbl):
   - opt. extracts the builtin DTB into a buffer
   - passes the DTB to OP-TEE via arch dependend boot arguments.
 - OP-TEE
   - uses the DTB to gather information like memory setup
   - can dyn. configure the TZC accordingly
   - provides information back to barebox via DTB overlay fragments
     (added to the provided DTB). This can be 'reserved-memory' nodes,
     OP-TEE call-interface (smc), or secure HW configurations (like CAAM
     secure-jobrings)
 - BL33 (barebox-pbl)
   - Uses the DTB passed to and received from OP-TEE which contains DTB
     overlay fragments now and registers this as TEE_DT_OVL handoff
     data for barebox-proper.
 - BL33 (barebox-proper)
   - the common barebox proper boot path checks for the existence of
     TEE_DT_OVL handoff-data and registers an OF overlay as early as
     possible if found.

BL2, OP-TEE and BL33 (pbl) are architecture dependend steps for which
common helpers are added by this patchset.

BL33 (proper) is common to all and addressed by this patchset as well.

The patchset targets the i.MX8M platforms, other platforms need to be
converted later on.

Regards,
  Marco

---
Changes in v3:
- Link to v2: https://lore.barebox.org/20260204-v2025-09-0-topic-optee-of-handling-v2-0-da075e6818e0@pengutronix.de
- Collect Ahmads a-b and r-b tags
- Drop already merged patches
- optee_handoff_overlay: add missing inline (Ahmad)
- of_optee_fixup: add missing of_delete_node() (Ahmad)
- ("of: base: register optional OP-TEE overlay"): adapt commit message (Ahmad)
- Rework scatch space handling (Ahmad)

Changes in v2:
- Link to v1: https://lore.barebox.org/barebox/20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de/
- Drop extracting the FDT overlay __fragment__ in PBL and register the
  whole DTB received from OP-TEE as overlay. The common code will
  extract the __fragment__ nodes. (Ahmad)
- Drop patches which are already in master
- Drop FDTO scratch area (Ahmad)
- Drop breaking common board lowlevel API (Ahmad)
- Drop /secure-chosen/stdout-path adaptions, no longer required

To: Sascha Hauer <s.hauer@pengutronix.de>
To: open list:BAREBOX <barebox@lists.infradead.org>
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

---
Marco Felsch (14):
      ARM: i.MX8M: add support to pass DT via lowlevel __imx8m*_load_and_start_image_via_tfa()
      ARM: i.MX8M: move BL32 setup into imx8m_tfa_start_bl31()
      ARM: i.MX8M: imx8m_tfa_start_bl31() add support for bl33 and fdt
      pbl: decomp: add pbl_dtbz_uncompress helper
      pbl: fdt: add pbl_load_fdt helper
      ARM: i.MX: scratch: add FDT support
      ARM: i.MX8M: esdctl: drop ddrc base from imx8m_ddrc_sdram_size
      ARM: i.MX8M: esdctl: export imx8m_ddrc_sdram_size()
      ARM: i.MX8M: add support to pass BL3x bl_params
      handoff-data: Add TEE_DT_OVL entry
      security: optee: add optee_handoff_overlay helper
      security: optee: add helpers to register OF overlays
      ARM: i.MX8M: Pass optional OP-TEE overlay to barebox
      of: base: register optional OP-TEE overlay

 arch/arm/mach-imx/Kconfig           |  16 +++
 arch/arm/mach-imx/atf.c             | 252 +++++++++++++++++++++++-------------
 arch/arm/mach-imx/esdctl.c          |  53 +++++++-
 arch/arm/mach-imx/imx9.c            |   2 +-
 arch/arm/mach-imx/scratch.c         |  44 ++++++-
 arch/arm/mach-rockchip/rockchip.c   |   3 +-
 drivers/of/base.c                   |   3 +
 drivers/soc/imx/soc-imx8m.c         |   3 +-
 drivers/tee/optee/of_fixup.c        |  42 ++++++
 include/asm-generic/memory_layout.h |   6 +
 include/mach/imx/esdctl.h           |   1 +
 include/mach/imx/scratch.h          |   2 +
 include/mach/imx/xload.h            |   8 +-
 include/pbl.h                       |   3 +
 include/pbl/handoff-data.h          |   1 +
 include/tee/optee.h                 |  16 +++
 pbl/decomp.c                        |   6 +
 pbl/fdt.c                           |  79 +++++++++++
 pbl/handoff-data.c                  |   2 +
 security/Kconfig                    |  24 ++++
 security/optee.c                    |  15 ++-
 21 files changed, 472 insertions(+), 109 deletions(-)
---
base-commit: 7e66106e304d95f8a2070d5701073666ac56db17
change-id: 20251110-v2025-09-0-topic-optee-of-handling-e9f51531c464

Best regards,
-- 
Marco Felsch <m.felsch@pengutronix.de>



