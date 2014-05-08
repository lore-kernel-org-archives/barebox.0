Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ie0-x229.google.com ([2607:f8b0:4001:c03::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WiSqk-0000t1-Um
 for barebox@lists.infradead.org; Thu, 08 May 2014 18:15:19 +0000
Received: by mail-ie0-f169.google.com with SMTP id rl12so3014724iec.0
 for <barebox@lists.infradead.org>; Thu, 08 May 2014 11:14:57 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 8 May 2014 14:14:56 -0400
Message-ID: <CAO6XYUuw3LiNg4Z6xaOUEjMhJNXo9rEzWYVuVf1kyr6ghbX77Q@mail.gmail.com>
From: "Michael D. Burkey" <mdburkey@gmail.com>
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
Subject: [PATCH 1/1] Update DCD to support newer Variscite iMX6 SOM's DDR3
 timing
To: barebox@lists.infradead.org

The following patch updates the DCD table in the Variscite iMX6 SOM to
match the current values being used in the most recent u-Boot
distributed in the Variscite Yocto Dora V4 release. These changes are
needed in order to use the most recent SOM's being shipped by
Variscite (due to changes in the DDR3 timing). This set of DCD
configuration is aimed at the quad core version of the SOM only.

Signed-off-by: Michael Burkey <mdburkey at gmail.com>
---

diff -rupN a/arch/arm/boards/variscite-mx6/flash-header-variscite.imxcfg
b/arch/arm/boards/variscite-mx6/flash-header-variscite.imxcfg
--- a/arch/arm/boards/variscite-mx6/flash-header-variscite.imxcfg	2014-05-05
04:33:13.000000000 -0400
+++ b/arch/arm/boards/variscite-mx6/flash-header-variscite.imxcfg	2014-05-08
13:58:45.393092594 -0400
@@ -40,18 +40,18 @@ wm 32 0x020e0510 0x00000030
 wm 32 0x020e05bc 0x00000030
 wm 32 0x020e05c4 0x00000030
 wm 32 0x021b0800 0xA1390003
-wm 32 0x021b080c 0x001F001F
-wm 32 0x021b0810 0x001F001F
-wm 32 0x021b480c 0x001F001F
-wm 32 0x021b4810 0x001F001F
-wm 32 0x021b083c 0x4333033F
-wm 32 0x021b0840 0x032C031D
-wm 32 0x021b483c 0x43200332
-wm 32 0x021b4840 0x031A026A
-wm 32 0x021b0848 0x4D464746
-wm 32 0x021b4848 0x47453F4D
-wm 32 0x021b0850 0x3E434440
-wm 32 0x021b4850 0x47384839
+wm 32 0x021b080c 0x001C0019
+wm 32 0x021b0810 0x00260026
+wm 32 0x021b480c 0x001D002C
+wm 32 0x021b4810 0x0019002E
+wm 32 0x021b083c 0x45300544
+wm 32 0x021b0840 0x052C0520
+wm 32 0x021b483c 0x4528053C
+wm 32 0x021b4840 0x052C0470
+wm 32 0x021b0848 0x3E363A40
+wm 32 0x021b4848 0x403C3246
+wm 32 0x021b0850 0x3A38443C
+wm 32 0x021b4850 0x48364A3E
 wm 32 0x021b081c 0x33333333
 wm 32 0x021b0820 0x33333333
 wm 32 0x021b0824 0x33333333
@@ -64,18 +64,18 @@ wm 32 0x021b08b8 0x00000800
 wm 32 0x021b48b8 0x00000800
 wm 32 0x021b0004 0x00020036
 wm 32 0x021b0008 0x09444040
-wm 32 0x021b000c 0x555A7975
-wm 32 0x021b0010 0xFF538F64
+wm 32 0x021b000c 0x555A7974
+wm 32 0x021b0010 0xDB538F64
 wm 32 0x021b0014 0x01FF00DB
 wm 32 0x021b0018 0x00001740
-wm 32 0x021b001c 0x00008000
+wm 32 0x021b001c 0x00000000
 wm 32 0x021b002c 0x000026D2
 wm 32 0x021b0030 0x005A1023
 wm 32 0x021b0040 0x00000027
 wm 32 0x021b0000 0x831A0000
 wm 32 0x021b001c 0x04088032
 wm 32 0x021b001c 0x00008033
-wm 32 0x021b001c 0x00048031
+wm 32 0x021b001c 0x00428031
 wm 32 0x021b001c 0x09408030
 wm 32 0x021b001c 0x04008040
 wm 32 0x021b0020 0x00005800

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
