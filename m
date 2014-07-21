Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X97NG-0005dv-3d
 for barebox@lists.infradead.org; Mon, 21 Jul 2014 06:47:02 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 21 Jul 2014 08:46:39 +0200
Message-Id: <1405925199-29423-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] env: Remove bogus USB vendor/product ids
To: barebox@lists.infradead.org

Many boards use a USB vendor id of 0x4321. This doesn't exist and
shouldn't be used. Remove this and also the bogus product id of 0x1234.
The boards will use the barebox default vendor/product id then.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/at91sam9260ek/env/bin/init_board | 5 +----
 arch/arm/boards/at91sam9261ek/env/bin/init_board | 5 +----
 arch/arm/boards/at91sam9263ek/env/bin/init_board | 5 +----
 arch/arm/boards/at91sam9n12ek/env/bin/init_board | 5 +----
 arch/arm/boards/qil-a926x/env/bin/init_board     | 5 +----
 arch/arm/boards/telit-evk-pro3/env/init/usb      | 5 +----
 arch/arm/boards/usb-a926x/env/bin/init_board     | 5 +----
 7 files changed, 7 insertions(+), 28 deletions(-)

diff --git a/arch/arm/boards/at91sam9260ek/env/bin/init_board b/arch/arm/boards/at91sam9260ek/env/bin/init_board
index 27d767d..f1b476d 100644
--- a/arch/arm/boards/at91sam9260ek/env/bin/init_board
+++ b/arch/arm/boards/at91sam9260ek/env/bin/init_board
@@ -3,9 +3,6 @@
 button_name="dfu_bp"
 button_wait=5
 
-product_id=0x1234
-vendor_id=0x4321
-
 dfu_config="/dev/nand0.barebox.bb(barebox)sr,/dev/nand0.kernel.bb(kernel)r,/dev/nand0.rootfs.bb(rootfs)r"
 
 if [ $at91_udc0.vbus != 1 ]; then
@@ -29,7 +26,7 @@ if [ $? = 0 ]; then
 		echo "Start DFU Mode"
 		echo ""
 		led ds5 1
-		dfu ${dfu_config} -P ${product_id} -V ${vendor_id}
+		dfu ${dfu_config}
 		exit
 	fi
 	echo "${button_name} released, normal boot"
diff --git a/arch/arm/boards/at91sam9261ek/env/bin/init_board b/arch/arm/boards/at91sam9261ek/env/bin/init_board
index 8e849c6..39a7f08 100644
--- a/arch/arm/boards/at91sam9261ek/env/bin/init_board
+++ b/arch/arm/boards/at91sam9261ek/env/bin/init_board
@@ -10,9 +10,6 @@ fi
 button_name="dfu_bp"
 button_wait=5
 
-product_id=0x1234
-vendor_id=0x4321
-
 dfu_config="/dev/nand0.barebox.bb(barebox)sr,/dev/nand0.kernel.bb(kernel)r,/dev/nand0.rootfs.bb(rootfs)r"
 
 if [ $at91_udc0.vbus != 1 ]
@@ -54,5 +51,5 @@ echo "Start DFU Mode"
 echo ""
 
 led ds7 1
-dfu ${dfu_config} -P ${product_id} -V ${vendor_id}
+dfu ${dfu_config}
 led ds7 0
diff --git a/arch/arm/boards/at91sam9263ek/env/bin/init_board b/arch/arm/boards/at91sam9263ek/env/bin/init_board
index f2e6294..44972a5 100644
--- a/arch/arm/boards/at91sam9263ek/env/bin/init_board
+++ b/arch/arm/boards/at91sam9263ek/env/bin/init_board
@@ -10,9 +10,6 @@ fi
 button_name="dfu_bp"
 button_wait=5
 
-product_id=0x1234
-vendor_id=0x4321
-
 dfu_config="/dev/nand0.barebox.bb(barebox)sr,/dev/nand0.kernel.bb(kernel)r,/dev/nand0.rootfs.bb(rootfs)r"
 
 if [ $at91_udc0.vbus != 1 ]
@@ -54,5 +51,5 @@ echo "Start DFU Mode"
 echo ""
 
 led ds2 1
-dfu ${dfu_config} -P ${product_id} -V ${vendor_id}
+dfu ${dfu_config}
 led ds2 0
diff --git a/arch/arm/boards/at91sam9n12ek/env/bin/init_board b/arch/arm/boards/at91sam9n12ek/env/bin/init_board
index b41b638..6b44044 100644
--- a/arch/arm/boards/at91sam9n12ek/env/bin/init_board
+++ b/arch/arm/boards/at91sam9n12ek/env/bin/init_board
@@ -10,9 +10,6 @@ fi
 button_name="dfu_bp"
 button_wait=5
 
-product_id=0x1234
-vendor_id=0x4321
-
 dfu_config="/dev/nand0.barebox.bb(barebox)sr,/dev/nand0.kernel.bb(kernel)r,/dev/nand0.rootfs.bb(rootfs)r"
 
 if [ $at91_udc0.vbus != 1 ]
@@ -54,4 +51,4 @@ echo "Start DFU Mode"
 echo ""
 
 led ds5 1
-dfu ${dfu_config} -P ${product_id} -V ${vendor_id}
+dfu ${dfu_config}
diff --git a/arch/arm/boards/qil-a926x/env/bin/init_board b/arch/arm/boards/qil-a926x/env/bin/init_board
index 0a6baf7..09ba7cc 100644
--- a/arch/arm/boards/qil-a926x/env/bin/init_board
+++ b/arch/arm/boards/qil-a926x/env/bin/init_board
@@ -3,9 +3,6 @@
 button_name="dfu_bp"
 button_wait=5
 
-product_id=0x1234
-vendor_id=0x4321
-
 dfu_config="/dev/nand0.barebox.bb(barebox)sr,/dev/nand0.kernel.bb(kernel)r,/dev/nand0.rootfs.bb(rootfs)r"
 
 if [ $at91_udc0.vbus != 1 ]
@@ -46,4 +43,4 @@ echo ""
 echo "Start DFU Mode"
 echo ""
 
-dfu ${dfu_config} -P ${product_id} -V ${vendor_id}
+dfu ${dfu_config}
diff --git a/arch/arm/boards/telit-evk-pro3/env/init/usb b/arch/arm/boards/telit-evk-pro3/env/init/usb
index 47429f5..176c04b 100644
--- a/arch/arm/boards/telit-evk-pro3/env/init/usb
+++ b/arch/arm/boards/telit-evk-pro3/env/init/usb
@@ -5,9 +5,6 @@ gpio_dfu=95
 gpio_name="PC31"
 gpio_wait=5
 
-product_id=0x1234
-vendor_id=0x4321
-
 dfu_config="/dev/nand0.bootstrap.bb(bootstrap)sr,/dev/nand0.barebox.bb(barebox)sr,/dev/nand0.kernel.bb(kernel)r,/dev/nand0.rootfs.bb(rootfs)r"
 
 echo
@@ -30,7 +27,7 @@ if [ $? = 0 ]; then
 	gpio_get_value ${gpio_dfu}
 	if [ $? = 0 ]; then
 		echo "Start DFU Mode"
-		dfu ${dfu_config} -P ${product_id} -V ${vendor_id}
+		dfu ${dfu_config}
 		exit
 	fi
 fi
diff --git a/arch/arm/boards/usb-a926x/env/bin/init_board b/arch/arm/boards/usb-a926x/env/bin/init_board
index 0a6baf7..09ba7cc 100644
--- a/arch/arm/boards/usb-a926x/env/bin/init_board
+++ b/arch/arm/boards/usb-a926x/env/bin/init_board
@@ -3,9 +3,6 @@
 button_name="dfu_bp"
 button_wait=5
 
-product_id=0x1234
-vendor_id=0x4321
-
 dfu_config="/dev/nand0.barebox.bb(barebox)sr,/dev/nand0.kernel.bb(kernel)r,/dev/nand0.rootfs.bb(rootfs)r"
 
 if [ $at91_udc0.vbus != 1 ]
@@ -46,4 +43,4 @@ echo ""
 echo "Start DFU Mode"
 echo ""
 
-dfu ${dfu_config} -P ${product_id} -V ${vendor_id}
+dfu ${dfu_config}
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
