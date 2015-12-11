Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a7BVM-0002cT-EU
 for barebox@lists.infradead.org; Fri, 11 Dec 2015 00:24:13 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Fri, 11 Dec 2015 00:23:11 +0000
Message-ID: <1449793397.26955.94.camel@rtred1test09.kymeta.local>
Content-Language: en-US
Content-ID: <A6FA4DC3820AAB4DBE533B71105D2ED5@kymetacorp.com>
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
Subject: [PATCH] cdev: When creating a new cdev, initialize device_node
To: barebox <barebox@lists.infradead.org>

If a new cdev doesn't have a device_node defined when passed to
devfs_create(), set it to the device_node of the parent device, if one
exists.

For non-partitions, like ocotp or eeprom devices, this is the correct
thing to do.  Partitions need to use, and do use, a different node.

The code from commit 274e0b8dc48956babeaa2faf70bf8066e656b621 to set
device_node in ocotp can be removed.

Signed-off-by: Trent Piepho <tpiepho@kymetacorp.com>
---
Tested this to work for loading the env from an at24 eeprom.  Should work
for any other non-partitioned device too.

 arch/arm/mach-imx/ocotp.c | 1 -
 fs/devfs-core.c           | 5 ++++-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/ocotp.c b/arch/arm/mach-imx/ocotp.c
index 6ff5ee4..c99a003 100644
--- a/arch/arm/mach-imx/ocotp.c
+++ b/arch/arm/mach-imx/ocotp.c
@@ -426,7 +426,6 @@ static int imx_ocotp_probe(struct device_d *dev)
 	cdev->priv	= priv;
 	cdev->size	= 192;
 	cdev->name	= "imx-ocotp";
-	cdev->device_node = dev->device_node;
 
 	ret = devfs_create(cdev);
 
diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index 2541ea3..a5ac5a3 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -260,8 +260,11 @@ int devfs_create(struct cdev *new)
 		return -EEXIST;
 
 	list_add_tail(&new->list, &cdev_list);
-	if (new->dev)
+	if (new->dev) {
 		list_add_tail(&new->devices_list, &new->dev->cdevs);
+		if (!new->device_node)
+			new->device_node = new->dev->device_node;
+	}
 
 	return 0;
 }
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
