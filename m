Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U5fTJ-0005CU-EL
 for barebox@lists.infradead.org; Wed, 13 Feb 2013 16:46:14 +0000
From: Maxime Ripard <maxime.ripard@free-electrons.com>
Date: Wed, 13 Feb 2013 17:45:18 +0100
Message-Id: <1360773918-10663-3-git-send-email-maxime.ripard@free-electrons.com>
In-Reply-To: <1360773918-10663-1-git-send-email-maxime.ripard@free-electrons.com>
References: <1360773918-10663-1-git-send-email-maxime.ripard@free-electrons.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/2] cfa10036: Update the environment
To: barebox@lists.infradead.org
Cc: Brian Lilly <brian@crystalfontz.com>

Since we added a new partition in the board, the partitions number of
the boot and rootfs partition have changed as well.

Signed-off-by: Maxime Ripard <maxime.ripard@free-electrons.com>
---
 arch/arm/boards/crystalfontz-cfa10036/env/boot/mmc-ext3  |    6 +++---
 arch/arm/boards/crystalfontz-cfa10036/env/init/automount |    4 ++--
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boards/crystalfontz-cfa10036/env/boot/mmc-ext3 b/arch/arm/boards/crystalfontz-cfa10036/env/boot/mmc-ext3
index 5e508f9..439d174 100644
--- a/arch/arm/boards/crystalfontz-cfa10036/env/boot/mmc-ext3
+++ b/arch/arm/boards/crystalfontz-cfa10036/env/boot/mmc-ext3
@@ -5,6 +5,6 @@ if [ "$1" = menu ]; then
 	exit
 fi
 
-global.bootm.image="/mnt/disk0.1/zImage-${global.hostname}"
-global.bootm.oftree="/mnt/disk0.1/oftree-${global.board.variant}"
-global.linux.bootargs.dyn.root="root=/dev/mmcblk0p3 rootfstype=ext3 rootwait"
+global.bootm.image="/mnt/disk0.2/zImage-${global.hostname}"
+global.bootm.oftree="/mnt/disk0.2/oftree-${global.board.variant}"
+global.linux.bootargs.dyn.root="root=/dev/mmcblk0p4 rootfstype=ext3 rootwait"
diff --git a/arch/arm/boards/crystalfontz-cfa10036/env/init/automount b/arch/arm/boards/crystalfontz-cfa10036/env/init/automount
index 668775d..8fdca7c 100644
--- a/arch/arm/boards/crystalfontz-cfa10036/env/init/automount
+++ b/arch/arm/boards/crystalfontz-cfa10036/env/init/automount
@@ -5,5 +5,5 @@ if [ "$1" = menu ]; then
 	exit
 fi
 
-mkdir -p /mnt/disk0.1
-automount -d /mnt/disk0.1 '[ -e /dev/disk0.1 ] && mount /dev/disk0.1 /mnt/disk0.1'
+mkdir -p /mnt/disk0.2
+automount -d /mnt/disk0.2 '[ -e /dev/disk0.2 ] && mount /dev/disk0.2 /mnt/disk0.2'
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
