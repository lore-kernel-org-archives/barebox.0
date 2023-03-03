Delivery-date: Fri, 03 Mar 2023 10:30:13 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1jw-007NzS-17
	for lore@lore.pengutronix.de; Fri, 03 Mar 2023 10:30:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1jt-00048p-G9
	for lore@pengutronix.de; Fri, 03 Mar 2023 10:30:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rwlXicasiF6K/zcoa+J8MsDkijg4MqtlDbk2HNk4gXs=; b=KAxArllzExAjMtwqIcJzU10bpD
	ekjTKwSmyLZzztLuVYZwMACtRzWJ4pMHOxEBy1LHWRam8jEV+EeF4p9lBXkgAMNk9A9PtDWzgLfx6
	My1IBy8lc0UHEQ6+vMlFFLnZYZ0dVtxfaVvrAvb09rJLrqEUmagpG3OwqkCbWJkOEwBLq9NkBvXJg
	DDQDPfQpo6yxLONQBcA2sSgn78N31e4/i8i7HY2xlLPr6eYIWvhHA1ZFSnQ+0BcoHY6HJ5E/7T8Gb
	QyZExfBvPAfTDOSDWKp27a6aO7vtYy0CKCBgsv+T42xR7UzfYV4b09XcNVEMGPuHYQVJeSyeHk6pq
	7O08o4Eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1iO-005jLh-8c; Fri, 03 Mar 2023 09:28:37 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1by-005eZi-Rp
	for barebox@bombadil.infradead.org; Fri, 03 Mar 2023 09:21:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=rwlXicasiF6K/zcoa+J8MsDkijg4MqtlDbk2HNk4gXs=; b=DCjrVT0HI+aEFXV0NoGCbWuN4C
	z7AtZOwVHp0QjULh6SZKtZ/laRZAyELKdhd8yy8BnmmQPL1U5dBRo4R0rFTAd1dMOCfIcuFB7Yyac
	2y4jyS/guP2v9CfOjJZVF+x1rcpIS5qny89b/upr7+aCWpMFs3j2L7Wq+m+nxtMGMhu61L0Jif3ca
	qsAmKHQh50Ho4AwDZaEceE/T/fxsfofBzWNqwfHllIrp2W7GhJNAdXI+nYHP/B8YJLLdeAmCmsa+5
	dvPKxN+XRGyjTiUM4e9oQzs1+Ny/Q70I2ZsJkj9e/jXU8mYHaQDU0p3sFtOrUmiHrcHmJItSE18xi
	1mIVbrVA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pY1bm-00FdKv-2s
	for barebox@lists.infradead.org;
	Fri, 03 Mar 2023 09:21:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bg-0000DJ-6i; Fri, 03 Mar 2023 10:21:40 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bf-001WiN-DG; Fri, 03 Mar 2023 10:21:39 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1ba-00F2g0-7w; Fri, 03 Mar 2023 10:21:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  3 Mar 2023 10:20:55 +0100
Message-Id: <20230303092131.3063587-15-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230303092131.3063587-1-s.hauer@pengutronix.de>
References: <20230303092131.3063587-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_092150_523378_5FBA9E48 
X-CRM114-Status: GOOD (  16.85  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 14/50] ARM: socfpga: Move mach header files to include/mach/socfpga
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Currently arch specific headers can be included with
longer possible as there won't be a single mach anymore.

Move all socfpga specific header files to include/mach/socfpga/ to
prepare for multi-arch support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/altera-socdk/board.c           |  2 +-
 .../altera-socdk/iocsr_config_cyclone5.c       |  2 +-
 arch/arm/boards/altera-socdk/lowlevel.c        |  2 +-
 arch/arm/boards/ebv-socrates/board.c           |  2 +-
 .../ebv-socrates/iocsr_config_cyclone5.c       |  2 +-
 arch/arm/boards/ebv-socrates/lowlevel.c        |  2 +-
 arch/arm/boards/enclustra-aa1/board.c          |  2 +-
 arch/arm/boards/enclustra-aa1/lowlevel.c       | 18 +++++++++---------
 .../enclustra-aa1/pinmux-config-arria10.c      |  2 +-
 .../boards/enclustra-aa1/pll-config-arria10.c  |  2 +-
 arch/arm/boards/reflex-achilles/board.c        |  2 +-
 arch/arm/boards/reflex-achilles/lowlevel.c     | 16 ++++++++--------
 .../reflex-achilles/pinmux-config-arria10.c    |  2 +-
 .../reflex-achilles/pll-config-arria10.c       |  2 +-
 arch/arm/boards/terasic-de0-nano-soc/board.c   |  2 +-
 .../iocsr_config_cyclone5.c                    |  2 +-
 .../arm/boards/terasic-de0-nano-soc/lowlevel.c |  2 +-
 arch/arm/boards/terasic-de10-nano/board.c      |  2 +-
 .../terasic-de10-nano/iocsr_config_cyclone5.c  |  2 +-
 arch/arm/boards/terasic-de10-nano/lowlevel.c   |  2 +-
 .../terasic-sockit/iocsr_config_cyclone5.c     |  2 +-
 arch/arm/boards/terasic-sockit/lowlevel.c      |  2 +-
 arch/arm/include/asm/debug_ll.h                |  2 ++
 arch/arm/mach-socfpga/arria10-bootsource.c     |  4 ++--
 arch/arm/mach-socfpga/arria10-clock-manager.c  |  6 +++---
 arch/arm/mach-socfpga/arria10-generic.c        |  8 ++++----
 arch/arm/mach-socfpga/arria10-init.c           | 12 ++++++------
 arch/arm/mach-socfpga/arria10-reset-manager.c  | 10 +++++-----
 arch/arm/mach-socfpga/arria10-sdram.c          |  8 ++++----
 arch/arm/mach-socfpga/arria10-xload-emmc.c     |  8 ++++----
 arch/arm/mach-socfpga/arria10-xload.c          | 12 ++++++------
 arch/arm/mach-socfpga/cpu_init.c               |  2 +-
 arch/arm/mach-socfpga/cyclone5-bootsource.c    |  6 +++---
 arch/arm/mach-socfpga/cyclone5-clock-manager.c |  6 +++---
 .../mach-socfpga/cyclone5-freeze-controller.c  |  4 ++--
 arch/arm/mach-socfpga/cyclone5-generic.c       | 10 +++++-----
 arch/arm/mach-socfpga/cyclone5-init.c          | 12 ++++++------
 arch/arm/mach-socfpga/cyclone5-reset-manager.c |  4 ++--
 arch/arm/mach-socfpga/cyclone5-scan-manager.c  |  4 ++--
 .../arm/mach-socfpga/cyclone5-system-manager.c |  4 ++--
 arch/arm/mach-socfpga/nic301.c                 |  4 ++--
 arch/arm/mach-socfpga/xload.c                  |  6 +++---
 drivers/clk/socfpga/clk-gate-a10.c             |  4 ++--
 drivers/firmware/socfpga.c                     |  8 ++++----
 .../mach/socfpga}/arria10-clock-manager.h      |  0
 .../mach/socfpga}/arria10-fpga.h               |  2 +-
 .../mach/socfpga}/arria10-pinmux.h             |  2 +-
 .../mach/socfpga}/arria10-regs.h               |  0
 .../mach/socfpga}/arria10-reset-manager.h      |  0
 .../mach/socfpga}/arria10-sdram.h              |  2 +-
 .../mach/socfpga}/arria10-system-manager.h     |  2 +-
 .../mach/socfpga}/arria10-xload.h              |  0
 .../mach/socfpga}/barebox-arm-head.h           |  0
 .../mach/socfpga}/cyclone5-clock-manager.h     |  0
 .../mach/socfpga}/cyclone5-freeze-controller.h |  2 +-
 .../mach/socfpga}/cyclone5-regs.h              |  0
 .../mach/socfpga}/cyclone5-reset-manager.h     |  0
 .../mach/socfpga}/cyclone5-scan-manager.h      |  2 +-
 .../mach/socfpga}/cyclone5-sdram-config.h      |  6 +++---
 .../mach/socfpga}/cyclone5-sdram.h             |  0
 .../mach/socfpga}/cyclone5-sequencer.c         |  2 +-
 .../mach/socfpga}/cyclone5-sequencer.h         |  0
 .../mach/socfpga}/cyclone5-system-manager.h    |  0
 .../mach => include/mach/socfpga}/debug_ll.h   |  0
 .../mach => include/mach/socfpga}/generic.h    |  0
 .../mach => include/mach/socfpga}/init.h       |  0
 .../mach => include/mach/socfpga}/lowlevel.h   |  8 ++++----
 .../mach => include/mach/socfpga}/nic301.h     |  0
 .../mach => include/mach/socfpga}/pll_config.h |  2 +-
 .../mach => include/mach/socfpga}/sdram_io.h   |  2 +-
 .../mach => include/mach/socfpga}/system.h     |  0
 .../mach => include/mach/socfpga}/tclrpt.h     |  0
 72 files changed, 126 insertions(+), 124 deletions(-)
 rename {arch/arm/mach-socfpga/include/mach => include/mach/socfpga}/arria10-clock-manager.h (100%)
 rename {arch/arm/mach-socfpga/include/mach => include/mach/socfpga}/arria10-fpga.h (98%)
 rename {arch/arm/mach-socfpga/include/mach => include/mach/socfpga}/arria10-pinmux.h (99%)
 rename {arch/arm/mach-socfpga/include/mach => include/mach/socfpga}/arria10-regs.h (100%)
 rename {arch/arm/mach-socfpga/include/mach => include/mach/socfpga}/arria10-reset-manager.h (100%)
 rename {arch/arm/mach-socfpga/include/mach => include/mach/socfpga}/arria10-sdram.h (99%)
 rename {arch/arm/mach-socfpga/include/mach => include/mach/socfpga}/arria10-system-manager.h (99%)
 rename {arch/arm/mach-socfpga/include/mach => include/mach/socfpga}/arria10-xload.h (100%)
 rename {arch/arm/mach-socfpga/include/mach => include/mach/socfpga}/barebox-arm-head.h (100%)
 rename {arch/arm/mach-socfpga/include/mach => include/mach/socfpga}/cyclone5-clock-manager.h (100%)
 rename {arch/arm/mach-socfpga/include/mach => include/mach/socfpga}/cyclone5-freeze-controller.h (98%)
 rename {arch/arm/mach-socfpga/include/mach => include/mach/socfpga}/cyclone5-regs.h (100%)
 rename {arch/arm/mach-socfpga/include/mach => include/mach/socfpga}/cyclone5-reset-manager.h (100%)
 rename {arch/arm/mach-socfpga/include/mach => include/mach/socfpga}/cyclone5-scan-manager.h (99%)
 rename {arch/arm/mach-socfpga/include/mach => include/mach/socfpga}/cyclone5-sdram-config.h (98%)
 rename {arch/arm/mach-socfpga/include/mach => include/mach/socfpga}/cyclone5-sdram.h (100%)
 rename {arch/arm/mach-socfpga/include/mach => include/mach/socfpga}/cyclone5-sequencer.c (99%)
 rename {arch/arm/mach-socfpga/include/mach => include/mach/socfpga}/cyclone5-sequencer.h (100%)
 rename {arch/arm/mach-socfpga/include/mach => include/mach/socfpga}/cyclone5-system-manager.h (100%)
 rename {arch/arm/mach-socfpga/include/mach => include/mach/socfpga}/debug_ll.h (100%)
 rename {arch/arm/mach-socfpga/include/mach => include/mach/socfpga}/generic.h (100%)
 rename {arch/arm/mach-socfpga/include/mach => include/mach/socfpga}/init.h (100%)
 rename {arch/arm/mach-socfpga/include/mach => include/mach/socfpga}/lowlevel.h (91%)
 rename {arch/arm/mach-socfpga/include/mach => include/mach/socfpga}/nic301.h (100%)
 rename {arch/arm/mach-socfpga/include/mach => include/mach/socfpga}/pll_config.h (98%)
 rename {arch/arm/mach-socfpga/include/mach => include/mach/socfpga}/sdram_io.h (98%)
 rename {arch/arm/mach-socfpga/include/mach => include/mach/socfpga}/system.h (100%)
 rename {arch/arm/mach-socfpga/include/mach => include/mach/socfpga}/tclrpt.h (100%)

diff --git a/arch/arm/boards/altera-socdk/board.c b/arch/arm/boards/altera-socdk/board.c
index 1c91d2a10d..bf0a5664fe 100644
--- a/arch/arm/boards/altera-socdk/board.c
+++ b/arch/arm/boards/altera-socdk/board.c
@@ -10,7 +10,7 @@
 #include <linux/sizes.h>
 #include <fcntl.h>
 #include <fs.h>
-#include <mach/cyclone5-regs.h>
+#include <mach/socfpga/cyclone5-regs.h>
 
 static int ksz9021rn_phy_fixup(struct phy_device *dev)
 {
diff --git a/arch/arm/boards/altera-socdk/iocsr_config_cyclone5.c b/arch/arm/boards/altera-socdk/iocsr_config_cyclone5.c
index 9777d15dfe..982bef52bf 100644
--- a/arch/arm/boards/altera-socdk/iocsr_config_cyclone5.c
+++ b/arch/arm/boards/altera-socdk/iocsr_config_cyclone5.c
@@ -27,7 +27,7 @@
  * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  */
 
-#include <mach/cyclone5-scan-manager.h>
+#include <mach/socfpga/cyclone5-scan-manager.h>
 
 static const unsigned long iocsr_scan_chain0_table[((CONFIG_HPS_IOCSR_SCANCHAIN0_LENGTH / 32) + 1)]
     = {
diff --git a/arch/arm/boards/altera-socdk/lowlevel.c b/arch/arm/boards/altera-socdk/lowlevel.c
index 537453b676..1e62ab70e7 100644
--- a/arch/arm/boards/altera-socdk/lowlevel.c
+++ b/arch/arm/boards/altera-socdk/lowlevel.c
@@ -9,7 +9,7 @@
 #include "sequencer_auto_ac_init.c"
 #include "iocsr_config_cyclone5.c"
 
-#include <mach/lowlevel.h>
+#include <mach/socfpga/lowlevel.h>
 
 SOCFPGA_C5_ENTRY(start_socfpga_socdk, socfpga_cyclone5_socdk, SZ_1G);
 SOCFPGA_C5_XLOAD_ENTRY(start_socfpga_socdk_xload, SZ_1G);
diff --git a/arch/arm/boards/ebv-socrates/board.c b/arch/arm/boards/ebv-socrates/board.c
index c2a8edac98..79085a5bb5 100644
--- a/arch/arm/boards/ebv-socrates/board.c
+++ b/arch/arm/boards/ebv-socrates/board.c
@@ -13,7 +13,7 @@
 #include <linux/sizes.h>
 #include <fcntl.h>
 #include <fs.h>
-#include <mach/cyclone5-regs.h>
+#include <mach/socfpga/cyclone5-regs.h>
 
 static int phy_fixup(struct phy_device *dev)
 {
diff --git a/arch/arm/boards/ebv-socrates/iocsr_config_cyclone5.c b/arch/arm/boards/ebv-socrates/iocsr_config_cyclone5.c
index 9a814cba79..a769ff5366 100644
--- a/arch/arm/boards/ebv-socrates/iocsr_config_cyclone5.c
+++ b/arch/arm/boards/ebv-socrates/iocsr_config_cyclone5.c
@@ -27,7 +27,7 @@
  * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  */
 
-#include <mach/cyclone5-scan-manager.h>
+#include <mach/socfpga/cyclone5-scan-manager.h>
 
 static const unsigned long iocsr_scan_chain0_table[((CONFIG_HPS_IOCSR_SCANCHAIN0_LENGTH / 32) + 1)] = {
 	0x00000000,
diff --git a/arch/arm/boards/ebv-socrates/lowlevel.c b/arch/arm/boards/ebv-socrates/lowlevel.c
index 1f5b835df2..56b0f43a33 100644
--- a/arch/arm/boards/ebv-socrates/lowlevel.c
+++ b/arch/arm/boards/ebv-socrates/lowlevel.c
@@ -9,7 +9,7 @@
 #include "sequencer_auto_ac_init.c"
 #include "iocsr_config_cyclone5.c"
 
-#include <mach/lowlevel.h>
+#include <mach/socfpga/lowlevel.h>
 
 static inline void ledon(void)
 {
diff --git a/arch/arm/boards/enclustra-aa1/board.c b/arch/arm/boards/enclustra-aa1/board.c
index 6261eb4b83..de886f21aa 100644
--- a/arch/arm/boards/enclustra-aa1/board.c
+++ b/arch/arm/boards/enclustra-aa1/board.c
@@ -4,7 +4,7 @@
 #include <init.h>
 #include <io.h>
 #include <bbu.h>
-#include <mach/arria10-system-manager.h>
+#include <mach/socfpga/arria10-system-manager.h>
 
 static int aa1_init(void)
 {
diff --git a/arch/arm/boards/enclustra-aa1/lowlevel.c b/arch/arm/boards/enclustra-aa1/lowlevel.c
index 901adc4640..ba4d562e5f 100644
--- a/arch/arm/boards/enclustra-aa1/lowlevel.c
+++ b/arch/arm/boards/enclustra-aa1/lowlevel.c
@@ -10,17 +10,17 @@
 #include <asm/unaligned.h>
 #include <debug_ll.h>
 #include <pbl.h>
-#include <mach/arria10-sdram.h>
-#include <mach/arria10-regs.h>
-#include <mach/arria10-reset-manager.h>
-#include <mach/arria10-clock-manager.h>
-#include <mach/arria10-pinmux.h>
-#include <mach/arria10-fpga.h>
-#include <mach/init.h>
+#include <mach/socfpga/arria10-sdram.h>
+#include <mach/socfpga/arria10-regs.h>
+#include <mach/socfpga/arria10-reset-manager.h>
+#include <mach/socfpga/arria10-clock-manager.h>
+#include <mach/socfpga/arria10-pinmux.h>
+#include <mach/socfpga/arria10-fpga.h>
+#include <mach/socfpga/init.h>
 #include "pll-config-arria10.c"
 #include "pinmux-config-arria10.c"
-#include <mach/generic.h>
-#include <mach/init.h>
+#include <mach/socfpga/generic.h>
+#include <mach/socfpga/init.h>
 
 #define BAREBOX_PART 0
 // the bitstream is located in the second partition in the partition table
diff --git a/arch/arm/boards/enclustra-aa1/pinmux-config-arria10.c b/arch/arm/boards/enclustra-aa1/pinmux-config-arria10.c
index 3e250dbf6f..fea88e3336 100644
--- a/arch/arm/boards/enclustra-aa1/pinmux-config-arria10.c
+++ b/arch/arm/boards/enclustra-aa1/pinmux-config-arria10.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
-#include <mach/arria10-pinmux.h>
+#include <mach/socfpga/arria10-pinmux.h>
 
 static uint32_t pinmux[] = {
 [arria10_pinmux_shared_io_q3_7]	   = 0,
diff --git a/arch/arm/boards/enclustra-aa1/pll-config-arria10.c b/arch/arm/boards/enclustra-aa1/pll-config-arria10.c
index 41aad354bc..8178550d7d 100644
--- a/arch/arm/boards/enclustra-aa1/pll-config-arria10.c
+++ b/arch/arm/boards/enclustra-aa1/pll-config-arria10.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
-#include <mach/arria10-clock-manager.h>
+#include <mach/socfpga/arria10-clock-manager.h>
 
 static struct arria10_mainpll_cfg mainpll_cfg = {
 	.cntr15clk_cnt	   = 900,
diff --git a/arch/arm/boards/reflex-achilles/board.c b/arch/arm/boards/reflex-achilles/board.c
index 0fbb967ff9..96da18f22e 100644
--- a/arch/arm/boards/reflex-achilles/board.c
+++ b/arch/arm/boards/reflex-achilles/board.c
@@ -4,7 +4,7 @@
 #include <init.h>
 #include <io.h>
 #include <bbu.h>
-#include <mach/arria10-system-manager.h>
+#include <mach/socfpga/arria10-system-manager.h>
 
 static int achilles_init(void)
 {
diff --git a/arch/arm/boards/reflex-achilles/lowlevel.c b/arch/arm/boards/reflex-achilles/lowlevel.c
index 511b41fd01..12ead6d6dd 100644
--- a/arch/arm/boards/reflex-achilles/lowlevel.c
+++ b/arch/arm/boards/reflex-achilles/lowlevel.c
@@ -10,16 +10,16 @@
 #include <asm/unaligned.h>
 #include <debug_ll.h>
 #include <pbl.h>
-#include <mach/arria10-sdram.h>
-#include <mach/arria10-regs.h>
-#include <mach/arria10-reset-manager.h>
-#include <mach/arria10-clock-manager.h>
-#include <mach/arria10-pinmux.h>
-#include <mach/arria10-fpga.h>
-#include <mach/init.h>
+#include <mach/socfpga/arria10-sdram.h>
+#include <mach/socfpga/arria10-regs.h>
+#include <mach/socfpga/arria10-reset-manager.h>
+#include <mach/socfpga/arria10-clock-manager.h>
+#include <mach/socfpga/arria10-pinmux.h>
+#include <mach/socfpga/arria10-fpga.h>
+#include <mach/socfpga/init.h>
 #include "pll-config-arria10.c"
 #include "pinmux-config-arria10.c"
-#include <mach/generic.h>
+#include <mach/socfpga/generic.h>
 
 #define BAREBOX_PART 0
 #define BITSTREAM_PART 1
diff --git a/arch/arm/boards/reflex-achilles/pinmux-config-arria10.c b/arch/arm/boards/reflex-achilles/pinmux-config-arria10.c
index 146bb5405d..aa65770fdd 100644
--- a/arch/arm/boards/reflex-achilles/pinmux-config-arria10.c
+++ b/arch/arm/boards/reflex-achilles/pinmux-config-arria10.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
-#include <mach/arria10-pinmux.h>
+#include <mach/socfpga/arria10-pinmux.h>
 
 static uint32_t pinmux[] = {
 [arria10_pinmux_shared_io_q4_12] = 8,
diff --git a/arch/arm/boards/reflex-achilles/pll-config-arria10.c b/arch/arm/boards/reflex-achilles/pll-config-arria10.c
index 27dbe01b58..35d475bcfb 100644
--- a/arch/arm/boards/reflex-achilles/pll-config-arria10.c
+++ b/arch/arm/boards/reflex-achilles/pll-config-arria10.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
-#include <mach/arria10-clock-manager.h>
+#include <mach/socfpga/arria10-clock-manager.h>
 
 static struct arria10_mainpll_cfg mainpll_cfg = {
 	.cntr15clk_cnt = 900,
diff --git a/arch/arm/boards/terasic-de0-nano-soc/board.c b/arch/arm/boards/terasic-de0-nano-soc/board.c
index 4019dae6a4..19f74b784c 100644
--- a/arch/arm/boards/terasic-de0-nano-soc/board.c
+++ b/arch/arm/boards/terasic-de0-nano-soc/board.c
@@ -10,7 +10,7 @@
 #include <linux/sizes.h>
 #include <fcntl.h>
 #include <fs.h>
-#include <mach/cyclone5-regs.h>
+#include <mach/socfpga/cyclone5-regs.h>
 
 static int phy_fixup(struct phy_device *dev)
 {
diff --git a/arch/arm/boards/terasic-de0-nano-soc/iocsr_config_cyclone5.c b/arch/arm/boards/terasic-de0-nano-soc/iocsr_config_cyclone5.c
index 1458e76ba8..27af250232 100644
--- a/arch/arm/boards/terasic-de0-nano-soc/iocsr_config_cyclone5.c
+++ b/arch/arm/boards/terasic-de0-nano-soc/iocsr_config_cyclone5.c
@@ -27,7 +27,7 @@
  * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  */
 
-#include <mach/cyclone5-scan-manager.h>
+#include <mach/socfpga/cyclone5-scan-manager.h>
 
 static const unsigned long iocsr_scan_chain0_table[((CONFIG_HPS_IOCSR_SCANCHAIN0_LENGTH / 32) + 1)] = {
 	0x00000000,
diff --git a/arch/arm/boards/terasic-de0-nano-soc/lowlevel.c b/arch/arm/boards/terasic-de0-nano-soc/lowlevel.c
index 91bfd1a776..71121b6d4c 100644
--- a/arch/arm/boards/terasic-de0-nano-soc/lowlevel.c
+++ b/arch/arm/boards/terasic-de0-nano-soc/lowlevel.c
@@ -9,7 +9,7 @@
 #include "sequencer_auto_ac_init.c"
 #include "iocsr_config_cyclone5.c"
 
-#include <mach/lowlevel.h>
+#include <mach/socfpga/lowlevel.h>
 
 SOCFPGA_C5_ENTRY(start_socfpga_de0_nano_soc, socfpga_cyclone5_de0_nano_soc, SZ_1G);
 SOCFPGA_C5_XLOAD_ENTRY(start_socfpga_de0_nano_soc_xload, SZ_1G);
diff --git a/arch/arm/boards/terasic-de10-nano/board.c b/arch/arm/boards/terasic-de10-nano/board.c
index f8df37eadf..580c898012 100644
--- a/arch/arm/boards/terasic-de10-nano/board.c
+++ b/arch/arm/boards/terasic-de10-nano/board.c
@@ -10,7 +10,7 @@
 #include <linux/sizes.h>
 #include <fcntl.h>
 #include <fs.h>
-#include <mach/cyclone5-regs.h>
+#include <mach/socfpga/cyclone5-regs.h>
 
 static int phy_fixup(struct phy_device *dev)
 {
diff --git a/arch/arm/boards/terasic-de10-nano/iocsr_config_cyclone5.c b/arch/arm/boards/terasic-de10-nano/iocsr_config_cyclone5.c
index c1291dea40..2f30d836d6 100644
--- a/arch/arm/boards/terasic-de10-nano/iocsr_config_cyclone5.c
+++ b/arch/arm/boards/terasic-de10-nano/iocsr_config_cyclone5.c
@@ -27,7 +27,7 @@
  * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  */
 
-#include <mach/cyclone5-scan-manager.h>
+#include <mach/socfpga/cyclone5-scan-manager.h>
 
 static const unsigned long iocsr_scan_chain0_table[((CONFIG_HPS_IOCSR_SCANCHAIN0_LENGTH / 32) + 1)]
     = {
diff --git a/arch/arm/boards/terasic-de10-nano/lowlevel.c b/arch/arm/boards/terasic-de10-nano/lowlevel.c
index f6a3e39634..74c8aec99d 100644
--- a/arch/arm/boards/terasic-de10-nano/lowlevel.c
+++ b/arch/arm/boards/terasic-de10-nano/lowlevel.c
@@ -9,7 +9,7 @@
 #include "sequencer_auto_ac_init.c"
 #include "iocsr_config_cyclone5.c"
 
-#include <mach/lowlevel.h>
+#include <mach/socfpga/lowlevel.h>
 
 SOCFPGA_C5_ENTRY(start_socfpga_de10_nano, socfpga_cyclone5_de10_nano, SZ_1G);
 SOCFPGA_C5_XLOAD_ENTRY(start_socfpga_de10_nano_xload, SZ_1G);
diff --git a/arch/arm/boards/terasic-sockit/iocsr_config_cyclone5.c b/arch/arm/boards/terasic-sockit/iocsr_config_cyclone5.c
index 9367b0d110..8e5b02be2f 100644
--- a/arch/arm/boards/terasic-sockit/iocsr_config_cyclone5.c
+++ b/arch/arm/boards/terasic-sockit/iocsr_config_cyclone5.c
@@ -27,7 +27,7 @@
  * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  */
 
-#include <mach/cyclone5-scan-manager.h>
+#include <mach/socfpga/cyclone5-scan-manager.h>
 
 static const unsigned long iocsr_scan_chain0_table[((CONFIG_HPS_IOCSR_SCANCHAIN0_LENGTH / 32) + 1)] = {
 	0x00000000,
diff --git a/arch/arm/boards/terasic-sockit/lowlevel.c b/arch/arm/boards/terasic-sockit/lowlevel.c
index dbe99ac1df..9ce0fd4423 100644
--- a/arch/arm/boards/terasic-sockit/lowlevel.c
+++ b/arch/arm/boards/terasic-sockit/lowlevel.c
@@ -9,7 +9,7 @@
 #include "sequencer_auto_ac_init.c"
 #include "iocsr_config_cyclone5.c"
 
-#include <mach/lowlevel.h>
+#include <mach/socfpga/lowlevel.h>
 
 static inline void ledon(int led)
 {
diff --git a/arch/arm/include/asm/debug_ll.h b/arch/arm/include/asm/debug_ll.h
index 63bd8c022a..0c1f22e819 100644
--- a/arch/arm/include/asm/debug_ll.h
+++ b/arch/arm/include/asm/debug_ll.h
@@ -32,6 +32,8 @@
 #include <mach/tegra/debug_ll.h>
 #elif defined CONFIG_ARCH_UEMD
 #include <mach/uemd/debug_ll.h>
+#elif defined CONFIG_ARCH_SOCFPGA
+#include <mach/socfpga/debug_ll.h>
 #else
 #ifndef CONFIG_ARCH_ARM64_VIRT
 #include <mach/debug_ll.h>
diff --git a/arch/arm/mach-socfpga/arria10-bootsource.c b/arch/arm/mach-socfpga/arria10-bootsource.c
index 9055570c07..4aa36a7ffe 100644
--- a/arch/arm/mach-socfpga/arria10-bootsource.c
+++ b/arch/arm/mach-socfpga/arria10-bootsource.c
@@ -15,8 +15,8 @@
 #include <bootsource.h>
 #include <init.h>
 #include <io.h>
-#include <mach/generic.h>
-#include <mach/arria10-system-manager.h>
+#include <mach/socfpga/generic.h>
+#include <mach/socfpga/arria10-system-manager.h>
 
 enum bootsource arria10_get_bootsource(void) {
 	enum bootsource src = BOOTSOURCE_UNKNOWN;
diff --git a/arch/arm/mach-socfpga/arria10-clock-manager.c b/arch/arm/mach-socfpga/arria10-clock-manager.c
index 8052afe2d8..372617acb9 100644
--- a/arch/arm/mach-socfpga/arria10-clock-manager.c
+++ b/arch/arm/mach-socfpga/arria10-clock-manager.c
@@ -6,9 +6,9 @@
 
 #include <common.h>
 #include <asm/io.h>
-#include <mach/generic.h>
-#include <mach/arria10-regs.h>
-#include <mach/arria10-clock-manager.h>
+#include <mach/socfpga/generic.h>
+#include <mach/socfpga/arria10-regs.h>
+#include <mach/socfpga/arria10-clock-manager.h>
 
 static const struct arria10_clock_manager *arria10_clkmgr_base =
 	(void *)ARRIA10_CLKMGR_ADDR;
diff --git a/arch/arm/mach-socfpga/arria10-generic.c b/arch/arm/mach-socfpga/arria10-generic.c
index d3990e1281..fc2ef3e292 100644
--- a/arch/arm/mach-socfpga/arria10-generic.c
+++ b/arch/arm/mach-socfpga/arria10-generic.c
@@ -4,10 +4,10 @@
 #include <io.h>
 #include <init.h>
 #include <restart.h>
-#include <mach/generic.h>
-#include <mach/arria10-reset-manager.h>
-#include <mach/arria10-system-manager.h>
-#include <mach/arria10-regs.h>
+#include <mach/socfpga/generic.h>
+#include <mach/socfpga/arria10-reset-manager.h>
+#include <mach/socfpga/arria10-system-manager.h>
+#include <mach/socfpga/arria10-regs.h>
 
 /* Some initialization for the EMAC */
 static void arria10_init_emac(void)
diff --git a/arch/arm/mach-socfpga/arria10-init.c b/arch/arm/mach-socfpga/arria10-init.c
index 93bc3368d3..d1586c2d40 100644
--- a/arch/arm/mach-socfpga/arria10-init.c
+++ b/arch/arm/mach-socfpga/arria10-init.c
@@ -6,12 +6,12 @@
 
 #include <common.h>
 #include <debug_ll.h>
-#include <mach/arria10-regs.h>
-#include <mach/arria10-clock-manager.h>
-#include <mach/arria10-pinmux.h>
-#include <mach/arria10-reset-manager.h>
-#include <mach/arria10-system-manager.h>
-#include <mach/generic.h>
+#include <mach/socfpga/arria10-regs.h>
+#include <mach/socfpga/arria10-clock-manager.h>
+#include <mach/socfpga/arria10-pinmux.h>
+#include <mach/socfpga/arria10-reset-manager.h>
+#include <mach/socfpga/arria10-system-manager.h>
+#include <mach/socfpga/generic.h>
 #include <asm/io.h>
 #include <asm/cache-l2x0.h>
 #include <asm/errata.h>
diff --git a/arch/arm/mach-socfpga/arria10-reset-manager.c b/arch/arm/mach-socfpga/arria10-reset-manager.c
index 76adc1702c..05440cf903 100644
--- a/arch/arm/mach-socfpga/arria10-reset-manager.c
+++ b/arch/arm/mach-socfpga/arria10-reset-manager.c
@@ -8,11 +8,11 @@
 #include <bootsource.h>
 #include <errno.h>
 #include <io.h>
-#include <mach/generic.h>
-#include <mach/arria10-pinmux.h>
-#include <mach/arria10-regs.h>
-#include <mach/arria10-reset-manager.h>
-#include <mach/arria10-system-manager.h>
+#include <mach/socfpga/generic.h>
+#include <mach/socfpga/arria10-pinmux.h>
+#include <mach/socfpga/arria10-regs.h>
+#include <mach/socfpga/arria10-reset-manager.h>
+#include <mach/socfpga/arria10-system-manager.h>
 
 void arria10_reset_peripherals(void)
 {
diff --git a/arch/arm/mach-socfpga/arria10-sdram.c b/arch/arm/mach-socfpga/arria10-sdram.c
index a6eb63299a..70d4edd973 100644
--- a/arch/arm/mach-socfpga/arria10-sdram.c
+++ b/arch/arm/mach-socfpga/arria10-sdram.c
@@ -7,10 +7,10 @@
 #include <common.h>
 #include <io.h>
 #include <debug_ll.h>
-#include <mach/generic.h>
-#include <mach/arria10-sdram.h>
-#include <mach/arria10-regs.h>
-#include <mach/arria10-reset-manager.h>
+#include <mach/socfpga/generic.h>
+#include <mach/socfpga/arria10-sdram.h>
+#include <mach/socfpga/arria10-regs.h>
+#include <mach/socfpga/arria10-reset-manager.h>
 
 
 /* FAWBANK - Number of Bank of a given device involved in the FAW period. */
diff --git a/arch/arm/mach-socfpga/arria10-xload-emmc.c b/arch/arm/mach-socfpga/arria10-xload-emmc.c
index 98d219b6ef..ed24faf9bf 100644
--- a/arch/arm/mach-socfpga/arria10-xload-emmc.c
+++ b/arch/arm/mach-socfpga/arria10-xload-emmc.c
@@ -3,10 +3,10 @@
 #include <common.h>
 #include <init.h>
 #include <linux/sizes.h>
-#include <mach/generic.h>
-#include <mach/arria10-regs.h>
-#include <mach/arria10-system-manager.h>
-#include <mach/arria10-xload.h>
+#include <mach/socfpga/generic.h>
+#include <mach/socfpga/arria10-regs.h>
+#include <mach/socfpga/arria10-system-manager.h>
+#include <mach/socfpga/arria10-xload.h>
 #include <mci.h>
 #include "../../../drivers/mci/sdhci.h"
 #include "../../../drivers/mci/dw_mmc.h"
diff --git a/arch/arm/mach-socfpga/arria10-xload.c b/arch/arm/mach-socfpga/arria10-xload.c
index fb92c01ddb..9d54a1de58 100644
--- a/arch/arm/mach-socfpga/arria10-xload.c
+++ b/arch/arm/mach-socfpga/arria10-xload.c
@@ -8,12 +8,12 @@
 #include <filetype.h>
 #include <io.h>
 #include <asm/unaligned.h>
-#include <mach/arria10-pinmux.h>
-#include <mach/arria10-regs.h>
-#include <mach/arria10-system-manager.h>
-#include <mach/arria10-fpga.h>
-#include <mach/arria10-xload.h>
-#include <mach/generic.h>
+#include <mach/socfpga/arria10-pinmux.h>
+#include <mach/socfpga/arria10-regs.h>
+#include <mach/socfpga/arria10-system-manager.h>
+#include <mach/socfpga/arria10-fpga.h>
+#include <mach/socfpga/arria10-xload.h>
+#include <mach/socfpga/generic.h>
 #include <linux/sizes.h>
 
 int a10_update_bits(unsigned int reg, unsigned int mask,
diff --git a/arch/arm/mach-socfpga/cpu_init.c b/arch/arm/mach-socfpga/cpu_init.c
index 1e0df1f6a5..73b69c34c5 100644
--- a/arch/arm/mach-socfpga/cpu_init.c
+++ b/arch/arm/mach-socfpga/cpu_init.c
@@ -3,7 +3,7 @@
 #include <common.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/errata.h>
-#include <mach/init.h>
+#include <mach/socfpga/init.h>
 
 void arria10_cpu_lowlevel_init(void)
 {
diff --git a/arch/arm/mach-socfpga/cyclone5-bootsource.c b/arch/arm/mach-socfpga/cyclone5-bootsource.c
index ab18d03302..d69eb65ce4 100644
--- a/arch/arm/mach-socfpga/cyclone5-bootsource.c
+++ b/arch/arm/mach-socfpga/cyclone5-bootsource.c
@@ -16,9 +16,9 @@
 #include <environment.h>
 #include <init.h>
 #include <io.h>
-#include <mach/cyclone5-system-manager.h>
-#include <mach/cyclone5-regs.h>
-#include <mach/arria10-system-manager.h>
+#include <mach/socfpga/cyclone5-system-manager.h>
+#include <mach/socfpga/cyclone5-regs.h>
+#include <mach/socfpga/arria10-system-manager.h>
 
 #define CYCLONE5_SYSMGR_BOOTINFO	0x14
 
diff --git a/arch/arm/mach-socfpga/cyclone5-clock-manager.c b/arch/arm/mach-socfpga/cyclone5-clock-manager.c
index 79c8b6bf28..06ca1af22c 100644
--- a/arch/arm/mach-socfpga/cyclone5-clock-manager.c
+++ b/arch/arm/mach-socfpga/cyclone5-clock-manager.c
@@ -17,9 +17,9 @@
 
 #include <common.h>
 #include <io.h>
-#include <mach/cyclone5-clock-manager.h>
-#include <mach/cyclone5-regs.h>
-#include <mach/generic.h>
+#include <mach/socfpga/cyclone5-clock-manager.h>
+#include <mach/socfpga/cyclone5-regs.h>
+#include <mach/socfpga/generic.h>
 
 static inline void cm_wait_for_lock(void __iomem *cm, uint32_t mask)
 {
diff --git a/arch/arm/mach-socfpga/cyclone5-freeze-controller.c b/arch/arm/mach-socfpga/cyclone5-freeze-controller.c
index 87160161b0..53fb6a2b50 100644
--- a/arch/arm/mach-socfpga/cyclone5-freeze-controller.c
+++ b/arch/arm/mach-socfpga/cyclone5-freeze-controller.c
@@ -17,8 +17,8 @@
 
 #include <common.h>
 #include <io.h>
-#include <mach/generic.h>
-#include <mach/cyclone5-freeze-controller.h>
+#include <mach/socfpga/generic.h>
+#include <mach/socfpga/cyclone5-freeze-controller.h>
 
 #define SYSMGR_FRZCTRL_LOOP_PARAM       (1000)
 #define SYSMGR_FRZCTRL_DELAY_LOOP_PARAM (10)
diff --git a/arch/arm/mach-socfpga/cyclone5-generic.c b/arch/arm/mach-socfpga/cyclone5-generic.c
index 5931653a63..ae8142b31c 100644
--- a/arch/arm/mach-socfpga/cyclone5-generic.c
+++ b/arch/arm/mach-socfpga/cyclone5-generic.c
@@ -12,11 +12,11 @@
 #include <linux/stat.h>
 #include <linux/sizes.h>
 #include <asm/memory.h>
-#include <mach/cyclone5-system-manager.h>
-#include <mach/cyclone5-reset-manager.h>
-#include <mach/cyclone5-regs.h>
-#include <mach/generic.h>
-#include <mach/nic301.h>
+#include <mach/socfpga/cyclone5-system-manager.h>
+#include <mach/socfpga/cyclone5-reset-manager.h>
+#include <mach/socfpga/cyclone5-regs.h>
+#include <mach/socfpga/generic.h>
+#include <mach/socfpga/nic301.h>
 #include <platform_data/dw_mmc.h>
 #include <platform_data/serial-ns16550.h>
 #include <platform_data/cadence_qspi.h>
diff --git a/arch/arm/mach-socfpga/cyclone5-init.c b/arch/arm/mach-socfpga/cyclone5-init.c
index 68fd02430c..79a9b15d87 100644
--- a/arch/arm/mach-socfpga/cyclone5-init.c
+++ b/arch/arm/mach-socfpga/cyclone5-init.c
@@ -4,12 +4,12 @@
 #include <common.h>
 #include <init.h>
 #include <io.h>
-#include <mach/cyclone5-freeze-controller.h>
-#include <mach/cyclone5-system-manager.h>
-#include <mach/cyclone5-clock-manager.h>
-#include <mach/cyclone5-reset-manager.h>
-#include <mach/cyclone5-scan-manager.h>
-#include <mach/generic.h>
+#include <mach/socfpga/cyclone5-freeze-controller.h>
+#include <mach/socfpga/cyclone5-system-manager.h>
+#include <mach/socfpga/cyclone5-clock-manager.h>
+#include <mach/socfpga/cyclone5-reset-manager.h>
+#include <mach/socfpga/cyclone5-scan-manager.h>
+#include <mach/socfpga/generic.h>
 
 void socfpga_lowlevel_init(struct socfpga_cm_config *cm_config,
 			   struct socfpga_io_config *io_config)
diff --git a/arch/arm/mach-socfpga/cyclone5-reset-manager.c b/arch/arm/mach-socfpga/cyclone5-reset-manager.c
index 4ee90b1bb0..5ddf379e3d 100644
--- a/arch/arm/mach-socfpga/cyclone5-reset-manager.c
+++ b/arch/arm/mach-socfpga/cyclone5-reset-manager.c
@@ -19,8 +19,8 @@
 #include <io.h>
 #include <init.h>
 #include <restart.h>
-#include <mach/cyclone5-regs.h>
-#include <mach/cyclone5-reset-manager.h>
+#include <mach/socfpga/cyclone5-regs.h>
+#include <mach/socfpga/cyclone5-reset-manager.h>
 
 /* Write the reset manager register to cause reset */
 static void __noreturn socfpga_restart_soc(struct restart_handler *rst)
diff --git a/arch/arm/mach-socfpga/cyclone5-scan-manager.c b/arch/arm/mach-socfpga/cyclone5-scan-manager.c
index cf076c3885..0978ed832f 100644
--- a/arch/arm/mach-socfpga/cyclone5-scan-manager.c
+++ b/arch/arm/mach-socfpga/cyclone5-scan-manager.c
@@ -17,8 +17,8 @@
 
 #include <common.h>
 #include <io.h>
-#include <mach/cyclone5-freeze-controller.h>
-#include <mach/cyclone5-scan-manager.h>
+#include <mach/socfpga/cyclone5-freeze-controller.h>
+#include <mach/socfpga/cyclone5-scan-manager.h>
 
 /*
  * @fn scan_mgr_io_scan_chain_engine_is_idle
diff --git a/arch/arm/mach-socfpga/cyclone5-system-manager.c b/arch/arm/mach-socfpga/cyclone5-system-manager.c
index 7e86692c39..aab2813da5 100644
--- a/arch/arm/mach-socfpga/cyclone5-system-manager.c
+++ b/arch/arm/mach-socfpga/cyclone5-system-manager.c
@@ -17,8 +17,8 @@
 
 #include <common.h>
 #include <io.h>
-#include <mach/cyclone5-system-manager.h>
-#include <mach/cyclone5-regs.h>
+#include <mach/socfpga/cyclone5-system-manager.h>
+#include <mach/socfpga/cyclone5-regs.h>
 
 void socfpga_sysmgr_pinmux_init(unsigned long *sys_mgr_init_table, int num)
 {
diff --git a/arch/arm/mach-socfpga/nic301.c b/arch/arm/mach-socfpga/nic301.c
index 7069c6e5b9..9b33a19687 100644
--- a/arch/arm/mach-socfpga/nic301.c
+++ b/arch/arm/mach-socfpga/nic301.c
@@ -17,8 +17,8 @@
 
 #include <common.h>
 #include <io.h>
-#include <mach/nic301.h>
-#include <mach/cyclone5-regs.h>
+#include <mach/socfpga/nic301.h>
+#include <mach/socfpga/cyclone5-regs.h>
 
 /*
  * Convert all slave from secure to non secure
diff --git a/arch/arm/mach-socfpga/xload.c b/arch/arm/mach-socfpga/xload.c
index 81c1a74886..5ae4eeb331 100644
--- a/arch/arm/mach-socfpga/xload.c
+++ b/arch/arm/mach-socfpga/xload.c
@@ -16,9 +16,9 @@
 #include <linux/stat.h>
 #include <linux/clk.h>
 
-#include <mach/generic.h>
-#include <mach/cyclone5-system-manager.h>
-#include <mach/cyclone5-regs.h>
+#include <mach/socfpga/generic.h>
+#include <mach/socfpga/cyclone5-system-manager.h>
+#include <mach/socfpga/cyclone5-regs.h>
 
 static struct socfpga_barebox_part default_parts[] = {
 	{
diff --git a/drivers/clk/socfpga/clk-gate-a10.c b/drivers/clk/socfpga/clk-gate-a10.c
index cbdec98fc6..a78732124e 100644
--- a/drivers/clk/socfpga/clk-gate-a10.c
+++ b/drivers/clk/socfpga/clk-gate-a10.c
@@ -9,8 +9,8 @@
 #include <regmap.h>
 #include <linux/clk.h>
 #include <linux/clkdev.h>
-#include <mach/arria10-regs.h>
-#include <mach/arria10-system-manager.h>
+#include <mach/socfpga/arria10-regs.h>
+#include <mach/socfpga/arria10-system-manager.h>
 
 #include "clk.h"
 
diff --git a/drivers/firmware/socfpga.c b/drivers/firmware/socfpga.c
index b6bc15785b..4655559c7a 100644
--- a/drivers/firmware/socfpga.c
+++ b/drivers/firmware/socfpga.c
@@ -14,10 +14,10 @@
 #include <fcntl.h>
 #include <init.h>
 #include <io.h>
-#include <mach/cyclone5-system-manager.h>
-#include <mach/cyclone5-reset-manager.h>
-#include <mach/cyclone5-regs.h>
-#include <mach/cyclone5-sdram.h>
+#include <mach/socfpga/cyclone5-system-manager.h>
+#include <mach/socfpga/cyclone5-reset-manager.h>
+#include <mach/socfpga/cyclone5-regs.h>
+#include <mach/socfpga/cyclone5-sdram.h>
 #include <asm/fncpy.h>
 #include <mmu.h>
 #include <asm/cache.h>
diff --git a/arch/arm/mach-socfpga/include/mach/arria10-clock-manager.h b/include/mach/socfpga/arria10-clock-manager.h
similarity index 100%
rename from arch/arm/mach-socfpga/include/mach/arria10-clock-manager.h
rename to include/mach/socfpga/arria10-clock-manager.h
diff --git a/arch/arm/mach-socfpga/include/mach/arria10-fpga.h b/include/mach/socfpga/arria10-fpga.h
similarity index 98%
rename from arch/arm/mach-socfpga/include/mach/arria10-fpga.h
rename to include/mach/socfpga/arria10-fpga.h
index 2e29c864f6..3efad9a4f5 100644
--- a/arch/arm/mach-socfpga/include/mach/arria10-fpga.h
+++ b/include/mach/socfpga/arria10-fpga.h
@@ -20,7 +20,7 @@
 #define	__A10_FPGAMGR_H__
 
 #include <linux/bitops.h>
-#include <mach/arria10-regs.h>
+#include <mach/socfpga/arria10-regs.h>
 
 #define A10_FPGAMGR_DCLKCNT_OFST				0x08
 #define A10_FPGAMGR_DCLKSTAT_OFST				0x0c
diff --git a/arch/arm/mach-socfpga/include/mach/arria10-pinmux.h b/include/mach/socfpga/arria10-pinmux.h
similarity index 99%
rename from arch/arm/mach-socfpga/include/mach/arria10-pinmux.h
rename to include/mach/socfpga/arria10-pinmux.h
index 979e4769db..1b04915d58 100644
--- a/arch/arm/mach-socfpga/include/mach/arria10-pinmux.h
+++ b/include/mach/socfpga/arria10-pinmux.h
@@ -16,7 +16,7 @@
 #ifndef _ARRIA10_PINMUX_H_
 #define _ARRIA10_PINMUX_H_
 
-#include <mach/arria10-regs.h>
+#include <mach/socfpga/arria10-regs.h>
 
 #define ARRIA10_PINMUX_SHARED_IO_Q1_1_ADDR	ARRIA10_PINMUX_SHARED_3V_IO_GRP_ADDR + 0x00
 #define ARRIA10_PINMUX_SHARED_IO_Q1_2_ADDR	ARRIA10_PINMUX_SHARED_3V_IO_GRP_ADDR + 0x04
diff --git a/arch/arm/mach-socfpga/include/mach/arria10-regs.h b/include/mach/socfpga/arria10-regs.h
similarity index 100%
rename from arch/arm/mach-socfpga/include/mach/arria10-regs.h
rename to include/mach/socfpga/arria10-regs.h
diff --git a/arch/arm/mach-socfpga/include/mach/arria10-reset-manager.h b/include/mach/socfpga/arria10-reset-manager.h
similarity index 100%
rename from arch/arm/mach-socfpga/include/mach/arria10-reset-manager.h
rename to include/mach/socfpga/arria10-reset-manager.h
diff --git a/arch/arm/mach-socfpga/include/mach/arria10-sdram.h b/include/mach/socfpga/arria10-sdram.h
similarity index 99%
rename from arch/arm/mach-socfpga/include/mach/arria10-sdram.h
rename to include/mach/socfpga/arria10-sdram.h
index 07e4dd0130..55eba6b835 100644
--- a/arch/arm/mach-socfpga/include/mach/arria10-sdram.h
+++ b/include/mach/socfpga/arria10-sdram.h
@@ -4,7 +4,7 @@
  * SPDX-License-Identifier:	GPL-2.0
  */
 
-#include <mach/arria10-system-manager.h>
+#include <mach/socfpga/arria10-system-manager.h>
 
 #ifndef	_ARRIA10_SDRAM_H_
 #define	_ARRIA10_SDRAM_H_
diff --git a/arch/arm/mach-socfpga/include/mach/arria10-system-manager.h b/include/mach/socfpga/arria10-system-manager.h
similarity index 99%
rename from arch/arm/mach-socfpga/include/mach/arria10-system-manager.h
rename to include/mach/socfpga/arria10-system-manager.h
index 9117a93b18..f92025ae32 100644
--- a/arch/arm/mach-socfpga/include/mach/arria10-system-manager.h
+++ b/include/mach/socfpga/arria10-system-manager.h
@@ -7,7 +7,7 @@
 #ifndef	_ARRIA10_SYSTEM_MANAGER_H_
 #define	_ARRIA10_SYSTEM_MANAGER_H_
 
-#include <mach/arria10-regs.h>
+#include <mach/socfpga/arria10-regs.h>
 
 #define ARRIA10_SYSMGR_SILICONID1		(ARRIA10_SYSMGR_ADDR + 0x00)
 #define ARRIA10_SYSMGR_SILICONID2		(ARRIA10_SYSMGR_ADDR + 0x04)
diff --git a/arch/arm/mach-socfpga/include/mach/arria10-xload.h b/include/mach/socfpga/arria10-xload.h
similarity index 100%
rename from arch/arm/mach-socfpga/include/mach/arria10-xload.h
rename to include/mach/socfpga/arria10-xload.h
diff --git a/arch/arm/mach-socfpga/include/mach/barebox-arm-head.h b/include/mach/socfpga/barebox-arm-head.h
similarity index 100%
rename from arch/arm/mach-socfpga/include/mach/barebox-arm-head.h
rename to include/mach/socfpga/barebox-arm-head.h
diff --git a/arch/arm/mach-socfpga/include/mach/cyclone5-clock-manager.h b/include/mach/socfpga/cyclone5-clock-manager.h
similarity index 100%
rename from arch/arm/mach-socfpga/include/mach/cyclone5-clock-manager.h
rename to include/mach/socfpga/cyclone5-clock-manager.h
diff --git a/arch/arm/mach-socfpga/include/mach/cyclone5-freeze-controller.h b/include/mach/socfpga/cyclone5-freeze-controller.h
similarity index 98%
rename from arch/arm/mach-socfpga/include/mach/cyclone5-freeze-controller.h
rename to include/mach/socfpga/cyclone5-freeze-controller.h
index 93ce5152ed..ff22b78c1a 100644
--- a/arch/arm/mach-socfpga/include/mach/cyclone5-freeze-controller.h
+++ b/include/mach/socfpga/cyclone5-freeze-controller.h
@@ -18,7 +18,7 @@
 #ifndef _CYCLONE5_FREEZE_CONTROLLER_H_
 #define _CYCLONE5_FREEZE_CONTROLLER_H_
 
-#include <mach/cyclone5-regs.h>
+#include <mach/socfpga/cyclone5-regs.h>
 
 #define SYSMGR_FRZCTRL_ADDRESS		0x40
 #define SYSMGR_FRZCTRL_VIOCTRL_ADDRESS	0x40
diff --git a/arch/arm/mach-socfpga/include/mach/cyclone5-regs.h b/include/mach/socfpga/cyclone5-regs.h
similarity index 100%
rename from arch/arm/mach-socfpga/include/mach/cyclone5-regs.h
rename to include/mach/socfpga/cyclone5-regs.h
diff --git a/arch/arm/mach-socfpga/include/mach/cyclone5-reset-manager.h b/include/mach/socfpga/cyclone5-reset-manager.h
similarity index 100%
rename from arch/arm/mach-socfpga/include/mach/cyclone5-reset-manager.h
rename to include/mach/socfpga/cyclone5-reset-manager.h
diff --git a/arch/arm/mach-socfpga/include/mach/cyclone5-scan-manager.h b/include/mach/socfpga/cyclone5-scan-manager.h
similarity index 99%
rename from arch/arm/mach-socfpga/include/mach/cyclone5-scan-manager.h
rename to include/mach/socfpga/cyclone5-scan-manager.h
index df720a7e08..ddafbae45c 100644
--- a/arch/arm/mach-socfpga/include/mach/cyclone5-scan-manager.h
+++ b/include/mach/socfpga/cyclone5-scan-manager.h
@@ -19,7 +19,7 @@
 #define _SCAN_MANAGER_H_
 
 #include <io.h>
-#include <mach/cyclone5-regs.h>
+#include <mach/socfpga/cyclone5-regs.h>
 
 /***********************************************************
  *                                                         *
diff --git a/arch/arm/mach-socfpga/include/mach/cyclone5-sdram-config.h b/include/mach/socfpga/cyclone5-sdram-config.h
similarity index 98%
rename from arch/arm/mach-socfpga/include/mach/cyclone5-sdram-config.h
rename to include/mach/socfpga/cyclone5-sdram-config.h
index 7b11d8d088..06f06ef5d7 100644
--- a/arch/arm/mach-socfpga/include/mach/cyclone5-sdram-config.h
+++ b/include/mach/socfpga/cyclone5-sdram-config.h
@@ -3,9 +3,9 @@
 #ifndef __MACH_SDRAM_CONFIG_H
 #define __MACH_SDRAM_CONFIG_H
 
-#include <mach/cyclone5-sdram.h>
-#include <mach/cyclone5-regs.h>
-#include <mach/cyclone5-system-manager.h>
+#include <mach/socfpga/cyclone5-sdram.h>
+#include <mach/socfpga/cyclone5-regs.h>
+#include <mach/socfpga/cyclone5-system-manager.h>
 
 static inline void sdram_write(unsigned register_offset, unsigned val)
 {
diff --git a/arch/arm/mach-socfpga/include/mach/cyclone5-sdram.h b/include/mach/socfpga/cyclone5-sdram.h
similarity index 100%
rename from arch/arm/mach-socfpga/include/mach/cyclone5-sdram.h
rename to include/mach/socfpga/cyclone5-sdram.h
diff --git a/arch/arm/mach-socfpga/include/mach/cyclone5-sequencer.c b/include/mach/socfpga/cyclone5-sequencer.c
similarity index 99%
rename from arch/arm/mach-socfpga/include/mach/cyclone5-sequencer.c
rename to include/mach/socfpga/cyclone5-sequencer.c
index e5ecb0f1b8..1902559630 100644
--- a/arch/arm/mach-socfpga/include/mach/cyclone5-sequencer.c
+++ b/include/mach/socfpga/cyclone5-sequencer.c
@@ -55,7 +55,7 @@ asm(".global __alt_stack_pointer");
 asm("__alt_stack_pointer = " STRINGIFY(STACK_POINTER));
 #endif
 
-#include <mach/cyclone5-sdram.h>
+#include <mach/socfpga/cyclone5-sdram.h>
 
 #define NEWVERSION_RDDESKEW 1
 #define NEWVERSION_WRDESKEW 1
diff --git a/arch/arm/mach-socfpga/include/mach/cyclone5-sequencer.h b/include/mach/socfpga/cyclone5-sequencer.h
similarity index 100%
rename from arch/arm/mach-socfpga/include/mach/cyclone5-sequencer.h
rename to include/mach/socfpga/cyclone5-sequencer.h
diff --git a/arch/arm/mach-socfpga/include/mach/cyclone5-system-manager.h b/include/mach/socfpga/cyclone5-system-manager.h
similarity index 100%
rename from arch/arm/mach-socfpga/include/mach/cyclone5-system-manager.h
rename to include/mach/socfpga/cyclone5-system-manager.h
diff --git a/arch/arm/mach-socfpga/include/mach/debug_ll.h b/include/mach/socfpga/debug_ll.h
similarity index 100%
rename from arch/arm/mach-socfpga/include/mach/debug_ll.h
rename to include/mach/socfpga/debug_ll.h
diff --git a/arch/arm/mach-socfpga/include/mach/generic.h b/include/mach/socfpga/generic.h
similarity index 100%
rename from arch/arm/mach-socfpga/include/mach/generic.h
rename to include/mach/socfpga/generic.h
diff --git a/arch/arm/mach-socfpga/include/mach/init.h b/include/mach/socfpga/init.h
similarity index 100%
rename from arch/arm/mach-socfpga/include/mach/init.h
rename to include/mach/socfpga/init.h
diff --git a/arch/arm/mach-socfpga/include/mach/lowlevel.h b/include/mach/socfpga/lowlevel.h
similarity index 91%
rename from arch/arm/mach-socfpga/include/mach/lowlevel.h
rename to include/mach/socfpga/lowlevel.h
index 8f3b682fa4..f5b8d579e1 100644
--- a/arch/arm/mach-socfpga/include/mach/lowlevel.h
+++ b/include/mach/socfpga/lowlevel.h
@@ -8,12 +8,12 @@
 #include <io.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
-#include <mach/generic.h>
+#include <mach/socfpga/generic.h>
 #include <debug_ll.h>
 #include <asm/cache.h>
-#include <mach/cyclone5-sdram-config.h>
-#include <mach/pll_config.h>
-#include <mach/cyclone5-sequencer.c>
+#include <mach/socfpga/cyclone5-sdram-config.h>
+#include <mach/socfpga/pll_config.h>
+#include <mach/socfpga/cyclone5-sequencer.c>
 
 static void __noreturn start_socfpga_c5_common(uint32_t size, void *fdt_blob)
 {
diff --git a/arch/arm/mach-socfpga/include/mach/nic301.h b/include/mach/socfpga/nic301.h
similarity index 100%
rename from arch/arm/mach-socfpga/include/mach/nic301.h
rename to include/mach/socfpga/nic301.h
diff --git a/arch/arm/mach-socfpga/include/mach/pll_config.h b/include/mach/socfpga/pll_config.h
similarity index 98%
rename from arch/arm/mach-socfpga/include/mach/pll_config.h
rename to include/mach/socfpga/pll_config.h
index ded3c0d09e..aca9ba3cdb 100644
--- a/arch/arm/mach-socfpga/include/mach/pll_config.h
+++ b/include/mach/socfpga/pll_config.h
@@ -3,7 +3,7 @@
 #ifndef _MACH_SOCFPGA_PRELOADER_PLL_CONFIG_H_
 #define _MACH_SOCFPGA_PRELOADER_PLL_CONFIG_H_
 
-#include <mach/cyclone5-clock-manager.h>
+#include <mach/socfpga/cyclone5-clock-manager.h>
 
 static struct socfpga_cm_config cm_default_cfg = {
 	/* main group */
diff --git a/arch/arm/mach-socfpga/include/mach/sdram_io.h b/include/mach/socfpga/sdram_io.h
similarity index 98%
rename from arch/arm/mach-socfpga/include/mach/sdram_io.h
rename to include/mach/socfpga/sdram_io.h
index ef87bdaf63..a9056ea3d3 100644
--- a/arch/arm/mach-socfpga/include/mach/sdram_io.h
+++ b/include/mach/socfpga/sdram_io.h
@@ -26,7 +26,7 @@
  * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  */
 
-#include <mach/cyclone5-sdram.h>
+#include <mach/socfpga/cyclone5-sdram.h>
 
 #define MGR_SELECT_MASK   0xf8000
 
diff --git a/arch/arm/mach-socfpga/include/mach/system.h b/include/mach/socfpga/system.h
similarity index 100%
rename from arch/arm/mach-socfpga/include/mach/system.h
rename to include/mach/socfpga/system.h
diff --git a/arch/arm/mach-socfpga/include/mach/tclrpt.h b/include/mach/socfpga/tclrpt.h
similarity index 100%
rename from arch/arm/mach-socfpga/include/mach/tclrpt.h
rename to include/mach/socfpga/tclrpt.h
-- 
2.30.2



