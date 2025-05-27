Delivery-date: Tue, 27 May 2025 23:31:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uK1tu-000yNQ-1H
	for lore@lore.pengutronix.de;
	Tue, 27 May 2025 23:31:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uK1ts-0005n3-6c
	for lore@pengutronix.de; Tue, 27 May 2025 23:31:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=VURxAc2rureCCqEDCuLTcIM1T7JbD0XrAoYmIPQXdKM=; b=zq/iC7u++dr+11uV4ivaqgD/Sv
	0LAp7MDJP8m9/YPdY44GAOPdDbHHHH8zLp/asKNLOhC1UcU3tS+sJMlYHVzRk3SSw7dNXAOHI8od7
	RDGYDpgbMVGzwI22GAlanMehlPocuaJ6n0P2CAaZF92Lw7G4IFK23XVl6QMQYnKziuk0+dEtZAi55
	wKDEc+GUTtfpZWy2oxN+tzCDFy8HJjbAGKh2OAjAWcuQHAucZP3zu3epdDZ3i1lFLAge++iWmmREK
	z0sFUVdBWMA6Who/zv1lLCa53P5lRvaPszx0sREhAGLK0hAGqFeM/BmjmryLeTJSM8sZP5dC3NuO+
	s1RIWcUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK1tE-0000000Bbhn-0KQs;
	Tue, 27 May 2025 21:31:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK1lH-0000000Batb-0Qkz
	for barebox@lists.infradead.org;
	Tue, 27 May 2025 21:23:04 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uK1lF-00015n-Ir
	for barebox@lists.infradead.org; Tue, 27 May 2025 23:23:01 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Date: Tue, 27 May 2025 23:22:45 +0200
Message-Id: <20250527212300.575031-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_142303_140977_A9E358A6 
X-CRM114-Status: UNSURE (   9.36  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-7.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 00/15] efi: loader preparatory patches
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

A random collection of patches in preparation for EFI loader support.

Ahmad Fatoum (15):
  lib: wchar: add wide char string comparison functions
  ARM: select HW_HAS_PCI architecture wide
  efi: types: define efi_char16_t as wchar_t
  efi: types: document efi_physical_addr_t being always 64-bit
  efi: payload: early-mem: EFI_ALLOCATE_ANY_PAGES on non-x86
  string: implement kmemdup_nul
  efi: types: implement efi_phys_to_virt/efi_virt_to_phys helpers
  efi: return pointer from efi_earlymem_alloc
  efi: payload: image: use new efi_phys_to_virt helper
  efi: payload: iomem: use virt_start if set
  efi: use size_t for UINTN array sizes instead of unsigned long
  efi: payload: unify duplicate code in ifdef
  efi: payload: use efi_virt_to_phys instead of pointer to u64 casts
  clocksource: efi: use DIV_ROUND_DOWN_ULL for 64-bit devision
  efi: payload: use ktime_to_us to avoid plain 64-bit division

 arch/arm/Kconfig               |  5 +---
 arch/arm/mach-imx/Kconfig      |  3 ---
 arch/arm/mach-rockchip/Kconfig |  2 --
 commands/efi_handle_dump.c     |  8 +++----
 drivers/clocksource/efi.c      |  2 +-
 drivers/efi/efi-device.c       | 17 +++++++-------
 drivers/efi/efi-handle.c       |  4 ++--
 drivers/serial/serial_efi.c    | 10 ++++----
 drivers/video/efi_gop.c        | 10 ++++----
 efi/payload/early-mem.c        | 17 +++++++++-----
 efi/payload/entry-multi.c      |  4 ++--
 efi/payload/entry-single.c     |  4 ++--
 efi/payload/image.c            | 38 ++++++++++++------------------
 efi/payload/init.c             |  7 +++---
 efi/payload/iomem.c            | 11 +++++----
 fs/efi.c                       | 12 +++++-----
 fs/efivarfs.c                  |  6 ++---
 include/efi.h                  | 32 +++++++++++++-------------
 include/efi/efi-device.h       |  2 +-
 include/efi/efi-payload.h      |  5 ++--
 include/efi/types.h            | 21 +++++++++++++++--
 include/linux/string.h         |  6 +++++
 include/wchar.h                |  3 +++
 lib/string.c                   | 42 +++++++++++++++++++++-------------
 lib/wchar.c                    | 26 +++++++++++++++++++++
 25 files changed, 173 insertions(+), 124 deletions(-)

-- 
2.39.5



