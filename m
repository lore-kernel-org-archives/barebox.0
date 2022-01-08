Delivery-date: Sat, 08 Jan 2022 18:16:19 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n6FKF-00EcdS-2G
	for lore@lore.pengutronix.de; Sat, 08 Jan 2022 18:16:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n6FKC-0004Xm-Ms
	for lore@pengutronix.de; Sat, 08 Jan 2022 18:16:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PRR6ArrfmEXYqAUGrjoryKAknQz6jnQd0fk6P0G0WH0=; b=wIMdm00gP0dJK8
	XQP/N0F9mgL0cIjiMaQvDl8J6GZZE3NFLjib5fn1WNWxlivpLUMHkCQtc2byK/B1ed7iqR+9kWW0G
	VZS51UgiY/HlfrYTnP0wIbAoo2zk2eKGPa3uP6kAubPMLRZWJdDkE3Y5M2PVsVt0GpWl0xSY56sBR
	aTsY2AmtUfvlxEiGqjIjJV91Kvegxk5TQ9NGFBXMqjj3iblOCidrNc+k2oqeQeBdOIXSaPzhHPlgK
	OzFvutMsufVZmUhr0KtrRsYsGmmsNGI0tWZSP1XZgNO07OzfWH4bToB63UIv9zXzEtGEMB/6f7dch
	hzpWlKnVPV0l24jOvdMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n6FIr-006jNt-Lh; Sat, 08 Jan 2022 17:14:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n6FIl-006jLw-Vm
 for barebox@lists.infradead.org; Sat, 08 Jan 2022 17:14:49 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1n6FIk-0003uW-Qj; Sat, 08 Jan 2022 18:14:46 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1n6FIk-002SdP-BF; Sat, 08 Jan 2022 18:14:46 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sat,  8 Jan 2022 18:14:45 +0100
Message-Id: <20220108171445.586681-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220108_091448_218516_B5D1FBDD 
X-CRM114-Status: UNSURE (   9.00  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] include: <asm/csr.h>: sync with upstream
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We don't define CONFIG_RISCV_PRIV_1_9, so deleted stuff by the sync is
unused anyway. No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/riscv/include/asm/csr.h | 213 ++++++++++++++++++++++++++---------
 1 file changed, 161 insertions(+), 52 deletions(-)

diff --git a/arch/riscv/include/asm/csr.h b/arch/riscv/include/asm/csr.h
index 1a15089cae95..8bba809e454e 100644
--- a/arch/riscv/include/asm/csr.h
+++ b/arch/riscv/include/asm/csr.h
@@ -13,13 +13,12 @@
 
 /* Status register flags */
 #define SR_SIE		_AC(0x00000002, UL) /* Supervisor Interrupt Enable */
+#define SR_MIE		_AC(0x00000008, UL) /* Machine Interrupt Enable */
 #define SR_SPIE		_AC(0x00000020, UL) /* Previous Supervisor IE */
+#define SR_MPIE		_AC(0x00000080, UL) /* Previous Machine IE */
 #define SR_SPP		_AC(0x00000100, UL) /* Previously Supervisor */
-#ifdef CONFIG_RISCV_PRIV_1_9
-#define SR_PUM		_AC(0x00040000, UL) /* Protect User Memory Access */
-#else
+#define SR_MPP		_AC(0x00001800, UL) /* Previously Machine */
 #define SR_SUM		_AC(0x00040000, UL) /* Supervisor User Memory Access */
-#endif
 
 #define SR_FS		_AC(0x00006000, UL) /* Floating-point Status */
 #define SR_FS_OFF	_AC(0x00000000, UL)
@@ -33,22 +32,6 @@
 #define SR_XS_CLEAN	_AC(0x00010000, UL)
 #define SR_XS_DIRTY	_AC(0x00018000, UL)
 
-#ifdef CONFIG_RISCV_PRIV_1_9
-#define SR_VM		_AC(0x1F000000, UL) /* Virtualization Management */
-#define SR_VM_MODE_BARE	_AC(0x00000000, UL) /* No translation or protection */
-#define SR_VM_MODE_BB	_AC(0x01000000, UL) /* Single base-and-bound */
-/* Separate instruction and data base-and-bound */
-#define SR_VM_MODE_BBID	_AC(0x02000000, UL)
-#ifndef CONFIG_64BIT
-#define SR_VM_MODE_32	_AC(0x08000000, UL)
-#define SR_VM_MODE	SR_VM_MODE_32
-#else
-#define SR_VM_MODE_39	_AC(0x09000000, UL)
-#define SR_VM_MODE_48	_AC(0x0A000000, UL)
-#define SR_VM_MODE	SR_VM_MODE_39
-#endif
-#endif
-
 #ifndef CONFIG_64BIT
 #define SR_SD		_AC(0x80000000, UL) /* FS/XS dirty */
 #else
@@ -56,51 +39,127 @@
 #endif
 
 /* SATP flags */
-#ifndef CONFIG_RISCV_PRIV_1_9
 #ifndef CONFIG_64BIT
 #define SATP_PPN	_AC(0x003FFFFF, UL)
 #define SATP_MODE_32	_AC(0x80000000, UL)
 #define SATP_MODE	SATP_MODE_32
+#define SATP_ASID_BITS	9
+#define SATP_ASID_SHIFT	22
+#define SATP_ASID_MASK	_AC(0x1FF, UL)
 #else
 #define SATP_PPN	_AC(0x00000FFFFFFFFFFF, UL)
 #define SATP_MODE_39	_AC(0x8000000000000000, UL)
 #define SATP_MODE	SATP_MODE_39
-#endif
+#define SATP_ASID_BITS	16
+#define SATP_ASID_SHIFT	44
+#define SATP_ASID_MASK	_AC(0xFFFF, UL)
 #endif
 
-/* SCAUSE */
-#define SCAUSE_IRQ_FLAG		(_AC(1, UL) << (__riscv_xlen - 1))
+/* Exception cause high bit - is an interrupt if set */
+#define CAUSE_IRQ_FLAG		(_AC(1, UL) << (__riscv_xlen - 1))
 
 #define IRQ_U_SOFT		0
+/* Interrupt causes (minus the high bit) */
 #define IRQ_S_SOFT		1
+#define IRQ_VS_SOFT		2
 #define IRQ_M_SOFT		3
 #define IRQ_U_TIMER		4
 #define IRQ_S_TIMER		5
+#define IRQ_VS_TIMER		6
 #define IRQ_M_TIMER		7
 #define IRQ_U_EXT		8
 #define IRQ_S_EXT		9
+#define IRQ_VS_EXT		10
 #define IRQ_M_EXT		11
 
+/* Exception causes */
 #define EXC_INST_MISALIGNED	0
 #define EXC_INST_ACCESS		1
+#define EXC_INST_ILLEGAL	2
 #define EXC_BREAKPOINT		3
 #define EXC_LOAD_ACCESS		5
 #define EXC_STORE_ACCESS	7
 #define EXC_SYSCALL		8
+#define EXC_HYPERVISOR_SYSCALL	9
+#define EXC_SUPERVISOR_SYSCALL	10
 #define EXC_INST_PAGE_FAULT	12
 #define EXC_LOAD_PAGE_FAULT	13
 #define EXC_STORE_PAGE_FAULT	15
+#define EXC_INST_GUEST_PAGE_FAULT	20
+#define EXC_LOAD_GUEST_PAGE_FAULT	21
+#define EXC_VIRTUAL_INST_FAULT		22
+#define EXC_STORE_GUEST_PAGE_FAULT	23
+
+/* PMP configuration */
+#define PMP_R			0x01
+#define PMP_W			0x02
+#define PMP_X			0x04
+#define PMP_A			0x18
+#define PMP_A_TOR		0x08
+#define PMP_A_NA4		0x10
+#define PMP_A_NAPOT		0x18
+#define PMP_L			0x80
+
+/* HSTATUS flags */
+#ifdef CONFIG_64BIT
+#define HSTATUS_VSXL		_AC(0x300000000, UL)
+#define HSTATUS_VSXL_SHIFT	32
+#endif
+#define HSTATUS_VTSR		_AC(0x00400000, UL)
+#define HSTATUS_VTW		_AC(0x00200000, UL)
+#define HSTATUS_VTVM		_AC(0x00100000, UL)
+#define HSTATUS_VGEIN		_AC(0x0003f000, UL)
+#define HSTATUS_VGEIN_SHIFT	12
+#define HSTATUS_HU		_AC(0x00000200, UL)
+#define HSTATUS_SPVP		_AC(0x00000100, UL)
+#define HSTATUS_SPV		_AC(0x00000080, UL)
+#define HSTATUS_GVA		_AC(0x00000040, UL)
+#define HSTATUS_VSBE		_AC(0x00000020, UL)
+
+/* HGATP flags */
+#define HGATP_MODE_OFF		_AC(0, UL)
+#define HGATP_MODE_SV32X4	_AC(1, UL)
+#define HGATP_MODE_SV39X4	_AC(8, UL)
+#define HGATP_MODE_SV48X4	_AC(9, UL)
+
+#define HGATP32_MODE_SHIFT	31
+#define HGATP32_VMID_SHIFT	22
+#define HGATP32_VMID_MASK	_AC(0x1FC00000, UL)
+#define HGATP32_PPN		_AC(0x003FFFFF, UL)
+
+#define HGATP64_MODE_SHIFT	60
+#define HGATP64_VMID_SHIFT	44
+#define HGATP64_VMID_MASK	_AC(0x03FFF00000000000, UL)
+#define HGATP64_PPN		_AC(0x00000FFFFFFFFFFF, UL)
+
+#define HGATP_PAGE_SHIFT	12
 
-/* SIE (Interrupt Enable) and SIP (Interrupt Pending) flags */
-#define MIE_MSIE		(_AC(0x1, UL) << IRQ_M_SOFT)
-#define SIE_SSIE		(_AC(0x1, UL) << IRQ_S_SOFT)
-#define SIE_STIE		(_AC(0x1, UL) << IRQ_S_TIMER)
-#define SIE_SEIE		(_AC(0x1, UL) << IRQ_S_EXT)
+#ifdef CONFIG_64BIT
+#define HGATP_PPN		HGATP64_PPN
+#define HGATP_VMID_SHIFT	HGATP64_VMID_SHIFT
+#define HGATP_VMID_MASK		HGATP64_VMID_MASK
+#define HGATP_MODE_SHIFT	HGATP64_MODE_SHIFT
+#else
+#define HGATP_PPN		HGATP32_PPN
+#define HGATP_VMID_SHIFT	HGATP32_VMID_SHIFT
+#define HGATP_VMID_MASK		HGATP32_VMID_MASK
+#define HGATP_MODE_SHIFT	HGATP32_MODE_SHIFT
+#endif
+
+/* VSIP & HVIP relation */
+#define VSIP_TO_HVIP_SHIFT	(IRQ_VS_SOFT - IRQ_S_SOFT)
+#define VSIP_VALID_MASK		((_AC(1, UL) << IRQ_S_SOFT) | \
+				 (_AC(1, UL) << IRQ_S_TIMER) | \
+				 (_AC(1, UL) << IRQ_S_EXT))
 
-#define CSR_FCSR		0x003
+/* symbolic CSR names: */
 #define CSR_CYCLE		0xc00
 #define CSR_TIME		0xc01
 #define CSR_INSTRET		0xc02
+#define CSR_CYCLEH		0xc80
+#define CSR_TIMEH		0xc81
+#define CSR_INSTRETH		0xc82
+
 #define CSR_SSTATUS		0x100
 #define CSR_SIE			0x104
 #define CSR_STVEC		0x105
@@ -110,40 +169,90 @@
 #define CSR_SCAUSE		0x142
 #define CSR_STVAL		0x143
 #define CSR_SIP			0x144
-#ifdef CONFIG_RISCV_PRIV_1_9
-#define CSR_SPTBR		0x180
-#else
 #define CSR_SATP		0x180
-#endif
+
+#define CSR_VSSTATUS		0x200
+#define CSR_VSIE		0x204
+#define CSR_VSTVEC		0x205
+#define CSR_VSSCRATCH		0x240
+#define CSR_VSEPC		0x241
+#define CSR_VSCAUSE		0x242
+#define CSR_VSTVAL		0x243
+#define CSR_VSIP		0x244
+#define CSR_VSATP		0x280
+
+#define CSR_HSTATUS		0x600
+#define CSR_HEDELEG		0x602
+#define CSR_HIDELEG		0x603
+#define CSR_HIE			0x604
+#define CSR_HTIMEDELTA		0x605
+#define CSR_HCOUNTEREN		0x606
+#define CSR_HGEIE		0x607
+#define CSR_HTIMEDELTAH		0x615
+#define CSR_HTVAL		0x643
+#define CSR_HIP			0x644
+#define CSR_HVIP		0x645
+#define CSR_HTINST		0x64a
+#define CSR_HGATP		0x680
+#define CSR_HGEIP		0xe12
+
 #define CSR_MSTATUS		0x300
 #define CSR_MISA		0x301
 #define CSR_MIE			0x304
 #define CSR_MTVEC		0x305
-#ifdef CONFIG_RISCV_PRIV_1_9
-#define CSR_MUCOUNTEREN         0x320
-#define CSR_MSCOUNTEREN         0x321
-#define CSR_MHCOUNTEREN         0x322
-#else
-#define CSR_MCOUNTEREN		0x306
-#endif
 #define CSR_MSCRATCH		0x340
 #define CSR_MEPC		0x341
 #define CSR_MCAUSE		0x342
 #define CSR_MTVAL		0x343
 #define CSR_MIP			0x344
-#ifdef CONFIG_RISCV_PRIV_1_9
-#define CSR_MBASE		0x380
-#define CSR_MBOUND		0x381
-#define CSR_MIBASE		0x382
-#define CSR_MIBOUND		0x383
-#define CSR_MDBASE		0x384
-#define CSR_MDBOUND		0x385
-#endif
-#define CSR_CYCLEH		0xc80
-#define CSR_TIMEH		0xc81
-#define CSR_INSTRETH		0xc82
+#define CSR_PMPCFG0		0x3a0
+#define CSR_PMPADDR0		0x3b0
+#define CSR_MVENDORID		0xf11
+#define CSR_MARCHID		0xf12
+#define CSR_MIMPID		0xf13
 #define CSR_MHARTID		0xf14
 
+#ifdef CONFIG_RISCV_M_MODE
+# define CSR_STATUS	CSR_MSTATUS
+# define CSR_IE		CSR_MIE
+# define CSR_TVEC	CSR_MTVEC
+# define CSR_SCRATCH	CSR_MSCRATCH
+# define CSR_EPC	CSR_MEPC
+# define CSR_CAUSE	CSR_MCAUSE
+# define CSR_TVAL	CSR_MTVAL
+# define CSR_IP		CSR_MIP
+
+# define SR_IE		SR_MIE
+# define SR_PIE		SR_MPIE
+# define SR_PP		SR_MPP
+
+# define RV_IRQ_SOFT		IRQ_M_SOFT
+# define RV_IRQ_TIMER	IRQ_M_TIMER
+# define RV_IRQ_EXT		IRQ_M_EXT
+#else /* CONFIG_RISCV_M_MODE */
+# define CSR_STATUS	CSR_SSTATUS
+# define CSR_IE		CSR_SIE
+# define CSR_TVEC	CSR_STVEC
+# define CSR_SCRATCH	CSR_SSCRATCH
+# define CSR_EPC	CSR_SEPC
+# define CSR_CAUSE	CSR_SCAUSE
+# define CSR_TVAL	CSR_STVAL
+# define CSR_IP		CSR_SIP
+
+# define SR_IE		SR_SIE
+# define SR_PIE		SR_SPIE
+# define SR_PP		SR_SPP
+
+# define RV_IRQ_SOFT		IRQ_S_SOFT
+# define RV_IRQ_TIMER	IRQ_S_TIMER
+# define RV_IRQ_EXT		IRQ_S_EXT
+#endif /* CONFIG_RISCV_M_MODE */
+
+/* IE/IP (Supervisor/Machine Interrupt Enable/Pending) flags */
+#define IE_SIE		(_AC(0x1, UL) << RV_IRQ_SOFT)
+#define IE_TIE		(_AC(0x1, UL) << RV_IRQ_TIMER)
+#define IE_EIE		(_AC(0x1, UL) << RV_IRQ_EXT)
+
 #ifndef __ASSEMBLY__
 
 #define csr_swap(csr, val)					\
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

