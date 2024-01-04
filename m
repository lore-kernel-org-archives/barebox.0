Delivery-date: Thu, 04 Jan 2024 15:19:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLOZF-003cYm-0G
	for lore@lore.pengutronix.de;
	Thu, 04 Jan 2024 15:19:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLOZD-0005Xy-2F
	for lore@pengutronix.de; Thu, 04 Jan 2024 15:19:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zf5sTT0hSuqaK0esUZMQRh/qbwS6ebKcLsslyc0ziz4=; b=JhfJrmt/eLz5CumydBzlGuYWNC
	UL2ovEoaPGxgLihPnoHhqpyroyWZI0OwnueW64Wfj0VLEREhY7bzuK38h0xhfG0Z1wysflfljgBha
	yiDOiyKBpgA+wtJcgXTSaEv207zBFo4rwaRrKBZ8wAK1s+UxjPebOi6WWwxipKa/diWbNMo6AxVX4
	DA2qOipzgewLEa+5yGJ4fVno0XUUSzoK7QmUHGQJKBFHEqHngEK877IrbB3fKIsLI2+DtfFw3MGW+
	hfmlxl9mUukU2TAyLbGJuP59KoNMkchZHjYX3ALmVGaY9LDV4f76fVI7PRjNIR6TWlf74Cfrbva+l
	YBxodjjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLOXx-00EJDu-0z;
	Thu, 04 Jan 2024 14:18:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLOXi-00EIzD-2r
	for barebox@lists.infradead.org;
	Thu, 04 Jan 2024 14:18:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rLOXc-0004Hf-Jm; Thu, 04 Jan 2024 15:17:48 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rLOXb-000MyY-RI; Thu, 04 Jan 2024 15:17:47 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rLOXb-0017zJ-2S;
	Thu, 04 Jan 2024 15:17:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  4 Jan 2024 15:17:41 +0100
Message-Id: <20240104141746.165014-15-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240104141746.165014-1-s.hauer@pengutronix.de>
References: <20240104141746.165014-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240104_061755_279998_6A3C9E71 
X-CRM114-Status: GOOD (  33.09  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 14/19] ARM: Layerscape: add tzc400 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds the code necessary to initialize the TZC400 unit found on the
LS1028a. The code is taken from TF-A. It's mostly SoC independent, but
keep it in arch-layerscape for now until we get a second user and it's
clear which parts can be re-used.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-layerscape/Makefile  |   1 +
 arch/arm/mach-layerscape/tzc400.c  | 303 +++++++++++++++++++++++++++++
 arch/arm/mach-layerscape/tzc400.h  | 164 ++++++++++++++++
 include/mach/layerscape/lowlevel.h |   3 +
 4 files changed, 471 insertions(+)
 create mode 100644 arch/arm/mach-layerscape/tzc400.c
 create mode 100644 arch/arm/mach-layerscape/tzc400.h

diff --git a/arch/arm/mach-layerscape/Makefile b/arch/arm/mach-layerscape/Makefile
index ebb030a1cb..8f288851ff 100644
--- a/arch/arm/mach-layerscape/Makefile
+++ b/arch/arm/mach-layerscape/Makefile
@@ -6,6 +6,7 @@ lwl-$(CONFIG_ARCH_LS1046) += lowlevel.o lowlevel-ls1046a.o
 obj-$(CONFIG_ARCH_LS1046) += icid.o
 obj-pbl-y += boot.o soc.o
 pbl-y += xload-qspi.o xload.o
+pbl-$(CONFIG_ARCH_LS1028) += tzc400.o
 obj-$(CONFIG_ARCH_LAYERSCAPE_PPA) += ppa.o ppa-entry.o
 obj-$(CONFIG_BOOTM) += pblimage.o
 
diff --git a/arch/arm/mach-layerscape/tzc400.c b/arch/arm/mach-layerscape/tzc400.c
new file mode 100644
index 0000000000..04a97809f5
--- /dev/null
+++ b/arch/arm/mach-layerscape/tzc400.c
@@ -0,0 +1,303 @@
+// SPDX-License-Identifier: BSD-3-Clause
+/*
+ * Copyright (c) 2016-2022, ARM Limited and Contributors. All rights reserved.
+ *
+ */
+#define pr_fmt(fmt) "tzc400: " fmt
+
+#include <common.h>
+#include <linux/bitfield.h>
+#include <linux/sizes.h>
+#include <mach/layerscape/lowlevel.h>
+#include <mach/layerscape/layerscape.h>
+
+#include "tzc400.h"
+
+static inline void mmio_write_32(uintptr_t addr, uint32_t value)
+{
+	out_le32(addr, value);
+}
+
+static inline uint32_t mmio_read_32(uintptr_t addr)
+{
+	return in_le32(addr);
+}
+
+static inline void mmio_clrsetbits_32(uintptr_t addr,
+                                uint32_t clear,
+                                uint32_t set)
+{
+	clrsetbits_le32(addr, clear, set);
+}
+
+static inline unsigned int tzc_read_peripheral_id(uintptr_t base)
+{
+	unsigned int id;
+
+	id = mmio_read_32(base + PID0_OFF);
+	/* Masks DESC part in PID1 */
+	id |= ((mmio_read_32(base + PID1_OFF) & 0xFU) << 8U);
+
+	return id;
+}
+
+/*
+ * Implementation defined values used to validate inputs later.
+ * Filters : max of 4 ; 0 to 3
+ * Regions : max of 9 ; 0 to 8
+ * Address width : Values between 32 to 64
+ */
+struct tzc400_instance {
+	uintptr_t base;
+	uint8_t addr_width;
+	uint8_t num_filters;
+	uint8_t num_regions;
+};
+
+static struct tzc400_instance tzc400;
+
+static inline unsigned int tzc400_read_gate_keeper(void)
+{
+	uintptr_t base = tzc400.base;
+
+	return mmio_read_32(base + TZC400_GATE_KEEPER);
+}
+
+static inline void tzc400_write_gate_keeper(unsigned int val)
+{
+	uintptr_t base = tzc400.base;
+
+	mmio_write_32(base + TZC400_GATE_KEEPER, val);
+}
+
+static unsigned int tzc400_open_status(void)
+{
+	return FIELD_GET(TZC400_GATE_KEEPER_OS, tzc400_read_gate_keeper());
+}
+
+static unsigned int tzc400_get_gate_keeper(unsigned int filter)
+{
+	return (tzc400_open_status() >> filter) & GATE_KEEPER_FILTER_MASK;
+}
+
+/* This function is not MP safe. */
+static void tzc400_set_gate_keeper(unsigned int filter, int val)
+{
+	unsigned int os;
+
+	/* Upper half is current state. Lower half is requested state. */
+	os = tzc400_open_status();
+
+	if (val != 0)
+		os |=  (1UL << filter);
+	else
+		os &= ~(1UL << filter);
+
+	tzc400_write_gate_keeper(FIELD_PREP(TZC400_GATE_KEEPER_OR, os));
+
+	/* Wait here until we see the change reflected in the TZC status. */
+	while ((tzc400_open_status()) != os)
+		;
+}
+
+void tzc400_set_action(unsigned int action)
+{
+	uintptr_t base = tzc400.base;
+
+	ASSERT(base != 0U);
+	ASSERT(action <= TZC_ACTION_ERR_INT);
+
+	mmio_write_32(base + TZC400_ACTION, action);
+}
+
+void tzc400_init(uintptr_t base)
+{
+	unsigned int tzc400_id;
+	unsigned int tzc400_build;
+
+	tzc400.base = base;
+
+	tzc400_id = tzc_read_peripheral_id(base);
+	if (tzc400_id != TZC400_PERIPHERAL_ID)
+		panic("TZC-400 : Wrong device ID (0x%x).\n", tzc400_id);
+
+	/* Save values we will use later. */
+	tzc400_build = mmio_read_32(base + TZC400_BUILD_CONFIG);
+	tzc400.num_filters = FIELD_GET(TZC400_BUILD_CONFIG_NF, tzc400_build) + 1;
+	tzc400.addr_width  = FIELD_GET(TZC400_BUILD_CONFIG_AW, tzc400_build) + 1;
+	tzc400.num_regions = FIELD_GET(TZC400_BUILD_CONFIG_NR, tzc400_build) + 1;
+}
+
+/*
+ * `tzc400_configure_region` is used to program regions into the TrustZone
+ * controller. A region can be associated with more than one filter. The
+ * associated filters are passed in as a bitmap (bit0 = filter0), except that
+ * the value TZC400_REGION_ATTR_FILTER_BIT_ALL selects all filters, based on
+ * the value of tzc400.num_filters.
+ * NOTE:
+ * Region 0 is special; it is preferable to use tzc400_configure_region0
+ * for this region (see comment for that function).
+ */
+void tzc400_configure_region(unsigned int filters, unsigned int region, uint64_t region_base,
+			     uint64_t region_top, unsigned int sec_attr,
+			     unsigned int nsaid_permissions)
+{
+	uintptr_t rbase = tzc400.base + TZC_REGION_OFFSET(TZC400_REGION_SIZE, region);
+
+	/* Adjust filter mask by real filter number */
+	if (filters == TZC400_REGION_ATTR_FILTER_BIT_ALL)
+		filters = (1U << tzc400.num_filters) - 1U;
+
+	/* Do range checks on filters and regions. */
+	ASSERT(((filters >> tzc400.num_filters) == 0U) &&
+	       (region < tzc400.num_regions));
+
+	/*
+	 * Do address range check based on TZC configuration. A 64bit address is
+	 * the max and expected case.
+	 */
+	ASSERT((region_top <= (U64_MAX >> (64U - tzc400.addr_width))) &&
+		(region_base < region_top));
+
+	/* region_base and (region_top + 1) must be 4KB aligned */
+	ASSERT(((region_base | (region_top + 1U)) & (4096U - 1U)) == 0U);
+
+	ASSERT(sec_attr <= TZC_REGION_S_RDWR);
+
+	pr_debug("TrustZone : Configuring region %u\n", region);
+	pr_debug("TrustZone : ... base = %llx, top = %llx,\n", region_base, region_top);
+	pr_debug("TrustZone : ... sec_attr = 0x%x, ns_devs = 0x%x)\n",
+		sec_attr, nsaid_permissions);
+
+	/***************************************************/
+	/* Inputs look ok, start programming registers.    */
+	/* All the address registers are 32 bits wide and  */
+	/* have a LOW and HIGH				   */
+	/* component used to construct an address up to a  */
+	/* 64bit.					   */
+	/***************************************************/
+	mmio_write_32(rbase + TZC400_REGION_BASE_LOW_0, (uint32_t)region_base);
+	mmio_write_32(rbase + TZC400_REGION_BASE_HIGH_0, (uint32_t)(region_base >> 32));
+	mmio_write_32(rbase + TZC400_REGION_TOP_LOW_0, (uint32_t)region_top);
+	mmio_write_32(rbase + TZC400_REGION_TOP_HIGH_0, (uint32_t)(region_top >> 32));
+
+	/* Enable filter to the region and set secure attributes */
+	mmio_write_32(rbase + TZC400_REGION_ATTR_0,
+		      (sec_attr << TZC_REGION_ATTR_SEC_SHIFT) | (filters << TZC_REGION_ATTR_F_EN_SHIFT));
+
+	/***************************************************/
+	/* Specify which non-secure devices have permission*/
+	/* to access this region.			   */
+	/***************************************************/
+	mmio_write_32(rbase + TZC400_REGION_ID_ACCESS_0, nsaid_permissions);
+}
+
+void tzc400_update_filters(unsigned int region, unsigned int filters)
+{
+	uintptr_t rbase = tzc400.base + TZC_REGION_OFFSET(TZC400_REGION_SIZE, region);
+	uint32_t filters_mask = GENMASK(tzc400.num_filters - 1U, 0);
+
+	/* Do range checks on filters and regions. */
+	ASSERT(((filters >> tzc400.num_filters) == 0U) &&
+	       (region < tzc400.num_regions));
+
+	mmio_clrsetbits_32(rbase + TZC400_REGION_ATTR_0,
+			   filters_mask << TZC_REGION_ATTR_F_EN_SHIFT,
+			   filters << TZC_REGION_ATTR_F_EN_SHIFT);
+}
+
+void tzc400_enable_filters(void)
+{
+	unsigned int state;
+	unsigned int filter;
+
+	ASSERT(tzc400.base != 0U);
+
+	for (filter = 0U; filter < tzc400.num_filters; filter++) {
+		state = tzc400_get_gate_keeper(filter);
+		if (state != 0U) {
+			/* Filter 0 is special and cannot be disabled.
+			 * So here we allow it being already enabled. */
+			if (filter == 0U)
+				continue;
+
+			/*
+			 * The TZC filter is already configured. Changing the
+			 * programmer's view in an active system can cause
+			 * unpredictable behavior therefore panic for now rather
+			 * than try to determine whether this is safe in this
+			 * instance.
+			 *
+			 * See the 'ARM (R) CoreLink TM TZC-400 TrustZone (R)
+			 * Address Space Controller' Technical Reference Manual.
+			 */
+			panic("TZC-400 : Filter %u Gatekeeper already enabled.\n",
+			      filter);
+		}
+		tzc400_set_gate_keeper(filter, 1);
+	}
+}
+
+void tzc400_disable_filters(void)
+{
+	unsigned int filter;
+	unsigned int state;
+	unsigned int start = 0U;
+
+	ASSERT(tzc400.base != 0U);
+
+	/* Filter 0 is special and cannot be disabled. */
+	state = tzc400_get_gate_keeper(0);
+	if (state != 0U)
+		start++;
+
+	for (filter = start; filter < tzc400.num_filters; filter++)
+		tzc400_set_gate_keeper(filter, 0);
+}
+
+unsigned long ls1028a_tzc400_init(unsigned long memsize)
+{
+	unsigned long lowmem, highmem, lowmem_end;
+
+	tzc400_init(LS1028A_TZC400_BASE);
+	tzc400_disable_filters();
+
+	/* Region 0 set to no access by default */
+	mmio_write_32(tzc400.base + TZC400_REGION_ATTR_0, TZC_REGION_S_NONE << TZC_REGION_ATTR_SEC_SHIFT);
+	mmio_write_32(tzc400.base + TZC400_REGION_ID_ACCESS_0, 0);
+
+	lowmem = min_t(unsigned long, LS1028A_DDR_SDRAM_LOWMEM_SIZE, memsize);
+	lowmem_end = LS1028A_DDR_SDRAM_BASE + lowmem;
+	highmem = memsize - lowmem;
+
+	/* region 1: secure memory */
+	tzc400_configure_region(1, 1,
+		lowmem_end - LS1028A_SECURE_DRAM_SIZE,
+		lowmem_end - 1,
+		TZC_REGION_S_RDWR, TZC_REGION_NS_NONE);
+
+	/* region 2: shared memory */
+	tzc400_configure_region(1, 2,
+		lowmem_end - LS1028A_SECURE_DRAM_SIZE - LS1028A_SP_SHARED_DRAM_SIZE,
+		lowmem_end - LS1028A_SECURE_DRAM_SIZE - 1,
+		TZC_REGION_S_RDWR, TZC_NS_ACCESS_ID);
+
+	/* region 3: nonsecure low memory */
+	tzc400_configure_region(1, 3,
+		LS1028A_DDR_SDRAM_BASE,
+		lowmem_end - LS1028A_SECURE_DRAM_SIZE - LS1028A_SP_SHARED_DRAM_SIZE - 1,
+		TZC_REGION_S_RDWR, TZC_NS_ACCESS_ID);
+
+	if (highmem)
+		/* nonsecure high memory */
+		tzc400_configure_region(1, 4,
+			LS1028A_DDR_SDRAM_HIGHMEM_BASE,
+			LS1028A_DDR_SDRAM_HIGHMEM_BASE + highmem - 1,
+			TZC_REGION_S_RDWR, TZC_NS_ACCESS_ID);
+
+	tzc400_set_action(TZC_ACTION_ERR);
+
+	tzc400_enable_filters();
+
+	return lowmem - LS1028A_SECURE_DRAM_SIZE - LS1028A_SP_SHARED_DRAM_SIZE;
+}
diff --git a/arch/arm/mach-layerscape/tzc400.h b/arch/arm/mach-layerscape/tzc400.h
new file mode 100644
index 0000000000..c8d4583622
--- /dev/null
+++ b/arch/arm/mach-layerscape/tzc400.h
@@ -0,0 +1,164 @@
+/*
+ * Copyright (c) 2014-2021, ARM Limited and Contributors. All rights reserved.
+ *
+ * SPDX-License-Identifier: BSD-3-Clause
+ */
+
+#ifndef TZC400_H
+#define TZC400_H
+
+#include <linux/bits.h>
+
+/*
+ * Offset of core registers from the start of the base of configuration
+ * registers for each region.
+ */
+
+/* ID Registers */
+#define PID0_OFF					0xfe0
+#define PID1_OFF					0xfe4
+#define PID2_OFF					0xfe8
+#define PID3_OFF					0xfec
+#define PID4_OFF					0xfd0
+#define CID0_OFF					0xff0
+#define CID1_OFF					0xff4
+#define CID2_OFF					0xff8
+#define CID3_OFF					0xffc
+
+/*
+ * What type of action is expected when an access violation occurs.
+ * The memory requested is returned as zero. But we can also raise an event to
+ * let the system know it happened.
+ * We can raise an interrupt(INT) and/or cause an exception(ERR).
+ *  TZC_ACTION_NONE    - No interrupt, no Exception
+ *  TZC_ACTION_ERR     - No interrupt, raise exception -> sync external
+ *                       data abort
+ *  TZC_ACTION_INT     - Raise interrupt, no exception
+ *  TZC_ACTION_ERR_INT - Raise interrupt, raise exception -> sync
+ *                       external data abort
+ */
+#define TZC_ACTION_NONE			0
+#define TZC_ACTION_ERR			1
+#define TZC_ACTION_INT			2
+#define TZC_ACTION_ERR_INT		(TZC_ACTION_ERR | TZC_ACTION_INT)
+
+/* Bit positions of TZC_ACTION registers */
+#define TZC_ACTION_RV_SHIFT				0
+#define TZC_ACTION_RV_MASK				0x3
+#define TZC_ACTION_RV_LOWOK				0x0
+#define TZC_ACTION_RV_LOWERR				0x1
+#define TZC_ACTION_RV_HIGHOK				0x2
+#define TZC_ACTION_RV_HIGHERR				0x3
+
+/*
+ * Controls secure access to a region. If not enabled secure access is not
+ * allowed to region.
+ */
+#define TZC_REGION_S_NONE		0
+#define TZC_REGION_S_RD			1
+#define TZC_REGION_S_WR			2
+#define TZC_REGION_S_RDWR		(TZC_REGION_S_RD | TZC_REGION_S_WR)
+
+#define TZC_REGION_ATTR_S_RD_SHIFT			30
+#define TZC_REGION_ATTR_S_WR_SHIFT			31
+#define TZC_REGION_ATTR_F_EN_SHIFT			0
+#define TZC_REGION_ATTR_SEC_SHIFT			30
+#define TZC_REGION_ATTR_S_RD_MASK			0x1
+#define TZC_REGION_ATTR_S_WR_MASK			0x1
+#define TZC_REGION_ATTR_SEC_MASK			0x3
+
+#define TZC_REGION_ACCESS_WR_EN_SHIFT			16
+#define TZC_REGION_ACCESS_RD_EN_SHIFT			0
+#define TZC_REGION_ACCESS_ID_MASK			0xf
+
+/* Macros for allowing Non-Secure access to a region based on NSAID */
+#define TZC_REGION_ACCESS_RD(nsaid)				\
+	((U(1) << ((nsaid) & TZC_REGION_ACCESS_ID_MASK)) <<	\
+	 TZC_REGION_ACCESS_RD_EN_SHIFT)
+#define TZC_REGION_ACCESS_WR(nsaid)				\
+	((U(1) << ((nsaid) & TZC_REGION_ACCESS_ID_MASK)) <<	\
+	 TZC_REGION_ACCESS_WR_EN_SHIFT)
+#define TZC_REGION_ACCESS_RDWR(nsaid)				\
+	(TZC_REGION_ACCESS_RD(nsaid) |				\
+	TZC_REGION_ACCESS_WR(nsaid))
+
+/* Returns offset of registers to program for a given region no */
+#define TZC_REGION_OFFSET(region_size, region_no)	\
+				((region_size) * (region_no))
+
+#define TZC400_BUILD_CONFIG			0x000
+#define TZC400_GATE_KEEPER			0x008
+#define TZC400_SPECULATION_CTRL			0x00c
+#define TZC400_INT_STATUS			0x010
+#define TZC400_INT_CLEAR			0x014
+
+#define TZC400_FAIL_ADDRESS_LOW			0x020
+#define TZC400_FAIL_ADDRESS_HIGH		0x024
+#define TZC400_FAIL_CONTROL			0x028
+#define TZC400_FAIL_ID				0x02c
+
+#define TZC400_BUILD_CONFIG_NF			GENMASK(25, 24)
+#define TZC400_BUILD_CONFIG_AW			GENMASK(13, 8)
+#define TZC400_BUILD_CONFIG_NR			GENMASK(4, 0)
+
+/*
+ * Number of gate keepers is implementation defined. But we know the max for
+ * this device is 4. Get implementation details from BUILD_CONFIG.
+ */
+#define TZC400_GATE_KEEPER_OS			GENMASK(19, 16)
+#define TZC400_GATE_KEEPER_OR			GENMASK(3, 0)
+#define GATE_KEEPER_FILTER_MASK			0x1
+
+#define TZC400_FAIL_CONTROL_DIR_WRITE		BIT(24)
+#define TZC400_FAIL_CONTROL_NS_NONSECURE	BIT(21)
+#define TZC400_FAIL_CONTROL_PRIV		BIT(20)
+
+#define TZC400_PERIPHERAL_ID			0x460
+
+/* Filter enable bits in a TZC */
+#define TZC400_REGION_ATTR_F_EN_MASK		0xf
+#define TZC400_REGION_ATTR_FILTER_BIT(x)	(1) << (x))
+#define TZC400_REGION_ATTR_FILTER_BIT_ALL	TZC400_REGION_ATTR_F_EN_MASK
+
+/*
+ * All TZC region configuration registers are placed one after another. It
+ * depicts size of block of registers for programming each region.
+ */
+#define TZC400_REGION_SIZE			0x20
+#define TZC400_ACTION				0x4
+
+#define FILTER_OFFSET				0x10
+
+#define TZC400_REGION_BASE_LOW_0	0x100
+#define TZC400_REGION_BASE_HIGH_0	0x104
+#define TZC400_REGION_TOP_LOW_0	0x108
+#define TZC400_REGION_TOP_HIGH_0	0x10c
+#define TZC400_REGION_ATTR_0		0x110
+#define TZC400_REGION_ID_ACCESS_0	0x114
+
+#define TZC_REGION_NS_NONE			0x00000000U
+
+/*
+ * NXP Platforms do not support NS Access ID (NSAID) based non-secure access.
+ * Supports only non secure through generic NS ACCESS ID
+ */
+#define TZC_NS_ACCESS_ID			0xFFFFFFFFU
+
+/*******************************************************************************
+ * Function & variable prototypes
+ ******************************************************************************/
+void tzc400_init(uintptr_t base);
+void tzc400_configure_region0(unsigned int sec_attr,
+			   unsigned int ns_device_access);
+void tzc400_configure_region(unsigned int filters,
+			  unsigned int region,
+			  unsigned long long region_base,
+			  unsigned long long region_top,
+			  unsigned int sec_attr,
+			  unsigned int nsaid_permissions);
+void tzc400_update_filters(unsigned int region, unsigned int filters);
+void tzc400_set_action(unsigned int action);
+void tzc400_enable_filters(void);
+void tzc400_disable_filters(void);
+
+#endif /* TZC400_H */
diff --git a/include/mach/layerscape/lowlevel.h b/include/mach/layerscape/lowlevel.h
index d013c5e610..e59fb67740 100644
--- a/include/mach/layerscape/lowlevel.h
+++ b/include/mach/layerscape/lowlevel.h
@@ -4,7 +4,10 @@
 #define __MACH_LOWLEVEL_H
 
 void ls1046a_init_lowlevel(void);
+void ls1028a_init_lowlevel(void);
 void ls1046a_init_l2_latency(void);
 void ls102xa_init_lowlevel(void);
 
+unsigned long ls1028a_tzc400_init(unsigned long memsize);
+
 #endif /* __MACH_LOWLEVEL_H */
-- 
2.39.2



