Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WBh7e-0007rD-QL
 for barebox@lists.infradead.org; Fri, 07 Feb 2014 08:49:24 +0000
Received: from tellur.localdomain (p57B5E0F6.dip0.t-ipconnect.de
 [87.181.224.246]) by lynxeye.de (Postfix) with ESMTPA id 5DE7318B4278
 for <barebox@lists.infradead.org>; Fri,  7 Feb 2014 09:47:39 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Fri,  7 Feb 2014 09:48:53 +0100
Message-Id: <1391762936-2747-12-git-send-email-dev@lynxeye.de>
In-Reply-To: <1391762936-2747-1-git-send-email-dev@lynxeye.de>
References: <1391762936-2747-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 11/14] net: usb: asix: properly propagate error code
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/net/usb/asix.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/usb/asix.c b/drivers/net/usb/asix.c
index b58db5d..37057a7 100644
--- a/drivers/net/usb/asix.c
+++ b/drivers/net/usb/asix.c
@@ -382,7 +382,7 @@ static int asix_get_ethaddr(struct eth_device *edev, unsigned char *adr)
 
 	if (ret < 0) {
 		debug("Failed to read MAC address: %d\n", ret);
-		return -1;
+		return ret;
 	}
 
 	return 0;
@@ -403,7 +403,7 @@ static int ax88172_get_ethaddr(struct eth_device *edev, unsigned char *adr)
 	if ((ret = asix_read_cmd(udev, AX88172_CMD_READ_NODE_ID,
 				0, 0, 6, adr)) < 0) {
 		debug("read AX_CMD_READ_NODE_ID failed: %d\n", ret);
-		return -1;
+		return ret;
 	}
 
 	return 0;
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
