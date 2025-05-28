Delivery-date: Wed, 28 May 2025 16:20:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKHdy-001DPZ-1x
	for lore@lore.pengutronix.de;
	Wed, 28 May 2025 16:20:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKHdx-0007gd-9x
	for lore@pengutronix.de; Wed, 28 May 2025 16:20:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wiB3A8BWIwe8xLrR47+KzNApq1W9TLWcgpHeie5xUoo=; b=1kpLFES8vzt1ug
	JekWpsZEuLCfN/4I6WV0Kc3Eq8ejIwT57uQL3i7cHYYeEgTbrGXeH9zq6xqGN3biMxkfiK0JPw1xR
	xk6gdopzg8mj7KmakIUBy402G+8noSJqbvYydH/+sJSj7CmnuyE7CuN57RW7879K2/BN5GiVxvLKk
	fjNqUdnlUnFnnSCzRbh1zi7rlr4FHy6uttRvGB1TKN4COHmGfRbIDneoYYWkeMM7R6TIHuK+W6RZq
	2jddEALBc/FY4KFGgZLx7LrS9AMKjJh//SdkS7dF0xtmHPGVfbBz/M98ik6zHX5IylnCPXoaYnkw3
	6Bj0JzLh13wclpUd3Bpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKHdN-0000000DN9K-2oUC;
	Wed, 28 May 2025 14:19:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKHVL-0000000DKy5-2Cyr
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 14:11:41 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1uKHVI-00011O-Mm; Wed, 28 May 2025 16:11:36 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Wed, 28 May 2025 16:11:18 +0200
Message-Id: <20250528-rk3588-optee-v2-0-63070238dd13@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAIcZN2gC/1XMQQ7CIBCF4as0sxYzBWnAlfcwXSgd24kJEKikp
 undxcaNy/8l71shU2LKcG5WSFQ4c/A15KEBN938SIKH2iBRatStFumptDEixJlIoHFOKSXRdgr
 qJSZ68LJz1772xHkO6b3rpf2uP0h2/1BpBQqNeLJWu/uA6hLJj685Bc/LcSDot237AA7CmaGtA
 AAA
X-Change-ID: 20250515-rk3588-optee-08cc33320963
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Marco Felsch <m.felsch@pengutronix.de>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_071139_601768_312B1661 
X-CRM114-Status: GOOD (  18.59  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 0/9] ARM: rockchip: fix dynamic shared memory in OP-TEE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On rk3588, OP-TEE uses the device tree to detect the available SDRAM
that should be used for dynamic shared memory. Since the amount of SDRAM
is detected during boot, the rk3588 device tree doesn't contain memory
nodes. Therefore, barebox has to detect the memory and add memory nodes
the device tree in the PBL before passing the device tree to the TF-A,
which passes it on to OP-TEE.

Adding nodes to the fdt increases the size of the fdt. As OP-TEE also
modifies and extends the passed device tree, the fdt grows even further
in OP-TEE. Therefore, barebox must add some extra space for fdt
modification. OP-TEE has CFG_DTB_MAX_SIZE as limit, which is the minimum
amount of space that must be reserved by barebox. The
ARCH_ROCKCHIP_ATF_FDT_SIZE option allows to configure this size as
minimum Rockchip machines.

If the device tree fixup function finds memory nodes with the detected
addresses, it ensures that the nodes have the correct size and are
enabled. If a matching memory node is missing from the device tree, it
adds a new node.

The downstream TF-A may crash if barebox passes a device tree to it.
barebox cannot detect, if the loaded TF-A is downstream or upstream.
Therefore, add a config item to enable passing the device tree.

Patches 1 and 2 are some cleanup as preparation for actual changes.

Patches 3 to 5 extend the libfdt integration with helpers to modify and
add memory dt nodes.

Patch 6 introduces CONFIG_SCRATCH_SIZE to configure the size of the
arm_mem_scratch area.

Patches 7 to 9 add the rockchip specific code to read the memory size
from the DRAM controller, add memory dt nodes to the fdt, and pass the
fdt to the TF-A and OP-TEE.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Changes in v2:
- pass a copy of fdt in scratch space instead of original fdt to TF-A
- drop config option to reserve space in dtb
- change fdt_fixup_mem to possibly update existing memory nodes
- Link to v1: https://lore.kernel.org/r/20250526-rk3588-optee-v1-0-5004995cbd03@pengutronix.de

---
Michael Tretter (9):
      ARM: rockchip: fix formatting
      ARM: rockchip: dmc: use RK3588_INT_REG_START for rk3588
      lib: fdt: add fdt_addresses
      PBL: fdt: refactor helper for reading nr of cells
      PBL: fdt: add fdt_fixup_mem to fixup memory nodes
      ARM: add CONFIG_SCRATCH_SIZE
      ARM: rockchip: dmc: add rk3588_ram_sizes to get full ram size
      ARM: rockchip: pass device tree to TF-A
      ARM: rockchip: fixup memory in device tree for TF-A

 Documentation/boards/rockchip.rst   |  4 ++
 arch/arm/include/asm/barebox-arm.h  |  4 +-
 arch/arm/mach-rockchip/Kconfig      | 23 +++++++++
 arch/arm/mach-rockchip/atf.c        | 69 +++++++++++++++++----------
 arch/arm/mach-rockchip/dmc.c        | 37 +++++++++++++--
 common/Kconfig                      |  5 ++
 include/asm-generic/memory_layout.h |  1 +
 include/mach/rockchip/bootrom.h     |  3 ++
 include/mach/rockchip/dmc.h         |  2 +
 include/pbl.h                       |  1 +
 lib/Makefile                        |  2 +-
 lib/fdt_addresses.c                 |  4 ++
 pbl/fdt.c                           | 93 +++++++++++++++++++++++++++++++++----
 13 files changed, 209 insertions(+), 39 deletions(-)
---
base-commit: fb35d7a2fe800260ca1ce2e189731e48ccefcf7b
change-id: 20250515-rk3588-optee-08cc33320963

Best regards,
-- 
Michael Tretter <m.tretter@pengutronix.de>



