Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo2.mail-out.ovh.net ([87.98.172.75])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YAurM-0007sG-Qn
 for barebox@lists.infradead.org; Tue, 13 Jan 2015 06:21:51 +0000
Received: from mail94.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 1BD201000A11
 for <barebox@lists.infradead.org>; Tue, 13 Jan 2015 07:21:26 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 13 Jan 2015 07:21:09 +0100
Message-Id: <1421130070-31704-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1421130070-31704-1-git-send-email-plagnioj@jcrosoft.com>
References: <20150113061940.GA30554@ns203013.ovh.net>
 <1421130070-31704-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/3] defaultenv-2: introduce /env/rc.d
To: barebox@lists.infradead.org

as we now will use symlink on /env/rc.d to specify init order

the script will be store in /env/init

so any board can overwrite them or add script that need to run before a
default one

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/archosg9/env/rc.d/020-bootsource                        | 1 +
 .../at91sam9m10ihd/env/init/{mtdparts-002-m25p80 => mtdparts-m25p80}    | 0
 .../boards/at91sam9m10ihd/env/init/{mtdparts-001-nand => mtdparts-nand} | 0
 arch/arm/boards/at91sam9m10ihd/env/rc.d/010-splash                      | 1 +
 arch/arm/boards/at91sam9m10ihd/env/rc.d/101-mtdparts-nand               | 1 +
 arch/arm/boards/at91sam9m10ihd/env/rc.d/102-mtdparts-m25p80             | 1 +
 arch/arm/boards/beagle/env/rc.d/100-mtdparts-nand                       | 1 +
 .../arm/boards/beaglebone/defaultenv-beaglebone/rc.d/050-usb-limit-1300 | 1 +
 arch/arm/boards/ccxmx51/env/rc.d/101-mtdparts-nand                      | 1 +
 arch/arm/boards/clep7212/env/rc.d/020-bootsource                        | 1 +
 .../boards/efika-mx-smartbook/defaultenv-efikasb/rc.d/020-bootsource    | 1 +
 arch/arm/boards/embedsky-e9/defaultenv-e9/rc.d/020-bootsource           | 1 +
 arch/arm/boards/friendlyarm-mini2440/env/rc.d/101-mtdparts-nand         | 1 +
 arch/arm/boards/guf-vincell/env/rc.d/101-mtdparts-nand                  | 1 +
 arch/arm/boards/highbank/env/init/{001-dtb-probe => dtb-probe}          | 0
 arch/arm/boards/highbank/env/rc.d/001-dtb-probe                         | 1 +
 .../imx233-olinuxino/defaultenv-imx233-olinuxino/rc.d/011-automount-sd  | 1 +
 arch/arm/boards/karo-tx25/env/rc.d/101-mtdparts-nand                    | 1 +
 arch/arm/boards/mx31moboard/env/rc.d/101-mtdparts-nor                   | 1 +
 .../phytec-phycore-am335x/defaultenv-phycore-am335x/rc.d/020-bootsource | 1 +
 .../defaultenv-phycore-am335x/rc.d/080-init-usbserial                   | 1 +
 arch/arm/boards/phytec-phycore-imx31/env/rc.d/101-mtdparts-nand         | 1 +
 arch/arm/boards/phytec-phycore-imx31/env/rc.d/102-mtdparts-nor          | 1 +
 arch/arm/boards/phytec-phycore-imx35/env/rc.d/101-mtdparts-nand         | 1 +
 arch/arm/boards/phytec-phycore-imx35/env/rc.d/102-mtdparts-nor          | 1 +
 .../phytec-phyflex-am335x/defaultenv-phyflex-am335x/rc.d/020-bootsource | 1 +
 arch/arm/boards/raspberry-pi/env/rc.d/070-bootargs-base                 | 1 +
 arch/arm/boards/telit-evk-pro3/env/rc.d/101-mtdparts-nand               | 1 +
 arch/arm/boards/telit-evk-pro3/env/rc.d/200-usb                         | 1 +
 arch/arm/boards/versatile/env/rc.d/102-mtdparts-nor                     | 1 +
 defaultenv/defaultenv-2-base/bin/init                                   | 2 +-
 defaultenv/defaultenv-2-base/rc.d/010-automount                         | 1 +
 defaultenv/defaultenv-2-base/rc.d/020-ps1                               | 1 +
 33 files changed, 30 insertions(+), 1 deletion(-)
 create mode 120000 arch/arm/boards/archosg9/env/rc.d/020-bootsource
 rename arch/arm/boards/at91sam9m10ihd/env/init/{mtdparts-002-m25p80 => mtdparts-m25p80} (100%)
 rename arch/arm/boards/at91sam9m10ihd/env/init/{mtdparts-001-nand => mtdparts-nand} (100%)
 create mode 120000 arch/arm/boards/at91sam9m10ihd/env/rc.d/010-splash
 create mode 120000 arch/arm/boards/at91sam9m10ihd/env/rc.d/101-mtdparts-nand
 create mode 120000 arch/arm/boards/at91sam9m10ihd/env/rc.d/102-mtdparts-m25p80
 create mode 120000 arch/arm/boards/beagle/env/rc.d/100-mtdparts-nand
 create mode 120000 arch/arm/boards/beaglebone/defaultenv-beaglebone/rc.d/050-usb-limit-1300
 create mode 120000 arch/arm/boards/ccxmx51/env/rc.d/101-mtdparts-nand
 create mode 120000 arch/arm/boards/clep7212/env/rc.d/020-bootsource
 create mode 120000 arch/arm/boards/efika-mx-smartbook/defaultenv-efikasb/rc.d/020-bootsource
 create mode 120000 arch/arm/boards/embedsky-e9/defaultenv-e9/rc.d/020-bootsource
 create mode 120000 arch/arm/boards/friendlyarm-mini2440/env/rc.d/101-mtdparts-nand
 create mode 120000 arch/arm/boards/guf-vincell/env/rc.d/101-mtdparts-nand
 rename arch/arm/boards/highbank/env/init/{001-dtb-probe => dtb-probe} (100%)
 create mode 120000 arch/arm/boards/highbank/env/rc.d/001-dtb-probe
 create mode 120000 arch/arm/boards/imx233-olinuxino/defaultenv-imx233-olinuxino/rc.d/011-automount-sd
 create mode 120000 arch/arm/boards/karo-tx25/env/rc.d/101-mtdparts-nand
 create mode 120000 arch/arm/boards/mx31moboard/env/rc.d/101-mtdparts-nor
 create mode 120000 arch/arm/boards/phytec-phycore-am335x/defaultenv-phycore-am335x/rc.d/020-bootsource
 create mode 120000 arch/arm/boards/phytec-phycore-am335x/defaultenv-phycore-am335x/rc.d/080-init-usbserial
 create mode 120000 arch/arm/boards/phytec-phycore-imx31/env/rc.d/101-mtdparts-nand
 create mode 120000 arch/arm/boards/phytec-phycore-imx31/env/rc.d/102-mtdparts-nor
 create mode 120000 arch/arm/boards/phytec-phycore-imx35/env/rc.d/101-mtdparts-nand
 create mode 120000 arch/arm/boards/phytec-phycore-imx35/env/rc.d/102-mtdparts-nor
 create mode 120000 arch/arm/boards/phytec-phyflex-am335x/defaultenv-phyflex-am335x/rc.d/020-bootsource
 create mode 120000 arch/arm/boards/raspberry-pi/env/rc.d/070-bootargs-base
 create mode 120000 arch/arm/boards/telit-evk-pro3/env/rc.d/101-mtdparts-nand
 create mode 120000 arch/arm/boards/telit-evk-pro3/env/rc.d/200-usb
 create mode 120000 arch/arm/boards/versatile/env/rc.d/102-mtdparts-nor
 create mode 120000 defaultenv/defaultenv-2-base/rc.d/010-automount
 create mode 120000 defaultenv/defaultenv-2-base/rc.d/020-ps1

diff --git a/arch/arm/boards/archosg9/env/rc.d/020-bootsource b/arch/arm/boards/archosg9/env/rc.d/020-bootsource
new file mode 120000
index 0000000..ee2daee
--- /dev/null
+++ b/arch/arm/boards/archosg9/env/rc.d/020-bootsource
@@ -0,0 +1 @@
+../init/bootsource
\ No newline at end of file
diff --git a/arch/arm/boards/at91sam9m10ihd/env/init/mtdparts-002-m25p80 b/arch/arm/boards/at91sam9m10ihd/env/init/mtdparts-m25p80
similarity index 100%
rename from arch/arm/boards/at91sam9m10ihd/env/init/mtdparts-002-m25p80
rename to arch/arm/boards/at91sam9m10ihd/env/init/mtdparts-m25p80
diff --git a/arch/arm/boards/at91sam9m10ihd/env/init/mtdparts-001-nand b/arch/arm/boards/at91sam9m10ihd/env/init/mtdparts-nand
similarity index 100%
rename from arch/arm/boards/at91sam9m10ihd/env/init/mtdparts-001-nand
rename to arch/arm/boards/at91sam9m10ihd/env/init/mtdparts-nand
diff --git a/arch/arm/boards/at91sam9m10ihd/env/rc.d/010-splash b/arch/arm/boards/at91sam9m10ihd/env/rc.d/010-splash
new file mode 120000
index 0000000..f00f86e
--- /dev/null
+++ b/arch/arm/boards/at91sam9m10ihd/env/rc.d/010-splash
@@ -0,0 +1 @@
+../init/splash
\ No newline at end of file
diff --git a/arch/arm/boards/at91sam9m10ihd/env/rc.d/101-mtdparts-nand b/arch/arm/boards/at91sam9m10ihd/env/rc.d/101-mtdparts-nand
new file mode 120000
index 0000000..5d21650
--- /dev/null
+++ b/arch/arm/boards/at91sam9m10ihd/env/rc.d/101-mtdparts-nand
@@ -0,0 +1 @@
+../init/mtdparts-nand
\ No newline at end of file
diff --git a/arch/arm/boards/at91sam9m10ihd/env/rc.d/102-mtdparts-m25p80 b/arch/arm/boards/at91sam9m10ihd/env/rc.d/102-mtdparts-m25p80
new file mode 120000
index 0000000..b94f17f
--- /dev/null
+++ b/arch/arm/boards/at91sam9m10ihd/env/rc.d/102-mtdparts-m25p80
@@ -0,0 +1 @@
+../init/mtdparts-m25p80
\ No newline at end of file
diff --git a/arch/arm/boards/beagle/env/rc.d/100-mtdparts-nand b/arch/arm/boards/beagle/env/rc.d/100-mtdparts-nand
new file mode 120000
index 0000000..5d21650
--- /dev/null
+++ b/arch/arm/boards/beagle/env/rc.d/100-mtdparts-nand
@@ -0,0 +1 @@
+../init/mtdparts-nand
\ No newline at end of file
diff --git a/arch/arm/boards/beaglebone/defaultenv-beaglebone/rc.d/050-usb-limit-1300 b/arch/arm/boards/beaglebone/defaultenv-beaglebone/rc.d/050-usb-limit-1300
new file mode 120000
index 0000000..205f223
--- /dev/null
+++ b/arch/arm/boards/beaglebone/defaultenv-beaglebone/rc.d/050-usb-limit-1300
@@ -0,0 +1 @@
+../init/usb-limit-1300
\ No newline at end of file
diff --git a/arch/arm/boards/ccxmx51/env/rc.d/101-mtdparts-nand b/arch/arm/boards/ccxmx51/env/rc.d/101-mtdparts-nand
new file mode 120000
index 0000000..5d21650
--- /dev/null
+++ b/arch/arm/boards/ccxmx51/env/rc.d/101-mtdparts-nand
@@ -0,0 +1 @@
+../init/mtdparts-nand
\ No newline at end of file
diff --git a/arch/arm/boards/clep7212/env/rc.d/020-bootsource b/arch/arm/boards/clep7212/env/rc.d/020-bootsource
new file mode 120000
index 0000000..ee2daee
--- /dev/null
+++ b/arch/arm/boards/clep7212/env/rc.d/020-bootsource
@@ -0,0 +1 @@
+../init/bootsource
\ No newline at end of file
diff --git a/arch/arm/boards/efika-mx-smartbook/defaultenv-efikasb/rc.d/020-bootsource b/arch/arm/boards/efika-mx-smartbook/defaultenv-efikasb/rc.d/020-bootsource
new file mode 120000
index 0000000..ee2daee
--- /dev/null
+++ b/arch/arm/boards/efika-mx-smartbook/defaultenv-efikasb/rc.d/020-bootsource
@@ -0,0 +1 @@
+../init/bootsource
\ No newline at end of file
diff --git a/arch/arm/boards/embedsky-e9/defaultenv-e9/rc.d/020-bootsource b/arch/arm/boards/embedsky-e9/defaultenv-e9/rc.d/020-bootsource
new file mode 120000
index 0000000..ee2daee
--- /dev/null
+++ b/arch/arm/boards/embedsky-e9/defaultenv-e9/rc.d/020-bootsource
@@ -0,0 +1 @@
+../init/bootsource
\ No newline at end of file
diff --git a/arch/arm/boards/friendlyarm-mini2440/env/rc.d/101-mtdparts-nand b/arch/arm/boards/friendlyarm-mini2440/env/rc.d/101-mtdparts-nand
new file mode 120000
index 0000000..5d21650
--- /dev/null
+++ b/arch/arm/boards/friendlyarm-mini2440/env/rc.d/101-mtdparts-nand
@@ -0,0 +1 @@
+../init/mtdparts-nand
\ No newline at end of file
diff --git a/arch/arm/boards/guf-vincell/env/rc.d/101-mtdparts-nand b/arch/arm/boards/guf-vincell/env/rc.d/101-mtdparts-nand
new file mode 120000
index 0000000..5d21650
--- /dev/null
+++ b/arch/arm/boards/guf-vincell/env/rc.d/101-mtdparts-nand
@@ -0,0 +1 @@
+../init/mtdparts-nand
\ No newline at end of file
diff --git a/arch/arm/boards/highbank/env/init/001-dtb-probe b/arch/arm/boards/highbank/env/init/dtb-probe
similarity index 100%
rename from arch/arm/boards/highbank/env/init/001-dtb-probe
rename to arch/arm/boards/highbank/env/init/dtb-probe
diff --git a/arch/arm/boards/highbank/env/rc.d/001-dtb-probe b/arch/arm/boards/highbank/env/rc.d/001-dtb-probe
new file mode 120000
index 0000000..58ee2b5
--- /dev/null
+++ b/arch/arm/boards/highbank/env/rc.d/001-dtb-probe
@@ -0,0 +1 @@
+../init/dtb-probe
\ No newline at end of file
diff --git a/arch/arm/boards/imx233-olinuxino/defaultenv-imx233-olinuxino/rc.d/011-automount-sd b/arch/arm/boards/imx233-olinuxino/defaultenv-imx233-olinuxino/rc.d/011-automount-sd
new file mode 120000
index 0000000..c7c49e4
--- /dev/null
+++ b/arch/arm/boards/imx233-olinuxino/defaultenv-imx233-olinuxino/rc.d/011-automount-sd
@@ -0,0 +1 @@
+../init/automount-sd
\ No newline at end of file
diff --git a/arch/arm/boards/karo-tx25/env/rc.d/101-mtdparts-nand b/arch/arm/boards/karo-tx25/env/rc.d/101-mtdparts-nand
new file mode 120000
index 0000000..5d21650
--- /dev/null
+++ b/arch/arm/boards/karo-tx25/env/rc.d/101-mtdparts-nand
@@ -0,0 +1 @@
+../init/mtdparts-nand
\ No newline at end of file
diff --git a/arch/arm/boards/mx31moboard/env/rc.d/101-mtdparts-nor b/arch/arm/boards/mx31moboard/env/rc.d/101-mtdparts-nor
new file mode 120000
index 0000000..0bf4f45
--- /dev/null
+++ b/arch/arm/boards/mx31moboard/env/rc.d/101-mtdparts-nor
@@ -0,0 +1 @@
+../init/mtdparts-nor
\ No newline at end of file
diff --git a/arch/arm/boards/phytec-phycore-am335x/defaultenv-phycore-am335x/rc.d/020-bootsource b/arch/arm/boards/phytec-phycore-am335x/defaultenv-phycore-am335x/rc.d/020-bootsource
new file mode 120000
index 0000000..ee2daee
--- /dev/null
+++ b/arch/arm/boards/phytec-phycore-am335x/defaultenv-phycore-am335x/rc.d/020-bootsource
@@ -0,0 +1 @@
+../init/bootsource
\ No newline at end of file
diff --git a/arch/arm/boards/phytec-phycore-am335x/defaultenv-phycore-am335x/rc.d/080-init-usbserial b/arch/arm/boards/phytec-phycore-am335x/defaultenv-phycore-am335x/rc.d/080-init-usbserial
new file mode 120000
index 0000000..8f3ef95
--- /dev/null
+++ b/arch/arm/boards/phytec-phycore-am335x/defaultenv-phycore-am335x/rc.d/080-init-usbserial
@@ -0,0 +1 @@
+../init/init-usbserial
\ No newline at end of file
diff --git a/arch/arm/boards/phytec-phycore-imx31/env/rc.d/101-mtdparts-nand b/arch/arm/boards/phytec-phycore-imx31/env/rc.d/101-mtdparts-nand
new file mode 120000
index 0000000..5d21650
--- /dev/null
+++ b/arch/arm/boards/phytec-phycore-imx31/env/rc.d/101-mtdparts-nand
@@ -0,0 +1 @@
+../init/mtdparts-nand
\ No newline at end of file
diff --git a/arch/arm/boards/phytec-phycore-imx31/env/rc.d/102-mtdparts-nor b/arch/arm/boards/phytec-phycore-imx31/env/rc.d/102-mtdparts-nor
new file mode 120000
index 0000000..0bf4f45
--- /dev/null
+++ b/arch/arm/boards/phytec-phycore-imx31/env/rc.d/102-mtdparts-nor
@@ -0,0 +1 @@
+../init/mtdparts-nor
\ No newline at end of file
diff --git a/arch/arm/boards/phytec-phycore-imx35/env/rc.d/101-mtdparts-nand b/arch/arm/boards/phytec-phycore-imx35/env/rc.d/101-mtdparts-nand
new file mode 120000
index 0000000..5d21650
--- /dev/null
+++ b/arch/arm/boards/phytec-phycore-imx35/env/rc.d/101-mtdparts-nand
@@ -0,0 +1 @@
+../init/mtdparts-nand
\ No newline at end of file
diff --git a/arch/arm/boards/phytec-phycore-imx35/env/rc.d/102-mtdparts-nor b/arch/arm/boards/phytec-phycore-imx35/env/rc.d/102-mtdparts-nor
new file mode 120000
index 0000000..0bf4f45
--- /dev/null
+++ b/arch/arm/boards/phytec-phycore-imx35/env/rc.d/102-mtdparts-nor
@@ -0,0 +1 @@
+../init/mtdparts-nor
\ No newline at end of file
diff --git a/arch/arm/boards/phytec-phyflex-am335x/defaultenv-phyflex-am335x/rc.d/020-bootsource b/arch/arm/boards/phytec-phyflex-am335x/defaultenv-phyflex-am335x/rc.d/020-bootsource
new file mode 120000
index 0000000..ee2daee
--- /dev/null
+++ b/arch/arm/boards/phytec-phyflex-am335x/defaultenv-phyflex-am335x/rc.d/020-bootsource
@@ -0,0 +1 @@
+../init/bootsource
\ No newline at end of file
diff --git a/arch/arm/boards/raspberry-pi/env/rc.d/070-bootargs-base b/arch/arm/boards/raspberry-pi/env/rc.d/070-bootargs-base
new file mode 120000
index 0000000..af70d5c
--- /dev/null
+++ b/arch/arm/boards/raspberry-pi/env/rc.d/070-bootargs-base
@@ -0,0 +1 @@
+../init/bootargs-base
\ No newline at end of file
diff --git a/arch/arm/boards/telit-evk-pro3/env/rc.d/101-mtdparts-nand b/arch/arm/boards/telit-evk-pro3/env/rc.d/101-mtdparts-nand
new file mode 120000
index 0000000..5d21650
--- /dev/null
+++ b/arch/arm/boards/telit-evk-pro3/env/rc.d/101-mtdparts-nand
@@ -0,0 +1 @@
+../init/mtdparts-nand
\ No newline at end of file
diff --git a/arch/arm/boards/telit-evk-pro3/env/rc.d/200-usb b/arch/arm/boards/telit-evk-pro3/env/rc.d/200-usb
new file mode 120000
index 0000000..a08347f
--- /dev/null
+++ b/arch/arm/boards/telit-evk-pro3/env/rc.d/200-usb
@@ -0,0 +1 @@
+../init/usb
\ No newline at end of file
diff --git a/arch/arm/boards/versatile/env/rc.d/102-mtdparts-nor b/arch/arm/boards/versatile/env/rc.d/102-mtdparts-nor
new file mode 120000
index 0000000..0bf4f45
--- /dev/null
+++ b/arch/arm/boards/versatile/env/rc.d/102-mtdparts-nor
@@ -0,0 +1 @@
+../init/mtdparts-nor
\ No newline at end of file
diff --git a/defaultenv/defaultenv-2-base/bin/init b/defaultenv/defaultenv-2-base/bin/init
index 34807bc..63e400f 100644
--- a/defaultenv/defaultenv-2-base/bin/init
+++ b/defaultenv/defaultenv-2-base/bin/init
@@ -45,7 +45,7 @@ fi
 
 [ -n ${login_cmd} ] && global.console.input_allow=0
 
-for i in /env/init/*; do
+for i in /env/rc.d/*; do
 	. $i
 done
 
diff --git a/defaultenv/defaultenv-2-base/rc.d/010-automount b/defaultenv/defaultenv-2-base/rc.d/010-automount
new file mode 120000
index 0000000..d61facf
--- /dev/null
+++ b/defaultenv/defaultenv-2-base/rc.d/010-automount
@@ -0,0 +1 @@
+../init/automount
\ No newline at end of file
diff --git a/defaultenv/defaultenv-2-base/rc.d/020-ps1 b/defaultenv/defaultenv-2-base/rc.d/020-ps1
new file mode 120000
index 0000000..774d5e2
--- /dev/null
+++ b/defaultenv/defaultenv-2-base/rc.d/020-ps1
@@ -0,0 +1 @@
+../init/ps1
\ No newline at end of file
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
