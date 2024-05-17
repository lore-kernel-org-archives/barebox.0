Delivery-date: Fri, 17 May 2024 08:45:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7rLj-000woi-1r
	for lore@lore.pengutronix.de;
	Fri, 17 May 2024 08:45:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7rLi-0006tJ-Vu
	for lore@pengutronix.de; Fri, 17 May 2024 08:45:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=IUcBHz8OAvW01locNTLR3qnXLPzHEA8b2BxGPbxLNpU=; b=FLCVu9IY//t027wsJQz2Wnh2Hk
	Oc8y6HFIBvjdvjV5Uokwum7H6kGv0RVaNdZFP9VYcK7Kc/fc2pl6XK0xmu6rMy1NW2SvbEhXULYR0
	siG+WMwIXEca+qct+z+JHEU/XpiPBW3AZlBEpWA+u7pLL4ETRe9LI1S33HzAmtqTZ87kyl9GXWhuE
	3kbzA//WRZ2TEBpwKzCoGwIiRB6t/ahzIN92wUSGRPlqvqV6hIgk1iZ6Leq0ARiy17gDbbpyozFNL
	Xx5Ma0lTS6SHO4/U2YQ1yQMAul2R83A/xBTCtUKLK8I6hdCcEyw6V1OYyOx9OFxcwpEKfxZrm1mc3
	LyCX05PA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7rLB-00000006yT6-1Hnm;
	Fri, 17 May 2024 06:45:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7rL7-00000006yQx-3eGN
	for barebox@lists.infradead.org;
	Fri, 17 May 2024 06:45:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7rL6-0006Wq-Lk
	for barebox@lists.infradead.org; Fri, 17 May 2024 08:45:12 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7rL6-001pei-9J
	for barebox@lists.infradead.org; Fri, 17 May 2024 08:45:12 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7rL6-00Emcc-0Z
	for barebox@lists.infradead.org;
	Fri, 17 May 2024 08:45:12 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 17 May 2024 08:45:05 +0200
Message-Id: <20240517064511.3307462-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240516_234513_930092_6C23C2FD 
X-CRM114-Status: GOOD (  11.67  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 0/6] add PBL handoff-data support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This series replaces the 3 patches from v1 that are in next.

The first 3 patches are new: They ensure that the handoff structs
(linked list pointers, cookie, flags, ...) are also reserved in the
SDRAM banks and not only the data.

The three patches after that differ to v1 mainly in that reservation
of space for the handoff data is correctly taken care of. This was
erroneous both in PBL and in barebox proper and led to problems for me
trying to boot a Qemu Virt64 machine that has for some reason a FDT that
describes its size in the header as 1MiB.

Refer to each individual patch's changelog for more information.

Ahmad Fatoum (3):
  memory: add support for requesting barebox area as a whole
  treewide: use request_barebox_region for possible barebox memory
    regions
  ARM: cpu: start: register barebox memory area

Sascha Hauer (3):
  ARM: move blob_is_arm_boarddata() to include
  add handoff-data support
  ARM: pass handoff data from PBL to proper

 arch/arm/cpu/cpu.c                 |   2 +-
 arch/arm/cpu/mmu_32.c              |   8 +-
 arch/arm/cpu/mmu_64.c              |   4 +-
 arch/arm/cpu/start.c               |  85 ++++---------
 arch/arm/cpu/uncompress.c          |  36 +++++-
 arch/arm/include/asm/barebox-arm.h |  31 +++--
 arch/arm/mach-imx/scratch.c        |   2 +-
 arch/mips/lib/cpu-probe.c          |   2 +-
 arch/powerpc/mach-mpc5xxx/cpu.c    |   2 +-
 arch/powerpc/mach-mpc85xx/cpu.c    |   2 +-
 arch/riscv/boot/start.c            |   4 +-
 arch/riscv/cpu/core.c              |   2 +-
 common/memory.c                    |  40 +++++-
 fs/pstore/ram_core.c               |   2 +-
 include/memory.h                   |   6 +
 include/pbl/handoff-data.h         |  53 ++++++++
 pbl/Makefile                       |   1 +
 pbl/handoff-data.c                 | 194 +++++++++++++++++++++++++++++
 18 files changed, 382 insertions(+), 94 deletions(-)
 create mode 100644 include/pbl/handoff-data.h
 create mode 100644 pbl/handoff-data.c

-- 
2.39.2



