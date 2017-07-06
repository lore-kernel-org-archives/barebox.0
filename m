Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dT7is-0005EU-PM
 for barebox@lists.infradead.org; Thu, 06 Jul 2017 14:25:41 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Thu,  6 Jul 2017 16:25:06 +0200
Message-Id: <20170706142506.790-2-s.trumtrar@pengutronix.de>
In-Reply-To: <20170706142506.790-1-s.trumtrar@pengutronix.de>
References: <20170706142506.790-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 2/2] Documentation: socfpga: update sequencer documentation
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Update the documentation in regard of the sequencer importer.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 Documentation/boards/socfpga.rst | 15 +++++++++++----
 1 file changed, 11 insertions(+), 4 deletions(-)

diff --git a/Documentation/boards/socfpga.rst b/Documentation/boards/socfpga.rst
index 358e5ab91030..2b6c8a5b1658 100644
--- a/Documentation/boards/socfpga.rst
+++ b/Documentation/boards/socfpga.rst
@@ -124,12 +124,19 @@ where `<SPL_GENERATED_DIR>` is the directory where the bsp-editor generated the
 `<ISW_HANDOFF>` is the directory where Quartus generated the handoff files, and
 `<BOARD_DIRECTORY>` is your board directory under `arch/arm/boards`.
 
-The following files are generic and belong into the
-`arch/arm/mach-socfpga` directory tree:
+
+Integrating new SDRAM driver
+----------------------------
+
+This step must only be executed if the SDRAM driver needs updates. It is not necessary
+for adding a new board to barebox.
+
+The following files are generic and belong into the `arch/arm/mach-socfpga` directory
+tree:
 
 * sdram_io.h
-* sequencer.c
-* sequencer.h
+* sequencer.c as cyclone5-sequencer.c
+* sequencer.h as cyclone5-sequencer.h
 * sequencer_defines.h
 * system.h
 * tclrpt.h
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
