Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z4OIv-0002OH-5t
 for barebox@lists.infradead.org; Mon, 15 Jun 2015 06:55:34 +0000
Date: Mon, 15 Jun 2015 08:55:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150615065510.GP6325@pengutronix.de>
References: <1433833465-6569-1-git-send-email-w.egorov@phytec.de>
 <20150610043237.GT6325@pengutronix.de> <5577DCBB.7090705@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5577DCBB.7090705@phytec.de>
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
Subject: Re: [PATCH] net: Set the actual ethaddr in
 register_preset_mac_address()
To: Wadim Egorov <w.egorov@phytec.de>
Cc: barebox@lists.infradead.org

On Wed, Jun 10, 2015 at 08:44:11AM +0200, Wadim Egorov wrote:
> Hello Sascha,
> 
> 
> On 10.06.2015 06:32, Sascha Hauer wrote:
> >Hi Wadim,
> >
> >On Tue, Jun 09, 2015 at 09:04:25AM +0200, Wadim Egorov wrote:
> >>Set the ethaddr for the current edev.
> >>
> >>Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
> >>---
> >>  net/eth.c | 1 +
> >>  1 file changed, 1 insertion(+)
> >>
> >>diff --git a/net/eth.c b/net/eth.c
> >>index 89bddba..03e0a2e 100644
> >>--- a/net/eth.c
> >>+++ b/net/eth.c
> >>@@ -49,6 +49,7 @@ static void register_preset_mac_address(struct eth_device *edev, const char *eth
> >>  	ethaddr_to_string(ethaddr, ethaddr_str);
> >>  	if (is_valid_ether_addr(ethaddr)) {
> >>+		memcpy(edev->ethaddr, ethaddr, 6);
> >>  		dev_info(&edev->dev, "got preset MAC address: %s\n", ethaddr_str);
> >>  		dev_set_param(&edev->dev, "ethaddr", ethaddr_str);
> >>  	}
> >In which case is this necessary? Normally a dev_set_param on "ethaddr"
> >should already set edev->ethaddr, there should be no need to copy this
> >manually.
> >
> >Sascha
> 
> when booting from ethernet on the AM335x, net_new() (called in net_udp_new)
> will check if ethaddr is valid. This check fails, because ethaddr is not
> set at this moment and a random MAC will be used.

You mean from the MLO? Is CONFIG_PARAMETER disabled? If yes I understand
the problem. Could you try this patch?
Please ignore the discards const compiler warning for now.

Sascha

---------------------8<-----------------------------

From 3b97ddde406b15c5b3db91268e1e4b4aedaf0564 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 15 Jun 2015 08:52:15 +0200
Subject: [PATCH] net: eth: Do not rely on CONFIG_PARAMETER to be enabled

register_preset_mac_address only works when CONFIG_PARAMETER
is enabled because otherwise dev_set_param is a no-op. Add a
function to set the MAC address explicitly without the need
of CONFIG_PARAMETER and use it where appropriate.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/net.h |  2 ++
 net/eth.c     | 25 +++++++++++++++++--------
 net/net.c     |  2 +-
 3 files changed, 20 insertions(+), 9 deletions(-)

diff --git a/include/net.h b/include/net.h
index 364011b..ecc39d2 100644
--- a/include/net.h
+++ b/include/net.h
@@ -60,6 +60,7 @@ struct eth_device {
 	IPaddr_t serverip;
 	IPaddr_t netmask;
 	IPaddr_t gateway;
+	char ethaddr_param[6];
 	char ethaddr[6];
 };
 
@@ -67,6 +68,7 @@ struct eth_device {
 
 int eth_register(struct eth_device* dev);    /* Register network device		*/
 void eth_unregister(struct eth_device* dev); /* Unregister network device	*/
+int eth_set_ethaddr(struct eth_device *edev, const char *ethaddr);
 
 int eth_send(struct eth_device *edev, void *packet, int length);	   /* Send a packet		*/
 int eth_rx(void);			/* Check for received packets	*/
diff --git a/net/eth.c b/net/eth.c
index 0c1ff73..eba4c5c 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -42,15 +42,25 @@ struct eth_ethaddr {
 
 static LIST_HEAD(ethaddr_list);
 
+int eth_set_ethaddr(struct eth_device *edev, const char *ethaddr)
+{
+	int ret;
+
+	ret = edev->set_ethaddr(edev, ethaddr);
+	if (ret)
+		return ret;
+
+	memcpy(edev->ethaddr, ethaddr, ETH_ALEN);
+}
+
 static void register_preset_mac_address(struct eth_device *edev, const char *ethaddr)
 {
 	unsigned char ethaddr_str[sizeof("xx:xx:xx:xx:xx:xx")];
 
-	ethaddr_to_string(ethaddr, ethaddr_str);
-
 	if (is_valid_ether_addr(ethaddr)) {
+		ethaddr_to_string(ethaddr, ethaddr_str);
 		dev_info(&edev->dev, "got preset MAC address: %s\n", ethaddr_str);
-		dev_set_param(&edev->dev, "ethaddr", ethaddr_str);
+		eth_set_ethaddr(edev, ethaddr);
 	}
 }
 
@@ -261,13 +271,11 @@ int eth_rx(void)
 	return 0;
 }
 
-static int eth_set_ethaddr(struct param_d *param, void *priv)
+static int eth_param_set_ethaddr(struct param_d *param, void *priv)
 {
 	struct eth_device *edev = priv;
 
-	edev->set_ethaddr(edev, edev->ethaddr);
-
-	return 0;
+	return eth_set_ethaddr(edev, edev->ethaddr_param);
 }
 
 #ifdef CONFIG_OFTREE
@@ -350,7 +358,8 @@ int eth_register(struct eth_device *edev)
 	dev_add_param_ip(dev, "serverip", NULL, NULL, &edev->serverip, edev);
 	dev_add_param_ip(dev, "gateway", NULL, NULL, &edev->gateway, edev);
 	dev_add_param_ip(dev, "netmask", NULL, NULL, &edev->netmask, edev);
-	dev_add_param_mac(dev, "ethaddr", eth_set_ethaddr, NULL, edev->ethaddr, edev);
+	dev_add_param_mac(dev, "ethaddr", eth_param_set_ethaddr, NULL,
+			edev->ethaddr_param, edev);
 
 	if (edev->init)
 		edev->init(edev);
diff --git a/net/net.c b/net/net.c
index 07350ad..75292c7 100644
--- a/net/net.c
+++ b/net/net.c
@@ -348,7 +348,7 @@ static struct net_connection *net_new(IPaddr_t dest, rx_handler_f *handler,
 		random_ether_addr(edev->ethaddr);
 		ethaddr_to_string(edev->ethaddr, str);
 		printf("warning: No MAC address set. Using random address %s\n", str);
-		dev_set_param(&edev->dev, "ethaddr", str);
+		eth_set_ethaddr(edev, edev->ethaddr);
 	}
 
 	/* If we don't have an ip only broadcast is allowed */
-- 
2.1.4

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
