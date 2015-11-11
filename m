Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZwXtk-0000zi-8b
 for barebox@lists.infradead.org; Wed, 11 Nov 2015 16:05:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 11 Nov 2015 17:05:01 +0100
Message-Id: <1447257901-8011-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1447257901-8011-1-git-send-email-s.hauer@pengutronix.de>
References: <1447257901-8011-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] i2c_probe: Make command easier to work with
To: Barebox List <barebox@lists.infradead.org>

Instead of insisting on multiple parameters just use sane defaults.
This allows us to scan all addresses on all busses which is normally
what one wants to get an overview over devices on i2c busses.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/i2c.c | 56 +++++++++++++++++++++++++++++++++++++-------------------
 1 file changed, 37 insertions(+), 19 deletions(-)

diff --git a/commands/i2c.c b/commands/i2c.c
index d6c5412..f4ffc99 100644
--- a/commands/i2c.c
+++ b/commands/i2c.c
@@ -22,30 +22,16 @@
 #include <getopt.h>
 #include <i2c/i2c.h>
 
-static int do_i2c_probe(int argc, char *argv[])
+static void i2c_probe_range(struct i2c_adapter *adapter, int startaddr, int stopaddr)
 {
-	struct i2c_adapter *adapter;
-	struct i2c_client client;
-	int startaddr = -1, stopaddr = -1, addr, ret;
+	struct i2c_client client = {};
+	int addr;
+	int ret;
 	u8 reg;
 
-	if (argc < 4)
-		return COMMAND_ERROR_USAGE;
-
-	adapter = i2c_get_adapter(simple_strtoul(argv[1], NULL, 0));
-	if (!adapter)
-		return -ENODEV;
 	client.adapter = adapter;
 
-	startaddr = simple_strtol(argv[2], NULL, 0);
-	stopaddr = simple_strtol(argv[3], NULL, 0);
-	if ((startaddr == -1) || (stopaddr == -1) || (startaddr > stopaddr))
-		return COMMAND_ERROR_USAGE;
-
-	if (stopaddr > 0x7F)
-		stopaddr = 0x7F;
-
-	printf("probing i2c range 0x%02x - 0x%02x :\n", startaddr, stopaddr);
+	printf("probing i2c%d range 0x%02x-0x%02x: ", adapter->nr, startaddr, stopaddr);
 	for (addr = startaddr; addr <= stopaddr; addr++) {
 		client.addr = addr;
 		ret = i2c_write_reg(&client, 0x00, &reg, 0);
@@ -53,6 +39,38 @@ static int do_i2c_probe(int argc, char *argv[])
 			printf("0x%02x ", addr);
 	}
 	printf("\n");
+}
+
+static int do_i2c_probe(int argc, char *argv[])
+{
+	struct i2c_adapter *adapter = NULL;
+	int startaddr = 0, stopaddr = 0x7f;
+
+	if (argc > 1) {
+		adapter = i2c_get_adapter(simple_strtoul(argv[1], NULL, 0));
+		if (!adapter)
+			return -ENODEV;
+	}
+
+	if (argc > 2)
+		startaddr = simple_strtol(argv[2], NULL, 0);
+	if (argc > 3)
+		startaddr = simple_strtol(argv[3], NULL, 0);
+
+
+	if (startaddr > stopaddr)
+		return COMMAND_ERROR_USAGE;
+
+	if (stopaddr > 0x7F)
+		stopaddr = 0x7F;
+
+	if (adapter) {
+		i2c_probe_range(adapter, startaddr, stopaddr);
+	} else {
+		for_each_i2c_adapter(adapter)
+			i2c_probe_range(adapter, startaddr, stopaddr);
+	}
+
 	return 0;
 }
 
-- 
2.6.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
