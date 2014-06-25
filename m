Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x232.google.com ([2a00:1450:4010:c03::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wzvkc-0006yB-NK
 for barebox@lists.infradead.org; Wed, 25 Jun 2014 22:33:11 +0000
Received: by mail-la0-f50.google.com with SMTP id pv20so1241764lab.23
 for <barebox@lists.infradead.org>; Wed, 25 Jun 2014 15:32:48 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 26 Jun 2014 02:32:18 +0400
Message-Id: <1403735538-25437-6-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1403735538-25437-1-git-send-email-antonynpavlov@gmail.com>
References: <1403735538-25437-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC v3 5/5] MIPS: qemu-malta_defconfig: enable PCI & network stuff
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Cl=C3=A9ment=20Leger?= <cleger@kalray.eu>

qemu usage:

  # ifconfig br0:1 172.20.0.1
  # qemu-system-mips -nodefaults -nographic -M malta -m 256 \
    -serial stdio -monitor null \
    -bios ./barebox-flash-image \
    -net nic,vlan=0,model=rtl8139 \
    -net tap,vlan=0,script=net_br0.sh

  ...

  barebox:/ eth0.ipaddr=172.20.0.2
  barebox:/ eth0.serverip=172.20.0.1
  barebox:/ ping 172.20.0.1
  phy0: Link is up - 100/Full
  host 172.20.0.1 is alive
  barebox:/

Sample net_br0.sh (for connecting to br0 interface, so you can
connect barebox to your real network):

  #!/bin/sh

  brctl addif br0 $1
  ifconfig $1 up

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/configs/qemu-malta_defconfig | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/mips/configs/qemu-malta_defconfig b/arch/mips/configs/qemu-malta_defconfig
index 78f175d..4fee70e 100644
--- a/arch/mips/configs/qemu-malta_defconfig
+++ b/arch/mips/configs/qemu-malta_defconfig
@@ -1,5 +1,7 @@
 CONFIG_BUILTIN_DTB=y
 CONFIG_BUILTIN_DTB_NAME="qemu-malta"
+CONFIG_PCI=y
+CONFIG_PCI_DEBUG=y
 CONFIG_PBL_IMAGE=y
 CONFIG_STACK_SIZE=0x7000
 CONFIG_BROKEN=y
@@ -32,6 +34,7 @@ CONFIG_CMD_UNCOMPRESS=y
 CONFIG_CMD_GETOPT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_DHCP=y
+CONFIG_CMD_MIITOOL=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_CMD_ECHO_E=y
@@ -56,6 +59,7 @@ CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_OFDEVICE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
+CONFIG_DRIVER_NET_RTL8139=y
 # CONFIG_SPI is not set
 CONFIG_I2C=y
 CONFIG_I2C_GPIO=y
-- 
1.9.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
