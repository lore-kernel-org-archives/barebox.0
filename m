Delivery-date: Wed, 06 Nov 2024 20:03:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8lJB-005daH-1i
	for lore@lore.pengutronix.de;
	Wed, 06 Nov 2024 20:03:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8lJB-0001y9-DB
	for lore@pengutronix.de; Wed, 06 Nov 2024 20:03:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iwkqBuLQeb0lZfdPbIvHFrXyInyOgDw+PSB8A42DEgw=; b=YVBANexf8GgB0nMDTs9IvccEAb
	6lVftU9vuuXtbYwRO9C57oeT3k+o1OFv9tOANTKVWV/4f9HD7Wh0mL2H+g+ZiXkegVkVVFO5SIdUK
	22uSDz/9lHKa11JzkdRITkBAx2Lg/f87S0T3OjaXVmYYaYqZBvJDoM0eiLUc2NhbyzlogLJbHTXam
	IZuBP/7O4+8HZlzkkI7IDO+mTDwZRB7TisHkaaZJCS+F9hZ3N4y+rtiIsCtthvWYr5Fbfu2oUnyRk
	3mG8BlU18SvT4oXNNZIxQrH6jjEVs2vuuYZBu85rpCuURd9j3ypa85jFlqecMOSWmEpm3sJw2Y/Ij
	efznou0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8lIb-00000004R3V-43c4;
	Wed, 06 Nov 2024 19:02:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8lDc-00000004Puv-1xfv
	for barebox@lists.infradead.org;
	Wed, 06 Nov 2024 18:57:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t8lDb-0000Vf-8Z; Wed, 06 Nov 2024 19:57:27 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t8lDb-002LMq-07;
	Wed, 06 Nov 2024 19:57:27 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t8lDa-0005bP-32;
	Wed, 06 Nov 2024 19:57:26 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Robin van der Gracht <robin@protonic.nl>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  6 Nov 2024 19:57:23 +0100
Message-Id: <20241106185724.2526-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241106185724.2526-1-a.fatoum@pengutronix.de>
References: <20241106185724.2526-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241106_105728_768969_8E62BC77 
X-CRM114-Status: GOOD (  27.99  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/6] ARM: Rockchip: implement tee.bin v1 header parsing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Building OP-TEE produces a number of binaries among them tee.elf,
tee.bin and tee-raw.bin.

So far, we assumed in Rockchip code that the binary provided by the user
to be built into barebox is tee-raw.bin.

That binary is installed as-is to address 0x200000, which is not
generally applicable:

  - At least in upstream OP-TEE, the upstream RK3399 support uses
    0x30000000 as base address

  - Even if OP-TEE didn't hang, 0x200000 is likely not at the end
    of RAM, but that's where barebox assumes OP-TEE is by default,
    and thus barebox would carve out unneeded reserved memory.

The tee.bin on the other hand has an OP-TEE header in front of it, which
our i.MX OP-TEE support already uses to identify where to load the binary
too and how much memory to reserve.

Let's do the same for Rockchip and check if have an OP-TEE header and
use that to inform our placement of OP-TEE and reservation of memory in
barebox itself and in the reserved memory entries that will be fixed up
for Linux.

As OP-TEE support is added anew, we also make sure to always have
a OP-TEE header for barebox proper to consult and we fake one if
there isn't any.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-rockchip/atf.c      | 74 +++++++++++++++++++++++++++++--
 arch/arm/mach-rockchip/rockchip.c | 16 +++++++
 include/mach/rockchip/atf.h       | 15 ++++++-
 include/mach/rockchip/bootrom.h   | 17 +++++++
 4 files changed, 117 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-rockchip/atf.c b/arch/arm/mach-rockchip/atf.c
index 2649b80af9e2..86a28c51016b 100644
--- a/arch/arm/mach-rockchip/atf.c
+++ b/arch/arm/mach-rockchip/atf.c
@@ -4,8 +4,10 @@
 #include <asm/system.h>
 #include <mach/rockchip/atf.h>
 #include <elf.h>
+#include <tee/optee.h>
 #include <asm/atf_common.h>
 #include <asm/barebox-arm.h>
+#include <asm-generic/memory_layout.h>
 #include <mach/rockchip/dmc.h>
 #include <mach/rockchip/rockchip.h>
 #include <mach/rockchip/bootrom.h>
@@ -14,6 +16,17 @@
 
 struct rockchip_scratch_space *rk_scratch;
 
+static void rk_scratch_save_optee_hdr(const struct optee_header *hdr)
+{
+	if (!rk_scratch) {
+		pr_err("No scratch area initialized, skip saving optee-hdr");
+		return;
+	}
+
+	pr_debug("Saving optee-hdr to scratch area 0x%p\n", &rk_scratch->optee_hdr);
+	rk_scratch->optee_hdr = *hdr;
+}
+
 static unsigned long load_elf64_image_phdr(const void *elf)
 {
 	const Elf64_Ehdr *ehdr; /* Elf header structure pointer */
@@ -41,6 +54,59 @@ static unsigned long load_elf64_image_phdr(const void *elf)
 	return ehdr->e_entry;
 }
 
+static uintptr_t rk_load_optee(uintptr_t bl32, const void *bl32_image,
+			       size_t bl32_size)
+{
+	const struct optee_header *hdr = bl32_image;
+	struct optee_header dummy_hdr;
+
+	/* We already have ELF support for BL31, but adding it for BL32,
+	 * would require us to identify a range that fits all ELF
+	 * sections and fake a dummy OP-TEE header that describes it.
+	 * This is doable, but let's postpone that until there is an
+	 * actual user interested in this.
+	 */
+	BUG_ON(memcmp(bl32_image, ELFMAG, 4) == 0);
+
+	if (optee_verify_header(hdr) == 0) {
+		bl32_size -= sizeof(*hdr);
+		bl32_image += sizeof(*hdr);
+
+		bl32 = (u64)hdr->init_load_addr_hi << 32;
+		bl32 |= hdr->init_load_addr_lo;
+
+		pr_debug("optee: adjusting address to 0x%lx\n", bl32);
+	} else if (bl32 != ROCKCHIP_OPTEE_HEADER_REQUIRED) {
+		dummy_hdr.magic = OPTEE_MAGIC;
+		dummy_hdr.version = OPTEE_VERSION_V1;
+		dummy_hdr.arch = OPTEE_ARCH_ARM64;
+		dummy_hdr.flags = 0;
+		dummy_hdr.init_size = bl32_size;
+		dummy_hdr.init_load_addr_hi = upper_32_bits(bl32);
+		dummy_hdr.init_load_addr_lo = lower_32_bits(bl32);
+		dummy_hdr.init_mem_usage = 0;
+		dummy_hdr.paged_size = 0;
+
+		hdr = &dummy_hdr;
+
+		pr_debug("optee: assuming load address is 0x%lx\n", bl32);
+
+	} else {
+		/* If we have neither a header, nor a defined load address
+		 * there is really nothing we can do here.
+		 */
+		pr_err("optee: skipping. No header and no hardcoded load address\n");
+		return 0;
+	}
+
+	rk_scratch_save_optee_hdr(hdr);
+
+
+	memcpy((void *)bl32, bl32_image, bl32_size);
+
+	return bl32;
+}
+
 #define rockchip_atf_load_bl31(SOC, atf_bin, tee_bin, fdt) do {                 \
 	const void *bl31_elf, *optee;                                           \
 	unsigned long bl31;                                                     \
@@ -52,11 +118,9 @@ static unsigned long load_elf64_image_phdr(const void *elf)
 	bl31 = load_elf64_image_phdr(bl31_elf);                                 \
 										\
 	if (IS_ENABLED(CONFIG_ARCH_ROCKCHIP_OPTEE)) {                           \
-		optee_load_address = SOC##_OPTEE_LOAD_ADDRESS;                  \
-										\
 		get_builtin_firmware(tee_bin, &optee, &optee_size);             \
-										\
-		memcpy((void *)optee_load_address, optee, optee_size);          \
+		optee_load_address = rk_load_optee(SOC##_OPTEE_LOAD_ADDRESS,	\
+						   optee, optee_size);		\
 	}                                                                       \
 										\
 	/* Setup an initial stack for EL2 */                                    \
@@ -106,6 +170,7 @@ void __noreturn rk3568_barebox_entry(void *fdt)
 		/* not reached when CONFIG_ARCH_ROCKCHIP_ATF */
 	}
 
+	optee_set_membase(rk_scratch_get_optee_hdr());
 	barebox_arm_entry(membase, endmem - membase, fdt);
 }
 
@@ -142,5 +207,6 @@ void __noreturn rk3588_barebox_entry(void *fdt)
                /* not reached when CONFIG_ARCH_ROCKCHIP_ATF */
        }
 
+       optee_set_membase(rk_scratch_get_optee_hdr());
        barebox_arm_entry(membase, endmem - membase, fdt);
 }
diff --git a/arch/arm/mach-rockchip/rockchip.c b/arch/arm/mach-rockchip/rockchip.c
index 1c962ad8c89f..3d2ef791d20f 100644
--- a/arch/arm/mach-rockchip/rockchip.c
+++ b/arch/arm/mach-rockchip/rockchip.c
@@ -1,7 +1,10 @@
 // SPDX-License-Identifier: GPL-2.0-only
 #include <common.h>
 #include <init.h>
+#include <asm/optee.h>
+#include <asm-generic/memory_layout.h>
 #include <mach/rockchip/rockchip.h>
+#include <mach/rockchip/bootrom.h>
 
 static int __rockchip_soc;
 
@@ -26,6 +29,19 @@ int rockchip_soc(void)
 
 static int rockchip_init(void)
 {
+	const struct optee_header *hdr = rk_scratch_get_optee_hdr();
+
+	if (IS_ENABLED(CONFIG_PBL_OPTEE) && optee_verify_header(hdr) == 0) {
+		static struct of_optee_fixup_data optee_fixup_data = {
+			.shm_size = OPTEE_SHM_SIZE,
+			.method = "smc",
+		};
+
+		optee_set_membase(hdr);
+		of_optee_fixup(of_get_root_node(), &optee_fixup_data);
+		of_register_fixup(of_optee_fixup, &optee_fixup_data);
+	}
+
 	switch (rockchip_soc()) {
 	case 3188:
 		return rk3188_init();
diff --git a/include/mach/rockchip/atf.h b/include/mach/rockchip/atf.h
index 89129abc01b9..1b07128f2e9b 100644
--- a/include/mach/rockchip/atf.h
+++ b/include/mach/rockchip/atf.h
@@ -8,11 +8,24 @@
 #define RK3568_DRAM_BOTTOM		0xa00000
 #define RK3588_DRAM_BOTTOM		0xa00000
 
-/* OP-TEE expects to be loaded here */
+/*
+ * The tee.bin image has an OP-TEE specific header that describes the
+ * initial load address and size. Unfortunately, the vendor blobs are in the
+ * tee-raw.bin format, which omits the header. We thus hardcode here the
+ * fallback addresses that should be used when barebox encounters
+ * tee-raw.bin instead of tee.bin.
+ */
 #define RK3399_OPTEE_LOAD_ADDRESS	0x200000
 #define RK3568_OPTEE_LOAD_ADDRESS	0x200000
 #define RK3588_OPTEE_LOAD_ADDRESS	0x200000
 
+/*
+ * Hopefully for future platforms, the vendor binaries would use the image
+ * with an OP-TEE header and we can just set the load address for new SoCs
+ * to below macro to enforce that only tee.bin is used.
+ */
+#define ROCKCHIP_OPTEE_HEADER_REQUIRED	0
+
 /*
  * board lowlevel code should relocate barebox here. This is where
  * OP-TEE jumps to after initialization.
diff --git a/include/mach/rockchip/bootrom.h b/include/mach/rockchip/bootrom.h
index 06450829b99a..6776ac5ef981 100644
--- a/include/mach/rockchip/bootrom.h
+++ b/include/mach/rockchip/bootrom.h
@@ -7,9 +7,12 @@
 #include <linux/string.h>
 #include <pbl.h>
 #include <asm/barebox-arm.h>
+#include <tee/optee.h>
+#include <pbl.h>
 
 struct rockchip_scratch_space {
 	u32 irom[16];
+	struct optee_header optee_hdr;
 };
 
 extern struct rockchip_scratch_space *rk_scratch;
@@ -29,5 +32,19 @@ void rockchip_parse_bootrom_iram(const void *iram);
 
 int rockchip_bootsource_get_active_slot(void);
 
+static inline const struct optee_header *rk_scratch_get_optee_hdr(void)
+{
+	struct rockchip_scratch_space *scratch;
+
+	if (IN_PBL)
+		scratch = rk_scratch;
+	else
+		scratch = (void *)arm_mem_scratch_get();
+
+	if (!scratch)
+		return ERR_PTR(-EINVAL);
+
+	return &scratch->optee_hdr;
+}
 
 #endif
-- 
2.39.5



