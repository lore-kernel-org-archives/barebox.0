Delivery-date: Wed, 04 Feb 2026 21:02:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vnj4u-008rrL-1H
	for lore@lore.pengutronix.de;
	Wed, 04 Feb 2026 21:02:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vnj4s-00062F-4n
	for lore@pengutronix.de; Wed, 04 Feb 2026 21:02:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1mAd+MB2V3YdugNwA156TaIfU5fjc2v+BepgClKuGi0=; b=4+l17TYFryyQ3+
	XVr4gPSHeWAWlUKBZCRSFthcf19PYrDrJhuPBfOusrcQwCM/jDyU5NYl6/dO/ZGa1xqsSlIBg1Msu
	4S3uYOokLp6HsMBOPq/oIHxwv5FHDugqBZlR23HXeFYopYKprKUfYoMXE2E4nH0lO4neZ35i7KxKo
	rR6KUloExE5X/O5vPIbHwxrOYmWNBF9GRy5PLSUqzuWscLzzCWjEVLj0r6xMUyKjrrhyXUeWSp1DB
	oCNw84qEaBoTnPGYFjfBhe13EoikWKTsjYxAE0+c+DXSdDvpnXgo5ZYQiSU64PKwkbsccrZ0O02Ng
	imHn6P6+tSMVccVCzVjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnj4G-000000091EG-079I;
	Wed, 04 Feb 2026 20:01:40 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnj4D-00000009193-3sLb
	for barebox@bombadil.infradead.org;
	Wed, 04 Feb 2026 20:01:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:From:Sender:Reply-To:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=1mAd+MB2V3YdugNwA156TaIfU5fjc2v+BepgClKuGi0=; b=l5liomjs4TOn7TQ3fqpvDr3mEJ
	bfUHJ2PYR3R/NfDow/Co+Qu5R+U+7ZzSHOcdglyBZgW8PQ56H0VrYzCTgOdEM9Vm1x9qqZEYaOHYJ
	M6xcXlhn+L0947eiasEpGqqS7hJEq3jPSS+VWrHc/jJHxUtDrg67XpCByb8nOow2/jKoK9F7Tin04
	9YuxOZqVLcEQJouF11BICZIIMBP3X1WoqtGAD4WmWYKmWjmId0oFVwpA3EWRG6mhpywXgu4/x0tj8
	/BqzlYfTKpr6BHg6sMX84DeE8QnAo+s99PKARFhEpWxFHcdqYjBtDWeqG86GlL/a5rjRgdsDaiutp
	FVkiuVUA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnj44-00000001BQK-0TkR
	for barebox@lists.infradead.org;
	Wed, 04 Feb 2026 20:01:35 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1vnj40-0005Eh-MQ; Wed, 04 Feb 2026 21:01:24 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Wed, 04 Feb 2026 21:01:16 +0100
Message-Id: <20260204-v2025-09-0-topic-optee-of-handling-v2-0-da075e6818e0@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAIylg2kC/x2N0QqDMBAEf0Xu2YVcagr2V4oPEi/2oCQhERHEf
 zft2wwMuydVKSqVXt1JRXatmmIT23fkP3NcBbo0J2usY2aD/UcwIwy2lNUj5U0EKaDly1fjChm
 DY/dgPzwHakO5SNDjf/KerusGHqryDHQAAAA=
X-Change-ID: 20251110-v2025-09-0-topic-optee-of-handling-e9f51531c464
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260204_200132_452025_F53877E1 
X-CRM114-Status: GOOD (  15.12  )
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
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 00/15] Improve OP-TEE handling
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
Marco Felsch (15):
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
      handoff-data: add missing include

 arch/arm/mach-imx/Kconfig         |  16 +++
 arch/arm/mach-imx/atf.c           | 252 ++++++++++++++++++++++++--------------
 arch/arm/mach-imx/esdctl.c        |  53 +++++++-
 arch/arm/mach-imx/imx9.c          |   2 +-
 arch/arm/mach-imx/scratch.c       |  24 ++++
 arch/arm/mach-rockchip/rockchip.c |   3 +-
 common/Kconfig                    |  14 +++
 drivers/of/base.c                 |   3 +
 drivers/soc/imx/soc-imx8m.c       |   3 +-
 drivers/tee/optee/of_fixup.c      |  41 +++++++
 include/mach/imx/esdctl.h         |   1 +
 include/mach/imx/scratch.h        |   2 +
 include/mach/imx/xload.h          |   8 +-
 include/pbl.h                     |   3 +
 include/pbl/handoff-data.h        |   2 +
 include/tee/optee.h               |  16 +++
 pbl/decomp.c                      |   6 +
 pbl/fdt.c                         |  79 ++++++++++++
 pbl/handoff-data.c                |   2 +
 security/Kconfig                  |   9 ++
 security/optee.c                  |  15 ++-
 21 files changed, 448 insertions(+), 106 deletions(-)
---
base-commit: 8781fc641fc147df639c9e767a89aa3277d2c9be
change-id: 20251110-v2025-09-0-topic-optee-of-handling-e9f51531c464

Best regards,
-- 
Marco Felsch <m.felsch@pengutronix.de>



