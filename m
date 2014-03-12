Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WNeBQ-00014t-IB
 for barebox@lists.infradead.org; Wed, 12 Mar 2014 08:06:37 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed, 12 Mar 2014 09:06:05 +0100
Message-Id: <1394611565-17600-1-git-send-email-s.trumtrar@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] ARM: socfpga: socrates: fix ENTRY_FUNCTION
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

The commit
	ARM: Make ENTRY_FUNCTION more robust
changed the behaviour of the ENTRY_FUNCTION. For the Socrates the call to
__barebox_arm_head() was not removed. Do so now otherwise the Socrates will
not be able to boot barebox.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/boards/ebv-socrates/lowlevel.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/boards/ebv-socrates/lowlevel.c b/arch/arm/boards/ebv-socrates/lowlevel.c
index e93ae38..035df70 100644
--- a/arch/arm/boards/ebv-socrates/lowlevel.c
+++ b/arch/arm/boards/ebv-socrates/lowlevel.c
@@ -49,8 +49,6 @@ ENTRY_FUNCTION(start_socfpga_socrates, r0, r1, r2)
 {
 	uint32_t fdt;
 
-	__barebox_arm_head();
-
 	arm_cpu_lowlevel_init();
 
 	fdt = (uint32_t)__dtb_socfpga_cyclone5_socrates_start - get_runtime_offset();
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
