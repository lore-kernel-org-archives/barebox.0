Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x22d.google.com ([2607:f8b0:400e:c01::22d])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fs8Qn-0001jo-S5
 for barebox@lists.infradead.org; Tue, 21 Aug 2018 15:18:55 +0000
Received: by mail-pl0-x22d.google.com with SMTP id c6-v6so4108823pls.4
 for <barebox@lists.infradead.org>; Tue, 21 Aug 2018 08:18:43 -0700 (PDT)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Tue, 21 Aug 2018 17:18:26 +0200
Message-Id: <20180821151826.5011-3-aleksander@aleksander.es>
In-Reply-To: <20180821151826.5011-1-aleksander@aleksander.es>
References: <20180821151826.5011-1-aleksander@aleksander.es>
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
Subject: [PATCH 2/2] i2c_read: implement support for master receive mode
To: barebox@lists.infradead.org, s.hauer@pengutronix.de
Cc: Aleksander Morgado <aleksander@aleksander.es>

If no start register is explicitly given, receive data in master
receive mode.

Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
---
 commands/i2c.c | 21 +++++++++++++++------
 1 file changed, 15 insertions(+), 6 deletions(-)

diff --git a/commands/i2c.c b/commands/i2c.c
index 57dc092c2..2f7f820d4 100644
--- a/commands/i2c.c
+++ b/commands/i2c.c
@@ -208,7 +208,7 @@ static int do_i2c_read(int argc, char *argv[])
 		}
 	}
 
-	if ((addr < 0) || (reg < 0) || (count < 1) || (addr > 0x7F))
+	if ((addr < 0) || (count < 1) || (addr > 0x7F))
 		return COMMAND_ERROR_USAGE;
 
 	adapter = i2c_get_adapter(bus);
@@ -221,12 +221,21 @@ static int do_i2c_read(int argc, char *argv[])
 	client.addr = addr;
 
 	buf = xmalloc(count);
-	ret = i2c_read_reg(&client, reg | wide, buf, count);
+	if (reg >= 0)
+		ret = i2c_read_reg(&client, reg | wide, buf, count);
+	else
+		ret = i2c_master_recv(&client, buf, count);
 	if (ret == count) {
 		int i;
-		if (verbose)
-			printf("read %i bytes starting at reg 0x%04x from i2cdev 0x%02x on bus %i\n",
-				count, reg, addr, adapter->nr);
+		if (verbose) {
+			if (reg >= 0)
+				printf("read %i bytes starting at reg 0x%04x from i2cdev 0x%02x on bus %i\n",
+				       count, reg, addr, adapter->nr);
+			else
+				printf("received %i bytes in master receive mode from i2cdev 0x%02x on bus %i\n",
+				       count, addr, adapter->nr);
+		}
+
 		for (i = 0; i < count; i++)
 			printf("0x%02x ", *(buf + i));
 		printf("\n");
@@ -241,7 +250,7 @@ BAREBOX_CMD_HELP_START(i2c_read)
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT("-b BUS\t", "i2c bus number (default 0)")
 BAREBOX_CMD_HELP_OPT("-a ADDR\t", "i2c device address")
-BAREBOX_CMD_HELP_OPT("-r START", "start register")
+BAREBOX_CMD_HELP_OPT("-r START", "start register (optional, master receive mode if none given)")
 BAREBOX_CMD_HELP_OPT("-w\t",       "use word (16 bit) wide access")
 BAREBOX_CMD_HELP_OPT("-c COUNT", "byte count")
 BAREBOX_CMD_HELP_OPT("-v\t",       "verbose")
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
