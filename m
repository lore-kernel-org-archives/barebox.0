Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x42d.google.com ([2607:f8b0:4864:20::42d])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heEeB-0006Dn-05
 for barebox@lists.infradead.org; Fri, 21 Jun 2019 08:11:48 +0000
Received: by mail-pf1-x42d.google.com with SMTP id d126so3200730pfd.2
 for <barebox@lists.infradead.org>; Fri, 21 Jun 2019 01:11:46 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 21 Jun 2019 01:11:13 -0700
Message-Id: <20190621081116.18335-7-andrew.smirnov@gmail.com>
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
Subject: [PATCH 07/10] Documentation: zii: Fix buggy check_bits_set_32
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Fix a buggy while loop expression, that, due to '==' operator's
precedence (higher than that of '&') was always evaluating to false
rendering busy loop into a no-op.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 Documentation/boards/imx/zii-imx7d-rpu2/openocd.cfg | 2 +-
 Documentation/boards/imx/zii-vf610-dev/openocd.cfg  | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/boards/imx/zii-imx7d-rpu2/openocd.cfg b/Documentation/boards/imx/zii-imx7d-rpu2/openocd.cfg
index 675832b7c..33e3bce9d 100644
--- a/Documentation/boards/imx/zii-imx7d-rpu2/openocd.cfg
+++ b/Documentation/boards/imx/zii-imx7d-rpu2/openocd.cfg
@@ -32,7 +32,7 @@ proc disable_wdog { } {
 set ddr_init_failed 0
 
 proc check_bits_set_32 { addr mask } {
-    while { [expr [mrw $addr] & $mask == 0] } { }
+    while { [expr [mrw $addr] & $mask] == 0 } { }
 }
 
 proc ddr_init { } {
diff --git a/Documentation/boards/imx/zii-vf610-dev/openocd.cfg b/Documentation/boards/imx/zii-vf610-dev/openocd.cfg
index 611687d27..222f48711 100644
--- a/Documentation/boards/imx/zii-vf610-dev/openocd.cfg
+++ b/Documentation/boards/imx/zii-vf610-dev/openocd.cfg
@@ -28,7 +28,7 @@ source [find mem_helper.tcl]
 set ddr_init_failed 0
 
 proc check_bits_set_32 { addr mask } {
-    while { [expr [mrw $addr] & $mask == 0] } { }
+    while { [expr [mrw $addr] & $mask] == 0 } { }
 }
 
 proc ddr_init { } {
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
