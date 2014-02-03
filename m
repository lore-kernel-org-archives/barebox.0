Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og106.obsmtp.com ([64.18.0.182])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WAL9D-0003Xy-Cr
 for barebox@lists.infradead.org; Mon, 03 Feb 2014 15:09:19 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Mon,  3 Feb 2014 15:08:24 +0000
Message-Id: <1391440105-16959-2-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1391440105-16959-1-git-send-email-renaud.barbier@ge.com>
References: <1391440105-16959-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 1/2] DA923RC: add boot script
To: barebox@lists.infradead.org

A boot script is added to load DTB and Linux images for booting.
The init script starts the boot script after a 5s timeout window.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/boards/geip-da923rc/env/bin/boot |    9 +++++++++
 arch/ppc/boards/geip-da923rc/env/bin/init |   10 ++++++++++
 2 files changed, 19 insertions(+), 0 deletions(-)
 create mode 100644 arch/ppc/boards/geip-da923rc/env/bin/boot

diff --git a/arch/ppc/boards/geip-da923rc/env/bin/boot b/arch/ppc/boards/geip-da923rc/env/bin/boot
new file mode 100644
index 0000000..ce7da18
--- /dev/null
+++ b/arch/ppc/boards/geip-da923rc/env/bin/boot
@@ -0,0 +1,9 @@
+#!/bin/sh
+#Load the firmware images from the NOR UBIFS file system and boot
+
+readlink /mnt/active symlink
+
+bootargs="ubi.mtd=nand root=ubi0:fs-active rootfstype=ubifs rw panic=25"
+cp /mnt/$symlink/uImage /
+cp /mnt/$symlink/dtb /
+bootm -o /dtb /uImage
\ No newline at end of file
diff --git a/arch/ppc/boards/geip-da923rc/env/bin/init b/arch/ppc/boards/geip-da923rc/env/bin/init
index 330a435..80cc2cf 100644
--- a/arch/ppc/boards/geip-da923rc/env/bin/init
+++ b/arch/ppc/boards/geip-da923rc/env/bin/init
@@ -14,3 +14,13 @@ fi
 
 mkdir /mnt
 mount -t ubifs /dev/ubi0.boot /mnt
+
+echo
+echo -n "Hit ctrl-c to stop autoboot: "
+timeout -c 5
+
+if [ $? -ne 0 ]; then
+	exit 0
+fi
+
+boot
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
