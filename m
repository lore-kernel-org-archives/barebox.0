Delivery-date: Tue, 04 May 2021 12:46:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldsZX-00057a-BM
	for lore@lore.pengutronix.de; Tue, 04 May 2021 12:46:35 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldsZW-0001xS-CV
	for lore@pengutronix.de; Tue, 04 May 2021 12:46:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=nHeu9aVisAHDOqqVW6qfuNwvOchGtU8KUHh2ycpYVh0=; b=R3K+WdIXiT/cr4uI1TcWv8laYz
	VrJWWF308MbX95thL+CJdNeg0TnuJ28/0a1z77bzq8tufb+0LYAngMp5etsvK7OhsFChwypWX8Qw6
	ovDF5d0ZJ2idRmoX3f2ld2yCQdrSy48h75IDy6kqBoKh8/8czOG8D1S1ufDkQ7juoGNYw+ZMjZepH
	K4yR368io2sZ6Yd+FtebfmHC9+tKR/Vr+iZCreKqyZTae5It37SM63pHNcPdaqF/a6WLqpzGkHYer
	vAZ1uNKHM8WQqI/m78SOljfudTmzNeVsRfM5IQT/W9kpF5JC24sqgXN53GoZMcW3YGkXGYHo9wJG5
	ap33tQWg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ldsYT-00G0UH-Fe; Tue, 04 May 2021 10:45:29 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldsYQ-00G0U6-9F
 for barebox@desiato.infradead.org; Tue, 04 May 2021 10:45:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=Kk9xE9YhHGSQReAtxENFPnLS/1i+hbseK6s676C6FuI=; b=xcj5Kf8bcegbFe+PQSuOFBFY/o
 AA5v6DnxowHxSGo3rMLqXiyePNiepEdtojqUeIMonl9pC0uqQxhI9UcLLRTnKlgTAi9yjvzGHYTtq
 6/JKI3I4mRFxqMkNTjjuIMLpEZB4E9bHKgezLgOnDMQHV2NOC6P5me8MkWZWlcE4cjbdxE/jddiTi
 3kjX77Dq1VABrSxmM7IA9vvRCfZjo2Fa/FGa/ENV9t+esXQaLJuLYui7iz6a42btXODmsmK1aY18n
 PAiViENj73jInLwyOzYkWJqWgpHAMnat2KQmG6nPlbUhR15YQsGT7zgob1s/jCBLafc6EgOTXm0eC
 HvV7usww==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldsYN-003uG8-JD
 for barebox@lists.infradead.org; Tue, 04 May 2021 10:45:25 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1ldsYE-0001Yn-DH; Tue, 04 May 2021 12:45:14 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1ldsYD-00015R-VZ; Tue, 04 May 2021 12:45:13 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  4 May 2021 12:45:11 +0200
Message-Id: <20210504104513.2640-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210504_034523_652308_89AA34E9 
X-CRM114-Status: GOOD (  19.67  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] bootm: move ARM64 Linux image parsing to common directory
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Linux on RISC-V adopts the same structure as on ARM64 for both 32-
and 64-bit kernel images and it's likely future architectures will
as well. In preparation for adding RISC-V Linux boot support,
move the bulk of the code to a common location for reusability.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/lib64/armlinux.c | 74 +++------------------------------------
 common/Makefile           |  2 +-
 common/booti.c            | 66 ++++++++++++++++++++++++++++++++++
 include/bootm.h           |  2 ++
 4 files changed, 74 insertions(+), 70 deletions(-)
 create mode 100644 common/booti.c

diff --git a/arch/arm/lib64/armlinux.c b/arch/arm/lib64/armlinux.c
index a5f122edcd2a..0ba4d30b8e15 100644
--- a/arch/arm/lib64/armlinux.c
+++ b/arch/arm/lib64/armlinux.c
@@ -1,90 +1,26 @@
 // SPDX-License-Identifier: GPL-2.0-only
 // SPDX-FileCopyrightText: 2018 Sascha Hauer <s.hauer@pengutronix.de>
 
-#include <boot.h>
 #include <common.h>
-#include <environment.h>
-#include <image.h>
-#include <fs.h>
-#include <xfuncs.h>
-#include <malloc.h>
-#include <fcntl.h>
-#include <errno.h>
 #include <memory.h>
-#include <of.h>
 #include <init.h>
 #include <bootm.h>
-#include <linux/list.h>
-#include <asm/byteorder.h>
-#include <asm/setup.h>
-#include <asm/barebox-arm.h>
-#include <asm/armlinux.h>
-#include <asm/system.h>
 
 static int do_bootm_linux(struct image_data *data)
 {
-	const void *kernel_header =
-			data->os_fit ? data->fit_kernel : data->os_header;
 	void (*fn)(unsigned long dtb, unsigned long x1, unsigned long x2,
 		       unsigned long x3);
-	resource_size_t start, end;
-	unsigned long text_offset, image_size, devicetree, kernel;
-	unsigned long image_end;
-	int ret;
-	void *fdt;
-
-	text_offset = le64_to_cpup(kernel_header + 8);
-	image_size = le64_to_cpup(kernel_header+ 16);
-
-	ret = memory_bank_first_find_space(&start, &end);
-	if (ret)
-		goto out;
-
-	kernel = ALIGN(start, SZ_2M) + text_offset;
-
-	ret = bootm_load_os(data, kernel);
-	if (ret)
-		goto out;
-
-	image_end = PAGE_ALIGN(kernel + image_size);
-
-	if (bootm_has_initrd(data)) {
-		ret = bootm_load_initrd(data, image_end);
-		if (ret)
-			return ret;
-
-		image_end += resource_size(data->initrd_res);
-		image_end = PAGE_ALIGN(image_end);
-	}
+	phys_addr_t devicetree;
 
-	devicetree = image_end;
-
-	fdt = bootm_get_devicetree(data);
-	if (IS_ERR(fdt)) {
-		ret = PTR_ERR(fdt);
-		goto out;
-	}
-
-	ret = bootm_load_devicetree(data, fdt, devicetree);
-
-	free(fdt);
-
-	if (ret)
-		goto out;
-
-	printf("Loaded kernel to 0x%08lx, devicetree at 0x%08lx\n",
-	       kernel, devicetree);
+	fn = booti_load_image(data, &devicetree);
+	if (IS_ERR(fn))
+		return PTR_ERR(fn);
 
 	shutdown_barebox();
 
-	fn = (void *)kernel;
-
 	fn(devicetree, 0, 0, 0);
 
-	ret = -EINVAL;
-
-out:
-	return ret;
+	return -EINVAL;
 }
 
 static struct image_handler aarch64_linux_handler = {
diff --git a/common/Makefile b/common/Makefile
index c2c15817badf..382a4f661f67 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -21,7 +21,7 @@ obj-$(CONFIG_SYSTEM_PARTITIONS) += system-partitions.o
 obj-$(CONFIG_BINFMT)		+= binfmt.o
 obj-$(CONFIG_BLOCK)		+= block.o
 obj-$(CONFIG_BLSPEC)		+= blspec.o
-obj-$(CONFIG_BOOTM)		+= bootm.o
+obj-$(CONFIG_BOOTM)		+= bootm.o booti.o
 obj-$(CONFIG_CMD_LOADS)		+= s_record.o
 obj-$(CONFIG_CMD_MEMTEST)	+= memtest.o
 obj-$(CONFIG_COMMAND_SUPPORT)	+= command.o
diff --git a/common/booti.c b/common/booti.c
new file mode 100644
index 000000000000..a2d63d8c3188
--- /dev/null
+++ b/common/booti.c
@@ -0,0 +1,66 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-FileCopyrightText: 2018 Sascha Hauer <s.hauer@pengutronix.de>
+
+#include <common.h>
+#include <memory.h>
+#include <bootm.h>
+#include <linux/sizes.h>
+
+void *booti_load_image(struct image_data *data, phys_addr_t *oftree)
+{
+	const void *kernel_header =
+			data->os_fit ? data->fit_kernel : data->os_header;
+	resource_size_t start, end;
+	unsigned long text_offset, image_size, devicetree, kernel;
+	unsigned long image_end;
+	int ret;
+	void *fdt;
+
+	text_offset = le64_to_cpup(kernel_header + 8);
+	image_size = le64_to_cpup(kernel_header + 16);
+
+	ret = memory_bank_first_find_space(&start, &end);
+	if (ret)
+		return ERR_PTR(ret);
+
+	kernel = ALIGN(start, SZ_2M) + text_offset;
+
+	ret = bootm_load_os(data, kernel);
+	if (ret)
+		return ERR_PTR(ret);
+
+	image_end = PAGE_ALIGN(kernel + image_size);
+
+	if (oftree) {
+		if (bootm_has_initrd(data)) {
+			ret = bootm_load_initrd(data, image_end);
+			if (ret)
+				return ERR_PTR(ret);
+
+			image_end += resource_size(data->initrd_res);
+			image_end = PAGE_ALIGN(image_end);
+		}
+
+		devicetree = image_end;
+
+		fdt = bootm_get_devicetree(data);
+		if (IS_ERR(fdt))
+			return fdt;
+
+		ret = bootm_load_devicetree(data, fdt, devicetree);
+
+		free(fdt);
+
+		if (ret)
+			return ERR_PTR(ret);
+
+		*oftree = devicetree;
+	}
+
+	printf("Loaded kernel to 0x%08lx", kernel);
+	if (oftree)
+		printf(", devicetree at 0x%08lx", devicetree);
+	printf("\n");
+
+	return (void *)kernel;
+}
diff --git a/include/bootm.h b/include/bootm.h
index 51e9b3d71ab5..655c5152d97e 100644
--- a/include/bootm.h
+++ b/include/bootm.h
@@ -148,4 +148,6 @@ enum bootm_verify bootm_get_verify_mode(void);
 
 #define UIMAGE_SOME_ADDRESS (UIMAGE_INVALID_ADDRESS - 1)
 
+void *booti_load_image(struct image_data *data, phys_addr_t *oftree);
+
 #endif /* __BOOTM_H */
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

