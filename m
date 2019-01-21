Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gldl9-0003Lr-EV
 for barebox@lists.infradead.org; Mon, 21 Jan 2019 17:53:20 +0000
Received: by mail-qk1-x741.google.com with SMTP id 68so12709556qke.9
 for <barebox@lists.infradead.org>; Mon, 21 Jan 2019 09:53:19 -0800 (PST)
From: Vivien Didelot <vivien.didelot@gmail.com>
Date: Mon, 21 Jan 2019 12:53:04 -0500
Message-Id: <20190121175305.31674-1-vivien.didelot@gmail.com>
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
Subject: [PATCH 1/2] ARM: zii-vf610-dev: fix boot from SD
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Vivien Didelot <vivien.didelot@gmail.com>

VF610 Dev Rev B and VF610 Dev Rev C boot from SD card attached to
SDHCI1, and CFU1, SPU3 and SCU4 boot from eMMC attached to SDHCI2.

Since 5f99a8d40305 ("dts: VFxxx: Add aliases for ESDHC controllers"),
these devices were renamed from mci0 and mci1 to mmc1 and mmc2.

To fix this, completely drop the automount-sd script, probe mmcX from
the boot/sd script directly and use the mountpoint /mnt/mmcX.0 from
there. At the same time, make the sd variable non global.

Signed-off-by: Vivien Didelot <vivien.didelot@gmail.com>
---
 .../zii-vf610-dev/defaultenv-zii-vf610-dev/boot/sd | 14 ++++++++++++--
 .../defaultenv-zii-vf610-dev/init/automount-sd     | 13 -------------
 2 files changed, 12 insertions(+), 15 deletions(-)
 delete mode 100644 arch/arm/boards/zii-vf610-dev/defaultenv-zii-vf610-dev/init/automount-sd

diff --git a/arch/arm/boards/zii-vf610-dev/defaultenv-zii-vf610-dev/boot/sd b/arch/arm/boards/zii-vf610-dev/defaultenv-zii-vf610-dev/boot/sd
index cf8eec363..1a6f9706b 100644
--- a/arch/arm/boards/zii-vf610-dev/defaultenv-zii-vf610-dev/boot/sd
+++ b/arch/arm/boards/zii-vf610-dev/defaultenv-zii-vf610-dev/boot/sd
@@ -1,4 +1,14 @@
 #!/bin/sh
 
-global.bootm.image=/mnt/sd/zImage
-global.bootm.oftree=/mnt/sd/${global.bootm.oftree}
+if [ x${global.hostname} = xdev-rev-b -o x${global.hostname} = xdev-rev-c ]; then
+    sd=1
+else
+    sd=2
+fi
+
+mmc${sd}.probe=1
+
+path="/mnt/mmc${sd}.0"
+
+global.bootm.image="${path}/zImage"
+global.bootm.oftree="${path}/${global.bootm.oftree}"
diff --git a/arch/arm/boards/zii-vf610-dev/defaultenv-zii-vf610-dev/init/automount-sd b/arch/arm/boards/zii-vf610-dev/defaultenv-zii-vf610-dev/init/automount-sd
deleted file mode 100644
index f44dab34e..000000000
--- a/arch/arm/boards/zii-vf610-dev/defaultenv-zii-vf610-dev/init/automount-sd
+++ /dev/null
@@ -1,13 +0,0 @@
-#!/bin/sh
-
-if [ x${global.hostname} = xdev-rev-b -o x${global.hostname} = xdev-rev-c ];
-then
-    global sd=0
-else
-    global sd=1
-fi
-
-mkdir -p /mnt/sd
-automount /mnt/sd 'mci${global.sd}.probe=1 && mount /dev/disk${global.sd}.0 /mnt/sd'
-
-exit 0
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
