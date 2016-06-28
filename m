Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bHlod-0007NZ-D8
 for barebox@lists.infradead.org; Tue, 28 Jun 2016 05:44:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 28 Jun 2016 07:43:45 +0200
Message-Id: <1467092625-28308-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] eeprom: at24: fix discarding const qualifier
To: Barebox List <barebox@lists.infradead.org>

fixes:
at24.c:434:10: warning: assignment discards 'const' qualifier from pointer
target type

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/eeprom/at24.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/eeprom/at24.c b/drivers/eeprom/at24.c
index 49eef6a..fd6307d 100644
--- a/drivers/eeprom/at24.c
+++ b/drivers/eeprom/at24.c
@@ -380,6 +380,7 @@ static int at24_probe(struct device_d *dev)
 	int err;
 	unsigned i, num_addresses;
 	char *devname;
+	const char *alias;
 
 	if (dev->platform_data) {
 		chip = *(struct at24_platform_data *)dev->platform_data;
@@ -431,8 +432,10 @@ static int at24_probe(struct device_d *dev)
 	at24->chip = chip;
 	at24->num_addresses = num_addresses;
 
-	devname = of_alias_get(dev->device_node);
-	if (!devname) {
+	alias = of_alias_get(dev->device_node);
+	if (alias) {
+		devname = xstrdup(alias);
+	} else {
 		err = cdev_find_free_index("eeprom");
 		if (err < 0) {
 			dev_err(&client->dev, "no index found to name device\n");
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
