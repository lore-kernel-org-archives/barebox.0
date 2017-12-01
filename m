Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eKj70-0000qC-Jx
 for barebox@lists.infradead.ORG; Fri, 01 Dec 2017 11:04:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  1 Dec 2017 12:03:22 +0100
Message-Id: <20171201110326.31598-4-s.hauer@pengutronix.de>
In-Reply-To: <20171201110326.31598-1-s.hauer@pengutronix.de>
References: <20171201110326.31598-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/7] Documentation: socfpga: Fix numbered list
To: Barebox List <barebox@lists.infradead.org>

This is no code block, change to numbered list.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/boards/socfpga.rst | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/Documentation/boards/socfpga.rst b/Documentation/boards/socfpga.rst
index 2b6c8a5b16..cd0fffa1ee 100644
--- a/Documentation/boards/socfpga.rst
+++ b/Documentation/boards/socfpga.rst
@@ -104,17 +104,17 @@ The boardspecific files for `arch/arm/boards/<yourboard>` are:
 * sequencer_auto_inst_init.c
 * sequencer_defines.h
 
-To update the handoff files, the following procedure is necessary::
-
- 1. Regenerate the project with Qsys
- 2. Load up your project in Quartus II and assemble the design
- 3. Go to the SoCEDS installation and run
-    ``./embedded_command_shell.sh``
- 4. Now run ``bsp-editor``
- 5. Create a new BSP
- 6. Select the directory `hps_isw_handoff/soc_system_hps_0` under the
-    preloader settings directory
- 7. Click ``Ok`` than ``Generate``
+To update the handoff files, the following procedure is necessary:
+
+1. Regenerate the project with Qsys
+2. Load up your project in Quartus II and assemble the design
+3. Go to the SoCEDS installation and run
+   ``./embedded_command_shell.sh``
+4. Now run ``bsp-editor``
+5. Create a new BSP
+6. Select the directory `hps_isw_handoff/soc_system_hps_0` under the
+   preloader settings directory
+7. Click ``Ok`` than ``Generate``
 
 Now run the command::
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
