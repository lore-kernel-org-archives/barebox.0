Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp12.mail.ru ([94.100.176.89])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SSwE6-0004bR-CM
 for barebox@lists.infradead.org; Fri, 11 May 2012 20:14:11 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sat, 12 May 2012 00:17:08 +0400
Message-Id: <1336767428-21412-2-git-send-email-shc_work@mail.ru>
In-Reply-To: <20120511200205.GT27341@pengutronix.de>
References: <20120511200205.GT27341@pengutronix.de>
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
Subject: [PATCH 2/2] i2c: Added switch for allowing usage 16bit register
 addresses
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 commands/i2c.c |   26 +++++++++++++++++---------
 1 files changed, 17 insertions(+), 9 deletions(-)

diff --git a/commands/i2c.c b/commands/i2c.c
index 39bae35..1eaa968 100644
--- a/commands/i2c.c
+++ b/commands/i2c.c
@@ -74,10 +74,10 @@ static int do_i2c_write(int argc, char *argv[])
 {
 	struct i2c_adapter *adapter = NULL;
 	struct i2c_client client;
-	int addr = -1, reg = -1, count = -1, verbose = 0, ret, opt, i, bus = 0;
+	int addr = -1, reg = -1, count = -1, verbose = 0, ret, opt, i, bus = 0, wide = 0;
 	u8 *buf;
 
-	while ((opt = getopt(argc, argv, "a:b:r:v")) > 0) {
+	while ((opt = getopt(argc, argv, "a:b:r:v:w")) > 0) {
 		switch (opt) {
 		case 'a':
 			addr = simple_strtol(optarg, NULL, 0);
@@ -91,6 +91,9 @@ static int do_i2c_write(int argc, char *argv[])
 		case 'v':
 			verbose = 1;
 			break;
+		case 'w':
+			wide = 1;
+			break;
 		}
 	}
 
@@ -112,13 +115,13 @@ static int do_i2c_write(int argc, char *argv[])
 	for (i = 0; i < count; i++)
 		*(buf + i) = (char) simple_strtol(argv[optind+i], NULL, 16);
 
-	ret = i2c_write_reg(&client, reg, buf, count);
+	ret = i2c_write_reg(&client, reg | (wide ? I2C_ADDR_16_BIT : 0), buf, count);
 	if (ret != count)
 		goto out;
 	ret = 0;
 
 	if (verbose) {
-		printf("wrote %i bytes starting at reg 0x%02x to i2cdev 0x%02x on bus %i\n",
+		printf("wrote %i bytes starting at reg 0x%04x to i2cdev 0x%02x on bus %i\n",
 			count, reg, addr, adapter->nr);
 		for (i = 0; i < count; i++)
 			printf("0x%02x ", *(buf + i));
@@ -135,7 +138,8 @@ static const __maybe_unused char cmd_i2c_write_help[] =
 "write to i2c device.\n"
 "  -a 0x<addr>   i2c device address\n"
 "  -b <bus_num>  i2c bus number (default = 0)\n"
-"  -r 0x<reg>    start register\n";
+"  -r 0x<reg>    start register\n"
+"  -w            use 16bit-wide address access\n";
 
 BAREBOX_CMD_START(i2c_write)
 	.cmd		= do_i2c_write,
@@ -148,9 +152,9 @@ static int do_i2c_read(int argc, char *argv[])
 	struct i2c_adapter *adapter = NULL;
 	struct i2c_client client;
 	u8 *buf;
-	int count = -1, addr = -1, reg = -1, verbose = 0, ret, opt, bus = 0;
+	int count = -1, addr = -1, reg = -1, verbose = 0, ret, opt, bus = 0, wide = 0;
 
-	while ((opt = getopt(argc, argv, "a:b:c:r:v")) > 0) {
+	while ((opt = getopt(argc, argv, "a:b:c:r:v:w")) > 0) {
 		switch (opt) {
 		case 'a':
 			addr = simple_strtol(optarg, NULL, 0);
@@ -167,6 +171,9 @@ static int do_i2c_read(int argc, char *argv[])
 		case 'v':
 			verbose = 1;
 			break;
+		case 'w':
+			wide = 1;
+			break;
 		}
 	}
 
@@ -183,11 +190,11 @@ static int do_i2c_read(int argc, char *argv[])
 	client.addr = addr;
 
 	buf = xmalloc(count);
-	ret = i2c_read_reg(&client, reg, buf, count);
+	ret = i2c_read_reg(&client, reg | (wide ? I2C_ADDR_16_BIT : 0), buf, count);
 	if (ret == count) {
 		int i;
 		if (verbose)
-			printf("read %i bytes starting at reg 0x%02x from i2cdev 0x%02x on bus %i\n",
+			printf("read %i bytes starting at reg 0x%04x from i2cdev 0x%02x on bus %i\n",
 				count, reg, addr, adapter->nr);
 		for (i = 0; i < count; i++)
 			printf("0x%02x ", *(buf + i));
@@ -205,6 +212,7 @@ static const __maybe_unused char cmd_i2c_read_help[] =
 "  -a 0x<addr>   i2c device address\n"
 "  -b <bus_num>  i2c bus number (default = 0)\n"
 "  -r 0x<reg>    start register\n"
+"  -w            use 16bit-wide address access\n"
 "  -c <count>    byte count\n";
 
 BAREBOX_CMD_START(i2c_read)
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
