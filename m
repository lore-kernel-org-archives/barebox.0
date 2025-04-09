Delivery-date: Wed, 09 Apr 2025 16:40:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2Wbo-00ARpt-0D
	for lore@lore.pengutronix.de;
	Wed, 09 Apr 2025 16:40:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2Wbm-0003Um-K0
	for lore@pengutronix.de; Wed, 09 Apr 2025 16:40:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ferNTdGndPc8EKDCwddnntjUM1GHKMmaCXwJtS98oV4=; b=PfhOIm1Vqq0GyZNxlvsgZWZPms
	vPqIX1Cp6+yjp0iYWVDjg6C6pbbE984fI2j2UCRzdSmYr539jRUs6bUH5HK2K2abYwQ0nPPmEykVh
	Bj619MCYhPcpa1va7fbZ1/lRN9W/gvkcsH7ZB5SEI1lEHpORImyMVKdXCfuDPrp3+nZtHHb8u9YfC
	3hMnUBWB57f1tKO0Dw2Do7UTUeSRaOlUtaxQXNMYqzspuWvSJ7dSkbGEahdNyyoGevt1WnFxqBU/W
	HyFiop/3erX3XP7l1xvPX/GwWPyI2KyoN+3Y8MkUAr7quWfoSlWQJJZBTVUoi5A+SN//uWsz9OyiY
	C9G/e8Rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2WbD-00000007UrX-3E80;
	Wed, 09 Apr 2025 14:40:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2Vzo-00000007NXn-0ODO
	for barebox@lists.infradead.org;
	Wed, 09 Apr 2025 14:01:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u2Vzm-0004qS-SV; Wed, 09 Apr 2025 16:01:38 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u2Vzm-00470I-23;
	Wed, 09 Apr 2025 16:01:38 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u2Vzm-008jBv-1i;
	Wed, 09 Apr 2025 16:01:38 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  9 Apr 2025 16:01:34 +0200
Message-Id: <20250409140134.2079552-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250409140134.2079552-1-a.fatoum@pengutronix.de>
References: <20250409140134.2079552-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250409_070140_293328_FB8CDE3E 
X-CRM114-Status: GOOD (  28.99  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 6/7] ARM: add support for chainloading barebox inside FIP images
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For use on the STM32MP1, add a bootm handler for chainloading FIP
images. This removes the last remaining use case for SSBL .stm32 images,
after TF-A had dropped support late 2022.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/Kconfig             |  11 ++
 arch/arm/cpu/Makefile        |   1 +
 arch/arm/cpu/bootm-fip.c     | 276 +++++++++++++++++++++++++++++++++++
 arch/arm/mach-stm32mp/init.c |  10 ++
 include/fiptool.h            |  13 ++
 5 files changed, 311 insertions(+)
 create mode 100644 arch/arm/cpu/bootm-fip.c

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index ab7ff5369b20..84b1660d1ed9 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -473,6 +473,17 @@ config ARM_BOOTM_ELF
 	help
 	  Add support to load elf file with bootm.
 
+config ARM_BOOTM_FIP
+	bool
+	depends on BOOTM
+	select FIP
+	prompt "FIP loading support"
+	default ARCH_STM32MP
+	help
+	  Add support to load FIP file with bootm.
+	  This allows barebox to chainload barebox on platforms where it
+	  is located inside a FIP. This can be useful during development.
+
 config ARM_ATF
 	bool
 
diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index d59aae1ee55c..39e59c2a2f73 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -32,6 +32,7 @@ obj-$(CONFIG_CMD_ARM_CPUINFO) += cpuinfo.o
 obj-$(CONFIG_MMUINFO) += mmuinfo.o mmuinfo_$(S64_32).o
 obj-$(CONFIG_OFDEVICE) += dtb.o
 obj-$(CONFIG_ARM_BOOTM_ELF)	+= bootm-elf.o
+obj-$(CONFIG_ARM_BOOTM_FIP)	+= bootm-fip.o
 
 ifeq ($(CONFIG_MMU),)
 obj-$(CONFIG_CPU_32v7) += no-mmu.o
diff --git a/arch/arm/cpu/bootm-fip.c b/arch/arm/cpu/bootm-fip.c
new file mode 100644
index 000000000000..89201ade5f12
--- /dev/null
+++ b/arch/arm/cpu/bootm-fip.c
@@ -0,0 +1,276 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#define pr_fmt(fmt) "bootm-fip: " fmt
+
+#include <bootm.h>
+#include <common.h>
+#include <init.h>
+#include <memory.h>
+#include <linux/sizes.h>
+#include <asm/boot.h>
+#include <fip.h>
+#include <libfile.h>
+#include <bootm.h>
+#include <fiptool.h>
+
+const struct fip_binding *fip_bindings;
+
+#define for_each_fip_binding(bindings, binding) \
+	for (binding = bindings; !uuid_is_null(&binding->uuid); binding++)
+
+static inline struct resource *desc_get_res(struct fip_image_desc *desc)
+{
+	return desc->private_data;
+}
+
+static inline void desc_set_res(struct fip_image_desc *desc,
+				struct resource *res)
+{
+	desc->private_data = res;
+}
+
+static int desc_to_sdram(struct fip_image_desc *loadable, ulong load_address)
+{
+	struct resource *res;
+
+	if (desc_get_res(loadable))
+		return 0;
+
+	res = request_sdram_region("fip", load_address,
+				   loadable->image->toc_e.size);
+	if (!res)
+		return -EBUSY;
+
+	memcpy((void *)res->start,
+	       loadable->image->buffer, loadable->image->toc_e.size);
+
+	desc_set_res(loadable, res);
+
+	return 0;
+}
+
+static void desc_release_sdram(struct fip_image_desc *loadable)
+{
+	struct resource *res = loadable ? desc_get_res(loadable) : NULL;
+	if (res)
+		release_sdram_region(res);
+}
+
+enum { IMAGE_BL33, IMAGE_HW_CONFIG, IMAGE_COUNT };
+
+static int parse_dtb_registry(struct fip_image_desc *fw_config_desc,
+			      struct fip_image_desc *loadables[],
+			      int verbose)
+{
+	struct fip_toc_entry *toc_entry = &fw_config_desc->image->toc_e;
+	struct device_node *fw_config, *fconf = NULL, *image, *tmp;
+	const struct fip_binding *binding;
+	void *buf;
+	int ret = 0;
+
+	if (!fip_bindings) {
+		if (verbose)
+			printf("Platform registered no FIP bindings. Skipping firmware config\n");
+		return 0;
+	}
+
+	/* We have no alignment guarantees for the buffer, so we need to copy it */
+	buf = xmemdup(fw_config_desc->image->buffer, toc_entry->size);
+
+	fw_config = of_unflatten_dtb(buf, toc_entry->size);
+	if (!IS_ERR(fw_config))
+		fconf = of_find_compatible_node(fw_config, NULL,
+						"fconf,dyn_cfg-dtb_registry");
+	if (!fconf) {
+		pr_warn("error parsing fw_config devicetree\n");
+		goto out;
+	}
+
+	for_each_fip_binding(fip_bindings, binding) {
+		for_each_child_of_node_safe(fconf, tmp, image) {
+			u64 load_addr;
+			u32 id;
+			int ret;
+
+			ret = of_property_read_u32(image, "id", &id);
+			if (ret)
+				continue;
+
+			ret = of_property_read_u64(image, "load-address", &load_addr);
+			if (ret || load_addr > ULONG_MAX)
+				continue;
+
+			if (id != binding->id)
+				continue;
+
+			for (int i = 0; i < IMAGE_COUNT; i++) {
+				struct fip_image_desc *loadable = loadables[i];
+
+				if (!loadable)
+					continue;
+
+				if (!uuid_equal(&binding->uuid,
+						&loadable->image->toc_e.uuid))
+					continue;
+
+				ret = desc_to_sdram(loadable, load_addr);
+				if (ret) {
+					pr_warn("load address 0x%08llx for image ID %u"
+						" conflicts with reservation\n",
+						load_addr, binding->id);
+					goto out;
+				}
+
+				if (verbose > 1)
+					printf("loaded image ID %u to address 0x%08llx\n",
+						binding->id, load_addr);
+				break;
+			}
+
+			/* No need to iterate over this node again, so drop it */
+			of_delete_node(image);
+		}
+	}
+
+out:
+	if (!IS_ERR(fw_config))
+		of_delete_node(fw_config);
+	free(buf);
+	return ret;
+}
+
+static int fip_load(struct image_data *data,
+		    struct fip_image_desc *fw_config_desc,
+		    struct fip_image_desc *loadables[])
+{
+	resource_size_t start, end;
+	int ret;
+
+	if (UIMAGE_IS_ADDRESS_VALID(data->os_address)) {
+		ret = desc_to_sdram(loadables[IMAGE_BL33], data->os_address);
+		if (ret)
+			return ret;
+	}
+
+	if (fw_config_desc) {
+		ret = parse_dtb_registry(fw_config_desc, loadables, data->verbose);
+		if (ret)
+			return ret;
+	}
+
+	ret = memory_bank_first_find_space(&start, &end);
+	if (ret)
+		return ret;
+
+	for (int i = 0; i < IMAGE_COUNT; i++) {
+		struct fip_image_desc *loadable = loadables[i];
+
+		if (!loadable || desc_get_res(loadable))
+			continue;
+
+		start = ALIGN(start, SZ_4K);
+
+		ret = desc_to_sdram(loadable, start);
+		if (ret)
+			return ret;
+
+		/* Leave a stack's worth of space after each artifact;
+		 * The STM32MP1 barebox entry point depends on it.
+		 */
+		start += resource_size(desc_get_res(loadable));
+		start += CONFIG_STACK_SIZE;
+		start = ALIGN(start, 16);
+	}
+
+	return 0;
+}
+
+static const uuid_t uuid_bl33 = UUID_NON_TRUSTED_FIRMWARE_BL33;
+static const uuid_t uuid_hwconfig = UUID_HW_CONFIG;
+static const uuid_t uuid_fwconfig = UUID_FW_CONFIG;
+
+static int do_bootm_fip(struct image_data *data)
+{
+	struct fip_image_desc *fwconfig = NULL;
+	struct fip_image_desc *loadables[IMAGE_COUNT] = {};
+	struct fip_image_desc *desc;
+	struct fip_state *fip;
+	int ret;
+
+	if (!data->os_file)
+		return -EINVAL;
+
+	fip = fip_new();
+	ret = fip_parse(fip, data->os_file, NULL);
+	if (ret)
+		goto out;
+
+	fip_for_each_desc(fip, desc) {
+		struct fip_toc_entry *toc_entry = &desc->image->toc_e;
+
+		if (uuid_equal(&toc_entry->uuid, &uuid_bl33))
+			loadables[IMAGE_BL33] = desc;
+		else if (uuid_equal(&toc_entry->uuid, &uuid_hwconfig))
+			loadables[IMAGE_HW_CONFIG] = desc;
+		else if (uuid_equal(&toc_entry->uuid, &uuid_fwconfig))
+			fwconfig = desc;
+	}
+
+	if (!loadables[IMAGE_BL33]) {
+		pr_err("FIP is missing BL33 image to chainload\n");
+		ret = -ENOENT;
+		goto out;
+	}
+
+	ret = fip_load(data, fwconfig, loadables);
+	if (ret)
+		goto out;
+
+	if (data->verbose) {
+		printf("Loaded non-trusted firmware to 0x%08lx",
+		       (ulong)desc_get_res(loadables[IMAGE_BL33])->start);
+		if (loadables[IMAGE_HW_CONFIG])
+			printf(", hardware config to 0x%08lx",
+			       (ulong)desc_get_res(loadables[IMAGE_HW_CONFIG])->start);
+		printf("\n");
+	}
+
+	if (data->dryrun) {
+		ret = 0;
+		goto out;
+	}
+
+	shutdown_barebox();
+
+	/* We don't actually expect NT FW to be a Linux image, but
+	 * we want to use the Linux boot calling convention
+	 */
+	jump_to_linux((void *)desc_get_res(loadables[IMAGE_BL33])->start,
+		      desc_get_res(loadables[IMAGE_HW_CONFIG])->start);
+
+	ret = -EIO;
+out:
+	for (int i = 0; i < IMAGE_COUNT; i++)
+		desc_release_sdram(loadables[i]);
+
+	if (fip)
+		fip_free(fip);
+	return ret;
+}
+
+void plat_set_fip_bindings(const struct fip_binding *bindings)
+{
+	fip_bindings = bindings;
+}
+
+struct image_handler fip_image_handler = {
+	.name = "FIP",
+	.bootm = do_bootm_fip,
+	.filetype = filetype_fip,
+};
+
+static int stm32mp_register_fip_bootm_handler(void)
+{
+	return register_image_handler(&fip_image_handler);
+}
+late_initcall(stm32mp_register_fip_bootm_handler);
diff --git a/arch/arm/mach-stm32mp/init.c b/arch/arm/mach-stm32mp/init.c
index 1c7f62dbb033..422218e18e5a 100644
--- a/arch/arm/mach-stm32mp/init.c
+++ b/arch/arm/mach-stm32mp/init.c
@@ -13,6 +13,7 @@
 #include <mach/stm32mp/revision.h>
 #include <mach/stm32mp/bootsource.h>
 #include <bootsource.h>
+#include <fiptool.h>
 #include <dt-bindings/pinctrl/stm32-pinfunc.h>
 
 /* Package = bit 27:29 of OTP16
@@ -236,6 +237,13 @@ unsigned stm32mp_soc_code(void)
 	return __st32mp_soc;
 }
 
+static const struct fip_binding stm32mp_fip_handler[] = {
+	{  1, UUID_FW_CONFIG },
+	{  2, UUID_HW_CONFIG },
+	{  5, UUID_NON_TRUSTED_FIRMWARE_BL33 },
+	{ /* sentinel */ }
+};
+
 static int stm32mp_init(void)
 {
 	u32 boot_ctx;
@@ -264,6 +272,8 @@ static int stm32mp_init(void)
 
 	setup_boot_mode(boot_ctx);
 
+	plat_set_fip_bindings(stm32mp_fip_handler);
+
 	return 0;
 }
 postcore_initcall(stm32mp_init);
diff --git a/include/fiptool.h b/include/fiptool.h
index 1a0dbe0e6975..8cb1f7d3959d 100644
--- a/include/fiptool.h
+++ b/include/fiptool.h
@@ -104,4 +104,17 @@ struct fip_state *fip_image_open(const char *filename, size_t offset);
 
 int fip_sha256(struct fip_state *fip, char *hash);
 
+struct fip_binding {
+	unsigned id;
+	uuid_t uuid;
+};
+
+#ifdef CONFIG_ARM_BOOTM_FIP
+void plat_set_fip_bindings(const struct fip_binding *bindings);
+#else
+static inline void plat_set_fip_bindings(const struct fip_binding *bindings)
+{
+}
+#endif
+
 #endif /* FIPTOOL_H */
-- 
2.39.5



