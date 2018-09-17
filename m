Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tf.think-future.de ([193.7.177.246] helo=think-future.de)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g1vkT-000301-3o
 for barebox@lists.infradead.org; Mon, 17 Sep 2018 15:47:48 +0000
From: perachet7@gmail.com
Date: Mon, 17 Sep 2018 17:41:12 +0200
Message-Id: <9551553.ySa1Ws6A1a@think-future.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Reply-To: perachet7@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH]: ARM/RK3188 radxa-rock sdcard boot env file: DTB location fix
To: barebox@lists.infradead.org

Hi,

As Sascha correctly pointed out, the DTB ought to be specified via a global 
var now.
This patch fixes it.

Boot log was:
[...]
Hit any key to stop autoboot:    1
booting 'mshc1'
mount: No such file or directory
ext4 ext40: EXT2 rev 1, inode_size 128, descriptor size 32
mounted /dev/mshc1.0 on /mnt/mshc1.0
setting root node failed: Device or resource busy
oftree: Device or resource busy

Loading ARM Linux zImage '/mnt/mshc1.0/zImage'
[...]

There still are a couple of issues:

1) mount: No such file or directory [still present]

2) setting root node failed: Device or resource busy

3) oftree: Device or resource busy

Numbers 2) and 3) should be fixed now.

Thx.

S.

diff --git a/arch/arm/boards/radxa-rock/env/boot/mshc1 b/arch/arm/boards/
radxa-rock/env/boot/mshc1
index 7393c4e63..b61dd807d 100644
--- a/arch/arm/boards/radxa-rock/env/boot/mshc1
+++ b/arch/arm/boards/radxa-rock/env/boot/mshc1
@@ -3,7 +3,7 @@
 mount /dev/mshc1.0
 
 global.bootm.boot_atag=true
-oftree -l /mnt/mshc1.0/rk3188-radxarock.dtb
+global.bootm.oftree=/mnt/mshc1.0/rk3188-radxarock.dtb
 
 global.bootm.image=/mnt/mshc1.0/zImage
 global.linux.bootargs.dyn.root="root=/dev/mmcblk0p2 rootwait"




_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
