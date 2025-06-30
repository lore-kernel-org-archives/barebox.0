Delivery-date: Mon, 30 Jun 2025 09:47:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uW9EH-00CYEz-38
	for lore@lore.pengutronix.de;
	Mon, 30 Jun 2025 09:47:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uW9EG-0005qj-Ts
	for lore@pengutronix.de; Mon, 30 Jun 2025 09:47:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=q76RDZIGJRIK6NuirxGB0KI5h/g4m0H9dNTYVqQkuyI=; b=1xxSYS0gMkFkJbyQOmXvyXxRze
	+NZuOFcLMQx6AKPwhThkN9oosAaNjPnqyLQ1CycIOFvZ9UEi9f0D3/eJVDhSNx644SluJB4SwQC5G
	X3iyINlln21QKArVnilg6I2P4OwmLOcj2Gn7mCb1nwk9VByc63AJ3LpNEynY1NerpNruJTNnRgevz
	J81M+rFUu6lUY5TYrGVUc6C6BmWyMoONMCqVvUtdtiOVHNvx24TAP87oh+Ay69DR6mwyhmi8Hxy5F
	jXa4wYL7TLnAXseVwQmmerKLsnTMXGboX2v43vswssJrOI0aNpl3yzUn4CmATxkhCrDB/AkqtAYAw
	of6lEg3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uW9Dh-00000001Uep-261z;
	Mon, 30 Jun 2025 07:46:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uW9D3-00000001UQu-3pwr
	for barebox@lists.infradead.org;
	Mon, 30 Jun 2025 07:45:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uW9D2-0004OA-LB; Mon, 30 Jun 2025 09:45:48 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uW9D2-00648O-0s;
	Mon, 30 Jun 2025 09:45:48 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uW9D2-004Sjo-0U;
	Mon, 30 Jun 2025 09:45:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 30 Jun 2025 09:45:49 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250630-arm-optee-early-helper-v2-7-c8cce3ae42b0@pengutronix.de>
References: <20250630-arm-optee-early-helper-v2-0-c8cce3ae42b0@pengutronix.de>
In-Reply-To: <20250630-arm-optee-early-helper-v2-0-c8cce3ae42b0@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1751269547; l=9286;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=MrNwpyBqgea4sv3ZbsFiqRru/o5WA0RhOF8TJdy3qM0=;
 b=eKQl5DdYhBGkSQNNGIgkNQZhEqj7VLI4BXuHT2EzX9d1xowXHd2JAegI9/74Z2rna+G9eVX5x
 fA+XCvmxx03CjKh8AU7TAcN81JPgFi6XHlADbMGMYGO42SboOqu+Vq+
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250630_004550_103402_5867B054 
X-CRM114-Status: GOOD (  22.58  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Marco Felsch <m.felsch@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 07/14] ARM: mach-imx: tzasc: add region configure
 helpers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Marco Felsch <m.felsch@pengutronix.de>

At the moment the TZC380 driver is very limited and focused on minimal
platform setup unlike the TZC400 driver.

This commit adds helper functions to setup any number of TZASC regions
of any size which is required by later commits to setup an early
non-secure TZASC region1.

The code is based on the TZC400 barebox driver and the TZC380 OP-TEE
driver.

Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/tzasc.c | 236 ++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 236 insertions(+)

diff --git a/arch/arm/mach-imx/tzasc.c b/arch/arm/mach-imx/tzasc.c
index 4cb4d7c5cffc17dc56e77124df2b2df0ed67251c..2a48f841af49d3f14bc017950d2553f7f52b7416 100644
--- a/arch/arm/mach-imx/tzasc.c
+++ b/arch/arm/mach-imx/tzasc.c
@@ -1,11 +1,76 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
+#define pr_fmt(fmt) "tzc380: " fmt
+
+#include <common.h>
 #include <mach/imx/generic.h>
 #include <mach/imx/tzasc.h>
+#include <linux/bitfield.h>
 #include <linux/bitops.h>
+#include <linux/log2.h>
+#include <linux/sizes.h>
 #include <mach/imx/imx8m-regs.h>
 #include <io.h>
 
+/*******************************************************************************
+ *                         TZC380 defines
+ ******************************************************************************/
+
+#define TZC380_BUILD_CONFIG		0x000
+#define   TZC380_BUILD_CONFIG_AW	GENMASK(13, 8)
+#define   TZC380_BUILD_CONFIG_NR	GENMASK(4, 0)
+
+/*
+ * All TZC region configuration registers are placed one after another. It
+ * depicts size of block of registers for programming each region.
+ */
+#define TZC380_REGION_REG_SIZE		0x10
+
+#define TZC380_REGION_SETUP_LOW_0	0x100
+#define TZC380_REGION_SETUP_HIGH_0	0x104
+#define TZC380_REGION_ATTR_0		0x108
+#define   TZC380_REGION_SP		GENMASK(31, 28)
+#define   TZC380_SUBREGION_DIS_MASK	GENMASK(15, 8)
+#define   TZC380_REGION_SIZE		GENMASK(6, 1)
+#define   TZC380_REGION_EN		BIT(0)
+
+/* ID Registers */
+#define TZC380_PID0_OFF			0xfe0
+#define TZC380_PID1_OFF			0xfe4
+#define   TZC380_PERIPHERAL_ID		0x380
+#define TZC380_PID2_OFF			0xfe8
+#define TZC380_PID3_OFF			0xfec
+#define TZC380_PID4_OFF			0xfd0
+#define TZC380_CID0_OFF			0xff0
+#define TZC380_CID1_OFF			0xff4
+#define TZC380_CID2_OFF			0xff8
+
+#define TZC380_REGION_OFFSET(region_no)		\
+		(TZC380_REGION_REG_SIZE * (region_no))
+#define TZC380_REGION_SETUP_LOW(region_no)	\
+		(TZC380_REGION_OFFSET(region_no) + TZC380_REGION_SETUP_LOW_0)
+#define TZC380_REGION_SETUP_HIGH(region_no)	\
+		(TZC380_REGION_OFFSET(region_no) + TZC380_REGION_SETUP_HIGH_0)
+#define TZC380_REGION_ATTR(region_no)		\
+		(TZC380_REGION_OFFSET(region_no) + TZC380_REGION_ATTR_0)
+
+#define TZC380_REGION_SP_NS_W		FIELD_PREP(TZC380_REGION_SP, BIT(0))
+#define TZC380_REGION_SP_NS_R		FIELD_PREP(TZC380_REGION_SP, BIT(1))
+#define TZC380_REGION_SP_S_W		FIELD_PREP(TZC380_REGION_SP, BIT(2))
+#define TZC380_REGION_SP_S_R		FIELD_PREP(TZC380_REGION_SP, BIT(3))
+
+#define TZC380_REGION_SP_ALL		\
+		(TZC380_REGION_SP_NS_W | TZC380_REGION_SP_NS_R | \
+		 TZC380_REGION_SP_S_W | TZC380_REGION_SP_S_R)
+#define TZC380_REGION_SP_S_RW		\
+		(TZC380_REGION_SP_S_W | TZC380_REGION_SP_S_R)
+#define TZC380_REGION_SP_NS_RW		\
+		(TZC380_REGION_SP_NS_W | TZC380_REGION_SP_NS_R)
+
+/*******************************************************************************
+ *                         SoC specific defines
+ ******************************************************************************/
+
 #define GPR_TZASC_EN					BIT(0)
 #define GPR_TZASC_ID_SWAP_BYPASS		BIT(1)
 #define GPR_TZASC_EN_LOCK				BIT(16)
@@ -14,6 +79,177 @@
 #define MX8M_TZASC_REGION_ATTRIBUTES_0		(MX8M_TZASC_BASE_ADDR + 0x108)
 #define MX8M_TZASC_REGION_ATTRIBUTES_0_SP	GENMASK(31, 28)
 
+/*
+ * Implementation defined values used to validate inputs later.
+ * Filters : max of 4 ; 0 to 3
+ * Regions : max of 9 ; 0 to 8
+ * Address width : Values between 32 to 64
+ */
+struct tzc380_instance {
+	void __iomem *base;
+	uint8_t addr_width;
+	uint8_t num_regions;
+};
+
+/* Some platforms like i.MX6 does have two tzc380 controllers */
+static struct tzc380_instance tzc380_inst[2];
+
+static inline unsigned int tzc_read_peripheral_id(void __iomem *base)
+{
+	unsigned int id;
+
+	id = in_le32(base + TZC380_PID0_OFF);
+	/* Masks DESC part in PID1 */
+	id |= ((in_le32(base + TZC380_PID1_OFF) & 0xFU) << 8U);
+
+	return id;
+}
+
+static struct tzc380_instance *tzc380_init(void __iomem *base)
+{
+	struct tzc380_instance *tzc380 = &tzc380_inst[0];
+	unsigned int tzc380_id;
+	unsigned int tzc380_build;
+
+	if (tzc380->base)
+		tzc380 = &tzc380_inst[1];
+
+	if (tzc380->base)
+		panic("TZC-380: No free memory\n");
+
+	tzc380->base = base;
+
+	tzc380_id = tzc_read_peripheral_id(base);
+	if (tzc380_id != TZC380_PERIPHERAL_ID)
+		panic("TZC-380 : Wrong device ID (0x%x).\n", tzc380_id);
+
+	/* Save values we will use later. */
+	tzc380_build = in_le32(base + TZC380_BUILD_CONFIG);
+	tzc380->addr_width  = FIELD_GET(TZC380_BUILD_CONFIG_AW, tzc380_build) + 1;
+	tzc380->num_regions = FIELD_GET(TZC380_BUILD_CONFIG_NR, tzc380_build) + 1;
+
+	return tzc380;
+}
+
+static void
+tzc380_configure_region(struct tzc380_instance *tzc380, unsigned int region,
+			uint64_t region_base, unsigned int region_attr)
+{
+	void __iomem *base = tzc380->base;
+
+	/* Do range checks on regions */
+	ASSERT((region < tzc380->num_regions));
+
+	pr_debug("Configuring region %u\n", region);
+	pr_debug("... base = %#llx\n", region_base);
+	pr_debug("... sp = %#x\n",
+		 (unsigned int)FIELD_GET(TZC380_REGION_SP, region_attr));
+	pr_debug("... subregion dis-mask = %#x\n",
+		 (unsigned int)FIELD_GET(TZC380_SUBREGION_DIS_MASK, region_attr));
+	pr_debug("... size = %#x\n",
+		 (unsigned int)FIELD_GET(TZC380_REGION_SIZE, region_attr));
+	pr_debug("... enable = %#x\n",
+		 (unsigned int)FIELD_GET(TZC380_REGION_EN, region_attr));
+
+	/***************************************************/
+	/* Inputs look ok, start programming registers.    */
+	/* The address registers are 32 bits wide and      */
+	/* have a LOW and HIGH				   */
+	/* component used to construct an address up to a  */
+	/* 64bit.					   */
+	/***************************************************/
+	out_le32(base + TZC380_REGION_SETUP_LOW(region), (uint32_t)region_base);
+	out_le32(base + TZC380_REGION_SETUP_HIGH(region), (uint32_t)(region_base >> 32));
+
+	/* Set region attributes */
+	out_le32(base + TZC380_REGION_ATTR(region), region_attr);
+}
+
+static int
+tzc380_auto_configure(struct tzc380_instance *tzc380, unsigned int region,
+		      uint64_t base, uint64_t size,
+		      unsigned int attr)
+{
+	uint64_t sub_region_size = 0;
+	uint64_t area = 0;
+	uint8_t lregion = region;
+	uint64_t region_size = 0;
+	uint64_t sub_address = 0;
+	uint64_t address = base;
+	uint64_t lsize = size;
+	unsigned int lattr;
+	uint32_t mask = 0;
+	uint64_t reminder;
+	int i = 0;
+	uint8_t pow = 0;
+
+	ASSERT(tzc380->base);
+
+	/*
+	 * TZC380 RM
+	 * For region_attributes_<n> registers, region_size:
+	 * Note: The AXI address width, that is AXI_ADDRESS_MSB+1, controls the
+	 * upper limit value of the field.
+	 */
+	pow = tzc380->addr_width;
+
+	while (lsize != 0 && pow >= 15) {
+		region_size = 1ULL << pow;
+
+		/* Case region fits alignment and covers requested area */
+		if ((address % region_size == 0) &&
+		    ((address + lsize) % region_size == 0)) {
+			lattr = attr;
+			lattr |= FIELD_PREP(TZC380_REGION_SIZE, (pow - 1));
+			lattr |= TZC380_REGION_EN;
+
+			tzc380_configure_region(tzc380, lregion, address, lattr);
+
+			lregion++;
+			address += region_size;
+			lsize -= region_size;
+			pow = tzc380->addr_width;
+			continue;
+		}
+
+		/* Cover area using several subregions */
+		sub_region_size = div_u64(region_size, 8);
+		div64_u64_rem(address, sub_region_size, &reminder);
+		if (reminder == 0 && lsize > 2 * sub_region_size) {
+			sub_address = div64_u64(address, region_size) * region_size;
+			mask = 0;
+			for (i = 0; i < 8; i++) {
+				area = (i + 1) * sub_region_size;
+				if (sub_address + area <= address ||
+				    sub_address + area > address + lsize) {
+					mask |= FIELD_PREP(TZC380_SUBREGION_DIS_MASK, BIT(i));
+				} else {
+					address += sub_region_size;
+					lsize -= sub_region_size;
+				}
+			}
+
+			lattr = mask | attr;
+			lattr |= FIELD_PREP(TZC380_REGION_SIZE, (pow - 1));
+			lattr |= TZC380_REGION_EN;
+
+			tzc380_configure_region(tzc380, lregion, sub_address, lattr);
+
+			lregion++;
+			pow = tzc380->addr_width;
+			continue;
+		}
+		pow--;
+	}
+	ASSERT(lsize == 0);
+	ASSERT(address == base + size);
+	return lregion;
+}
+
+/******************************************************************************
+ *                          SoC specific helpers
+ ******************************************************************************/
+
 void imx8m_tzc380_init(void)
 {
 	u32 __iomem *gpr = IOMEM(MX8M_IOMUXC_GPR_BASE_ADDR);

-- 
2.39.5



