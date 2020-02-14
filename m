Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2YOf-0000oo-St
 for barebox@lists.infradead.org; Fri, 14 Feb 2020 10:40:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Feb 2020 11:40:30 +0100
Message-Id: <20200214104030.2149-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] i2c_probe command: Use kstrtoint
To: Barebox List <barebox@lists.infradead.org>

Use kstrtoint rather than simple_strtoul to catch erroneous input like
"i2c1" which previously was silently interpreted as "0".

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/i2c.c | 30 +++++++++++++++++++++++++-----
 1 file changed, 25 insertions(+), 5 deletions(-)

diff --git a/commands/i2c.c b/commands/i2c.c
index 77d65e3fa3..77a8f7ff97 100644
--- a/commands/i2c.c
+++ b/commands/i2c.c
@@ -45,17 +45,37 @@ static int do_i2c_probe(int argc, char *argv[])
 {
 	struct i2c_adapter *adapter = NULL;
 	int startaddr = 4, stopaddr = 0x77;
+	int ret;
 
 	if (argc > 1) {
-		adapter = i2c_get_adapter(simple_strtoul(argv[1], NULL, 0));
+		int busnum;
+
+		ret = kstrtoint(argv[1], 0, &busnum);
+		if (ret) {
+			printf("Cannot parse \"%s\" as a number\n", argv[1]);
+			return ret;
+		}
+
+		adapter = i2c_get_adapter(busnum);
 		if (!adapter)
 			return -ENODEV;
 	}
 
-	if (argc > 2)
-		startaddr = simple_strtol(argv[2], NULL, 0);
-	if (argc > 3)
-		stopaddr = simple_strtol(argv[3], NULL, 0);
+	if (argc > 2) {
+		ret = kstrtoint(argv[2], 0, &startaddr);
+		if (ret) {
+			printf("Cannot parse \"%s\" as a number\n", argv[1]);
+			return ret;
+		}
+	}
+
+	if (argc > 3) {
+		ret = kstrtoint(argv[3], 0, &stopaddr);
+		if (ret) {
+			printf("Cannot parse \"%s\" as a number\n", argv[1]);
+			return ret;
+		}
+	}
 
 	if (stopaddr > 0x7f)
 		stopaddr = 0x7f;
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
