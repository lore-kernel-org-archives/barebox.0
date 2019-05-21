Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSssh-0003XR-8j
 for barebox@lists.infradead.org; Tue, 21 May 2019 00:43:52 +0000
Received: by mail-qk1-x741.google.com with SMTP id w25so9989319qkj.11
 for <barebox@lists.infradead.org>; Mon, 20 May 2019 17:43:50 -0700 (PDT)
From: Vivien Didelot <vivien.didelot@gmail.com>
Date: Mon, 20 May 2019 20:43:45 -0400
Message-Id: <20190521004345.2396-1-vivien.didelot@gmail.com>
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
Subject: [PATCH] ARM: zii-vf610-dev: disable eth1
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Vivien Didelot <vivien.didelot@gmail.com>

The current support for the ZII Dev Boards time out on eth1 when
booting from net, which takes a while:

    Booting entry 'net'
    eth0: 100Mbps full duplex link detected
    T T T eth0: DHCP client bound to address 192.168.203.22
    WARNING: eth1: No MAC address set. Using random address 3a:e8:f7:52:55:6d
    T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T
    Loading ARM Linux zImage '/mnt/tftp/none-linux-zii-dev-rev-b-2'

eth1 is the DSA master interface and has no use within barebox,
so disable the interface to allow Barebox to boot right away from eth0.

Suggested-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Signed-off-by: Vivien Didelot <vivien.didelot@gmail.com>
---
 .../zii-vf610-dev/defaultenv-zii-vf610-dev/nv/dev.eth1.mode      | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 arch/arm/boards/zii-vf610-dev/defaultenv-zii-vf610-dev/nv/dev.eth1.mode

diff --git a/arch/arm/boards/zii-vf610-dev/defaultenv-zii-vf610-dev/nv/dev.eth1.mode b/arch/arm/boards/zii-vf610-dev/defaultenv-zii-vf610-dev/nv/dev.eth1.mode
new file mode 100644
index 000000000..87e7bdaae
--- /dev/null
+++ b/arch/arm/boards/zii-vf610-dev/defaultenv-zii-vf610-dev/nv/dev.eth1.mode
@@ -0,0 +1 @@
+disabled
\ No newline at end of file
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
