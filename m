Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gBz97-0002ow-HE
 for barebox@lists.infradead.org; Mon, 15 Oct 2018 09:26:54 +0000
Received: by mail-lf1-x144.google.com with SMTP id a82-v6so13564191lfa.4
 for <barebox@lists.infradead.org>; Mon, 15 Oct 2018 02:26:30 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 15 Oct 2018 12:26:11 +0300
Message-Id: <20181015092611.7223-1-antonynpavlov@gmail.com>
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
Subject: [PATCH] net: make routing work after dhcp command
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

At the moment only ifup stuff turns netif up.
After the commit f0624a701513 ('net: Do not route traffic
to interfaces that are not up') the dhcp command
keeps netif->ifup == false and network subsystem
can't route packets.

How to repropduce the problem on qemu-malta_defconfig:

    qemu-system-mips -nodefaults -M malta -m 256 \
                     -nographic -serial stdio -monitor null \
                     -bios barebox-flash-image \
                     -net user -net nic,model=rtl8139

    ...

    barebox:/ dhcp
    eth0: 100Mbps full duplex link detected
    eth0: DHCP client bound to address 10.0.2.15
    barebox:/ ping 10.0.2.2
    ping failed: No route to host

However if ifup command is used for network interface
configuration then there is no network problem, e.g.

    barebox:/ ifup eth0
    eth0: 100Mbps full duplex link detected
    eth0: DHCP client bound to address 10.0.2.15
    barebox:/ ping 10.0.2.2
    host 10.0.2.2 is alive

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
CC: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 net/dhcp.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/net/dhcp.c b/net/dhcp.c
index 984d32a93e..427d80a5a8 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -615,6 +615,9 @@ int dhcp(struct eth_device *edev, const struct dhcp_req_param *param)
 
 	dhcp_result_free(res);
 
+	if (!ret)
+		edev->ifup = true;
+
 	return ret;
 }
 
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
