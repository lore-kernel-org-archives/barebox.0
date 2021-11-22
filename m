Delivery-date: Mon, 22 Nov 2021 09:50:36 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp524-0003Sn-Cr
	for lore@lore.pengutronix.de; Mon, 22 Nov 2021 09:50:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp522-0000hL-Do
	for lore@pengutronix.de; Mon, 22 Nov 2021 09:50:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FuCTSDoLF/OHQLxdHYnkbD0RQgsWEkLADaIbiBva2SM=; b=NzO90/83o2evue
	nivjgBLLHD1ZD6VG9kytvHUJpsYJI/FWXiyu0FTTjZNCqZH27if9HJ0Q0aNUS1s+LKYbkeaTOrhK+
	NCcReu6er9htKQql20A6zSqP/Dy3c0WHraPO0NX24wZBmPP8V4IBsPjGC5HNNh/OwqOjN5JlSRfYu
	LT0L9bpx0dIcQb2Bg8H4RXrhw7fec/R+T2/JznaFzg26RpCB9Z93nvRck1c9bHi2BrvXHMed6kJUx
	iKr+nCHpWNYIdKZZix41zkumThOQgKVBQfTSY48liLNvfPKH1jr0cE99y4fbnk3VMBKr1EzXd3s2f
	RaaAyhKmdh+P+H4bqgiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mp50W-00FLfA-F8; Mon, 22 Nov 2021 08:49:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mp4zE-00FKzC-Cq
 for barebox@lists.infradead.org; Mon, 22 Nov 2021 08:47:45 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mp4zB-0007wO-6v; Mon, 22 Nov 2021 09:47:37 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mp4z9-00Atf5-Hc; Mon, 22 Nov 2021 09:47:35 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 22 Nov 2021 09:47:15 +0100
Message-Id: <20211122084732.2597109-14-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211122084732.2597109-1-a.fatoum@pengutronix.de>
References: <20211122084732.2597109-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_004740_633214_70D00A34 
X-CRM114-Status: GOOD (  10.22  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 13/30] efi: rename <efi/efi.h> to <efi/efi-payload.h>
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The split between <efi.h> and <efi/efi.h> is confusing: The former
contains universal definitions, while the latter contains barebox
utilities on top. To make the distinction clear, rename <efi/efi.h>
to <efi/efi-payload.h> as it's used for EFI payloads.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/efi/payload/image.c           | 2 +-
 common/efi/payload/init.c            | 2 +-
 common/efi/payload/iomem.c           | 2 +-
 drivers/block/efi-block-io.c         | 2 +-
 drivers/bus/acpi.c                   | 3 ++-
 drivers/clocksource/efi.c            | 2 +-
 drivers/clocksource/efi_x86.c        | 2 +-
 drivers/efi/efi-device.c             | 2 +-
 drivers/net/efi-snp.c                | 2 +-
 drivers/pci/pci-efi.c                | 2 +-
 drivers/serial/efi-stdio.c           | 2 +-
 drivers/serial/serial_efi.c          | 2 +-
 drivers/video/efi_gop.c              | 2 +-
 drivers/watchdog/efi_wdt.c           | 2 +-
 fs/efi.c                             | 2 +-
 fs/efivarfs.c                        | 2 +-
 include/efi/debug_ll.h               | 2 +-
 include/efi/{efi.h => efi-payload.h} | 6 +++---
 18 files changed, 21 insertions(+), 20 deletions(-)
 rename include/efi/{efi.h => efi-payload.h} (90%)

diff --git a/common/efi/payload/image.c b/common/efi/payload/image.c
index 53b444eef60f..3bcb8fce2df5 100644
--- a/common/efi/payload/image.c
+++ b/common/efi/payload/image.c
@@ -24,7 +24,7 @@
 #include <libfile.h>
 #include <binfmt.h>
 #include <wchar.h>
-#include <efi/efi.h>
+#include <efi/efi-payload.h>
 #include <efi/efi-device.h>
 
 struct linux_kernel_header {
diff --git a/common/efi/payload/init.c b/common/efi/payload/init.c
index 5149b5b5d0d3..e1f968117a01 100644
--- a/common/efi/payload/init.c
+++ b/common/efi/payload/init.c
@@ -28,7 +28,7 @@
 #include <wchar.h>
 #include <envfs.h>
 #include <efi.h>
-#include <efi/efi.h>
+#include <efi/efi-payload.h>
 #include <efi/efi-device.h>
 #include <libfile.h>
 #include <state.h>
diff --git a/common/efi/payload/iomem.c b/common/efi/payload/iomem.c
index 4d34328a5802..6b92ca993aa7 100644
--- a/common/efi/payload/iomem.c
+++ b/common/efi/payload/iomem.c
@@ -6,7 +6,7 @@
 #include <common.h>
 #include <init.h>
 #include <efi.h>
-#include <efi/efi.h>
+#include <efi/efi-payload.h>
 #include <memory.h>
 #include <linux/sizes.h>
 
diff --git a/drivers/block/efi-block-io.c b/drivers/block/efi-block-io.c
index 04234b5ab2d4..5fd82296dc54 100644
--- a/drivers/block/efi-block-io.c
+++ b/drivers/block/efi-block-io.c
@@ -13,7 +13,7 @@
 #include <efi.h>
 #include <block.h>
 #include <disks.h>
-#include <efi/efi.h>
+#include <efi/efi-payload.h>
 #include <efi/efi-device.h>
 #include <bootsource.h>
 
diff --git a/drivers/bus/acpi.c b/drivers/bus/acpi.c
index 2515b6633b33..efba3f4c1671 100644
--- a/drivers/bus/acpi.c
+++ b/drivers/bus/acpi.c
@@ -6,7 +6,8 @@
 #include <common.h>
 #include <driver.h>
 #include <init.h>
-#include <efi/efi.h>
+#include <efi.h>
+#include <efi/efi-payload.h>
 #include <efi/efi-device.h>
 #include <acpi.h>
 
diff --git a/drivers/clocksource/efi.c b/drivers/clocksource/efi.c
index 10f75c033ea8..924ab1c34607 100644
--- a/drivers/clocksource/efi.c
+++ b/drivers/clocksource/efi.c
@@ -7,7 +7,7 @@
 #include <driver.h>
 #include <clock.h>
 #include <efi.h>
-#include <efi/efi.h>
+#include <efi/efi-payload.h>
 #include <efi/efi-device.h>
 #include <linux/err.h>
 
diff --git a/drivers/clocksource/efi_x86.c b/drivers/clocksource/efi_x86.c
index c79862fb990f..75163d6e4774 100644
--- a/drivers/clocksource/efi_x86.c
+++ b/drivers/clocksource/efi_x86.c
@@ -3,7 +3,7 @@
 #include <init.h>
 #include <driver.h>
 #include <efi.h>
-#include <efi/efi.h>
+#include <efi/efi-payload.h>
 #include <clock.h>
 
 #ifdef __x86_64__
diff --git a/drivers/efi/efi-device.c b/drivers/efi/efi-device.c
index 25c8eeaf01cb..4c10f419b11e 100644
--- a/drivers/efi/efi-device.c
+++ b/drivers/efi/efi-device.c
@@ -16,7 +16,7 @@
 #include <wchar.h>
 #include <init.h>
 #include <efi.h>
-#include <efi/efi.h>
+#include <efi/efi-payload.h>
 #include <efi/efi-device.h>
 #include <linux/err.h>
 
diff --git a/drivers/net/efi-snp.c b/drivers/net/efi-snp.c
index def2714bee47..cc34ad5aafa7 100644
--- a/drivers/net/efi-snp.c
+++ b/drivers/net/efi-snp.c
@@ -11,7 +11,7 @@
 #include <net.h>
 #include <init.h>
 #include <efi.h>
-#include <efi/efi.h>
+#include <efi/efi-payload.h>
 #include <efi/efi-device.h>
 
 struct efi_network_statistics {
diff --git a/drivers/pci/pci-efi.c b/drivers/pci/pci-efi.c
index 846449c4b0e0..c0bcc10044ce 100644
--- a/drivers/pci/pci-efi.c
+++ b/drivers/pci/pci-efi.c
@@ -9,7 +9,7 @@
 #include <init.h>
 #include <xfuncs.h>
 #include <efi.h>
-#include <efi/efi.h>
+#include <efi/efi-payload.h>
 #include <efi/efi-device.h>
 #include <linux/pci.h>
 
diff --git a/drivers/serial/efi-stdio.c b/drivers/serial/efi-stdio.c
index d5049dfdadf3..7509f16b86c2 100644
--- a/drivers/serial/efi-stdio.c
+++ b/drivers/serial/efi-stdio.c
@@ -13,7 +13,7 @@
 #include <efi.h>
 #include <readkey.h>
 #include <linux/ctype.h>
-#include <efi/efi.h>
+#include <efi/efi-payload.h>
 #include <efi/efi-device.h>
 #include <efi/efi-stdio.h>
 
diff --git a/drivers/serial/serial_efi.c b/drivers/serial/serial_efi.c
index 5da90965755b..24a53a9019ba 100644
--- a/drivers/serial/serial_efi.c
+++ b/drivers/serial/serial_efi.c
@@ -8,7 +8,7 @@
 #include <init.h>
 #include <malloc.h>
 #include <efi.h>
-#include <efi/efi.h>
+#include <efi/efi-payload.h>
 #include <efi/efi-device.h>
 
 /*
diff --git a/drivers/video/efi_gop.c b/drivers/video/efi_gop.c
index 2155ec163fd2..45dc42fa3e55 100644
--- a/drivers/video/efi_gop.c
+++ b/drivers/video/efi_gop.c
@@ -12,7 +12,7 @@
 #include <errno.h>
 #include <gui/graphic_utils.h>
 #include <efi.h>
-#include <efi/efi.h>
+#include <efi/efi-payload.h>
 #include <efi/efi-device.h>
 
 #define PIXEL_RGB_RESERVED_8BIT_PER_COLOR		0
diff --git a/drivers/watchdog/efi_wdt.c b/drivers/watchdog/efi_wdt.c
index 1512b1d99aae..eb50f24aed57 100644
--- a/drivers/watchdog/efi_wdt.c
+++ b/drivers/watchdog/efi_wdt.c
@@ -7,7 +7,7 @@
 #include <init.h>
 #include <driver.h>
 #include <efi.h>
-#include <efi/efi.h>
+#include <efi/efi-payload.h>
 #include <watchdog.h>
 
 struct efi_wdt_priv {
diff --git a/fs/efi.c b/fs/efi.c
index edf65179fdbd..ca43cf6c48ab 100644
--- a/fs/efi.c
+++ b/fs/efi.c
@@ -28,7 +28,7 @@
 #include <wchar.h>
 #include <efi.h>
 #include <libfile.h>
-#include <efi/efi.h>
+#include <efi/efi-payload.h>
 #include <efi/efi-device.h>
 #include <linux/stddef.h>
 
diff --git a/fs/efivarfs.c b/fs/efivarfs.c
index 659716f845f2..01947439ff6c 100644
--- a/fs/efivarfs.c
+++ b/fs/efivarfs.c
@@ -28,7 +28,7 @@
 #include <wchar.h>
 #include <linux/err.h>
 #include <linux/ctype.h>
-#include <efi/efi.h>
+#include <efi/efi-payload.h>
 #include <efi/efi-device.h>
 
 struct efivarfs_inode {
diff --git a/include/efi/debug_ll.h b/include/efi/debug_ll.h
index 905f1c43cd23..279e8995f2b3 100644
--- a/include/efi/debug_ll.h
+++ b/include/efi/debug_ll.h
@@ -6,7 +6,7 @@
 #define EFI_DEBUG_CLEAR_MEMORY 0
 
 #include <efi.h>
-#include <efi/efi.h>
+#include <efi/efi-payload.h>
 
 static inline void PUTC_LL(char c)
 {
diff --git a/include/efi/efi.h b/include/efi/efi-payload.h
similarity index 90%
rename from include/efi/efi.h
rename to include/efi/efi-payload.h
index e77b1c5feb52..a2daff08bb3f 100644
--- a/include/efi/efi.h
+++ b/include/efi/efi-payload.h
@@ -1,6 +1,6 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
-#ifndef __MACH_EFI_H
-#define __MACH_EFI_H
+#ifndef __EFI_PAYLOAD_H
+#define __EFI_PAYLOAD_H
 
 #include <efi.h>
 #include <efi/efi-util.h>
@@ -21,4 +21,4 @@ int efi_set_variable(char *name, efi_guid_t *vendor, uint32_t attributes,
 		     void *buf, unsigned long size);
 int efi_set_variable_usec(char *name, efi_guid_t *vendor, uint64_t usec);
 
-#endif /* __MACH_EFI_H */
+#endif
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

