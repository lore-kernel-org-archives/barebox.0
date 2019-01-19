Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gker2-0001fI-Kb
 for barebox@lists.infradead.org; Sat, 19 Jan 2019 00:51:21 +0000
Received: by mail-qt1-x843.google.com with SMTP id k12so17253373qtf.7
 for <barebox@lists.infradead.org>; Fri, 18 Jan 2019 16:51:20 -0800 (PST)
From: Vivien Didelot <vivien.didelot@gmail.com>
Date: Fri, 18 Jan 2019 19:51:08 -0500
Message-Id: <20190119005108.31747-1-vivien.didelot@gmail.com>
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
Subject: [PATCH] ARM: zii-vf610-dev: fix boot sd
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Vivien Didelot <vivien.didelot@gmail.com>

The 'sd' boot is currently broken on zii-vf610-dev because there are no
mci devices (anymore?), only mmc. There are also no need to check
for the device number since both Rev B and Rev C report their SD card
slot on mmc1.

Note that mmc1.0 is already mounted on /mnt/mmc1.0 once mmc1.probe=1
is typed. It would've been more appropriate to use "ln /mnt/mmc1.0
/mnt/sd", but ln isn't useable with automount since the mountpoint
needs to be already created and ln has no force option. There are
no complains with having two mountpoints for a device, so just blindly
mount the device again.

Signed-off-by: Vivien Didelot <vivien.didelot@gmail.com>
---
 .../defaultenv-zii-vf610-dev/init/automount-sd       | 12 +-----------
 1 file changed, 1 insertion(+), 11 deletions(-)

diff --git a/arch/arm/boards/zii-vf610-dev/defaultenv-zii-vf610-dev/init/automount-sd b/arch/arm/boards/zii-vf610-dev/defaultenv-zii-vf610-dev/init/automount-sd
index f44dab34e..442c8a61c 100644
--- a/arch/arm/boards/zii-vf610-dev/defaultenv-zii-vf610-dev/init/automount-sd
+++ b/arch/arm/boards/zii-vf610-dev/defaultenv-zii-vf610-dev/init/automount-sd
@@ -1,13 +1,3 @@
 #!/bin/sh
 
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
+automount -d /mnt/sd 'mmc1.probe=1 && mount /dev/mmc1.0 /mnt/sd'
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
