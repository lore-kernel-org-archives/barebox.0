Delivery-date: Wed, 24 Apr 2024 08:41:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzWKL-00EOOp-2k
	for lore@lore.pengutronix.de;
	Wed, 24 Apr 2024 08:41:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzWKJ-0000ZV-Dj
	for lore@pengutronix.de; Wed, 24 Apr 2024 08:41:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=jdW5IPKn+txCunrZ7n2uyU7FLPI/ajY12hgVUegjOFw=; b=eB+RtDuwU1OOLVM57uVNMbh0eZ
	GFOC5u9q26trsgR0Qwx2hfwC3BIReiC26UvXm1Zy24eIG63giUHwXAgISrspyCb98O5YIrQPmG21e
	LFGG68YQPBdknHtoVMO7B8QgtR3sJKQGWlhc/20imLPwZ+cv5JoZZA0JURjep+aSn3Vzfmrw3i5Pt
	b/BdSilfIy7JBBLCm9lOnjIy+n/m//2aq2iNrPyByFXy5D7XLBjLIyYTjuIeglVnSildYPIrNfHib
	7H6+jqOguWEfp0HtYMxVhXXY3elPehOOqon/zSAw0sS2m0rSKsLJaNr5KpTy7djEpylX+gPm6F4q6
	/AN6T4fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzWJj-00000002vAS-1avc;
	Wed, 24 Apr 2024 06:41:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzWJW-00000002uzU-2OSt
	for barebox@lists.infradead.org;
	Wed, 24 Apr 2024 06:41:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzWJT-0008BU-KZ; Wed, 24 Apr 2024 08:41:03 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzWJT-00E1yU-11; Wed, 24 Apr 2024 08:41:03 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzWJS-00F8kt-33;
	Wed, 24 Apr 2024 08:41:02 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Wed, 24 Apr 2024 08:40:35 +0200
Message-Id: <20240424064058.3608016-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240423_234106_855805_CB2BA85C 
X-CRM114-Status: GOOD (  25.68  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 00/23] treewide: fix bugs using DMA API
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

As described in commi b986aad24ab8 ("mci: core: allocate memory used
for DMA with dma_alloc"), the recent fix to ARMv8 cache operations in
commit 65ef5d885263 ("ARM64: let 'end' point after the range in cache
functions") may lead to unearthing some of the alignment bugs we have:

These bugs were already there: If a DMA buffer is misaligned and you do
cache maintenance on it, you will corrupt memory that's unlucky to share
the cache line. This has been the case for many years though, which I
think is because that corruption was limited to the driver itself:
If a driver invalidates only part of its buffer, then that is its
problem and that of its consumers (e.g. TFTP failing for some file
names, because network driver only invalidated part of the packet).

When we start correctly invalidating the whole buffer though,
invalidaing misaligned buffers will lead us to possibly corrupt other
allocations after it, which makes the problem less localized.

Anyhow, the fix is correct and I spent some time going through all our
allocations to check whether they adhere to the DMA API. Having some way
to encode this into the type system would be nice for the future (maybe
something via named address spaces[1]), but for now I took the laborious
way of grepping for all /alloc/, /dma_map_single/ and /dma_sync_for/ we
have and checking them by hand.

I intend to document our expectation around the DMA API soon, but for
now, with this series applied our expectations are as follows:

 - Streaming DMA is only permissible with suitably aligned buffers,
   e.g. those allocated with dma_alloc()

 - DMA to stack needs to be eradicated. We currently seem to do this
   in three places still: HABv4, Raspberry Pi mailbox and some Virt I/O

 - "User" code should not need to call dma_alloc(). Buffers passed
   to read/write or cdev_read/cdev_write should be able to have
   arbitrary alignment. We could add a future "zero-copy" way, but
   currently drivers either use bounce buffers (e.g. RAW NAND with
   Denali, CAAM crypto or qemu_fw_cfg) or intermediate layers handle it
   (e.g.  block cache for MMC, ATA, NVMe), so user code need not worry.

 - USB buffers and Network packets should always be allocated with
   dma_alloc (or net_alloc_packet). No exceptions.

 - Especially network drivers must call dma_map_single on receive buffers
   once allocated and before bringing up the interface. Otherwise we have
   a race between CPU cache and device DMA. This applies to other users
   as well, but not observing it is less problematic, because e.g. MMC
   reads are synchronous while NIC RX is async.

 - Kernel code often does DMA to buffers allocated with kmalloc and
   friends. kmalloc now calls dma_alloc instead of normal malloc to
   maintain kernel compatibility.

Tested on top of master on STM32MP1 (MC-1), AM335 (Beaglebone Black),
BCM2711 (Raspberry Pi 4 32-bit), BCM2835 (Raspberry Pi 3 32-bit),
i.MX6 (RIoT-Board), RK3568 (Rock 3A), i.MX8MP (TQMA8MPXL) and
i.MX8MN (EVK).

[1]: SO/IEC JTC1 SC22 WG14 N1275

Ahmad Fatoum (23):
  habv4: use DMA-capable memory for getting event from BootROM
  dma: give inline dma_alloc a single external definition
  dma: add definition for dma_zalloc
  include: linux/kernel.h: factor out alignment macros
  driver: move out struct device definition into its own header
  dma: remove common.h include from asm/dma.h
  RISC-V: dma: fix dma.h inclusion
  sandbox: dma: drop unused driver.h include
  dma: remove linux/kernel.h dependency from dma.h
  include: linux/slab: fix possible overflow in kmalloc_array
  include: linux/slab: use dma_alloc for kmalloc
  include: linux/slab: retire krealloc
  commands: mmc_extcsd: use DMA capable memory where needed
  net: macb: use DMA-capable memory for receive buffer
  firmware: qemu_fw_cfg: use bounce buffer for write
  net: usb: asix: use dma_alloc for buffers in USB control messages
  net: usb: smsc95xx: use DMA memory for usb_control_msg
  usb: hub: use DMA memory in usb_get_port_status
  usb: hub: use DMA-capable memory in usb_hub_configure
  treewide: use new dma_zalloc instead of opencoding
  usb: dwc2: host: fix mismatch between dma_map_single and unmap
  net: bcmgenet: map DMA buffers with dma_map_single
  dma: debug: add alignment check when mapping buffers

 arch/arm/include/asm/dma.h               |   5 +-
 arch/kvx/include/asm/dma.h               |   4 +-
 arch/mips/include/asm/dma.h              |   3 +-
 arch/mips/lib/dma-default.c              |   1 +
 arch/riscv/cpu/dma.c                     |   2 +-
 arch/riscv/include/asm/dma.h             |   2 -
 arch/sandbox/include/asm/dma.h           |   1 -
 commands/mmc_extcsd.c                    |   4 +-
 drivers/dma/debug.c                      |   5 +
 drivers/dma/map.c                        |  17 ++++
 drivers/firmware/qemu_fw_cfg.c           |  20 +++-
 drivers/hab/habv4.c                      |   3 +-
 drivers/net/bcmgenet.c                   |  13 +--
 drivers/net/fsl-fman.c                   |   4 +-
 drivers/net/macb.c                       |   4 +-
 drivers/net/usb/asix.c                   |   8 +-
 drivers/net/usb/smsc95xx.c               |  15 ++-
 drivers/soc/starfive/jh7100_dma.c        |   2 +-
 drivers/usb/core/hub.c                   |  49 ++++++----
 drivers/usb/dwc2/host.c                  |   4 +-
 drivers/usb/gadget/function/f_fastboot.c |   3 +-
 drivers/video/mipi_dbi.c                 |   3 +-
 fs/ext4/ext4_common.h                    |  10 +-
 include/device.h                         | 111 +++++++++++++++++++++++
 include/dma.h                            |  16 +++-
 include/driver.h                         |  93 +------------------
 include/linux/align.h                    |  13 +++
 include/linux/device.h                   |   2 -
 include/linux/kernel.h                   |   9 +-
 include/linux/pagemap.h                  |   2 +-
 include/linux/slab.h                     |  20 ++--
 lib/kasan/test_kasan.c                   |   4 +-
 32 files changed, 266 insertions(+), 186 deletions(-)
 create mode 100644 include/device.h
 create mode 100644 include/linux/align.h

-- 
2.39.2



