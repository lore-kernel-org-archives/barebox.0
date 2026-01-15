Delivery-date: Thu, 15 Jan 2026 13:00:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgM1P-001a61-0x
	for lore@lore.pengutronix.de;
	Thu, 15 Jan 2026 13:00:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgM1O-0000t3-6E
	for lore@pengutronix.de; Thu, 15 Jan 2026 13:00:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XIm70Lv/UkB46TgzAcjrYEdYZVr64phsk237zAURIuE=; b=HTGyBJyaiyBe8HnUHuv0IZYImi
	cTDwAzlZtaQnXv75A2TvDGz63pdbKVDPr5H5aRqWhmhgrTFX4Dya+9lvjai/4iEicDGS6Uiqhz1z4
	/LVVrWmwOmGtgBxwkrpue1PB8D27NMRdw5BBxdPjAJLqBm4DTdl0Uz+t3yryucIZXnxZPAAxbDJii
	YjR2QW+Op9z9bT/YekHH5PTmoeutUi6bx9cfT7Ozw0s4tgzUwK4l28Jzj3WEd8fbIYaARSEhpxLCT
	oSDXylWlu6XRtzeqhh2dTQvjZgYAo4PkEiENejOGobnHzGS9baliclp5bGq+Q2RH41EQbM4xBsiJ5
	ZnE/R9Sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgM0i-0000000CHFY-1fy7;
	Thu, 15 Jan 2026 11:59:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgM0f-0000000CHD4-3o7d
	for barebox@lists.infradead.org;
	Thu, 15 Jan 2026 11:59:31 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vgM0c-0000JD-PM; Thu, 15 Jan 2026 12:59:26 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: David Dgien <dgienda125@gmail.com>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Thu, 15 Jan 2026 12:54:27 +0100
Message-ID: <20260115115924.3428886-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260115115924.3428886-1-a.fatoum@barebox.org>
References: <20260115115924.3428886-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260115_035929_942127_33D7185C 
X-CRM114-Status: GOOD (  12.95  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 01/12] boards: qemu-virt: reserve BIOS device tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On the ARM Virt platform, QEMU places its device tree at the start of
RAM and doesn't provide a standard FW_CFG to access it.

To be able to keep reusing it when chainloading barebox in future and
passing it to the kernel, reserve this piece of memory.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 common/boards/qemu-virt/board.c | 32 ++++++++++++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/common/boards/qemu-virt/board.c b/common/boards/qemu-virt/board.c
index 0c9cc1a75d3b..53945aefb7aa 100644
--- a/common/boards/qemu-virt/board.c
+++ b/common/boards/qemu-virt/board.c
@@ -6,6 +6,8 @@
 #include <common.h>
 #include <init.h>
 #include <of.h>
+#include <memory.h>
+#include <compressed-dtb.h>
 #include <deep-probe.h>
 #include <security/policy.h>
 #include "qemu-virt-flash.h"
@@ -47,6 +49,8 @@ static const struct of_device_id virt_of_match[] = {
 };
 BAREBOX_DEEP_PROBE_ENABLE(virt_of_match);
 
+static bool is_qemu_virt;
+
 /*
  * We don't have a dedicated qemu-virt device tree and instead rely
  * on what Qemu passes us. To be able to get fundamental changes
@@ -64,6 +68,8 @@ static int virt_board_driver_init(void)
 	if (!id)
 		return 0;
 
+	is_qemu_virt = true;
+
 	if (id->data) {
 		init = id->data;
 		init();
@@ -94,3 +100,29 @@ static int virt_board_driver_init(void)
 	return 0;
 }
 postcore_initcall(virt_board_driver_init);
+
+static __maybe_unused int virt_board_reserve_fdt(void)
+{
+	resource_size_t start = ~0, end = ~0;
+
+	if (!is_qemu_virt)
+		return 0;
+
+	memory_bank_first_find_space(&start, &end);
+	if (start != ~0) {
+		void *fdt = (void *)start;
+
+		if (!blob_is_fdt(fdt))
+			return 0;
+
+		request_sdram_region("qemu-virt-fdt", start,
+				     fdt_totalsize(fdt),
+				     MEMTYPE_BOOT_SERVICES_DATA,
+				     MEMATTRS_RO);
+	}
+
+	return 0;
+}
+#ifdef CONFIG_ARM
+postmem_initcall(virt_board_reserve_fdt);
+#endif
-- 
2.47.3



