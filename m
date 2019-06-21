Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heEe8-0006Ci-Uf
 for barebox@lists.infradead.org; Fri, 21 Jun 2019 08:11:46 +0000
Received: by mail-pg1-x541.google.com with SMTP id n2so2973877pgp.11
 for <barebox@lists.infradead.org>; Fri, 21 Jun 2019 01:11:44 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 21 Jun 2019 01:11:11 -0700
Message-Id: <20190621081116.18335-5-andrew.smirnov@gmail.com>
In-Reply-To: <20190621081116.18335-1-andrew.smirnov@gmail.com>
References: <20190621081116.18335-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 05/10] Documentation: zii-vf610-dev: Add necessary post reset
 delay
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

As observed on CFU1 board, without this delay we interrupt mask ROM
code execution even before it sets up any PLLs correctly preventing
Barebox from correctly starting up. Fixing this by adding PLL setup
code to OpenOCD script helps somewhat and Barebox starts, howerver CPU
started this way ends up being unstable crashing randomly during
further Barebox use.

Adding a simple 100 ms post reset delay resolves all of the described
issues. This is also consistent with how other ZII boards are set up.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 Documentation/boards/imx/zii-vf610-dev/openocd.cfg | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/Documentation/boards/imx/zii-vf610-dev/openocd.cfg b/Documentation/boards/imx/zii-vf610-dev/openocd.cfg
index 509f9e33c..0d0e0d578 100644
--- a/Documentation/boards/imx/zii-vf610-dev/openocd.cfg
+++ b/Documentation/boards/imx/zii-vf610-dev/openocd.cfg
@@ -19,6 +19,8 @@ reset_config srst_only srst_push_pull connect_deassert_srst
 # set a slow default JTAG clock, can be overridden later
 adapter_khz 1000
 
+adapter_nsrst_delay 100
+
 # Source generic VF6xx target configuration
 source [find target/vybrid_vf6xx.cfg]
 source [find mem_helper.tcl]
@@ -186,8 +188,7 @@ proc clock_init { } {
 	#
 	# This code assumes that debugger would be unable to prevent
 	# MaskROM initialization code from running before halting the
-	# processor. TODO: Port the initial clock settings as
-	# specified in TRM
+	# processor.
 	#
 	# Ungate all of the peripheral clocks
 	#
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
