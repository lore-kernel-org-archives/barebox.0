Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 26.mail-out.ovh.net ([91.121.27.225])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Oukji-0003xd-7E
	for barebox@lists.infradead.org; Sun, 12 Sep 2010 11:28:47 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 12 Sep 2010 13:27:37 +0200
Message-Id: <1284290860-32033-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/4] driver: allow register device with specific id
To: barebox@lists.infradead.org

if you specify id = 0 the next available id will be taken
otherwise fail if already registered

before if you specify one it will have use the next free id anyway

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 lib/driver.c |   26 ++++++++++++++++++++++----
 1 files changed, 22 insertions(+), 4 deletions(-)

diff --git a/lib/driver.c b/lib/driver.c
index b600745..00aca9c 100644
--- a/lib/driver.c
+++ b/lib/driver.c
@@ -56,14 +56,24 @@ struct device_d *get_device_by_name(const char *name)
 	return NULL;
 }
 
+struct device_d *get_device_by_name_id(const char *name, int id)
+{
+	struct device_d *dev;
+
+	for_each_device(dev) {
+		if(!strcmp(dev->name, name) && id == dev->id)
+			return dev;
+	}
+
+	return NULL;
+}
+
 int get_free_deviceid(const char *name_template)
 {
 	int i = 0;
-	char name[MAX_DRIVER_NAME + 3];
 
 	while (1) {
-		sprintf(name, "%s%d", name_template, i);
-		if (!get_device_by_name(name))
+		if (!get_device_by_name_id(name_template, i))
 			return i;
 		i++;
 	};
@@ -95,7 +105,15 @@ int register_device(struct device_d *new_device)
 {
 	struct driver_d *drv;
 
-	new_device->id = get_free_deviceid(new_device->name);
+	if (new_device->id == 0) {
+		new_device->id = get_free_deviceid(new_device->name);
+	} else {
+		if (get_device_by_name_id(new_device->name, new_device->id)) {
+			eprintf("register_device: already registered %s\n",
+				dev_name(new_device));
+			return -EINVAL;
+		}
+	}
 
 	debug ("register_device: %s\n",new_device->name);
 
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
