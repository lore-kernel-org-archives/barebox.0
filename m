Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bm13a-0001Sw-LZ
 for barebox@lists.infradead.org; Mon, 19 Sep 2016 16:04:36 +0000
From: Enrico Jorns <ejo@pengutronix.de>
Date: Mon, 19 Sep 2016 18:03:48 +0200
Message-Id: <1474301029-22877-2-git-send-email-ejo@pengutronix.de>
In-Reply-To: <1474301029-22877-1-git-send-email-ejo@pengutronix.de>
References: <1474301029-22877-1-git-send-email-ejo@pengutronix.de>
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
Subject: [PATCH 1/2] net: add linux.bootarg parameter from ifup call
To: barebox@lists.infradead.org
Cc: Michael Olbrich <m.olbrich@pengutronix.de>, Gavin Schenk <g.schenk@eckelmann.de>, Enrico Jorns <ejo@pengutronix.de>, u.kleine-koenig@pengutronix.de

This sets a `ip=dhcp` or
`ip=<clientip>:<serverip>:<gatewayip>:<netmaskip>::<iface>:` bootarg for
the network device upon execution of 'ifup'. This is the only point
where we can distinguish between a static ip and a dhcp-based network
setup and thus set a valid bootarg options as it will be required for
nfs boot, for example.

Signed-off-by: Enrico Jorns <ejo@pengutronix.de>
---
 include/net.h |  1 +
 net/eth.c     |  1 +
 net/ifup.c    | 10 ++++++++++
 3 files changed, 12 insertions(+)

diff --git a/include/net.h b/include/net.h
index fd1c412..632b6d5 100644
--- a/include/net.h
+++ b/include/net.h
@@ -62,6 +62,7 @@ struct eth_device {
 	IPaddr_t netmask;
 	IPaddr_t gateway;
 	char ethaddr[6];
+	char *bootarg;
 };
 
 #define dev_to_edev(d) container_of(d, struct eth_device, dev)
diff --git a/net/eth.c b/net/eth.c
index 6f8e78d..e056826 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -384,6 +384,7 @@ int eth_register(struct eth_device *edev)
 	dev_add_param_ip(dev, "netmask", NULL, NULL, &edev->netmask, edev);
 	dev_add_param_mac(dev, "ethaddr", eth_param_set_ethaddr, NULL,
 			edev->ethaddr, edev);
+	dev_add_param_string(dev, "linux.bootargs", NULL, NULL, &edev->bootarg, NULL);
 
 	if (edev->init)
 		edev->init(edev);
diff --git a/net/ifup.c b/net/ifup.c
index 30ac3f5..618eb8a 100644
--- a/net/ifup.c
+++ b/net/ifup.c
@@ -106,12 +106,22 @@ int ifup(const char *name, unsigned flags)
 		ret = eth_set_param(dev, "serverip");
 		if (ret)
 			goto out;
+		dev_set_param(dev, "linux.bootargs", "ip=dhcp");
 	} else if (!strcmp(ip, "static")) {
+		char *bootarg;
 		for (i = 0; i < ARRAY_SIZE(vars); i++) {
 			ret = eth_set_param(dev, vars[i]);
 			if (ret)
 				goto out;
 		}
+		bootarg = basprintf("ip=%pI4:%pI4:%pI4:%pI4::%s:",
+				&edev->ipaddr,
+				&edev->serverip,
+				&edev->gateway,
+				&edev->netmask,
+				edev->devname);
+		dev_set_param(dev, "linux.bootargs", bootarg);
+		free(bootarg);
 	} else {
 		pr_err("unknown ip type: %s\n", ip);
 		ret = -EINVAL;
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
