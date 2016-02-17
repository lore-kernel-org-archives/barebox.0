Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x229.google.com ([2607:f8b0:400e:c03::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aVqwU-0003na-Pu
 for barebox@lists.infradead.org; Wed, 17 Feb 2016 01:30:13 +0000
Received: by mail-pa0-x229.google.com with SMTP id ho8so1500240pac.2
 for <barebox@lists.infradead.org>; Tue, 16 Feb 2016 17:29:50 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 16 Feb 2016 17:29:16 -0800
Message-Id: <1455672559-25061-16-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1455672559-25061-1-git-send-email-andrew.smirnov@gmail.com>
References: <1455672559-25061-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 15/18] [RFC] net: eth: Always use DEVICE_ID_DYNAMIC
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Assigning device IDs based on device tree aliases doesn't work very well
on platforms that have both NICs that are a part of a platform with
assigned aliases and NICs with DEVICE_ID_DYNAMIC policy of ID
assignement due to the nature of the interfaces they are connected
via (PCIe, USB, etc.). Consider the following scenario:

A device with built-in Ethernet adapter aliased to "ethernet0" and a
Ethernet chip connected via PCIe. This gives us two possible probing
orders:
  1.
    - built-in adapter comes up first gets assigned id of 0 and device
      "dev0"
    - PCIe adapter comes up second gets assigned id of 1 and device
      "dev1"
    - everything is hunky-dory

  2.
    - built-in adapter comes up first but its probing gets deffered
    - PCIe adapter comes up second gets assigned id of 0 and device
      "dev0"
    - built-in adapter gets probed the second time, sucessfuly
      initializes itself but fails to register Ethernet device because
      "dev0" is already taken

This patch solves the problem by forcing all Ethernet adapters to
use dynamic ID allocation.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 net/eth.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/net/eth.c b/net/eth.c
index fb3f22f..d028f71 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -366,13 +366,7 @@ int eth_register(struct eth_device *edev)
 	if (edev->parent)
 		edev->dev.parent = edev->parent;
 
-	if (edev->dev.parent && edev->dev.parent->device_node) {
-		edev->dev.id = of_alias_get_id(edev->dev.parent->device_node, "ethernet");
-		if (edev->dev.id < 0)
-			edev->dev.id = DEVICE_ID_DYNAMIC;
-	} else {
-		edev->dev.id = DEVICE_ID_DYNAMIC;
-	}
+	edev->dev.id = DEVICE_ID_DYNAMIC;
 
 	ret = register_device(&edev->dev);
 	if (ret)
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
