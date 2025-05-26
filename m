Delivery-date: Mon, 26 May 2025 16:39:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJYyi-000Y6R-2e
	for lore@lore.pengutronix.de;
	Mon, 26 May 2025 16:39:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJYyh-0000xj-KX
	for lore@pengutronix.de; Mon, 26 May 2025 16:39:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6Y4j6IxYa4m61qbaqeJgxPNQByze8Z/P3lY1xXECWc8=; b=hWxLdYkaH50nKp
	mQ5f2cLODRUgl9F95IyG5TF0LBKzeIT/cVNdviWqXaIAYP7cJkjRkRc62R8J9BZVC0TGUvV02tGgX
	IGiVPKpwXVhjDu9L1aKRmcShKjvlEySD2pejdWuO/RN+d1degctLydff4gJiqbWtTRXmpHLqy+VZp
	JOs2HNIjId+px8XrZtCtHJrGivjapBwkpGkoqw7WF9Ivvpvm22jZ9Rq9WosV3hxWUv6cPtK6pukQX
	BTJQYTAm9R66igghPjNHMIvTReJTvU+9PNJfxkaKAgbQFKncbcF9gfwqxDTBp3MaJk8mwEqLwNcp3
	gxyKsBbZtBNIYCIkb2Ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJYyD-000000092MI-23z7;
	Mon, 26 May 2025 14:38:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJYyA-000000092Jj-1CiC
	for barebox@lists.infradead.org;
	Mon, 26 May 2025 14:38:27 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1uJYy7-0000OJ-P1; Mon, 26 May 2025 16:38:23 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Mon, 26 May 2025 16:38:06 +0200
Message-Id: <20250526-rk3588-optee-v1-0-5004995cbd03@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAM58NGgC/x3MQQqAIBBA0avErBPUwbCuEi3CphoCFY0IxLsnL
 d/i/wKZElOGqSuQ6OHMwTeovgN3rv4gwVszaKmNNMqIdKGxVoR4EwlpnUNELccBoSUx0c7vv5u
 XWj+P9RSAXgAAAA==
X-Change-ID: 20250515-rk3588-optee-08cc33320963
To: BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250526_073826_329198_316F8F9C 
X-CRM114-Status: GOOD (  18.33  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/9] ARM: rockchip: fix dynamic shared memory in OP-TEE
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
in OP-TEE. Therefore, there must be some extra reserved space in the
fdt. OP-TEE has CFG_DTB_MAX_SIZE as limit, which is the minimum amount
of space that must be reserved by barebox. The PBL_FDT_MIN_SIZE option
allows to configure this size as minimum.

I thought about adding disabled memory nodes to the dts and
enabling/fixing the existing nodes instead of adding new nodes. Finding
and fixing the correct existing node turned out to be more complex than
adding a new node. As we have to reserve some space in the fdt for
OP-TEE anyway, adding new nodes looks like the better solution.

The downstream TF-A may crash if barebox passes a device tree to it.
barebox cannot detect, if the loaded TF-A is downstream or upstream.
Therefore, add a config item to enable passing the device tree.

Patches 1 and 2 are some cleanup as preparation for actual changes.

Patches 3 to 6 extend the libfdt integration with helpers to modify and
add memory dt nodes.

Patches 7 to 9 add the rockchip specific code to read the memory size
from the DRAM controller, add memory dt nodes to the fdt, and pass the
fdt to the TF-A and OP-TEE.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Michael Tretter (9):
      ARM: rockchip: fix formatting
      ARM: rockchip: dmc: use RK3588_INT_REG_START for rk3588
      lib: fdt: add fdt_addresses
      PBL: fdt: refactor helper for reading nr of cells
      PBL: fdt: make minimum fdt size configurable
      PBL: fdt: add fdt_fixup_mem to fixup memory nodes
      ARM: rockchip: dmc: add rk3588_ram_sizes to get full ram size
      ARM: rockchip: pass device tree to TF-A
      ARM: rockchip: fixup memory in device tree for TF-A

 arch/arm/mach-rockchip/Kconfig | 13 +++++++
 arch/arm/mach-rockchip/atf.c   | 62 ++++++++++++++++++------------
 arch/arm/mach-rockchip/dmc.c   | 37 ++++++++++++++++--
 include/mach/rockchip/dmc.h    |  2 +
 include/pbl.h                  |  1 +
 lib/Makefile                   |  2 +-
 lib/fdt_addresses.c            |  4 ++
 pbl/Kconfig                    | 12 ++++++
 pbl/fdt.c                      | 86 +++++++++++++++++++++++++++++++++++++-----
 scripts/Makefile.lib           |  2 +
 10 files changed, 184 insertions(+), 37 deletions(-)
---
base-commit: fb35d7a2fe800260ca1ce2e189731e48ccefcf7b
change-id: 20250515-rk3588-optee-08cc33320963

Best regards,
-- 
Michael Tretter <m.tretter@pengutronix.de>



