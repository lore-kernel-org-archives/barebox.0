Delivery-date: Mon, 03 Jan 2022 13:07:46 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4M7t-009o7O-Up
	for lore@lore.pengutronix.de; Mon, 03 Jan 2022 13:07:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4M7n-0005cr-GC
	for lore@pengutronix.de; Mon, 03 Jan 2022 13:07:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sbrMkczmzLY5jf0JFK3QA4o90r9f9doWTMn/4CtXtxs=; b=umnSevgKsgHbY3
	JyxiX7B4+2W/xVFzHuXcdQE/ZNn+lb1T79ltj7d+L6mKbIZr4PX7nnOEpSe33V3OUWjlitMROzPru
	UGJIjuU9RhwURnwHx8MhO0/+ZUNqvp1DckQa2Qd01ZsMM3TYsKjF7e3SXg/v+ovR3CTaDBFIGGaTT
	4UCdZt+NgahjIzgMQXJ8+aYUaHSTE7Bw/GZZ6ag4gwNn0Et1ivfjljwHczo8UXwNBSwCYYUyygH6b
	rQPLi52go1XYNYPJom/SAYgBO3fMMxOk8lrE1Tlfi9CaqDKh2Tfm65Wr52QZ47xFjchnPPahy7ZTX
	0sHA5/B3WKK6J5Rcwsiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n4M6C-008xzA-29; Mon, 03 Jan 2022 12:06:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n4M5w-008xtv-72
 for barebox@lists.infradead.org; Mon, 03 Jan 2022 12:05:49 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1n4M5u-000537-M8; Mon, 03 Jan 2022 13:05:42 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1n4M5t-007GWV-NC; Mon, 03 Jan 2022 13:05:41 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ukl@pengutronix.de, rhi@pengutronix.de,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  3 Jan 2022 13:05:39 +0100
Message-Id: <20220103120539.1730644-12-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220103120539.1730644-1-a.fatoum@pengutronix.de>
References: <20220103120539.1730644-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220103_040544_645037_809B1BB8 
X-CRM114-Status: GOOD (  13.52  )
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
Subject: [PATCH 11/11] treewide: add SPDX-License-Identifier for files without
 explicit license
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Record GPL-2.0-only as license for all files lacking an explicit license
statement.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 MAKEALL                                      | 2 ++
 arch/arm/tools/gen-mach-types                | 2 ++
 common/boards/qemu-virt/overlay-of-flash.dts | 2 ++
 common/calloc.c                              | 2 ++
 common/console_simple.c                      | 2 ++
 common/globalvar.c                           | 2 ++
 common/imd-barebox.c                         | 2 ++
 common/kallsyms.c                            | 2 ++
 common/meminfo.c                             | 2 ++
 common/memory_display.c                      | 4 +++-
 common/oftree.c                              | 2 ++
 common/parser.c                              | 2 ++
 common/serdev.c                              | 1 +
 common/state/state.h                         | 2 ++
 common/tlsf.c                                | 2 ++
 common/tlsfbits.h                            | 2 ++
 common/version.c                             | 2 ++
 crypto/md5.c                                 | 1 +
 fs/cramfs/uncompress.c                       | 2 ++
 fs/fat/diskio.h                              | 2 ++
 fs/fat/ffconf.h                              | 2 ++
 fs/fat/integer.h                             | 2 ++
 fs/pstore/internal.h                         | 2 ++
 fs/squashfs/squashfs.c                       | 2 ++
 lib/bcd.c                                    | 2 ++
 lib/fdt.c                                    | 1 +
 lib/fdt_empty_tree.c                         | 2 ++
 lib/fdt_ro.c                                 | 2 ++
 lib/fdt_rw.c                                 | 2 ++
 lib/fdt_strerror.c                           | 1 +
 lib/fdt_sw.c                                 | 2 ++
 lib/fdt_wip.c                                | 2 ++
 lib/fonts/font_6x8.c                         | 2 ++
 lib/fonts/font_7x14.c                        | 2 ++
 lib/fonts/font_8x16.c                        | 2 ++
 lib/fonts/font_8x8.c                         | 2 ++
 lib/fonts/font_custom_16x.c                  | 2 ++
 lib/fonts/font_mini_4x6.c                    | 2 ++
 lib/gcd.c                                    | 2 ++
 lib/gui/2d-primitives.c                      | 2 ++
 lib/gui/bmp.c                                | 2 ++
 lib/gui/graphic_utils.c                      | 2 ++
 lib/gui/picopng.h                            | 2 ++
 lib/gui/png.c                                | 2 ++
 lib/gui/png_lode.c                           | 2 ++
 lib/gui/png_pico.c                           | 2 ++
 lib/list_sort.c                              | 2 ++
 lib/make_directory.c                         | 1 +
 lib/nls_base.c                               | 2 ++
 lib/notifier.c                               | 2 ++
 lib/parseopt.c                               | 2 ++
 lib/random.c                                 | 2 ++
 lib/readline.c                               | 2 ++
 lib/readline_simple.c                        | 2 ++
 lib/string.c                                 | 1 +
 lib/stringlist.c                             | 2 ++
 lib/strtox.c                                 | 2 ++
 lib/unlink-recursive.c                       | 2 ++
 lib/vsprintf.c                               | 2 ++
 net/nfs.c                                    | 2 ++
 net/ping.c                                   | 2 ++
 pbl/console.c                                | 2 ++
 pbl/misc.c                                   | 2 ++
 pbl/string.c                                 | 2 ++
 64 files changed, 123 insertions(+), 1 deletion(-)

diff --git a/MAKEALL b/MAKEALL
index 3548739e37f4..b4cf4c649b9c 100755
--- a/MAKEALL
+++ b/MAKEALL
@@ -1,4 +1,6 @@
 #!/usr/bin/env bash
+#
+# SPDX-License-Identifier: GPL-2.0-only
 
 # Print statistics when we exit
 trap exit 1 2 3 15
diff --git a/arch/arm/tools/gen-mach-types b/arch/arm/tools/gen-mach-types
index 04fef71d7be9..fcfc0ed192e1 100644
--- a/arch/arm/tools/gen-mach-types
+++ b/arch/arm/tools/gen-mach-types
@@ -1,5 +1,7 @@
 #!/bin/awk
 #
+# SPDX-License-Identifier: GPL-2.0-only
+#
 # Awk script to generate include/generated/mach-types.h
 #
 BEGIN	{ nr = 0 }
diff --git a/common/boards/qemu-virt/overlay-of-flash.dts b/common/boards/qemu-virt/overlay-of-flash.dts
index a271a455105f..b3cdf6893f8a 100644
--- a/common/boards/qemu-virt/overlay-of-flash.dts
+++ b/common/boards/qemu-virt/overlay-of-flash.dts
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /dts-v1/;
 /plugin/;
 
diff --git a/common/calloc.c b/common/calloc.c
index 2b933ec272b0..65e843350d47 100644
--- a/common/calloc.c
+++ b/common/calloc.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <malloc.h>
 
diff --git a/common/console_simple.c b/common/console_simple.c
index 8c404ad264c4..afa9a0f186fb 100644
--- a/common/console_simple.c
+++ b/common/console_simple.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <config.h>
 #include <common.h>
 #include <fs.h>
diff --git a/common/globalvar.c b/common/globalvar.c
index 9e5a99f79353..4fd6361c2f34 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <malloc.h>
 #include <globalvar.h>
diff --git a/common/imd-barebox.c b/common/imd-barebox.c
index 06731d0600cf..e11fdca845ad 100644
--- a/common/imd-barebox.c
+++ b/common/imd-barebox.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <image-metadata.h>
 #include <generated/compile.h>
diff --git a/common/kallsyms.c b/common/kallsyms.c
index f641903147db..a9b2b9368992 100644
--- a/common/kallsyms.c
+++ b/common/kallsyms.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <init.h>
 #include <kallsyms.h>
diff --git a/common/meminfo.c b/common/meminfo.c
index d239fde5828b..e6b251e5bfee 100644
--- a/common/meminfo.c
+++ b/common/meminfo.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <init.h>
 #include <memory.h>
diff --git a/common/memory_display.c b/common/memory_display.c
index fbb8bbb6faa7..77868be26ace 100644
--- a/common/memory_display.c
+++ b/common/memory_display.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <errno.h>
 #include <abort.h>
@@ -132,4 +134,4 @@ int memory_display(const void *addr, loff_t offs, unsigned nbytes,
 		   int size, int swab)
 {
 	return pr_memory_display(-1, addr, offs, nbytes, size, swab);
-}
\ No newline at end of file
+}
diff --git a/common/oftree.c b/common/oftree.c
index 962fff244d87..0738ab6e9e0c 100644
--- a/common/oftree.c
+++ b/common/oftree.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <environment.h>
 #include <fdt.h>
diff --git a/common/parser.c b/common/parser.c
index 584d4b0efece..387cd64c4267 100644
--- a/common/parser.c
+++ b/common/parser.c
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #include <common.h>
 #include <command.h>
 #include <password.h>
diff --git a/common/serdev.c b/common/serdev.c
index 4bf11b161892..1d328c6a3337 100644
--- a/common/serdev.c
+++ b/common/serdev.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 
 #include <common.h>
 #include <serdev.h>
diff --git a/common/state/state.h b/common/state/state.h
index 48572c5d4137..0545cf6ac108 100644
--- a/common/state/state.h
+++ b/common/state/state.h
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <linux/types.h>
 #include <linux/list.h>
 #include <linux/err.h>
diff --git a/common/tlsf.c b/common/tlsf.c
index 4247a9d3c716..520cce496ef6 100644
--- a/common/tlsf.c
+++ b/common/tlsf.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <stdio.h>
 #include <stdlib.h>
 #include <string.h>
diff --git a/common/tlsfbits.h b/common/tlsfbits.h
index edbac8063645..8633fb595985 100644
--- a/common/tlsfbits.h
+++ b/common/tlsfbits.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef INCLUDED_tlsfbits
 #define INCLUDED_tlsfbits
 
diff --git a/common/version.c b/common/version.c
index 54cec5335d9c..15f03c2a00ff 100644
--- a/common/version.c
+++ b/common/version.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <generated/compile.h>
 #include <generated/utsrelease.h>
diff --git a/crypto/md5.c b/crypto/md5.c
index f8f52bf4a505..f91a6fe08f89 100644
--- a/crypto/md5.c
+++ b/crypto/md5.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * This file was transplanted with slight modifications from Linux sources
  * (fs/cifs/md5.c) into U-Boot by Bartlomiej Sieka <tur@semihalf.com>.
diff --git a/fs/cramfs/uncompress.c b/fs/cramfs/uncompress.c
index b7887bd65439..82c82adf044c 100644
--- a/fs/cramfs/uncompress.c
+++ b/fs/cramfs/uncompress.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 /*
  * uncompress.c
  *
diff --git a/fs/fat/diskio.h b/fs/fat/diskio.h
index aee1ce2b0b3b..57626d2fbd7b 100644
--- a/fs/fat/diskio.h
+++ b/fs/fat/diskio.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /*-----------------------------------------------------------------------
 /  Low level disk interface modlue include file
 /-----------------------------------------------------------------------*/
diff --git a/fs/fat/ffconf.h b/fs/fat/ffconf.h
index 2f6a6c154409..abf7d1e92e0b 100644
--- a/fs/fat/ffconf.h
+++ b/fs/fat/ffconf.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /*---------------------------------------------------------------------------/
 /  FatFs - FAT file system module configuration file  R0.08b (C)ChaN, 2011
 /----------------------------------------------------------------------------/
diff --git a/fs/fat/integer.h b/fs/fat/integer.h
index 04956aa775fa..fe94e374f356 100644
--- a/fs/fat/integer.h
+++ b/fs/fat/integer.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /*-------------------------------------------*/
 /* Integer type definitions for FatFs module */
 /*-------------------------------------------*/
diff --git a/fs/pstore/internal.h b/fs/pstore/internal.h
index 6b507e4bd3cb..d233ee7e8c0d 100644
--- a/fs/pstore/internal.h
+++ b/fs/pstore/internal.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __PSTORE_INTERNAL_H__
 #define __PSTORE_INTERNAL_H__
 
diff --git a/fs/squashfs/squashfs.c b/fs/squashfs/squashfs.c
index be03618b2f52..030be57887b2 100644
--- a/fs/squashfs/squashfs.c
+++ b/fs/squashfs/squashfs.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <malloc.h>
 #include <driver.h>
diff --git a/lib/bcd.c b/lib/bcd.c
index b072d50a9041..4bed6eddfec8 100644
--- a/lib/bcd.c
+++ b/lib/bcd.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <linux/bcd.h>
 #include <module.h>
 
diff --git a/lib/fdt.c b/lib/fdt.c
index 97f20069fc37..c83f9b94d2a2 100644
--- a/lib/fdt.c
+++ b/lib/fdt.c
@@ -1,2 +1,3 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #include <linux/libfdt_env.h>
 #include "../scripts/dtc/libfdt/fdt.c"
diff --git a/lib/fdt_empty_tree.c b/lib/fdt_empty_tree.c
index 5d30c58150ad..794fcb6cac62 100644
--- a/lib/fdt_empty_tree.c
+++ b/lib/fdt_empty_tree.c
@@ -1,2 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #include <linux/libfdt_env.h>
 #include "../scripts/dtc/libfdt/fdt_empty_tree.c"
diff --git a/lib/fdt_ro.c b/lib/fdt_ro.c
index f73c04ea7be4..b4bab9618e37 100644
--- a/lib/fdt_ro.c
+++ b/lib/fdt_ro.c
@@ -1,2 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #include <linux/libfdt_env.h>
 #include "../scripts/dtc/libfdt/fdt_ro.c"
diff --git a/lib/fdt_rw.c b/lib/fdt_rw.c
index 0c1f0f4a4b13..72b5df529dfb 100644
--- a/lib/fdt_rw.c
+++ b/lib/fdt_rw.c
@@ -1,2 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #include <linux/libfdt_env.h>
 #include "../scripts/dtc/libfdt/fdt_rw.c"
diff --git a/lib/fdt_strerror.c b/lib/fdt_strerror.c
index 8713e3ff4707..25883d28d938 100644
--- a/lib/fdt_strerror.c
+++ b/lib/fdt_strerror.c
@@ -1,2 +1,3 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #include <linux/libfdt_env.h>
 #include "../scripts/dtc/libfdt/fdt_strerror.c"
diff --git a/lib/fdt_sw.c b/lib/fdt_sw.c
index 9ac7e50c76ce..3f8e3397a9a9 100644
--- a/lib/fdt_sw.c
+++ b/lib/fdt_sw.c
@@ -1,2 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #include <linux/libfdt_env.h>
 #include "../scripts/dtc/libfdt/fdt_sw.c"
diff --git a/lib/fdt_wip.c b/lib/fdt_wip.c
index 45b3fc3d3ba1..da120b6dc97e 100644
--- a/lib/fdt_wip.c
+++ b/lib/fdt_wip.c
@@ -1,2 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #include <linux/libfdt_env.h>
 #include "../scripts/dtc/libfdt/fdt_wip.c"
diff --git a/lib/fonts/font_6x8.c b/lib/fonts/font_6x8.c
index a5efeee61686..2b9061cbd049 100644
--- a/lib/fonts/font_6x8.c
+++ b/lib/fonts/font_6x8.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <init.h>
 #include <linux/font.h>
 
diff --git a/lib/fonts/font_7x14.c b/lib/fonts/font_7x14.c
index e5ef8323ca7b..13b3897d8cd0 100644
--- a/lib/fonts/font_7x14.c
+++ b/lib/fonts/font_7x14.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 /**************************************/
 /* this file adapted from font_8x16.c */
 /* by Jurriaan Kalkman 05-2005        */
diff --git a/lib/fonts/font_8x16.c b/lib/fonts/font_8x16.c
index e6d40d0de3e0..dbebf07e27ad 100644
--- a/lib/fonts/font_8x16.c
+++ b/lib/fonts/font_8x16.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 /**********************************************/
 /*                                            */
 /*       Font file generated by cpi2fnt       */
diff --git a/lib/fonts/font_8x8.c b/lib/fonts/font_8x8.c
index 27d53de57833..40f1112427fc 100644
--- a/lib/fonts/font_8x8.c
+++ b/lib/fonts/font_8x8.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 /**********************************************/
 /*                                            */
 /*       Font file generated by cpi2fnt       */
diff --git a/lib/fonts/font_custom_16x.c b/lib/fonts/font_custom_16x.c
index 2666e1f6d659..eb21a813608f 100644
--- a/lib/fonts/font_custom_16x.c
+++ b/lib/fonts/font_custom_16x.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 /*
  * by Du Huanpeng <u74147@gmail.com>
  */
diff --git a/lib/fonts/font_mini_4x6.c b/lib/fonts/font_mini_4x6.c
index 4a1de138a9ed..560a3e1c3a06 100644
--- a/lib/fonts/font_mini_4x6.c
+++ b/lib/fonts/font_mini_4x6.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 
 /* Hand composed "Minuscule" 4x6 font, with binary data generated using
  * Perl stub.
diff --git a/lib/gcd.c b/lib/gcd.c
index 86bdba911265..d895c1f12d6a 100644
--- a/lib/gcd.c
+++ b/lib/gcd.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <linux/gcd.h>
 
 /* Greatest common divisor */
diff --git a/lib/gui/2d-primitives.c b/lib/gui/2d-primitives.c
index 940e82b7d499..55dc1b1dda89 100644
--- a/lib/gui/2d-primitives.c
+++ b/lib/gui/2d-primitives.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <fb.h>
 #include <gui/graphic_utils.h>
diff --git a/lib/gui/bmp.c b/lib/gui/bmp.c
index 8bffc70a42ed..bbc623dba329 100644
--- a/lib/gui/bmp.c
+++ b/lib/gui/bmp.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <errno.h>
 #include <malloc.h>
diff --git a/lib/gui/graphic_utils.c b/lib/gui/graphic_utils.c
index 0bed932213ff..92f249e722bc 100644
--- a/lib/gui/graphic_utils.c
+++ b/lib/gui/graphic_utils.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <fb.h>
 #include <gui/graphic_utils.h>
diff --git a/lib/gui/picopng.h b/lib/gui/picopng.h
index 14c5e28bcc21..a17dd14b0c9e 100644
--- a/lib/gui/picopng.h
+++ b/lib/gui/picopng.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _PICOPNG_H
 #define _PICOPNG_H
 
diff --git a/lib/gui/png.c b/lib/gui/png.c
index 6bf997c29a57..01833485ce73 100644
--- a/lib/gui/png.c
+++ b/lib/gui/png.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <errno.h>
 #include <malloc.h>
diff --git a/lib/gui/png_lode.c b/lib/gui/png_lode.c
index e30db0f853b3..68149c848d5b 100644
--- a/lib/gui/png_lode.c
+++ b/lib/gui/png_lode.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <errno.h>
 #include <malloc.h>
diff --git a/lib/gui/png_pico.c b/lib/gui/png_pico.c
index 256db35ce061..029fee2a4060 100644
--- a/lib/gui/png_pico.c
+++ b/lib/gui/png_pico.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <errno.h>
 #include <malloc.h>
diff --git a/lib/list_sort.c b/lib/list_sort.c
index f5122b259229..77ddadb3d6ac 100644
--- a/lib/list_sort.c
+++ b/lib/list_sort.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #ifndef __BAREBOX__
 #include <linux/kernel.h>
 #define EXPORT_SYMBOL(x)
diff --git a/lib/make_directory.c b/lib/make_directory.c
index 29d08cf536c7..7db93ded8817 100644
--- a/lib/make_directory.c
+++ b/lib/make_directory.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 
 #include <string.h>
 #include <errno.h>
diff --git a/lib/nls_base.c b/lib/nls_base.c
index cd6a5ff12442..5def1411f9ab 100644
--- a/lib/nls_base.c
+++ b/lib/nls_base.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 /*
  * linux/fs/nls/nls_base.c
  *
diff --git a/lib/notifier.c b/lib/notifier.c
index 9eb734e504b5..c55ec22f94c2 100644
--- a/lib/notifier.c
+++ b/lib/notifier.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <linux/list.h>
 #include <notifier.h>
diff --git a/lib/parseopt.c b/lib/parseopt.c
index d0a27d8bf372..4fdd72fa15bb 100644
--- a/lib/parseopt.c
+++ b/lib/parseopt.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 
 #include "parseopt.h"
diff --git a/lib/random.c b/lib/random.c
index 759271f0c82b..fb3580f9c086 100644
--- a/lib/random.c
+++ b/lib/random.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <stdlib.h>
 #include <linux/hw_random.h>
diff --git a/lib/readline.c b/lib/readline.c
index 25aa99b95e46..37d5b0a343a7 100644
--- a/lib/readline.c
+++ b/lib/readline.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <readkey.h>
 #include <init.h>
diff --git a/lib/readline_simple.c b/lib/readline_simple.c
index 2e52bfc2a070..7a8df9549457 100644
--- a/lib/readline_simple.c
+++ b/lib/readline_simple.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 
 static char erase_seq[] = "\b \b";		/* erase sequence	*/
diff --git a/lib/string.c b/lib/string.c
index 9aeb1d883022..6389217d5b41 100644
--- a/lib/string.c
+++ b/lib/string.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  *  linux/lib/string.c
  *
diff --git a/lib/stringlist.c b/lib/stringlist.c
index fc86640b94a8..bb2ba54a6c80 100644
--- a/lib/stringlist.c
+++ b/lib/stringlist.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <xfuncs.h>
 #include <malloc.h>
diff --git a/lib/strtox.c b/lib/strtox.c
index a5b770c8ca7a..76927743a72c 100644
--- a/lib/strtox.c
+++ b/lib/strtox.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <linux/ctype.h>
 
diff --git a/lib/unlink-recursive.c b/lib/unlink-recursive.c
index f28c6dae5b3c..398e43693bdf 100644
--- a/lib/unlink-recursive.c
+++ b/lib/unlink-recursive.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <libfile.h>
 #include <errno.h>
diff --git a/lib/vsprintf.c b/lib/vsprintf.c
index 8681eb43b522..1f3a45be327a 100644
--- a/lib/vsprintf.c
+++ b/lib/vsprintf.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 /*
  *  linux/lib/vsprintf.c
  *
diff --git a/net/nfs.c b/net/nfs.c
index 591417e0de20..9bd0b8f05f99 100644
--- a/net/nfs.c
+++ b/net/nfs.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 /*
  * NFS support driver - based on etherboot and barebox's tftp.c
  *
diff --git a/net/ping.c b/net/ping.c
index a71f59a805fb..7b319e532e79 100644
--- a/net/ping.c
+++ b/net/ping.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <command.h>
 #include <clock.h>
diff --git a/pbl/console.c b/pbl/console.c
index 1efcaa0047aa..fc8e8cdf1383 100644
--- a/pbl/console.c
+++ b/pbl/console.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <debug_ll.h>
 #include <linux/err.h>
diff --git a/pbl/misc.c b/pbl/misc.c
index 201ae38e9af6..1f0d992ce08b 100644
--- a/pbl/misc.c
+++ b/pbl/misc.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 #include <common.h>
 #include <init.h>
 #include <linux/types.h>
diff --git a/pbl/string.c b/pbl/string.c
index e96eb99fc22d..7c10f064dc7e 100644
--- a/pbl/string.c
+++ b/pbl/string.c
@@ -1,3 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
 /*
  * arch/arm/boot/compressed/string.c
  *
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

