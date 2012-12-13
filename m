Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([88.190.12.23])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tj60Q-0001ui-7l
 for barebox@lists.infradead.org; Thu, 13 Dec 2012 10:27:06 +0000
From: Maxime Ripard <maxime.ripard@free-electrons.com>
Date: Thu, 13 Dec 2012 11:26:45 +0100
Message-Id: <1355394405-18814-4-git-send-email-maxime.ripard@free-electrons.com>
In-Reply-To: <1355394405-18814-1-git-send-email-maxime.ripard@free-electrons.com>
References: <1355394405-18814-1-git-send-email-maxime.ripard@free-electrons.com>
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
Subject: [PATCH 3/3] ARM: cfa10036: Use the board variant to load a different
 device tree
To: barebox@lists.infradead.org
Cc: Brian Lilly <brian@crystalfontz.com>

The board variant found on the AT24 EEPROM holds the variant ID that we
can use to identify which expansion board we are running on and thus
which device tree to load and pass to the kernel.

Signed-off-by: Maxime Ripard <maxime.ripard@free-electrons.com>
---
 .../boards/crystalfontz-cfa10036/env/boot/mmc-ext3 |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/crystalfontz-cfa10036/env/boot/mmc-ext3 b/arch/arm/boards/crystalfontz-cfa10036/env/boot/mmc-ext3
index b2325af..5e508f9 100644
--- a/arch/arm/boards/crystalfontz-cfa10036/env/boot/mmc-ext3
+++ b/arch/arm/boards/crystalfontz-cfa10036/env/boot/mmc-ext3
@@ -5,6 +5,6 @@ if [ "$1" = menu ]; then
 	exit
 fi
 
-global.bootm.image="/mnt/disk0.1/zImage-cfa10036"
-global.bootm.oftree="/mnt/disk0.1/oftree-cfa10036"
+global.bootm.image="/mnt/disk0.1/zImage-${global.hostname}"
+global.bootm.oftree="/mnt/disk0.1/oftree-${global.board.variant}"
 global.linux.bootargs.dyn.root="root=/dev/mmcblk0p3 rootfstype=ext3 rootwait"
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
