Delivery-date: Mon, 03 Jan 2022 13:08:07 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4M8F-009o8u-7D
	for lore@lore.pengutronix.de; Mon, 03 Jan 2022 13:08:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4M86-0005i0-Rf
	for lore@pengutronix.de; Mon, 03 Jan 2022 13:08:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8QNJxgOyKvK39osfSKvvrItHAFDpg7dfB3kY16zf90k=; b=CJFoYJDJcLxddX
	AW/NoS+gxj04ONsKI4qcRqfVOZHOPtak40D1Uuav5yXRgpnG+/bPYQl3mSvWxSDFzyHou5NXYrodU
	GOBF9pXkwZDHqn2xhw7+5L9y2QW2TzNCvKTUxbOcl3CfrQP2zKXFe3U3ENViT71yFARDfcg7/ohZi
	nGr8yl+jhdJXAuU4gg1hTBatXk+rkafwuxUQ/r469jHiwNtIm2OQjw42xQdtLbIl6yCwHeWKDbIYS
	1vMfecH0A2PIlB2LyuSH+h7h5UoS6z5LE51vOL4fbm/WDlPOiOkEwsFXAjqmlzwqzepWleOXNxFIb
	iCe1CncjnFfZPC5wDfuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n4M6L-008y4G-Iw; Mon, 03 Jan 2022 12:06:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n4M5v-008xts-Un
 for barebox@lists.infradead.org; Mon, 03 Jan 2022 12:05:51 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1n4M5u-00052W-6w; Mon, 03 Jan 2022 13:05:42 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1n4M5t-007GWE-9c; Mon, 03 Jan 2022 13:05:41 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ukl@pengutronix.de, rhi@pengutronix.de,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  3 Jan 2022 13:05:34 +0100
Message-Id: <20220103120539.1730644-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220103120539.1730644-1-a.fatoum@pengutronix.de>
References: <20220103120539.1730644-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220103_040544_547216_6B972F7B 
X-CRM114-Status: GOOD (  10.31  )
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
Subject: [PATCH 06/11] include: add SPDX-License-Identifier
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

All these files lack a license statement, so add the default
GPL-2.0-only.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/aiodev.h                        | 2 ++
 include/asm-generic/atomic-long.h       | 2 ++
 include/asm-generic/barebox.lds.h       | 2 ++
 include/asm-generic/bitops/__ffs.h      | 2 ++
 include/asm-generic/bitops/__fls.h      | 2 ++
 include/asm-generic/bitops/ffs.h        | 2 ++
 include/asm-generic/bitops/ffz.h        | 2 ++
 include/asm-generic/bitops/find.h       | 2 ++
 include/asm-generic/bitops/fls.h        | 2 ++
 include/asm-generic/bitops/fls64.h      | 2 ++
 include/asm-generic/bitops/hweight.h    | 2 ++
 include/asm-generic/bitops/ops.h        | 2 ++
 include/asm-generic/bitsperlong.h       | 2 ++
 include/asm-generic/bug.h               | 2 ++
 include/asm-generic/errno.h             | 2 ++
 include/asm-generic/int-ll64.h          | 2 ++
 include/asm-generic/ioctl.h             | 2 ++
 include/asm-generic/memory_layout.h     | 2 ++
 include/asm-generic/posix_types.h       | 2 ++
 include/asm-generic/sections.h          | 2 ++
 include/asm-generic/swab.h              | 2 ++
 include/base64.h                        | 2 ++
 include/cramfs/cramfs_fs.h              | 2 ++
 include/crypto/crc.h                    | 2 ++
 include/crypto/des.h                    | 2 ++
 include/crypto/sha.h                    | 2 ++
 include/debug_ll/ns16550.h              | 2 ++
 include/debug_ll/pl011.h                | 2 ++
 include/fastboot.h                      | 2 ++
 include/fpga-bridge.h                   | 1 +
 include/gui/2d-primitives.h             | 2 ++
 include/i2c/i2c-early.h                 | 2 ++
 include/input/input.h                   | 2 ++
 include/input/keyboard.h                | 2 ++
 include/input/matrix_keypad.h           | 2 ++
 include/linux/amba/mmci.h               | 2 ++
 include/linux/amba/pl061.h              | 2 ++
 include/linux/bcd.h                     | 2 ++
 include/linux/bitmap.h                  | 2 ++
 include/linux/bitops.h                  | 2 ++
 include/linux/bitrev.h                  | 2 ++
 include/linux/bug.h                     | 2 ++
 include/linux/byteorder/big_endian.h    | 2 ++
 include/linux/byteorder/generic.h       | 2 ++
 include/linux/byteorder/little_endian.h | 2 ++
 include/linux/circ_buf.h                | 2 ++
 include/linux/compiler_types.h          | 2 ++
 include/linux/const.h                   | 2 ++
 include/linux/crc8.h                    | 2 ++
 include/linux/ctype.h                   | 2 ++
 include/linux/dcache.h                  | 2 ++
 include/linux/decompress/mm.h           | 2 ++
 include/linux/decompress/unlz4.h        | 2 ++
 include/linux/err.h                     | 2 ++
 include/linux/ethtool.h                 | 2 ++
 include/linux/fs.h                      | 2 ++
 include/linux/gcd.h                     | 2 ++
 include/linux/hash.h                    | 2 ++
 include/linux/ioport.h                  | 2 ++
 include/linux/jffs2.h                   | 2 ++
 include/linux/kbuild.h                  | 2 ++
 include/linux/linkage.h                 | 2 ++
 include/linux/list_sort.h               | 2 ++
 include/linux/magic.h                   | 2 ++
 include/linux/mdio-bitbang.h            | 2 ++
 include/linux/mii.h                     | 2 ++
 include/linux/mod_devicetable.h         | 2 ++
 include/linux/mount.h                   | 2 ++
 include/linux/mtd/mtd-abi.h             | 2 ++
 include/linux/mtd/nftl.h                | 2 ++
 include/linux/mutex.h                   | 2 ++
 include/linux/pagemap.h                 | 2 ++
 include/linux/path.h                    | 2 ++
 include/linux/pci.h                     | 2 ++
 include/linux/pci_regs.h                | 2 ++
 include/linux/posix_types.h             | 2 ++
 include/linux/reset-controller.h        | 2 ++
 include/linux/reset.h                   | 2 ++
 include/linux/rtc.h                     | 2 ++
 include/linux/rwsem.h                   | 2 ++
 include/linux/sched.h                   | 2 ++
 include/linux/slab.h                    | 2 ++
 include/linux/smscphy.h                 | 2 ++
 include/linux/spinlock.h                | 2 ++
 include/linux/stat.h                    | 2 ++
 include/linux/stddef.h                  | 2 ++
 include/linux/string.h                  | 2 ++
 include/linux/stringify.h               | 2 ++
 include/linux/swab.h                    | 2 ++
 include/linux/time.h                    | 2 ++
 include/linux/types.h                   | 2 ++
 include/linux/unaligned/access_ok.h     | 2 ++
 include/linux/unaligned/be_byteshift.h  | 2 ++
 include/linux/unaligned/be_memmove.h    | 2 ++
 include/linux/unaligned/be_struct.h     | 2 ++
 include/linux/unaligned/generic.h       | 2 ++
 include/linux/unaligned/le_byteshift.h  | 2 ++
 include/linux/unaligned/le_memmove.h    | 2 ++
 include/linux/unaligned/le_struct.h     | 2 ++
 include/linux/unaligned/memmove.h       | 2 ++
 include/linux/unaligned/packed_struct.h | 2 ++
 include/linux/wait.h                    | 2 ++
 include/linux/xz.h                      | 2 ++
 include/linux/zutil.h                   | 2 ++
 include/machine_id.h                    | 2 ++
 include/mfd/lp3972.h                    | 2 ++
 include/mfd/pfuze.h                     | 2 ++
 include/mtd/mtd-peb.h                   | 2 ++
 include/platform_data/atmel-mci.h       | 2 ++
 include/platform_data/cadence_qspi.h    | 2 ++
 include/platform_data/dw_mmc.h          | 2 ++
 include/platform_data/eth-designware.h  | 2 ++
 include/platform_data/eth-dm9000.h      | 1 +
 include/platform_data/pca953x.h         | 2 ++
 include/pm_domain.h                     | 4 +++-
 include/serial/cadence.h                | 2 ++
 include/serial/imx-uart.h               | 2 ++
 include/slice.h                         | 2 ++
 include/soc/fsl/fsl_udc.h               | 2 ++
 include/soc/imx/imx-nand-bcb.h          | 2 ++
 include/soc/imx8m/clk-early.h           | 2 ++
 include/sys/ioctl.h                     | 2 ++
 include/sys/mount.h                     | 2 ++
 include/sys/stat.h                      | 2 ++
 include/usb/cdc.h                       | 2 ++
 include/usb/ch11.h                      | 2 ++
 include/usb/ch9.h                       | 2 ++
 include/usb/chipidea-imx.h              | 2 ++
 include/usb/ehci.h                      | 2 ++
 include/usb/fastboot.h                  | 2 ++
 include/usb/fsl_usb2.h                  | 2 ++
 include/usb/gadget-multi.h              | 2 ++
 include/usb/musb.h                      | 2 ++
 include/usb/phy.h                       | 2 ++
 include/usb/ulpi.h                      | 2 ++
 include/usb/usbserial.h                 | 2 ++
 include/video/backlight.h               | 2 ++
 include/video/fourcc.h                  | 2 ++
 include/video/vpl.h                     | 2 ++
 include/work.h                          | 2 ++
 140 files changed, 279 insertions(+), 1 deletion(-)

diff --git a/include/aiodev.h b/include/aiodev.h
index d5577156718d..f0c26d7c580c 100644
--- a/include/aiodev.h
+++ b/include/aiodev.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /*
  * core.c - Code implementing core functionality of AIODEV susbsystem
  *
diff --git a/include/asm-generic/atomic-long.h b/include/asm-generic/atomic-long.h
index fd1fdad20f66..cafb25172cf6 100644
--- a/include/asm-generic/atomic-long.h
+++ b/include/asm-generic/atomic-long.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _ASM_GENERIC_ATOMIC_LONG_H
 #define _ASM_GENERIC_ATOMIC_LONG_H
 /*
diff --git a/include/asm-generic/barebox.lds.h b/include/asm-generic/barebox.lds.h
index a03655d41cc4..a22e251c9d64 100644
--- a/include/asm-generic/barebox.lds.h
+++ b/include/asm-generic/barebox.lds.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 
 /*
  * Align to a 32 byte boundary equal to the
diff --git a/include/asm-generic/bitops/__ffs.h b/include/asm-generic/bitops/__ffs.h
index 9a3274aecf83..6421acb3a5b6 100644
--- a/include/asm-generic/bitops/__ffs.h
+++ b/include/asm-generic/bitops/__ffs.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _ASM_GENERIC_BITOPS___FFS_H_
 #define _ASM_GENERIC_BITOPS___FFS_H_
 
diff --git a/include/asm-generic/bitops/__fls.h b/include/asm-generic/bitops/__fls.h
index be24465403d6..a5615539c359 100644
--- a/include/asm-generic/bitops/__fls.h
+++ b/include/asm-generic/bitops/__fls.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _ASM_GENERIC_BITOPS___FLS_H_
 #define _ASM_GENERIC_BITOPS___FLS_H_
 
diff --git a/include/asm-generic/bitops/ffs.h b/include/asm-generic/bitops/ffs.h
index 0ff1b8b7c79a..4a375eae14df 100644
--- a/include/asm-generic/bitops/ffs.h
+++ b/include/asm-generic/bitops/ffs.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _ASM_GENERIC_BITOPS_FFS_H_
 #define _ASM_GENERIC_BITOPS_FFS_H_
 
diff --git a/include/asm-generic/bitops/ffz.h b/include/asm-generic/bitops/ffz.h
index 6744bd4cdf46..f9f624837ed0 100644
--- a/include/asm-generic/bitops/ffz.h
+++ b/include/asm-generic/bitops/ffz.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _ASM_GENERIC_BITOPS_FFZ_H_
 #define _ASM_GENERIC_BITOPS_FFZ_H_
 
diff --git a/include/asm-generic/bitops/find.h b/include/asm-generic/bitops/find.h
index 72a51e5a12ef..2ef6e94fa1ea 100644
--- a/include/asm-generic/bitops/find.h
+++ b/include/asm-generic/bitops/find.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _ASM_GENERIC_BITOPS_FIND_H_
 #define _ASM_GENERIC_BITOPS_FIND_H_
 
diff --git a/include/asm-generic/bitops/fls.h b/include/asm-generic/bitops/fls.h
index cc0d3ca95aaa..faa02fc48dfb 100644
--- a/include/asm-generic/bitops/fls.h
+++ b/include/asm-generic/bitops/fls.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _ASM_GENERIC_BITOPS_FLS_H_
 #define _ASM_GENERIC_BITOPS_FLS_H_
 
diff --git a/include/asm-generic/bitops/fls64.h b/include/asm-generic/bitops/fls64.h
index 86d403f8b256..45533402f06b 100644
--- a/include/asm-generic/bitops/fls64.h
+++ b/include/asm-generic/bitops/fls64.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _ASM_GENERIC_BITOPS_FLS64_H_
 #define _ASM_GENERIC_BITOPS_FLS64_H_
 
diff --git a/include/asm-generic/bitops/hweight.h b/include/asm-generic/bitops/hweight.h
index 7268c8b9ab2e..f0c188b675a8 100644
--- a/include/asm-generic/bitops/hweight.h
+++ b/include/asm-generic/bitops/hweight.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _ASM_GENERIC_BITOPS_HWEIGHT_H_
 #define _ASM_GENERIC_BITOPS_HWEIGHT_H_
 
diff --git a/include/asm-generic/bitops/ops.h b/include/asm-generic/bitops/ops.h
index f19bcaa29bfd..1684621922e5 100644
--- a/include/asm-generic/bitops/ops.h
+++ b/include/asm-generic/bitops/ops.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _ASM_GENERIC_BITOPS_OPS_H_
 #define _ASM_GENERIC_BITOPS_OPS_H_
 
diff --git a/include/asm-generic/bitsperlong.h b/include/asm-generic/bitsperlong.h
index bb986502988d..836a1d4c83dd 100644
--- a/include/asm-generic/bitsperlong.h
+++ b/include/asm-generic/bitsperlong.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __ASM_GENERIC_BITS_PER_LONG
 #define __ASM_GENERIC_BITS_PER_LONG
 
diff --git a/include/asm-generic/bug.h b/include/asm-generic/bug.h
index 6aa3eada0ec5..f20e1b4d65ac 100644
--- a/include/asm-generic/bug.h
+++ b/include/asm-generic/bug.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _ASM_GENERIC_BUG_H
 #define _ASM_GENERIC_BUG_H
 
diff --git a/include/asm-generic/errno.h b/include/asm-generic/errno.h
index 7d99a9537050..a96f8864dfd4 100644
--- a/include/asm-generic/errno.h
+++ b/include/asm-generic/errno.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _ARM_ERRNO_H
 #define _ARM_ERRNO_H
 
diff --git a/include/asm-generic/int-ll64.h b/include/asm-generic/int-ll64.h
index f394147c0739..8f220128d7f8 100644
--- a/include/asm-generic/int-ll64.h
+++ b/include/asm-generic/int-ll64.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /*
  * asm-generic/int-ll64.h
  *
diff --git a/include/asm-generic/ioctl.h b/include/asm-generic/ioctl.h
index 864181385579..eba15da2cc3e 100644
--- a/include/asm-generic/ioctl.h
+++ b/include/asm-generic/ioctl.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _ASM_GENERIC_IOCTL_H
 #define _ASM_GENERIC_IOCTL_H
 
diff --git a/include/asm-generic/memory_layout.h b/include/asm-generic/memory_layout.h
index 0d7ce3fe02a1..5cfd2a43a056 100644
--- a/include/asm-generic/memory_layout.h
+++ b/include/asm-generic/memory_layout.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __ASM_GENERIC_MEMORY_LAYOUT_H
 #define __ASM_GENERIC_MEMORY_LAYOUT_H
 
diff --git a/include/asm-generic/posix_types.h b/include/asm-generic/posix_types.h
index 136f161e1520..35123c776a2b 100644
--- a/include/asm-generic/posix_types.h
+++ b/include/asm-generic/posix_types.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __ASM_GENERIC_POSIX_TYPES_H
 #define __ASM_GENERIC_POSIX_TYPES_H
 
diff --git a/include/asm-generic/sections.h b/include/asm-generic/sections.h
index 870bff21f668..0b2ed5615bd6 100644
--- a/include/asm-generic/sections.h
+++ b/include/asm-generic/sections.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _ASM_GENERIC_SECTIONS_H_
 #define _ASM_GENERIC_SECTIONS_H_
 
diff --git a/include/asm-generic/swab.h b/include/asm-generic/swab.h
index 3ab5add54f75..f652dfe93fa1 100644
--- a/include/asm-generic/swab.h
+++ b/include/asm-generic/swab.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _ASM_GENERIC_SWAB_H
 #define _ASM_GENERIC_SWAB_H
 
diff --git a/include/base64.h b/include/base64.h
index 0df510281df4..993a366b48b0 100644
--- a/include/base64.h
+++ b/include/base64.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __BASE64_H
 #define __BASE64_H
 
diff --git a/include/cramfs/cramfs_fs.h b/include/cramfs/cramfs_fs.h
index d2b67c5fe0aa..6b1d7a62d895 100644
--- a/include/cramfs/cramfs_fs.h
+++ b/include/cramfs/cramfs_fs.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __CRAMFS_H
 #define __CRAMFS_H
 
diff --git a/include/crypto/crc.h b/include/crypto/crc.h
index 6428634d0a27..f36c2d644503 100644
--- a/include/crypto/crc.h
+++ b/include/crypto/crc.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /*
  * Common values for CRC algorithms
  */
diff --git a/include/crypto/des.h b/include/crypto/des.h
index 58fdaaa99d7b..abc3d9c59d01 100644
--- a/include/crypto/des.h
+++ b/include/crypto/des.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /* 
  * DES & Triple DES EDE Cipher Algorithms.
  */
diff --git a/include/crypto/sha.h b/include/crypto/sha.h
index 190f8a0e0242..17a489bd4a8d 100644
--- a/include/crypto/sha.h
+++ b/include/crypto/sha.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /*
  * Common values for SHA algorithms
  */
diff --git a/include/debug_ll/ns16550.h b/include/debug_ll/ns16550.h
index 373c917d86a3..a4ca7332d300 100644
--- a/include/debug_ll/ns16550.h
+++ b/include/debug_ll/ns16550.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __DEBUG_LL_NS16550_H
 #define __DEBUG_LL_NS16550_H
 
diff --git a/include/debug_ll/pl011.h b/include/debug_ll/pl011.h
index db015a373bc0..12f9ce1564c5 100644
--- a/include/debug_ll/pl011.h
+++ b/include/debug_ll/pl011.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __INCLUDE_ARM_ASM_DEBUG_LL_PL011_H__
 #define __INCLUDE_ARM_ASM_DEBUG_LL_PL011_H__
 
diff --git a/include/fastboot.h b/include/fastboot.h
index cf8a177bf12c..8a98b482fe14 100644
--- a/include/fastboot.h
+++ b/include/fastboot.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __FASTBOOT__
 #define __FASTBOOT__
 
diff --git a/include/fpga-bridge.h b/include/fpga-bridge.h
index fef2a9ccbbd3..300ab17b25ae 100644
--- a/include/fpga-bridge.h
+++ b/include/fpga-bridge.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #include <common.h>
 
 #ifndef _LINUX_FPGA_BRIDGE_H
diff --git a/include/gui/2d-primitives.h b/include/gui/2d-primitives.h
index 06216bb03c56..4fbddfae2567 100644
--- a/include/gui/2d-primitives.h
+++ b/include/gui/2d-primitives.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __2D_PRIMITIVES__
 #define __2D_PRIMITIVES__
 
diff --git a/include/i2c/i2c-early.h b/include/i2c/i2c-early.h
index d64c1a438448..fa93656e28e8 100644
--- a/include/i2c/i2c-early.h
+++ b/include/i2c/i2c-early.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __I2C_EARLY_H
 #define __I2C_EARLY_H
 
diff --git a/include/input/input.h b/include/input/input.h
index dbf3e7f57406..d169c647bdaf 100644
--- a/include/input/input.h
+++ b/include/input/input.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __INPUT_H
 #define __INPUT_H
 
diff --git a/include/input/keyboard.h b/include/input/keyboard.h
index d1f5bf553ad4..5761273a4ff7 100644
--- a/include/input/keyboard.h
+++ b/include/input/keyboard.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __INPUT_KEYBOARD_H
 #define __INPUT_KEYBOARD_H
 
diff --git a/include/input/matrix_keypad.h b/include/input/matrix_keypad.h
index 03d963af0e73..7b78944f9bf6 100644
--- a/include/input/matrix_keypad.h
+++ b/include/input/matrix_keypad.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _MATRIX_KEYPAD_H
 #define _MATRIX_KEYPAD_H
 
diff --git a/include/linux/amba/mmci.h b/include/linux/amba/mmci.h
index 0bf558124cef..719daadbb7b7 100644
--- a/include/linux/amba/mmci.h
+++ b/include/linux/amba/mmci.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /*
  *  include/linux/amba/mmci.h
  */
diff --git a/include/linux/amba/pl061.h b/include/linux/amba/pl061.h
index d498cd7a8c5f..e1b2fac1523f 100644
--- a/include/linux/amba/pl061.h
+++ b/include/linux/amba/pl061.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __AMBA_PL061_H__
 #define __AMBA_PL061_H__
 
diff --git a/include/linux/bcd.h b/include/linux/bcd.h
index 18fff11fb3ea..718f305bf7c9 100644
--- a/include/linux/bcd.h
+++ b/include/linux/bcd.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _BCD_H
 #define _BCD_H
 
diff --git a/include/linux/bitmap.h b/include/linux/bitmap.h
index 4b98521a833e..adaf5428fe86 100644
--- a/include/linux/bitmap.h
+++ b/include/linux/bitmap.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __LINUX_BITMAP_H
 #define __LINUX_BITMAP_H
 
diff --git a/include/linux/bitops.h b/include/linux/bitops.h
index dd13bf93118c..645fd2e6f68c 100644
--- a/include/linux/bitops.h
+++ b/include/linux/bitops.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _LINUX_BITOPS_H
 #define _LINUX_BITOPS_H
 #include <asm/types.h>
diff --git a/include/linux/bitrev.h b/include/linux/bitrev.h
index 7ffe03f4693d..ba2965977dd5 100644
--- a/include/linux/bitrev.h
+++ b/include/linux/bitrev.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _LINUX_BITREV_H
 #define _LINUX_BITREV_H
 
diff --git a/include/linux/bug.h b/include/linux/bug.h
index 8367a11ec227..d8fc328a0706 100644
--- a/include/linux/bug.h
+++ b/include/linux/bug.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _LINUX_BUG_H
 #define _LINUX_BUG_H
 
diff --git a/include/linux/byteorder/big_endian.h b/include/linux/byteorder/big_endian.h
index 539f710a3938..ba07edf0aeed 100644
--- a/include/linux/byteorder/big_endian.h
+++ b/include/linux/byteorder/big_endian.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _LINUX_BYTEORDER_BIG_ENDIAN_H
 #define _LINUX_BYTEORDER_BIG_ENDIAN_H
 
diff --git a/include/linux/byteorder/generic.h b/include/linux/byteorder/generic.h
index e59ba455e3ee..d5252959d8a1 100644
--- a/include/linux/byteorder/generic.h
+++ b/include/linux/byteorder/generic.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _LINUX_BYTEORDER_GENERIC_H
 #define _LINUX_BYTEORDER_GENERIC_H
 
diff --git a/include/linux/byteorder/little_endian.h b/include/linux/byteorder/little_endian.h
index dfe9531fbaf4..e23111d4cd7d 100644
--- a/include/linux/byteorder/little_endian.h
+++ b/include/linux/byteorder/little_endian.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _LINUX_BYTEORDER_LITTLE_ENDIAN_H
 #define _LINUX_BYTEORDER_LITTLE_ENDIAN_H
 
diff --git a/include/linux/circ_buf.h b/include/linux/circ_buf.h
index 90f2471dc6f2..36b3be9c1476 100644
--- a/include/linux/circ_buf.h
+++ b/include/linux/circ_buf.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /*
  * See Documentation/circular-buffers.txt for more information.
  */
diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
index db192becfec4..9a5a6f0e8b17 100644
--- a/include/linux/compiler_types.h
+++ b/include/linux/compiler_types.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __LINUX_COMPILER_TYPES_H
 #define __LINUX_COMPILER_TYPES_H
 
diff --git a/include/linux/const.h b/include/linux/const.h
index c872bfd25e13..07f886d27155 100644
--- a/include/linux/const.h
+++ b/include/linux/const.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /* const.h: Macros for dealing with constants.  */
 
 #ifndef _LINUX_CONST_H
diff --git a/include/linux/crc8.h b/include/linux/crc8.h
index 13c8dabb0441..8fcd6d1324a2 100644
--- a/include/linux/crc8.h
+++ b/include/linux/crc8.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /*
  * Copyright (c) 2011 Broadcom Corporation
  *
diff --git a/include/linux/ctype.h b/include/linux/ctype.h
index 633c3862d843..ab9bf910d84d 100644
--- a/include/linux/ctype.h
+++ b/include/linux/ctype.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _LINUX_CTYPE_H
 #define _LINUX_CTYPE_H
 
diff --git a/include/linux/dcache.h b/include/linux/dcache.h
index a9619422013e..ed7e5c2cbcff 100644
--- a/include/linux/dcache.h
+++ b/include/linux/dcache.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __LINUX_DCACHE_H
 #define __LINUX_DCACHE_H
 
diff --git a/include/linux/decompress/mm.h b/include/linux/decompress/mm.h
index 81676ae9067d..ac0702dfb111 100644
--- a/include/linux/decompress/mm.h
+++ b/include/linux/decompress/mm.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /*
  * linux/compr_mm.h
  *
diff --git a/include/linux/decompress/unlz4.h b/include/linux/decompress/unlz4.h
index 7aaafc2b1c62..0ad189d2d9ef 100644
--- a/include/linux/decompress/unlz4.h
+++ b/include/linux/decompress/unlz4.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef DECOMPRESS_UNLZ4_H
 #define DECOMPRESS_UNLZ4_H
 
diff --git a/include/linux/err.h b/include/linux/err.h
index ed563f2c4a71..69efc7c4ac27 100644
--- a/include/linux/err.h
+++ b/include/linux/err.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _LINUX_ERR_H
 #define _LINUX_ERR_H
 
diff --git a/include/linux/ethtool.h b/include/linux/ethtool.h
index 324e40cdeb5f..f47e17ea31bb 100644
--- a/include/linux/ethtool.h
+++ b/include/linux/ethtool.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /*
  * ethtool.h: Defines for Linux ethtool.
  *
diff --git a/include/linux/fs.h b/include/linux/fs.h
index a72bc066c30d..fc1357137ade 100644
--- a/include/linux/fs.h
+++ b/include/linux/fs.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _LINUX_FS_H
 #define _LINUX_FS_H
 
diff --git a/include/linux/gcd.h b/include/linux/gcd.h
index 0ac262162d1f..affb402f22cd 100644
--- a/include/linux/gcd.h
+++ b/include/linux/gcd.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _GCD_H
 #define _GCD_H
 
diff --git a/include/linux/hash.h b/include/linux/hash.h
index ad6fa21d977b..5e62f1bd8c85 100644
--- a/include/linux/hash.h
+++ b/include/linux/hash.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _LINUX_HASH_H
 #define _LINUX_HASH_H
 /* Fast hashing routine for ints,  longs and pointers.
diff --git a/include/linux/ioport.h b/include/linux/ioport.h
index 295ab4a49dff..ee9587ba0feb 100644
--- a/include/linux/ioport.h
+++ b/include/linux/ioport.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /*
  * ioport.h	Definitions of routines for detecting, reserving and
  *		allocating system resources.
diff --git a/include/linux/jffs2.h b/include/linux/jffs2.h
index ed2ebcfc42a1..e34465263cf8 100644
--- a/include/linux/jffs2.h
+++ b/include/linux/jffs2.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /*
  * JFFS2 -- Journalling Flash File System, Version 2.
  *
diff --git a/include/linux/kbuild.h b/include/linux/kbuild.h
index 359d4a8682a1..de0f9bdb952f 100644
--- a/include/linux/kbuild.h
+++ b/include/linux/kbuild.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __LINUX_KBUILD_H
 #define __LINUX_KBUILD_H
 
diff --git a/include/linux/linkage.h b/include/linux/linkage.h
index 9fd1f859021b..efb2d6fa407b 100644
--- a/include/linux/linkage.h
+++ b/include/linux/linkage.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _LINUX_LINKAGE_H
 #define _LINUX_LINKAGE_H
 
diff --git a/include/linux/list_sort.h b/include/linux/list_sort.h
index 1a2df2efb771..9260df2fb1ac 100644
--- a/include/linux/list_sort.h
+++ b/include/linux/list_sort.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _LINUX_LIST_SORT_H
 #define _LINUX_LIST_SORT_H
 
diff --git a/include/linux/magic.h b/include/linux/magic.h
index 0de181ad73d5..2af96650750a 100644
--- a/include/linux/magic.h
+++ b/include/linux/magic.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __LINUX_MAGIC_H__
 #define __LINUX_MAGIC_H__
 
diff --git a/include/linux/mdio-bitbang.h b/include/linux/mdio-bitbang.h
index 76f52bbbb2f4..a6e60578865f 100644
--- a/include/linux/mdio-bitbang.h
+++ b/include/linux/mdio-bitbang.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __LINUX_MDIO_BITBANG_H
 #define __LINUX_MDIO_BITBANG_H
 
diff --git a/include/linux/mii.h b/include/linux/mii.h
index 5bac6c229a24..257dfd179060 100644
--- a/include/linux/mii.h
+++ b/include/linux/mii.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /*
  * linux/mii.h: definitions for MII-compatible transceivers
  * Originally drivers/net/sunhme.h.
diff --git a/include/linux/mod_devicetable.h b/include/linux/mod_devicetable.h
index 2c04454260a9..dac3c6e8a57c 100644
--- a/include/linux/mod_devicetable.h
+++ b/include/linux/mod_devicetable.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /*
  * Device tables which are exported to userspace via
  * scripts/mod/file2alias.c.  You must keep that file in sync with this
diff --git a/include/linux/mount.h b/include/linux/mount.h
index 9557365fb51f..4abeda6b7942 100644
--- a/include/linux/mount.h
+++ b/include/linux/mount.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /*
  *
  * Definitions for mount interface. This describes the in the kernel build
diff --git a/include/linux/mtd/mtd-abi.h b/include/linux/mtd/mtd-abi.h
index b7a8955880fe..b74f4b834897 100644
--- a/include/linux/mtd/mtd-abi.h
+++ b/include/linux/mtd/mtd-abi.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /*
  * $Id: mtd-abi.h,v 1.13 2005/11/07 11:14:56 gleixner Exp $
  *
diff --git a/include/linux/mtd/nftl.h b/include/linux/mtd/nftl.h
index 438130625df9..36b80dea7792 100644
--- a/include/linux/mtd/nftl.h
+++ b/include/linux/mtd/nftl.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 
 /* Defines for NAND Flash Translation Layer  */
 /* (c) 1999 Machine Vision Holdings, Inc.    */
diff --git a/include/linux/mutex.h b/include/linux/mutex.h
index de698dbc4fe2..41eda79b763a 100644
--- a/include/linux/mutex.h
+++ b/include/linux/mutex.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /*
  * Mutexes: blocking mutual exclusion locks
  *
diff --git a/include/linux/pagemap.h b/include/linux/pagemap.h
index 345bd402b775..20c38a0b8912 100644
--- a/include/linux/pagemap.h
+++ b/include/linux/pagemap.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _LINUX_PAGEMAP_H
 #define _LINUX_PAGEMAP_H
 
diff --git a/include/linux/path.h b/include/linux/path.h
index cbebdc5c9a60..3891c784d2f0 100644
--- a/include/linux/path.h
+++ b/include/linux/path.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _LINUX_PATH_H
 #define _LINUX_PATH_H
 
diff --git a/include/linux/pci.h b/include/linux/pci.h
index 486d4251d42a..269e7b354c2e 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /*
  *	pci.h
  *
diff --git a/include/linux/pci_regs.h b/include/linux/pci_regs.h
index efe3443572ba..2c335f583588 100644
--- a/include/linux/pci_regs.h
+++ b/include/linux/pci_regs.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /*
  *	pci_regs.h
  *
diff --git a/include/linux/posix_types.h b/include/linux/posix_types.h
index bd37e1faf459..4a0b852b27a6 100644
--- a/include/linux/posix_types.h
+++ b/include/linux/posix_types.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _LINUX_POSIX_TYPES_H
 #define _LINUX_POSIX_TYPES_H
 
diff --git a/include/linux/reset-controller.h b/include/linux/reset-controller.h
index aff03a9c62dd..8ace8cd41794 100644
--- a/include/linux/reset-controller.h
+++ b/include/linux/reset-controller.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _LINUX_RESET_CONTROLLER_H_
 #define _LINUX_RESET_CONTROLLER_H_
 
diff --git a/include/linux/reset.h b/include/linux/reset.h
index 818b06412f8c..d25464d4bd60 100644
--- a/include/linux/reset.h
+++ b/include/linux/reset.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _LINUX_RESET_H_
 #define _LINUX_RESET_H_
 
diff --git a/include/linux/rtc.h b/include/linux/rtc.h
index 2dacb14239f1..632bc9b7bc70 100644
--- a/include/linux/rtc.h
+++ b/include/linux/rtc.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /*
  * Generic RTC interface.
  * This version contains the part of the user interface to the Real Time Clock
diff --git a/include/linux/rwsem.h b/include/linux/rwsem.h
index 5259957ed266..4ed693dc2c37 100644
--- a/include/linux/rwsem.h
+++ b/include/linux/rwsem.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /* rwsem.h: R/W semaphores, public interface
  *
  * Written by David Howells (dhowells@redhat.com).
diff --git a/include/linux/sched.h b/include/linux/sched.h
index 3375a09f2da0..18b90ad8844b 100644
--- a/include/linux/sched.h
+++ b/include/linux/sched.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _LINUX_SCHED_H
 #define _LINUX_SCHED_H
 
diff --git a/include/linux/slab.h b/include/linux/slab.h
index 806d5bfb21d2..348770a3a28c 100644
--- a/include/linux/slab.h
+++ b/include/linux/slab.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _LINUX_SLAB_H
 #define _LINUX_SLAB_H
 
diff --git a/include/linux/smscphy.h b/include/linux/smscphy.h
index ce718cbce435..45e1192384c3 100644
--- a/include/linux/smscphy.h
+++ b/include/linux/smscphy.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __LINUX_SMSCPHY_H__
 #define __LINUX_SMSCPHY_H__
 
diff --git a/include/linux/spinlock.h b/include/linux/spinlock.h
index 7d011785eda7..12af3dab231b 100644
--- a/include/linux/spinlock.h
+++ b/include/linux/spinlock.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __LINUX_SPINLOCK_H
 #define __LINUX_SPINLOCK_H
 
diff --git a/include/linux/stat.h b/include/linux/stat.h
index f5043d8bcea7..2bdf3ec9c96c 100644
--- a/include/linux/stat.h
+++ b/include/linux/stat.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _LINUX_STAT_H
 #define _LINUX_STAT_H
 
diff --git a/include/linux/stddef.h b/include/linux/stddef.h
index 680d0c76627d..5429a7b58295 100644
--- a/include/linux/stddef.h
+++ b/include/linux/stddef.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _LINUX_STDDEF_H
 #define _LINUX_STDDEF_H
 
diff --git a/include/linux/string.h b/include/linux/string.h
index 47a27a391f0b..3da174116a92 100644
--- a/include/linux/string.h
+++ b/include/linux/string.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _LINUX_STRING_H_
 #define _LINUX_STRING_H_
 
diff --git a/include/linux/stringify.h b/include/linux/stringify.h
index 841cec8ed525..55f6d04d48b1 100644
--- a/include/linux/stringify.h
+++ b/include/linux/stringify.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __LINUX_STRINGIFY_H
 #define __LINUX_STRINGIFY_H
 
diff --git a/include/linux/swab.h b/include/linux/swab.h
index ea0c02fd5163..243315184e9c 100644
--- a/include/linux/swab.h
+++ b/include/linux/swab.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _LINUX_SWAB_H
 #define _LINUX_SWAB_H
 
diff --git a/include/linux/time.h b/include/linux/time.h
index 7903139a65b2..ebb7cb82ee5d 100644
--- a/include/linux/time.h
+++ b/include/linux/time.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _LINUX_TIME_H
 #define _LINUX_TIME_H
 
diff --git a/include/linux/types.h b/include/linux/types.h
index dfef336c198b..5872bd8e381a 100644
--- a/include/linux/types.h
+++ b/include/linux/types.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _LINUX_TYPES_H
 #define _LINUX_TYPES_H
 #ifndef __ASSEMBLY__
diff --git a/include/linux/unaligned/access_ok.h b/include/linux/unaligned/access_ok.h
index 99c1b4d20b0f..7039ec8ed0a4 100644
--- a/include/linux/unaligned/access_ok.h
+++ b/include/linux/unaligned/access_ok.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _LINUX_UNALIGNED_ACCESS_OK_H
 #define _LINUX_UNALIGNED_ACCESS_OK_H
 
diff --git a/include/linux/unaligned/be_byteshift.h b/include/linux/unaligned/be_byteshift.h
index 9356b24223ac..632a7308b570 100644
--- a/include/linux/unaligned/be_byteshift.h
+++ b/include/linux/unaligned/be_byteshift.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _LINUX_UNALIGNED_BE_BYTESHIFT_H
 #define _LINUX_UNALIGNED_BE_BYTESHIFT_H
 
diff --git a/include/linux/unaligned/be_memmove.h b/include/linux/unaligned/be_memmove.h
index c2a76c5c9ed0..0723c286fc23 100644
--- a/include/linux/unaligned/be_memmove.h
+++ b/include/linux/unaligned/be_memmove.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _LINUX_UNALIGNED_BE_MEMMOVE_H
 #define _LINUX_UNALIGNED_BE_MEMMOVE_H
 
diff --git a/include/linux/unaligned/be_struct.h b/include/linux/unaligned/be_struct.h
index 132415836c50..3cc8fcd68dd0 100644
--- a/include/linux/unaligned/be_struct.h
+++ b/include/linux/unaligned/be_struct.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _LINUX_UNALIGNED_BE_STRUCT_H
 #define _LINUX_UNALIGNED_BE_STRUCT_H
 
diff --git a/include/linux/unaligned/generic.h b/include/linux/unaligned/generic.h
index 43d5f2af2480..298e977fb7a7 100644
--- a/include/linux/unaligned/generic.h
+++ b/include/linux/unaligned/generic.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _LINUX_UNALIGNED_GENERIC_H
 #define _LINUX_UNALIGNED_GENERIC_H
 
diff --git a/include/linux/unaligned/le_byteshift.h b/include/linux/unaligned/le_byteshift.h
index be376fb79b64..aa425707f865 100644
--- a/include/linux/unaligned/le_byteshift.h
+++ b/include/linux/unaligned/le_byteshift.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _LINUX_UNALIGNED_LE_BYTESHIFT_H
 #define _LINUX_UNALIGNED_LE_BYTESHIFT_H
 
diff --git a/include/linux/unaligned/le_memmove.h b/include/linux/unaligned/le_memmove.h
index 269849bee4ec..e21fccc9b96d 100644
--- a/include/linux/unaligned/le_memmove.h
+++ b/include/linux/unaligned/le_memmove.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _LINUX_UNALIGNED_LE_MEMMOVE_H
 #define _LINUX_UNALIGNED_LE_MEMMOVE_H
 
diff --git a/include/linux/unaligned/le_struct.h b/include/linux/unaligned/le_struct.h
index 088c4572faa8..4bbeba57784c 100644
--- a/include/linux/unaligned/le_struct.h
+++ b/include/linux/unaligned/le_struct.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _LINUX_UNALIGNED_LE_STRUCT_H
 #define _LINUX_UNALIGNED_LE_STRUCT_H
 
diff --git a/include/linux/unaligned/memmove.h b/include/linux/unaligned/memmove.h
index eeb5a779a4fd..c44dff67ab26 100644
--- a/include/linux/unaligned/memmove.h
+++ b/include/linux/unaligned/memmove.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _LINUX_UNALIGNED_MEMMOVE_H
 #define _LINUX_UNALIGNED_MEMMOVE_H
 
diff --git a/include/linux/unaligned/packed_struct.h b/include/linux/unaligned/packed_struct.h
index 2498bb9fe002..7caf433fae99 100644
--- a/include/linux/unaligned/packed_struct.h
+++ b/include/linux/unaligned/packed_struct.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _LINUX_UNALIGNED_PACKED_STRUCT_H
 #define _LINUX_UNALIGNED_PACKED_STRUCT_H
 
diff --git a/include/linux/wait.h b/include/linux/wait.h
index e2df8878ed78..e4b0e2a49207 100644
--- a/include/linux/wait.h
+++ b/include/linux/wait.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _LINUX_WAIT_H
 #define _LINUX_WAIT_H
 /*
diff --git a/include/linux/xz.h b/include/linux/xz.h
index d1afab056242..77e80ce4b1bb 100644
--- a/include/linux/xz.h
+++ b/include/linux/xz.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /*
  * XZ decompressor
  *
diff --git a/include/linux/zutil.h b/include/linux/zutil.h
index 6adfa9a6ffe9..b10b50d0970d 100644
--- a/include/linux/zutil.h
+++ b/include/linux/zutil.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /* zutil.h -- internal interface and configuration of the compression library
  * Copyright (C) 1995-1998 Jean-loup Gailly.
  * For conditions of distribution and use, see copyright notice in zlib.h
diff --git a/include/machine_id.h b/include/machine_id.h
index 31d5e0bb2851..e30bbada1acd 100644
--- a/include/machine_id.h
+++ b/include/machine_id.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACHINE_ID_H__
 #define __MACHINE_ID_H__
 
diff --git a/include/mfd/lp3972.h b/include/mfd/lp3972.h
index edb580111893..40ab98665796 100644
--- a/include/mfd/lp3972.h
+++ b/include/mfd/lp3972.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __ASM_ARCH_LP3972_H
 #define __ASM_ARCH_LP3972_H
 
diff --git a/include/mfd/pfuze.h b/include/mfd/pfuze.h
index 8e021680ef64..4fb3863a723e 100644
--- a/include/mfd/pfuze.h
+++ b/include/mfd/pfuze.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __INCLUDE_PFUZE_H
 #define __INCLUDE_PFUZE_H
 
diff --git a/include/mtd/mtd-peb.h b/include/mtd/mtd-peb.h
index 311f25c3df44..cfcc0be611b5 100644
--- a/include/mtd/mtd-peb.h
+++ b/include/mtd/mtd-peb.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __LINUX_MTD_MTDPEB_H
 #define __LINUX_MTD_MTDPEB_H
 
diff --git a/include/platform_data/atmel-mci.h b/include/platform_data/atmel-mci.h
index d99ee3d1382b..53c2e4dfa5f9 100644
--- a/include/platform_data/atmel-mci.h
+++ b/include/platform_data/atmel-mci.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef PLATFORM_DATA_ATMEL_MCI_H
 #define PLATFORM_DATA_ATMEL_MCI_H
 
diff --git a/include/platform_data/cadence_qspi.h b/include/platform_data/cadence_qspi.h
index ad1a680c9f95..e1095cf6b808 100644
--- a/include/platform_data/cadence_qspi.h
+++ b/include/platform_data/cadence_qspi.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __INCLUDE_PLATFORM_DATA_CADENCE_QSPI_H
 #define __INCLUDE_PLATFORM_DATA_CADENCE_QSPI_H
 
diff --git a/include/platform_data/dw_mmc.h b/include/platform_data/dw_mmc.h
index 4325a4f483d7..6c648d7073b3 100644
--- a/include/platform_data/dw_mmc.h
+++ b/include/platform_data/dw_mmc.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __INCLUDE_PLATFORM_DATA_DW_MMC_H
 #define __INCLUDE_PLATFORM_DATA_DW_MMC_H
 
diff --git a/include/platform_data/eth-designware.h b/include/platform_data/eth-designware.h
index 7a7a26abfde1..df00c5e64f6d 100644
--- a/include/platform_data/eth-designware.h
+++ b/include/platform_data/eth-designware.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __DWC_UNIMAC_H
 #define __DWC_UNIMAC_H
 
diff --git a/include/platform_data/eth-dm9000.h b/include/platform_data/eth-dm9000.h
index a9a4635d2aa8..241552cee266 100644
--- a/include/platform_data/eth-dm9000.h
+++ b/include/platform_data/eth-dm9000.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 
 #ifndef __DM9000_H__
 #define __DM9000_H__
diff --git a/include/platform_data/pca953x.h b/include/platform_data/pca953x.h
index cfd253ebceda..de71c864816c 100644
--- a/include/platform_data/pca953x.h
+++ b/include/platform_data/pca953x.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _LINUX_PCA953X_H
 #define _LINUX_PCA953X_H
 
diff --git a/include/pm_domain.h b/include/pm_domain.h
index 6d59587ece44..48fd170007fd 100644
--- a/include/pm_domain.h
+++ b/include/pm_domain.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _PM_DOMAIN_H
 #define _PM_DOMAIN_H
 
@@ -79,4 +81,4 @@ of_genpd_add_provider_simple(struct device_node *np,
 
 #endif
 
-#endif
\ No newline at end of file
+#endif
diff --git a/include/serial/cadence.h b/include/serial/cadence.h
index f08b5b0cba4a..9105883dd641 100644
--- a/include/serial/cadence.h
+++ b/include/serial/cadence.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __CADENCE_UART_H__
 #define __CADENCE_UART_H__
 
diff --git a/include/serial/imx-uart.h b/include/serial/imx-uart.h
index c0a03ac05401..516f318b68c9 100644
--- a/include/serial/imx-uart.h
+++ b/include/serial/imx-uart.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __IMX_UART_H__
 #define __IMX_UART_H__
 
diff --git a/include/slice.h b/include/slice.h
index 6c4688e308fa..800c5b2de08c 100644
--- a/include/slice.h
+++ b/include/slice.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __SLICE_H
 #define __SLICE_H
 
diff --git a/include/soc/fsl/fsl_udc.h b/include/soc/fsl/fsl_udc.h
index 0b409a9f6be8..9fb6da58a146 100644
--- a/include/soc/fsl/fsl_udc.h
+++ b/include/soc/fsl/fsl_udc.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __FSL_UDC_H
 #define __FSL_UDC_H
 
diff --git a/include/soc/imx/imx-nand-bcb.h b/include/soc/imx/imx-nand-bcb.h
index b60205bd59ee..6c42d804289c 100644
--- a/include/soc/imx/imx-nand-bcb.h
+++ b/include/soc/imx/imx-nand-bcb.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_IMX_NAND_BCB_H
 #define __MACH_IMX_NAND_BCB_H
 
diff --git a/include/soc/imx8m/clk-early.h b/include/soc/imx8m/clk-early.h
index 1e1ca5954336..c2034e54f070 100644
--- a/include/soc/imx8m/clk-early.h
+++ b/include/soc/imx8m/clk-early.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __SOC_IMX8M_CLK_EARLY_H
 #define __SOC_IMX8M_CLK_EARLY_H
 
diff --git a/include/sys/ioctl.h b/include/sys/ioctl.h
index 6d6d3f5c004b..5a949f1f3c0c 100644
--- a/include/sys/ioctl.h
+++ b/include/sys/ioctl.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __SYS_IOCTL_H
 #define __SYS_IOCTL_H
 
diff --git a/include/sys/mount.h b/include/sys/mount.h
index 978f3406e80a..368e54a343c7 100644
--- a/include/sys/mount.h
+++ b/include/sys/mount.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __SYS_MOUNT_H
 #define __SYS_MOUNT_H
 
diff --git a/include/sys/stat.h b/include/sys/stat.h
index 037e5f136d12..0dd43d1f02c8 100644
--- a/include/sys/stat.h
+++ b/include/sys/stat.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __STAT_H
 #define __STAT_H
 
diff --git a/include/usb/cdc.h b/include/usb/cdc.h
index c24124a42ce5..e29429d783ba 100644
--- a/include/usb/cdc.h
+++ b/include/usb/cdc.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /*
  * USB Communications Device Class (CDC) definitions
  *
diff --git a/include/usb/ch11.h b/include/usb/ch11.h
index 93f891aea753..c712d80275e1 100644
--- a/include/usb/ch11.h
+++ b/include/usb/ch11.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /*
  * This file holds Hub protocol constants and data structures that are
  * defined in chapter 11 (Hub Specification) of the USB 2.0 specification.
diff --git a/include/usb/ch9.h b/include/usb/ch9.h
index 2e06dd89fd02..4c1e7653261c 100644
--- a/include/usb/ch9.h
+++ b/include/usb/ch9.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /*
  * This file holds USB constants and structures that are needed for
  * USB device APIs.  These are used by the USB device model, which is
diff --git a/include/usb/chipidea-imx.h b/include/usb/chipidea-imx.h
index dfd84a965033..772f48c631d9 100644
--- a/include/usb/chipidea-imx.h
+++ b/include/usb/chipidea-imx.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __USB_CHIPIDEA_IMX_H
 #define __USB_CHIPIDEA_IMX_H
 
diff --git a/include/usb/ehci.h b/include/usb/ehci.h
index 327500d49aed..d937146b4d23 100644
--- a/include/usb/ehci.h
+++ b/include/usb/ehci.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __USB_EHCI_H
 #define __USB_EHCI_H
 
diff --git a/include/usb/fastboot.h b/include/usb/fastboot.h
index a3609ba5dbe9..7dc445455a84 100644
--- a/include/usb/fastboot.h
+++ b/include/usb/fastboot.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _USB_FASTBOOT_H
 #define _USB_FASTBOOT_H
 
diff --git a/include/usb/fsl_usb2.h b/include/usb/fsl_usb2.h
index 39757f71ad60..01232da4f92f 100644
--- a/include/usb/fsl_usb2.h
+++ b/include/usb/fsl_usb2.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __USB_FSL_USB2_H
 #define __USB_FSL_USB2_H
 
diff --git a/include/usb/gadget-multi.h b/include/usb/gadget-multi.h
index 79b24ca4df72..2d8d7533a816 100644
--- a/include/usb/gadget-multi.h
+++ b/include/usb/gadget-multi.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __USB_GADGET_MULTI_H
 #define __USB_GADGET_MULTI_H
 
diff --git a/include/usb/musb.h b/include/usb/musb.h
index fef7dc5f2c8d..c21428dbf159 100644
--- a/include/usb/musb.h
+++ b/include/usb/musb.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /*
  * This is used to for host and peripheral modes of the driver for
  * Inventra (Multidrop) Highspeed Dual-Role Controllers:  (M)HDRC.
diff --git a/include/usb/phy.h b/include/usb/phy.h
index 057ad1cd9588..8f11e70dfd77 100644
--- a/include/usb/phy.h
+++ b/include/usb/phy.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 /* USB OTG (On The Go) defines */
 /*
  *
diff --git a/include/usb/ulpi.h b/include/usb/ulpi.h
index e45ea6e0f920..efbfc632083e 100644
--- a/include/usb/ulpi.h
+++ b/include/usb/ulpi.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __MACH_ULPI_H
 #define __MACH_ULPI_H
 
diff --git a/include/usb/usbserial.h b/include/usb/usbserial.h
index c537eba900fe..e1375c489a02 100644
--- a/include/usb/usbserial.h
+++ b/include/usb/usbserial.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef _USB_SERIAL_H
 #define _USB_SERIAL_H
 
diff --git a/include/video/backlight.h b/include/video/backlight.h
index afa384cc9adf..7810ec998ee6 100644
--- a/include/video/backlight.h
+++ b/include/video/backlight.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __VIDEO_BACKLIGHT_H
 #define __VIDEO_BACKLIGHT_H
 
diff --git a/include/video/fourcc.h b/include/video/fourcc.h
index 211aabb1f3d2..4db1d0d0018e 100644
--- a/include/video/fourcc.h
+++ b/include/video/fourcc.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __VIDEO_FOURCC_H
 #define __VIDEO_FOURCC_H
 
diff --git a/include/video/vpl.h b/include/video/vpl.h
index 6ae7b0f3e0e2..15711b47018b 100644
--- a/include/video/vpl.h
+++ b/include/video/vpl.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __VIDEO_VPL_H
 #define __VIDEO_VPL_H
 
diff --git a/include/work.h b/include/work.h
index 0785bb3a8818..e6de867f5321 100644
--- a/include/work.h
+++ b/include/work.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
 #ifndef __WORK_H
 #define __WORK_H
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

