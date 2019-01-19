Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qt1-x833.google.com ([2607:f8b0:4864:20::833])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gkeqN-0001RU-4j
 for barebox@lists.infradead.org; Sat, 19 Jan 2019 00:50:40 +0000
Received: by mail-qt1-x833.google.com with SMTP id r14so17350171qtp.1
 for <barebox@lists.infradead.org>; Fri, 18 Jan 2019 16:50:37 -0800 (PST)
From: Vivien Didelot <vivien.didelot@gmail.com>
Date: Fri, 18 Jan 2019 19:50:18 -0500
Message-Id: <20190119005018.31502-1-vivien.didelot@gmail.com>
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
Subject: [PATCH] defaultenv-2: trigger DHCP before booting 'net'
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Vivien Didelot <vivien.didelot@gmail.com>

Some variables may be set from DHCP requests, as shown below:

    barebox@ZII VF610 Development Board, Rev C:/ echo $global.hostname
    dev-rev-c
    barebox@ZII VF610 Development Board, Rev C:/ echo $global.net.server
    0.0.0.0
    barebox@ZII VF610 Development Board, Rev C:/ dhcp
    eth0: 100Mbps full duplex link detected
    T T T eth0: DHCP client bound to address 192.168.203.31
    barebox@ZII VF610 Development Board, Rev C:/ echo $global.hostname
    zii-dev-rev-c-1
    barebox@ZII VF610 Development Board, Rev C:/ echo $global.net.server
    192.168.203.1
    barebox@ZII VF610 Development Board, Rev C:/

These variables are used by the boot/net script, so it is necessary
to trigger DHCP before we set the TFTP file paths, otherwise booting
from net will fail like below and will need to be triggered twice:

    running /env/bin/init...

    Hit m for menu or any key to stop autoboot:    1
    booting 'net'
    eth0: 100Mbps full duplex link detected
    T T T eth0: DHCP client bound to address 192.168.203.31
    WARNING: eth1: No MAC address set. Using random address 8a:ee:18:f5:98:e7
    T T T T T T T T T T T T T T T T T T T T could not open /mnt/tftp/none-linux-dev-rev-c: No such file or directory
    ERROR: Booting 'net' failed: No such file or directory
    boot: No such file or directory

    type exit to get to the menu
    barebox@ZII VF610 Development Board, Rev C:/ boot
    booting 'net'

    Loading ARM Linux zImage '/mnt/tftp/none-linux-zii-dev-rev-c-1'
    Loaded initrd unknown '/mnt/tftp/none-initramfs-zii-dev-rev-c-1'
    initrd is at 0x82509000-0x835593ff
    Loading devicetree from '/mnt/tftp/none-oftree-zii-dev-rev-c-1'
    commandline:  console=ttyLP0,115200n8 ip=dhcp
    Ucompressing Linux... done, booting the kernel.

To fix this, bring the interfaces up before setting up tftpboot.

Signed-off-by: Vivien Didelot <vivien.didelot@gmail.com>
---
 defaultenv/defaultenv-2-base/boot/net | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/defaultenv/defaultenv-2-base/boot/net b/defaultenv/defaultenv-2-base/boot/net
index aaa5394f2..b0fe4f584 100644
--- a/defaultenv/defaultenv-2-base/boot/net
+++ b/defaultenv/defaultenv-2-base/boot/net
@@ -2,6 +2,9 @@
 
 path="/mnt/tftp"
 
+# global.net.server and global.hostname may be set by DHCP, so trigger it first
+ifup -a
+
 global.bootm.image="${path}/${global.user}-linux-${global.hostname}"
 
 oftree="${path}/${global.user}-oftree-${global.hostname}"
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
