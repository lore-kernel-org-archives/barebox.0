Delivery-date: Sun, 21 Mar 2021 16:21:34 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNztW-00027A-3E
	for lore@lore.pengutronix.de; Sun, 21 Mar 2021 16:21:34 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNztS-0002pA-VO
	for lore@pengutronix.de; Sun, 21 Mar 2021 16:21:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ORU/xY0NDpoU4W9+zM8mcq4JoWsg8mO5T4pfIaJpRFQ=; b=cxHxXcqVyRmZcO0cmXpRBy4OQ
	K/gYObIJwtGZET2zgOsfYN5NzB/hkMymemLqykDAqK/YFk8z7snK0JeEvglOZf83zWPgXyGHrr81F
	uvREwZt8A1AgFo79QuQclEv6kvh9IpvltoITDuwqDplCrn2pHyRApDX1rmJUpfw0v6RuX/dRcorwR
	ZIoXcgvNyjjzZyi+vTt0loXakQfhCfUgPc8TujzBqAJLQv2S971MNXO5gnxqzRQBofKa8gEl7JKfa
	N9yxmEZcP9scAZk2ZrO+V2L5K8UMHi/Nckq9xZygns5sbXQ0qxlOyQSyIGO8zES5yOeGUxo03ZSg9
	8xOusep1w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lNzs0-00A4qz-Tq; Sun, 21 Mar 2021 15:20:01 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lNzmu-00A48j-TR
 for barebox@desiato.infradead.org; Sun, 21 Mar 2021 15:15:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=fo/cxWGsjcbtypi2M3mwSDF1qGUZnntRRKXmcBaziz4=; b=paafnkGpbzVGoZZW1AHN/LyLxz
 lROBUI4VXyBN2IR1ATuA7nUH6G0ncLIT3jbGE+679PF/FBL53HN+ngLNTZxc3L/jDgM032D30lwK2
 ODt3rTX2Gi76xe9lWcGQwbPzWmr0/VptF9GAQZoUEme4QQT6LpIIzrYK3OA21UcyjKpyRHOuxjj6K
 RF7KFhCBfQAV2tz14t+kHZM0Q3fThaOc3GNyuCOpaHlu4fO/2WrOAiub4G/gEOPjXE5wGyN7ILbBx
 e3FNgTBEzbfVmM2Yp/qsIE5hpmODsoq296XbqGqZTnFbI4iguuWVTzBgurbABA+KconanYmwaww3T
 k+RHBecA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lNzmQ-007FkS-Kj
 for barebox@lists.infradead.org; Sun, 21 Mar 2021 15:14:36 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lNzm2-00011b-9l; Sun, 21 Mar 2021 16:13:50 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lNzm1-0007wk-2m; Sun, 21 Mar 2021 16:13:49 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Sun, 21 Mar 2021 16:13:41 +0100
Message-Id: <20210321151344.5810-19-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210321151344.5810-1-a.fatoum@pengutronix.de>
References: <20210321151344.5810-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210321_151420_035892_EE903924 
X-CRM114-Status: GOOD (  16.73  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, rcz@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 18/21] RISC-V: add generic DT image
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This barebox image implements the same header as Linux and receives
the device tree in the same register. It can be booted from barebox
or loaded by Qemu -kernel option.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/riscv/Kconfig             |  9 +++++++++
 arch/riscv/boot/Makefile       |  1 +
 arch/riscv/boot/board-dt-2nd.c | 36 ++++++++++++++++++++++++++++++++++
 3 files changed, 46 insertions(+)
 create mode 100644 arch/riscv/boot/board-dt-2nd.c

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 08a0e7cef48d..e630ad4ceb98 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -73,6 +73,15 @@ config 64BIT
 
 source "arch/riscv/mach-erizo/Kconfig"
 
+config BOARD_RISCV_GENERIC_DT
+	select BOARD_GENERIC_DT
+	bool "Build generic RISC-V device tree 2nd stage image"
+	help
+	  This enables compilation of a generic image that can be started 2nd
+	  stage from barebox or from qemu. It picks up a device tree passed
+	  in a1 like the Kernel does, so it could be used anywhere where a Kernel
+	  image could be used. The image will be called images/barebox-dt-2nd.img
+
 endmenu
 
 menu "RISC-V specific settings"
diff --git a/arch/riscv/boot/Makefile b/arch/riscv/boot/Makefile
index 70e5b11bebb8..968a826d1620 100644
--- a/arch/riscv/boot/Makefile
+++ b/arch/riscv/boot/Makefile
@@ -1,3 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0
 obj-y += start.o
 pbl-y += entry.o uncompress.o
+pbl-$(CONFIG_BOARD_GENERIC_DT) += board-dt-2nd.o
diff --git a/arch/riscv/boot/board-dt-2nd.c b/arch/riscv/boot/board-dt-2nd.c
new file mode 100644
index 000000000000..25fa7d4f2bef
--- /dev/null
+++ b/arch/riscv/boot/board-dt-2nd.c
@@ -0,0 +1,36 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <common.h>
+#include <debug_ll.h>
+#include <pbl.h>
+
+#if __riscv_xlen == 64
+#define IMAGE_LOAD_OFFSET 0x200000 /* Image load offset(2MB) from start of RAM */
+#else
+#define IMAGE_LOAD_OFFSET 0x400000 /* Image load offset(4MB) from start of RAM */
+#endif
+
+/* because we can depend on being loaded at an offset, we can just use
+ * our load address as stack top
+ */
+#define __barebox_riscv_head() \
+	__barebox_riscv_header("auipc sp, 0", IMAGE_LOAD_OFFSET, \
+			       RISCV_HEADER_VERSION, "RISCV", RISCV_IMAGE_MAGIC2)
+
+#include <asm/barebox-riscv.h>
+
+ENTRY_FUNCTION(start_dt_2nd, a0, _fdt, a2)
+{
+	unsigned long membase, memsize;
+	void *fdt = (void *)_fdt;
+
+	if (!fdt)
+		hang();
+
+	relocate_to_current_adr();
+	setup_c();
+
+	fdt_find_mem(fdt, &membase, &memsize);
+
+	barebox_riscv_entry(membase, memsize, fdt);
+}
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

