Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VoBIO-0002Vl-6w
 for barebox@lists.infradead.org; Wed, 04 Dec 2013 12:11:13 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed,  4 Dec 2013 13:10:40 +0100
Message-Id: <1386159040-22431-3-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1386159040-22431-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1386159040-22431-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 2/2] ARM: socfgpa: sockit: update sequencer_defines
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Use the new Quartus II v13.1 generated sequencer_defines.h file.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/boards/terasic-sockit/sequencer_defines.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/terasic-sockit/sequencer_defines.h b/arch/arm/boards/terasic-sockit/sequencer_defines.h
index a59eed2..a3cd7a8 100644
--- a/arch/arm/boards/terasic-sockit/sequencer_defines.h
+++ b/arch/arm/boards/terasic-sockit/sequencer_defines.h
@@ -21,8 +21,8 @@
 #define BFM_MODE 0
 #define BURST2 0
 #define CALIBRATE_BIT_SLIPS 0
-#define CALIB_LFIFO_OFFSET 11
-#define CALIB_VFIFO_OFFSET 9
+#define CALIB_LFIFO_OFFSET 12
+#define CALIB_VFIFO_OFFSET 10
 #define CYCLONEV 1
 #define DDR2 0
 #define DDR3 1
@@ -79,7 +79,7 @@
 #define RDIMM 0
 #define READ_AFTER_WRITE_CALIBRATION 1
 #define READ_VALID_FIFO_SIZE 16
-#define REG_FILE_INIT_SEQ_SIGNATURE 0x55550482
+#define REG_FILE_INIT_SEQ_SIGNATURE 0x55550483
 #define RLDRAM3 0
 #define RLDRAMII 0
 #define RLDRAMX 0
-- 
1.8.4.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
