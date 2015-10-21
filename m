Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZozDd-0002c1-5Q
 for barebox@lists.infradead.org; Wed, 21 Oct 2015 19:38:41 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Wed, 21 Oct 2015 19:38:16 +0000
Message-ID: <1445456302.13196.124.camel@rtred1test09.kymetacorp.com>
Content-Language: en-US
Content-ID: <BBBB6DE498E10F4EA97DE4AA8C162D44@kymetacorp.com>
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
Subject: [PATCH 2/2 v2] net: eth: Fixup OF tree with registered MAC
 addresses too
To: barebox <barebox@lists.infradead.org>

The eth code registers an OF tree fixup that looks for any nodes in
the Linux oftree that match eth devices loaded in barebox and sets the
mac-address property in those nodes.  The purpose is to pass MAC
addresses to the Linux kernel for drivers that expect the MAC address
to be in the device tree.

If barebox does not have a driver for the network device, either
because it has been disabled or because one does not exist, then the
OF tree will not be fixed up to include a MAC address.

The eth code also has a list of MAC addresses which board code has
registered, usually done when it reads the address from an EEPROM or
on-chip memory.  If an eth device is created later in the boot, it
will look here for an address.

The registered MAC address list is not used for the OF tree fix up,
and this patch changes that.  This way barebox can place a MAC address
in the device-tree without needing a driver for the network device.

Signed-off-by: Trent Piepho <tpiepho@kymetacorp.com>
---
 net/eth.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/net/eth.c b/net/eth.c
index befa8d8..8bfb6b1 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -323,12 +323,20 @@ static void eth_of_fixup_node(struct device_node *root,
 
 static int eth_of_fixup(struct device_node *root, void *unused)
 {
+	struct eth_ethaddr *addr;
 	struct eth_device *edev;
 
 	/*
-	 * Add the mac-address property for each network device we
-	 * find a nodepath for and which has a valid mac address.
+	 * Add the mac-address property for each ethaddr and then each network
+	 * device we find a node path for and which has a valid mac address.
+	 * This will find both network devices barebox was told about as well as
+	 * addresses registered by boards but for which no network device was
+	 * ever loaded.
 	 */
+	list_for_each_entry(addr, &ethaddr_list, list)
+		eth_of_fixup_node(root, addr->node ? addr->node->full_name : NULL,
+				  addr->ethid, addr->ethaddr);
+
 	list_for_each_entry(edev, &netdev_list, list)
 		eth_of_fixup_node(root, edev->nodepath, edev->dev.id, edev->ethaddr);
 
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
